package com.keane.dbfw;

import java.sql.CallableStatement;
import java.sql.SQLException;

public interface OutParamMapper {
	Object mapOutParam(CallableStatement callStmt) throws SQLException;
}
