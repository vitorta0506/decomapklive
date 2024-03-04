package com.guochao.faceshow.aaspring.utils;

import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Locale;
/* loaded from: classes3.dex */
public class Formatter {
    public static String formatNum(float f10, int i9) {
        try {
            double doubleValue = new BigDecimal(f10).setScale(i9, 4).doubleValue();
            return StringUtils.convertNumberToNormalNumber(doubleValue + "");
        } catch (Exception unused) {
            return "" + f10;
        }
    }

    public static String getFormat(long j10) {
        if (j10 >= 1000000) {
            return priceFormat((j10 / 10) / 100000.0d) + "M";
        } else if (j10 >= 1000) {
            return priceFormat((j10 / 10) / 100.0d) + "K";
        } else {
            return j10 + "";
        }
    }

    public static String priceFormat(double d10) {
        DecimalFormat decimalFormat = (DecimalFormat) DecimalFormat.getNumberInstance(new Locale("en", "US"));
        decimalFormat.applyPattern("######0.##");
        return decimalFormat.format(d10);
    }

    public static String timeFormat(float f10) {
        double doubleValue = new BigDecimal(f10).setScale(1, 4).doubleValue();
        return StringUtils.convertNumberToNormalNumber(doubleValue + NotifyType.SOUND);
    }

    public static String formatNum(String str, int i9) {
        try {
            double doubleValue = new BigDecimal(str).setScale(i9, 4).doubleValue();
            return StringUtils.convertNumberToNormalNumber(doubleValue + "");
        } catch (Exception unused) {
            return str;
        }
    }

    public static String formatNum(Double d10, int i9) {
        try {
            double doubleValue = new BigDecimal(d10.doubleValue()).setScale(i9, 4).doubleValue();
            return StringUtils.convertNumberToNormalNumber(doubleValue + "");
        } catch (Exception unused) {
            return d10 == null ? "" : d10.toString();
        }
    }

    public static String getFormat(String str) {
        try {
            return getFormat(Integer.parseInt(str));
        } catch (Exception unused) {
            return str;
        }
    }
}
