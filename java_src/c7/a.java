package c7;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public final class a {
    public static String a(String str, Date date) {
        if (str == null || "".equals(str) || date == null) {
            return null;
        }
        return new SimpleDateFormat(str, Locale.US).format(date);
    }

    private static int b(String str) {
        return TimeZone.getDefault().getRawOffset() - TimeZone.getTimeZone(str).getRawOffset();
    }

    public static String c(String str, String str2, String str3, String str4) {
        if (str != null && !"".equals(str) && str2 != null && !"".equals(str2) && str3 != null && !"".equals(str3) && str4 != null && !"".equals(str4)) {
            try {
                return a(str3, new Date(new SimpleDateFormat(str).parse(str2).getTime() - b(str4)));
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public static String d(String str, String str2) {
        return c("yyyy-MM-dd HH:mm:ss", str, "yyyy-MM-dd HH:mm:ss", str2);
    }
}
