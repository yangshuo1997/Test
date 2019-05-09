// Decompiled by Jad v1.5.7g. Copyright 2000 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/SiliconValley/Bridge/8617/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi 
// Source File Name:   JDBConnection.java

package com.tool;

import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;

public class JDBConnection
{

    private String dbDriver;
    private String url;
    public Connection connection;

    public JDBConnection()
    {
        dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        url = "jdbc:sqlserver://localhost:1433;databasename=db_shopping";
        connection = null;
        try
        {
            Class.forName(dbDriver).newInstance();
            connection = DriverManager.getConnection(url, "sa", "123");
        }
        catch(Exception ex)
        {
            System.out.println(" ˝æ›ø‚º”‘ÿ ß∞‹");
        }
    }
}
