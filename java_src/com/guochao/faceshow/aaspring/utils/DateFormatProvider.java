package com.guochao.faceshow.aaspring.utils;

import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes3.dex */
public class DateFormatProvider {
    public static SimpleDateFormat getAppLanguageFormatter(String str) {
        Locale m10 = q7.a.e().m();
        if (m10 == null) {
            m10 = Locale.getDefault();
        }
        return getFormatter(str, m10);
    }

    public static SimpleDateFormat getDefaultFormatter(String str) {
        return getFormatter(str, Locale.US);
    }

    public static SimpleDateFormat getFormatter(String str, Locale locale) {
        return new SimpleDateFormat(str, locale);
    }

    public static SimpleDateFormat getSystemFormatter(String str) {
        return getFormatter(str, Locale.getDefault());
    }
}
