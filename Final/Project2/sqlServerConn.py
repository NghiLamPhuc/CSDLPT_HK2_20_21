import pypyodbc
import config

def getConnection():
     connection = pypyodbc.connect("Driver={"+config.DATABASE_CONFIG["Driver"]+"} ;Server=" + config.DATABASE_CONFIG["Server"] + ";Database=" + config.DATABASE_CONFIG["Database"] + ";uid=" + config.DATABASE_CONFIG["UID"] + ";pwd=" + config.DATABASE_CONFIG["Password"])
     #connection = pypyodbc.connect(driver='{SQL Server}', server='NghiLam', database='Test', uid='sa', pwd='123')
     return connection
