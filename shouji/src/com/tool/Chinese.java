// Decompiled by Jad v1.5.7g. Copyright 2000 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/SiliconValley/Bridge/8617/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi 
// Source File Name:   Chinese.java

package com.tool;

import java.io.UnsupportedEncodingException;

public class Chinese {

	public Chinese() {
	}

	public static String toUnicode(String strvalue)
    {
		
        if(strvalue == null)
            return null;
        try {
        	strvalue = new String(strvalue.getBytes("GBK"), "ISO8859_1");
        	//return strvalue;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "";
//        strvalue = new String(strvalue.getBytes("GBK"), "ISO8859_1");
//        return strvalue;
//        Exception e;
//        e;
//        return "";
    }

	public static String StringtoSql(String str) {
		str = nullToString(str, "");
		try {
			str = str.trim().replace('\'', '\001');
		} catch (Exception e) {
			return "";
		}
		return str;
	}

	public static final String nullToString(String v, String toV) {
		if (v == null)
			v = toV;
		return v;
	}

	public static String toChinese(String strvalue) {
		if (strvalue == null) {
			return "";
		}
		try {
			strvalue = new String(strvalue.getBytes("ISO8859_1"), "GBK");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}
		return strvalue;
		// if(strvalue == null)
		// return "";
		// strvalue = new String(strvalue.getBytes("ISO8859_1"), "GBK");
		// return strvalue;
		// Exception e;
		// e;
		// return "";
	}

	public static String chinese(String a) {
		try {
			return new String(a.getBytes("ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
		// return new String(a.getBytes("ISO-8859-1"));
		// UnsupportedEncodingException ex;
		// ex;
		// return null;
	}
}
