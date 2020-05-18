package com.luv2code.testdb;

import java.sql.Types;

import org.hibernate.dialect.MySQL55Dialect;
import org.hibernate.dialect.MySQL5Dialect;
import org.hibernate.dialect.MySQLDialect;

public class MySqlDialect extends MySQL5Dialect {
     
	@Override
     protected void registerVarcharTypes() {
         registerHibernateType(Types.NVARCHAR, 4000, "string");
         registerColumnType(Types.VARCHAR, "nvarchar($l)");

 
     }

     
     

}
