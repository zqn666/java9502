package cn.kgc.one.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author :  Zhaoqn
 * @date :  2019/8/30 18:44
 */

//日期工具类
public class DateUtils {

    public static String dateToStr(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String strDate = sdf.format(date);
        System.out.println(strDate);
        return strDate;
    }

    public static Date strToDate(String str){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return sdf.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
