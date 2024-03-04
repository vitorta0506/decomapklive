package fc;

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f39691a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i9 = 1;
        if (1 == length) {
            return String.valueOf('*');
        }
        StringBuilder sb2 = new StringBuilder(length);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (f39691a.matcher(String.valueOf(charAt)).matches()) {
                if (i9 % 2 == 0) {
                    charAt = '*';
                }
                i9++;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    private static String b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            sb2.append(a(str2));
        }
        return sb2.toString();
    }

    private static String c(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            if (z10) {
                sb2.append(a(str));
            } else {
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    public static void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.e(str, c(str2, false));
    }

    public static void e(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            return;
        }
        Log.e(str, b(str2, str3));
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.i(str, c(str2, false));
    }
}
