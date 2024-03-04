package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class DateUtils {
    public static String getCurrentDate() {
        return DateFormatProvider.getDefaultFormatter("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
    }

    public static String getFirstDay(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String[] split = str.split("-");
        int parseInt = Integer.parseInt(split[0]);
        int parseInt2 = Integer.parseInt(split[1]);
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, parseInt);
        calendar.set(2, parseInt2 - 1);
        calendar.set(5, 1);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String getLastDay(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String[] split = str.split("-");
        int parseInt = Integer.parseInt(split[0]);
        int parseInt2 = Integer.parseInt(split[1]);
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, parseInt);
        calendar.set(2, parseInt2 - 1);
        calendar.set(5, calendar.getActualMaximum(5));
        return simpleDateFormat.format(calendar.getTime());
    }

    @NonNull
    public static String getLikeMeDate(@NonNull String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        if (str.equalsIgnoreCase(simpleDateFormat.format(new Date()))) {
            return BaseApplication.getInstance().getString(R.string.zaime_today);
        }
        return simpleDateFormat.format(new Date(System.currentTimeMillis() - 86400000)).equalsIgnoreCase(str) ? BaseApplication.getInstance().getString(R.string.zaime_yesterday) : str;
    }

    public static int getMonthOfYear(Context context, String str) {
        if (str.equals(context.getString(R.string.january))) {
            return 1;
        }
        if (str.equals(context.getString(R.string.february))) {
            return 2;
        }
        if (str.equals(context.getString(R.string.march))) {
            return 3;
        }
        if (str.equals(context.getString(R.string.april))) {
            return 4;
        }
        if (str.equals(context.getString(R.string.may))) {
            return 5;
        }
        if (str.equals(context.getString(R.string.june))) {
            return 6;
        }
        if (str.equals(context.getString(R.string.july))) {
            return 7;
        }
        if (str.equals(context.getString(R.string.august))) {
            return 8;
        }
        if (str.equals(context.getString(R.string.september))) {
            return 9;
        }
        if (str.equals(context.getString(R.string.october))) {
            return 10;
        }
        if (str.equals(context.getString(R.string.november))) {
            return 11;
        }
        return str.equals(context.getString(R.string.december)) ? 12 : 1;
    }

    public static String getSystemTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }

    public static String getYesTerDayTime(String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -1);
        return new SimpleDateFormat(str).format(calendar.getTime());
    }

    public static boolean isSameData(String str, String str2) {
        try {
            TimeZone timeZone = TimeZone.getTimeZone(com.guochao.faceshow.aaspring.manager.i.u().s().getTimeZone());
            Calendar calendar = Calendar.getInstance(timeZone);
            Calendar calendar2 = Calendar.getInstance(timeZone);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
            Long valueOf = Long.valueOf(Long.parseLong(str));
            Long valueOf2 = Long.valueOf(Long.parseLong(str2));
            String format = simpleDateFormat.format(valueOf);
            String format2 = simpleDateFormat2.format(valueOf2);
            Date parse = simpleDateFormat.parse(format);
            Date parse2 = simpleDateFormat2.parse(format2);
            calendar.setTime(parse);
            calendar2.setTime(parse2);
            return isSameDay(calendar, calendar2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar2) {
        return calendar != null && calendar2 != null && calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static String longTimeToStringTime(long j10) {
        String valueOf;
        String valueOf2;
        String valueOf3;
        long j11 = j10 / 3600000;
        long j12 = j10 - (3600000 * j11);
        long j13 = j12 / 60000;
        long j14 = (j12 - (60000 * j13)) / 1000;
        if (j11 < 0) {
            j11 = 0;
        }
        if (j13 < 0) {
            j13 = 0;
        }
        if (j14 < 0) {
            j14 = 0;
        }
        if (j11 < 10) {
            valueOf = "0" + j11;
        } else {
            valueOf = String.valueOf(j11);
        }
        if (j13 < 10) {
            valueOf2 = "0" + j13;
        } else {
            valueOf2 = String.valueOf(j13);
        }
        if (j14 < 10) {
            valueOf3 = "0" + j14;
        } else {
            valueOf3 = String.valueOf(j14);
        }
        return valueOf + CertificateUtil.DELIMITER + valueOf2 + CertificateUtil.DELIMITER + valueOf3;
    }

    public static String timeStamp2Date(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j10));
    }

    public static String getSystemTime(String str) {
        return new SimpleDateFormat(str).format(new Date(System.currentTimeMillis()));
    }
}
