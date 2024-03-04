package com.guochao.faceshow.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.DressUpData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.DateFormatProvider;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.lib_service_center.util.service.TimeFormatter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
@Route(path = RouterPath.ROUTER_TIME_FORMATTER)
/* loaded from: classes4.dex */
public class TimeUtil implements TimeFormatter {
    public static final long DAY = 86400000;
    public static final long HOUR = 3600000;
    public static final long MINUTE = 60000;
    public static final long MONTH = 2592000000L;
    public static final long SECOND = 1000;
    public static final long WEEK = 604800000;

    public static long dateToStamp(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (ParseException e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static String getDateStrName() {
        return DateFormatProvider.getDefaultFormatter("yyyyMMddHHmm").format(new Date());
    }

    public static String getDressUpTime(Context context, long j10, int i9, long j11) {
        if (i9 != 1 && i9 != 2) {
            if (j10 >= j11) {
                return String.format(context.getString(R.string.period_of_validity), DateFormatProvider.getAppLanguageFormatter("M/d/yyyy").format(new Date(j10)));
            } else if (j10 <= 0) {
                return context.getString(R.string.permanent);
            } else {
                return context.getString(R.string.lost_effectiveness);
            }
        } else if (j10 > j11 || j10 == 0) {
            if (i9 == 1) {
                return context.getString(R.string.vip_validity_period);
            }
            return context.getString(R.string.vvip_validity_period);
        } else if (j10 == -1) {
            if (i9 == 1) {
                return context.getString(R.string.vip_access_to);
            }
            return context.getString(R.string.vvip_access_to);
        } else {
            return context.getString(R.string.lost_effectiveness);
        }
    }

    public static String getDressUpTimeMVP(Context context, boolean z10) {
        if (z10) {
            return context.getString(R.string.mvp_tag_valid);
        }
        return context.getString(R.string.lost_effectiveness);
    }

    public static Pair getDressUpTimePair(Context context, long j10, int i9, long j11, boolean z10) {
        if (i9 != 1 && i9 != 2) {
            if (j10 >= j11) {
                DateFormatProvider.getAppLanguageFormatter("M/d/yyyy");
                new Date(j10);
                return new Pair(Boolean.valueOf(!z10), z10 ? context.getString(R.string.mvp_gift_useed) : context.getString(R.string.mvp_gift_un_use));
            } else if (j10 <= 0) {
                return new Pair(Boolean.valueOf(!z10), z10 ? context.getString(R.string.mvp_gift_useed) : context.getString(R.string.mvp_gift_un_use));
            } else {
                return new Pair(Boolean.FALSE, context.getString(R.string.lost_effectiveness));
            }
        } else if (j10 > j11 || j10 == 0) {
            if (i9 == 1) {
                return new Pair(Boolean.valueOf(!z10), z10 ? context.getString(R.string.mvp_gift_useed) : context.getString(R.string.mvp_gift_un_use));
            }
            return new Pair(Boolean.valueOf(!z10), z10 ? context.getString(R.string.mvp_gift_useed) : context.getString(R.string.mvp_gift_un_use));
        } else if (j10 == -1) {
            if (i9 == 1) {
                return new Pair(Boolean.TRUE, context.getString(R.string.vip_access_to));
            }
            return new Pair(Boolean.TRUE, context.getString(R.string.vvip_access_to));
        } else {
            return new Pair(Boolean.TRUE, context.getString(R.string.lost_effectiveness));
        }
    }

    public static Pair getDressUpTimePairMvp(Context context, DressUpData dressUpData) {
        int itemType = dressUpData.getItemType();
        int i9 = R.string.mvp_gift_useed;
        if (itemType != 1) {
            boolean z10 = dressUpData.getCanItBeUsed() == 1;
            boolean isCheck = dressUpData.isCheck();
            if (z10) {
                Boolean valueOf = Boolean.valueOf(!isCheck);
                if (!isCheck) {
                    i9 = R.string.mvp_gift_un_use;
                }
                return new Pair(valueOf, context.getString(i9));
            }
            return new Pair(Boolean.FALSE, context.getString(R.string.lost_effectiveness));
        } else if (dressUpData.isCheck()) {
            return new Pair(Boolean.FALSE, context.getString(R.string.mvp_gift_useed));
        } else {
            return new Pair(Boolean.TRUE, context.getString(R.string.mvp_gift_un_use));
        }
    }

    public static String getForthTimeWithSdf(Context context, long j10) {
        SimpleDateFormat appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("M/d/yyyy HH:mm");
        if (Language.SIMPLE_CHINESE.equals(PhoneUtils.getAppLanguage())) {
            appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("yyyy-M-d HH:mm");
        }
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        long parseInt = ((Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1])) * 60 * 1000;
        if (j10 < 60000) {
            return context.getString(R.string.message_time);
        }
        if (j10 < parseInt) {
            return getHHTime(j10);
        }
        if (j10 < WEEK) {
            return getWeekName(context, j10) + " " + getHHTime(j10);
        } else if (j10 < System.currentTimeMillis()) {
            return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10));
        } else {
            return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10));
        }
    }

    public static String getGiftTime(Context context, long j10) {
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        long parseInt = ((Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1])) * 60 * 1000;
        if (j10 < 60000 && j10 > 0) {
            return context.getString(R.string.message_time);
        }
        if (j10 < parseInt) {
            String hHTime = getHHTime(j10);
            if (!TextUtils.isEmpty(hHTime)) {
                return hHTime;
            }
        } else if (j10 < WEEK) {
            String hHTime2 = getHHTime(j10);
            if (!TextUtils.isEmpty(hHTime2)) {
                return String.format("%s %s", getWeekName(context, j10), hHTime2);
            }
        }
        SimpleDateFormat appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("M/d/yyyy");
        if (Language.SIMPLE_CHINESE.equals(PhoneUtils.getAppLanguage())) {
            appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("yyyy-M-d");
        }
        if (j10 < System.currentTimeMillis()) {
            Date date = new Date(System.currentTimeMillis() - j10);
            String hHTime3 = getHHTime(j10);
            if (!TextUtils.isEmpty(hHTime3)) {
                return String.format("%s %s", appLanguageFormatter.format(date), hHTime3);
            }
        }
        return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10)) + getHHTime(j10 - System.currentTimeMillis());
    }

    private static String getHHTime(long j10) {
        return DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis() - j10));
    }

    public static String getIMTime(Context context, long j10) {
        SimpleDateFormat appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("M/d/yyyy");
        if (Language.SIMPLE_CHINESE.equals(PhoneUtils.getAppLanguage())) {
            appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("yyyy-M-d");
        }
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        long parseInt = ((Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1])) * 60 * 1000;
        if (j10 < 0) {
            return context.getString(R.string.message_time);
        }
        if (j10 < 60000) {
            return context.getString(R.string.message_time);
        }
        if (j10 < AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED) {
            long j11 = j10 / 60000;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j11);
            sb2.append(" ");
            sb2.append(context.getString(j11 > 1 ? R.string.time_minutes_ago : R.string.time_minute_ago));
            return sb2.toString();
        } else if (j10 < parseInt) {
            return getHHTime(j10);
        } else {
            if (j10 < WEEK) {
                return getWeekName(context, j10);
            }
            if (j10 < System.currentTimeMillis()) {
                return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10));
            }
            return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10));
        }
    }

    public static String getLableTime(Context context, long j10) {
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        long parseInt = ((Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1])) * 60 * 1000;
        if (j10 < 0) {
            return context.getString(R.string.personal_online);
        }
        if (j10 < 60000) {
            return BaseApplication.getInstance().getString(R.string.personal_online);
        }
        if (j10 < 300000) {
            return BaseApplication.getInstance().getString(R.string.message_time);
        }
        if (j10 < 3600000) {
            long j11 = j10 / 60000;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j11);
            sb2.append(" ");
            sb2.append(BaseApplication.getInstance().getString(j11 > 1 ? R.string.time_minutes_ago : R.string.time_minute_ago));
            return sb2.toString();
        } else if (j10 < parseInt) {
            long j12 = j10 / 3600000;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(j12);
            sb3.append(" ");
            sb3.append(BaseApplication.getInstance().getString(j12 > 1 ? R.string.time_huors_ago : R.string.time_huor_ago));
            return sb3.toString();
        } else {
            return (j10 / 86400000) + " " + BaseApplication.getInstance().getString(R.string.time_day_ago);
        }
    }

    public static String getOldVideoCommentTime(Context context, long j10) {
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        long parseInt = ((Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1])) * 60 * 1000;
        if (j10 < 0) {
            return context.getString(R.string.message_time);
        }
        if (j10 < 60000) {
            return BaseApplication.getInstance().getString(R.string.message_time);
        }
        if (j10 < 3600000) {
            long j11 = j10 / 60000;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j11);
            sb2.append(" ");
            sb2.append(BaseApplication.getInstance().getString(j11 > 1 ? R.string.time_minutes_ago : R.string.time_minute_ago));
            return sb2.toString();
        } else if (j10 < parseInt) {
            long j12 = j10 / 3600000;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(j12);
            sb3.append(" ");
            sb3.append(BaseApplication.getInstance().getString(j12 > 1 ? R.string.time_huors_ago : R.string.time_huor_ago));
            return sb3.toString();
        } else if (j10 < MONTH) {
            long j13 = j10 / 86400000;
            StringBuilder sb4 = new StringBuilder();
            int i9 = (j13 > 1L ? 1 : (j13 == 1L ? 0 : -1));
            sb4.append(i9 >= 0 ? j13 : 1L);
            sb4.append(" ");
            sb4.append(BaseApplication.getInstance().getString(i9 > 0 ? R.string.time_days_ago : R.string.time_day_ago));
            return sb4.toString();
        } else if (j10 < 31104000000L) {
            long j14 = j10 / MONTH;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(j14);
            sb5.append(" ");
            sb5.append(BaseApplication.getInstance().getString(j14 > 1 ? R.string.time_months_ago : R.string.time_month_ago));
            return sb5.toString();
        } else {
            SimpleDateFormat appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("M/d/yyyy");
            if (Language.SIMPLE_CHINESE.equals(PhoneUtils.getAppLanguage())) {
                appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("yyyy-M-d");
            }
            if (j10 >= System.currentTimeMillis()) {
                return appLanguageFormatter.format(new Date(System.currentTimeMillis()));
            }
            return appLanguageFormatter.format(new Date(System.currentTimeMillis() - j10));
        }
    }

    public static String getSecond(long j10) {
        if (j10 <= 0) {
            return "00";
        }
        if (j10 < 10) {
            return "0" + j10;
        } else if (j10 < 60) {
            return "" + j10;
        } else {
            return "00";
        }
    }

    public static long getServerTime() {
        ServerConfig s10 = i.u().s();
        if (s10 != null && !TextUtils.isEmpty(s10.getTimeZone())) {
            try {
                return Calendar.getInstance(TimeZone.getTimeZone(s10.getTimeZone())).getTimeInMillis();
            } catch (Exception unused) {
                return System.currentTimeMillis();
            }
        }
        return System.currentTimeMillis();
    }

    public static String getStrData2Age(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Date date = null;
        try {
            date = DateFormatProvider.getDefaultFormatter("yyyy-MM-dd").parse(str);
        } catch (ParseException e10) {
            e10.printStackTrace();
        }
        if (date == null) {
            return "";
        }
        long currentTimeMillis = (((((System.currentTimeMillis() / 1000) / 60) / 60) / 24) / 365) - (((((date.getTime() / 1000) / 60) / 60) / 24) / 365);
        return currentTimeMillis <= 0 ? "0" : String.valueOf(currentTimeMillis);
    }

    public static String getStrToDateYmd(String str) {
        try {
            Date date = new Date(Long.parseLong(str));
            SimpleDateFormat defaultFormatter = DateFormatProvider.getDefaultFormatter("MM/dd/yyyy");
            defaultFormatter.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            return defaultFormatter.format(date);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String getStringCallTime(long j10) {
        if (j10 <= 0) {
            return "00:00";
        }
        if (j10 < 3600) {
            return getSecond(j10 / 60) + CertificateUtil.DELIMITER + getSecond(j10 % 60);
        }
        return getSecond(j10 / 3600) + CertificateUtil.DELIMITER + getSecond((j10 / 60) % 60) + CertificateUtil.DELIMITER + getSecond(j10 % 60);
    }

    public static String getTime(Context context, Long l10) {
        long currentTimeMillis = System.currentTimeMillis();
        long longValue = l10.longValue();
        if (currentTimeMillis > 0 || longValue > 0) {
            long abs = Math.abs(currentTimeMillis - longValue);
            if (abs < 60000) {
                return context.getResources().getString(R.string.personal_online);
            }
            if (abs < 300000) {
                return context.getResources().getString(R.string.message_time);
            }
            if (abs < 3600000) {
                return ((int) ((((float) abs) * 1.0f) / 60000.0f)) + " " + context.getResources().getString(R.string.time_minute_ago);
            } else if (abs < 86400000) {
                return ((int) ((((float) abs) * 1.0f) / 3600000.0f)) + " " + context.getResources().getString(R.string.time_huors_ago);
            } else if (abs >= 691200000) {
                return null;
            } else {
                return ((int) ((((float) abs) * 1.0f) / 8.64E7f)) + " " + context.getResources().getString(R.string.time_days_ago);
            }
        }
        return null;
    }

    public static String getTotalTime(long j10) {
        if (Language.ARABIC.equals(q7.a.e().c())) {
            return EditTextUtils.convertNormalNumberToArabicNumber(getTotalUsTime(j10));
        }
        return getTotalUsTime(j10);
    }

    public static String getTotalUsTime(long j10) {
        if (j10 <= 0) {
            return "00:00";
        }
        long j11 = j10 / 1000;
        long j12 = j11 / 60;
        long j13 = j12 / 60;
        if (j13 == 0) {
            int i9 = (j12 > 10L ? 1 : (j12 == 10L ? 0 : -1));
            if (i9 < 0) {
                long j14 = j11 % 60;
                if (j14 < 10) {
                    return String.format("0%s:0%s", Long.valueOf(j12), Long.valueOf(j14));
                }
            }
            if (i9 < 0) {
                long j15 = j11 % 60;
                if (j15 >= 10) {
                    return String.format("0%s:%s", Long.valueOf(j12), Long.valueOf(j15));
                }
            }
            if (i9 >= 0) {
                long j16 = j11 % 60;
                if (j16 < 10) {
                    return String.format("%s:0%s", Long.valueOf(j12), Long.valueOf(j16));
                }
            }
            if (i9 >= 0) {
                long j17 = j11 % 60;
                return j17 >= 10 ? String.format("%s:%s", Long.valueOf(j12), Long.valueOf(j17)) : "00:00";
            }
            return "00:00";
        }
        long j18 = j12 % 60;
        int i10 = (j18 > 10L ? 1 : (j18 == 10L ? 0 : -1));
        if (i10 < 0) {
            long j19 = j11 % 60;
            if (j19 < 10) {
                return String.format("%s:0%s:0%s", Long.valueOf(j13), Long.valueOf(j18), Long.valueOf(j19));
            }
        }
        if (i10 < 0) {
            long j20 = j11 % 60;
            if (j20 >= 10) {
                return String.format("%s:0%s:%s", Long.valueOf(j13), Long.valueOf(j18), Long.valueOf(j20));
            }
        }
        if (i10 >= 0) {
            long j21 = j11 % 60;
            if (j21 < 10) {
                return String.format("%s:%s:0%s", Long.valueOf(j13), Long.valueOf(j18), Long.valueOf(j21));
            }
        }
        if (i10 >= 0) {
            long j22 = j11 % 60;
            return j22 >= 10 ? String.format("%s:%s:%s", Long.valueOf(j13), Long.valueOf(j18), Long.valueOf(j22)) : "00:00";
        }
        return "00:00";
    }

    public static String getUgcTime(Context context, long j10) {
        ServerConfig s10 = i.u().s();
        if (s10 != null && !TextUtils.isEmpty(s10.getTimeZone())) {
            try {
                TimeZone timeZone = TimeZone.getTimeZone(s10.getTimeZone());
                Calendar calendar = Calendar.getInstance();
                Calendar calendar2 = Calendar.getInstance(timeZone);
                calendar2.setTimeInMillis(j10);
                return getIMTime(context, calendar.getTimeInMillis() - calendar2.getTimeInMillis());
            } catch (Exception unused) {
                return getIMTime(context, System.currentTimeMillis() - j10);
            }
        }
        return getIMTime(context, System.currentTimeMillis() - j10);
    }

    public static String getVideoCommentTime(Context context, long j10) {
        String[] split = DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis())).split(CertificateUtil.DELIMITER);
        Integer.parseInt(split[0]);
        Integer.parseInt(split[1]);
        if (j10 < 0) {
            return context.getString(R.string.personal_online);
        }
        if (j10 < 60000) {
            return BaseApplication.getInstance().getString(R.string.personal_online);
        }
        if (j10 < 300000) {
            return BaseApplication.getInstance().getString(R.string.message_time);
        }
        if (j10 < 3600000) {
            long j11 = j10 / 60000;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(j11);
            sb2.append(" ");
            sb2.append(BaseApplication.getInstance().getString(j11 > 1 ? R.string.time_minutes_ago : R.string.time_minute_ago));
            return sb2.toString();
        } else if (j10 < 86400000) {
            long j12 = j10 / 3600000;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(j12);
            sb3.append(" ");
            sb3.append(BaseApplication.getInstance().getString(j12 > 1 ? R.string.time_huors_ago : R.string.time_huor_ago));
            return sb3.toString();
        } else {
            return (j10 / 86400000) + " " + BaseApplication.getInstance().getString(R.string.time_day_ago);
        }
    }

    private static String getWeekName(Context context, long j10) {
        String[] strArr = {context.getString(R.string.monday), context.getString(R.string.tuesday), context.getString(R.string.wednesday), context.getString(R.string.thursday), context.getString(R.string.friday), context.getString(R.string.saturday), context.getString(R.string.sunday)};
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(System.currentTimeMillis() - j10));
        int i9 = calendar.get(7) - 2;
        if (i9 < 0) {
            i9 += 7;
        }
        return strArr[i9 >= 0 ? i9 : 0];
    }

    public static String getWhoSawMeTime(long j10) {
        String valueOf;
        if (j10 < 60000) {
            return BaseApplication.getInstance().getString(R.string.message_time);
        }
        if (j10 >= AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED) {
            if (j10 < 86400000) {
                return DateFormatProvider.getAppLanguageFormatter("HH:mm").format(new Date(System.currentTimeMillis() - j10));
            } else if (j10 < WEEK) {
                return getWeekName(BaseApplication.getInstance(), j10);
            } else {
                return DateFormatProvider.getAppLanguageFormatter("M/d/yyyy").format(new Date(System.currentTimeMillis() - j10));
            }
        }
        long j11 = j10 / 60000;
        if (q7.a.e().j()) {
            valueOf = EditTextUtils.convertNormalNumberToArabicNumber(String.valueOf(j11));
        } else {
            valueOf = String.valueOf(j11);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(valueOf);
        sb2.append(" ");
        sb2.append(BaseApplication.getInstance().getString(j11 > 1 ? R.string.time_minutes_ago : R.string.time_minute_ago));
        return sb2.toString();
    }

    public static String timeToString(long j10, boolean z10) {
        int abs = (int) (Math.abs(j10 + 500) / 1000);
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            int i9 = (abs / 60) / 60;
            if (i9 < 10) {
                sb2.append("0");
            }
            sb2.append(i9);
            sb2.append(CertificateUtil.DELIMITER);
        }
        int i10 = (abs / 60) % 60;
        if (i10 < 10) {
            sb2.append("0");
        }
        sb2.append(i10);
        sb2.append(CertificateUtil.DELIMITER);
        int i11 = abs % 60;
        if (i11 < 10) {
            sb2.append("0");
        }
        sb2.append(i11);
        return sb2.toString();
    }

    @Override // com.guochao.lib_service_center.util.service.TimeFormatter
    @NonNull
    public String getVoiceRoomOfflineTime(long j10) {
        return Tool.helloHistoryTime(j10, BaseApplication.getInstance());
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
    }

    public static Pair getDressUpTimePair(Context context, DressUpData dressUpData, long j10) {
        int itemType = dressUpData.getItemType();
        int i9 = R.string.mvp_gift_useed;
        if (itemType != 1) {
            if (dressUpData.beFrom == DressUpData.BE_FROM_MVP) {
                boolean z10 = dressUpData.getCanItBeUsed() == 1;
                boolean isCheck = dressUpData.isCheck();
                boolean z11 = dressUpData.received != 1;
                if (z10) {
                    Boolean valueOf = Boolean.valueOf(!isCheck);
                    if (!isCheck) {
                        i9 = R.string.mvp_gift_un_use;
                    }
                    return new Pair(valueOf, context.getString(i9));
                }
                return new Pair(Boolean.valueOf(z11), context.getString(R.string.lost_effectiveness));
            }
            return getDressUpTimePair(context, dressUpData.getExpireTime(), dressUpData.getTypes(), j10, dressUpData.isCheck());
        } else if (dressUpData.isCheck()) {
            return new Pair(Boolean.FALSE, context.getString(R.string.mvp_gift_useed));
        } else {
            return new Pair(Boolean.TRUE, context.getString(R.string.mvp_gift_un_use));
        }
    }

    @Override // com.guochao.lib_service_center.util.service.TimeFormatter
    @NonNull
    public String getIMTime(long j10) {
        return getIMTime(BaseApplication.getInstance(), j10);
    }
}
