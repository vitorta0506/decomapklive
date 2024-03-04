package qi;

import java.util.regex.Pattern;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f57339a = Pattern.compile("^(([1-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){1}(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){2}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f57340b = Pattern.compile("^::[fF]{4}:(([1-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){1}(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){2}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f57341c = Pattern.compile("^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f57342d = Pattern.compile("^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$");

    public static boolean a(String str) {
        return f57339a.matcher(str).matches();
    }

    public static boolean b(String str) {
        return d(str) || c(str);
    }

    public static boolean c(String str) {
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) == ':') {
                i9++;
            }
        }
        return i9 <= 7 && f57342d.matcher(str).matches();
    }

    public static boolean d(String str) {
        return f57341c.matcher(str).matches();
    }
}
