CREATE PROCEDURE [dbo].[SP_ThiThu] 
	@maLop nchar(8) , @maMH nchar(5), @lan smallint

AS 
	DECLARE @soCauThi int, @trinhDo nchar(1), @maBD int, @res int, @subRes INT, @TrinhDoDuoi nchar(1),
	 @CauDuoi INT, @CauDuoi2 INT ,@CauCUng INT
	-- res: so cau tim duoc trong BO DE
	SET XACT_ABORT ON
	
	BEGIN TRY
		create table #temp1 
		(cauhoi int, noidung ntext, a ntext, b ntext, c ntext, d ntext, dap_an char(1))
		
	   -- select GIAOVIEN_DANGKI
		SELECT  @soCauThi = SOCAUTHI, @trinhDo = TRINHDO FROM GIAOVIEN_DANGKY WHERE MAMH = @maMH AND MALOP = @maLop AND LAN = @lan
	
		--Trình độ A
		IF(@trinhDo = 'A')
		BEGIN 
			SET @TrinhDoDuoi = 'B'
		END
		--Trình độ B
		ELSE IF(@trinhDo = 'B')
		BEGIN 
			SET @TrinhDoDuoi = 'C'
		END

		--Trình độ C
		IF(@trinhDo = 'C')
		BEGIN
			SELECT @res = COUNT(CAUHOI) FROM BODE 
			WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

				IF(@res >= @soCauThi)
				BEGIN
					SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID()
				END
				else if(@res < @soCauThi)
				BEGIN
					SELECT @subRes = COUNT(CAUHOI) FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
				
					if(@subRes < @soCauThi - @res)
						BEGIN-- thiếu đề
							RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
						END
					else if(@subRes >= @soCauThi - @res)
					BEGIN 
						INSERT INTO  #temp1 (cauhoi , noidung, a , b , c , d , dap_an  )
						SELECT TOP (@res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID()
		
						INSERT INTO  #temp1 (cauhoi , noidung, a , b , c , d , dap_an  )
						SELECT TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN FROM BODE 
						WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						ORDER BY  NEWID()
					
						SELECT * from #temp1 
					END
				END
			END
			-- trình độ A hoặc B
			ELSE 
			BEGIN
				-- đổ câu hỏi vào bảng tạm,lấy toàn bộ trình độ A
				SELECT  CAUHOI AS CAUHOI, NOIDUNG  AS NOIDUNG, A AS A,B AS B,C  AS  C,D  AS  D,DAP_AN AS DAP_AN, @maBD AS maBD INTO #DETHI FROM BODE 
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  

				SELECT @res = COUNT(CAUHOI) FROM BODE --lưu Số lượng trình độ A
				WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
		
				IF(@res >= @soCauThi)--if(A>=100%)
				BEGIN
					SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD FROM #DETHI -- lấy dữ liệu random từ bảng tạm #dethi
					ORDER BY  NEWID()
				END

				ELSE if(@res >= @soCauThi*0.7) -- if(A>=70%)
				BEGIN
					insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- Lưu B
					SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD  FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID() --random

					SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lấy số lượng B
					WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
					IF(@CauDuoi >= @soCauThi - @res)-- B >= 100% - A
						BEGIN 
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random
						END
					ELSE --chuyển cơ sở
						BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
							SELECT TOP (@soCauThi - @res - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							SELECT @CauCUng = COUNT(CAUHOI) FROM BODE -- lưu số lượng câu A2
							WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số Lượng B2
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							IF(@CauCUng >= @soCauThi - @res - @CauDuoi ) --if(A2 >= 100-A-B)
							BEGIN
								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END

							ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
							BEGIN
								insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
								SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
								WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
								ORDER BY  NEWID() --random

								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END 

							ELSE 
							BEGIN-- thiếu đề
								RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							END

						END
				END
				ELSE 
				BEGIN -- đề cùng loại ở cơ sở gốc không đủ
					insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD ) -- Lấy A2
					SELECT  TOP (@soCauThi - @res) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN, @maBD  FROM BODE 
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					ORDER BY  NEWID() --random

					SELECT @CauCUng = COUNT(CAUHOI) FROM BODE --Lưu số câu A2
					WHERE MAMH = @maMH AND TRINHDO = @trinhDo AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
					
					IF(@CauCUng >= @soCauThi - @res)-- A2 >= 100% - A
						BEGIN 
							SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
							ORDER BY  NEWID()--random
						END
					ELSE IF(@CauCUng >= @soCauThi*0.7 - @res) -- If(A2 >= 70%-A)
					BEGIN
							insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B cùng cs
							SELECT TOP (@soCauThi - @res - @CauCUng) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV  IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
							ORDER BY  NEWID() --random

							SELECT @CauDuoi = COUNT(CAUHOI) FROM BODE -- Lưu số lượng B
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							SELECT @CauDuoi2 = COUNT(CAUHOI) FROM BODE --Lưu số lượng B2
							WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
						
							IF(@CauDuoi >= @soCauThi - @res - @CauCUng ) --if(B >= 100-A-A2)
							BEGIN
								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END

							ELSE IF(@CauDuoi2 >= @soCauThi - @res - @CauCUng - @CauDuoi)-- If( B2 >= 100 -A - A2 - B)
							BEGIN
								insert into #DETHI (cauhoi, noidung, a , b , c , d , dap_an , maBD )-- lấy B2
								SELECT TOP (@soCauThi - @res - @CauCUng - @CauDuoi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM BODE 
								WHERE MAMH = @maMH AND TRINHDO = @TrinhDoDuoi AND MAGV NOT IN  (SELECT MAGV FROM GIAOVIEN WHERE MAKH IN (SELECT MAKH FROM KHOA))  
								ORDER BY  NEWID() --random

								SELECT TOP (@soCauThi) CAUHOI, NOIDUNG, A,B,C,D,DAP_AN,@maBD FROM #DETHI 
								ORDER BY  NEWID()--random
							END 

							ELSE 
							BEGIN-- thiếu đề
								RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
							END

					END
					ELSE 
					BEGIN  -- thiếu đề
						RAISERROR('Không đủ số câu để tạo đề!', 16, 1)
					END
				END
		END-- end trình độ A hoặc B
	END TRY
	BEGIN CATCH
	   DECLARE @ErrorMessage VARCHAR(2000)
	   SELECT @ErrorMessage = 'Lỗi: ' + ERROR_MESSAGE()
	   --RAISERROR(@ErrorMessage, 16, 1)
	END CATCH