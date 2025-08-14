package util;

public class Sql {
	
	//customer
	public final static String 	SELECT_CUSTOMER_BY_NO_AND_NAME="SELECT * FROM BANK_CUSTOMER WHERE C_NO=? AND C_NAME=?";
	
	// account
	public final static String 	SELECT_All_ACCOUNT_WITH_NAME="SELECT a.*, c.c_name "
															+ "FROM BANK_BANK_ACCOUNT"
															+ "JOIN BANK_CUSTOMER c ON a.a_c_no = c.c_no";
}
