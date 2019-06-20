package com.itheima.ssm.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    /**
     * 将日期格式化为指定的patt格式的字符串
     * @param date
     * @param patt
     * @return
     */
    public static String date2Str(Date date, String patt){
        SimpleDateFormat dateFormat = new SimpleDateFormat(patt);
        String format = dateFormat.format(date);
        return format;

    }

    /**
     * 将patt格式的字符串转换成日期
     * @param string
     * @param patt
     * @return
     * @throws ParseException
     */
    public static Date str2Date(String string, String patt) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat(patt);
        Date date = dateFormat.parse(string);
        return date;

    }
}
