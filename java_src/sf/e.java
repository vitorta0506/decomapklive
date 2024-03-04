package sf;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.push.q3;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f57895a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static int f57896b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, Region> f57897c;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a() {
        /*
            int r0 = sf.e.f57895a
            if (r0 != 0) goto L47
            r0 = 0
            java.lang.String r1 = "ro.miui.ui.version.code"
            java.lang.String r1 = f(r1)     // Catch: java.lang.Throwable -> L29
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L29
            r2 = 1
            if (r1 == 0) goto L21
            java.lang.String r1 = "ro.miui.ui.version.name"
            java.lang.String r1 = f(r1)     // Catch: java.lang.Throwable -> L29
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L29
            if (r1 != 0) goto L1f
            goto L21
        L1f:
            r1 = 0
            goto L22
        L21:
            r1 = 1
        L22:
            if (r1 == 0) goto L25
            goto L26
        L25:
            r2 = 2
        L26:
            sf.e.f57895a = r2     // Catch: java.lang.Throwable -> L29
            goto L31
        L29:
            r1 = move-exception
            java.lang.String r2 = "get isMIUI failed"
            tf.c.n(r2, r1)
            sf.e.f57895a = r0
        L31:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "isMIUI's value is: "
            r0.append(r1)
            int r1 = sf.e.f57895a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            tf.c.s(r0)
        L47:
            int r0 = sf.e.f57895a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sf.e.a():int");
    }

    public static int b(Context context) {
        String f10 = f("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(f10) || !TextUtils.isDigitsOnly(f10)) {
            return 0;
        }
        return Integer.parseInt(f10);
    }

    public static Region c(String str) {
        Region l10 = l(str);
        return l10 == null ? Region.Global : l10;
    }

    public static String d(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.toString() + " " + e(intent.getExtras());
    }

    public static String e(Bundle bundle) {
        String e10;
        StringBuilder sb2 = new StringBuilder("Bundle[");
        if (bundle == null) {
            sb2.append("null");
        } else {
            boolean z10 = true;
            for (String str : bundle.keySet()) {
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(str);
                sb2.append('=');
                Object obj = bundle.get(str);
                if (obj instanceof int[]) {
                    e10 = Arrays.toString((int[]) obj);
                } else if (obj instanceof byte[]) {
                    e10 = Arrays.toString((byte[]) obj);
                } else if (obj instanceof boolean[]) {
                    e10 = Arrays.toString((boolean[]) obj);
                } else if (obj instanceof short[]) {
                    e10 = Arrays.toString((short[]) obj);
                } else if (obj instanceof long[]) {
                    e10 = Arrays.toString((long[]) obj);
                } else if (obj instanceof float[]) {
                    e10 = Arrays.toString((float[]) obj);
                } else if (obj instanceof double[]) {
                    e10 = Arrays.toString((double[]) obj);
                } else if (obj instanceof String[]) {
                    e10 = Arrays.toString((String[]) obj);
                } else if (obj instanceof CharSequence[]) {
                    e10 = Arrays.toString((CharSequence[]) obj);
                } else if (obj instanceof Parcelable[]) {
                    e10 = Arrays.toString((Parcelable[]) obj);
                } else if (obj instanceof Bundle) {
                    e10 = e((Bundle) obj);
                } else {
                    sb2.append(obj);
                    z10 = false;
                }
                sb2.append(e10);
                z10 = false;
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public static String f(String str) {
        try {
            try {
                return (String) q3.g("android.os.SystemProperties", "get", str, "");
            } catch (Exception e10) {
                tf.c.u("fail to get property. " + e10);
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void g() {
        if (f57897c != null) {
            return;
        }
        HashMap hashMap = new HashMap();
        f57897c = hashMap;
        Region region = Region.Europe;
        hashMap.put("FI", region);
        f57897c.put("SE", region);
        f57897c.put("NO", region);
        f57897c.put("FO", region);
        f57897c.put("EE", region);
        f57897c.put("LV", region);
        f57897c.put("LT", region);
        f57897c.put("BY", region);
        f57897c.put("MD", region);
        f57897c.put("UA", region);
        f57897c.put("PL", region);
        f57897c.put("CZ", region);
        f57897c.put("SK", region);
        f57897c.put("HU", region);
        f57897c.put("DE", region);
        f57897c.put("AT", region);
        f57897c.put("CH", region);
        f57897c.put("LI", region);
        f57897c.put("GB", region);
        f57897c.put("IE", region);
        f57897c.put("NL", region);
        f57897c.put("BE", region);
        f57897c.put("LU", region);
        f57897c.put("FR", region);
        f57897c.put("RO", region);
        f57897c.put("BG", region);
        f57897c.put("RS", region);
        f57897c.put("MK", region);
        f57897c.put("AL", region);
        f57897c.put("GR", region);
        f57897c.put("SI", region);
        f57897c.put("HR", region);
        f57897c.put("IT", region);
        f57897c.put("SM", region);
        f57897c.put("MT", region);
        f57897c.put("ES", region);
        f57897c.put("PT", region);
        f57897c.put("AD", region);
        f57897c.put("CY", region);
        f57897c.put("DK", region);
        f57897c.put("IS", region);
        f57897c.put("EL", region);
        f57897c.put("UK", region);
        f57897c.put("RU", Region.Russia);
        f57897c.put("IN", Region.India);
    }

    public static boolean h() {
        return a() == 1;
    }

    public static boolean i(Context context) {
        return context != null && j(context.getPackageName());
    }

    public static boolean j(String str) {
        return "com.xiaomi.xmsf".equals(str);
    }

    public static int k(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static Region l(String str) {
        g();
        return f57897c.get(str.toUpperCase());
    }

    public static String m() {
        String a10 = i.a("ro.miui.region", "");
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("persist.sys.oppo.region", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("ro.oppo.regionmark", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("ro.vendor.oplus.regionmark", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("ro.hw.country", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("ro.csc.countryiso_code", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = q(i.a("ro.product.country.region", ""));
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("gsm.vivo.countrycode", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("persist.sys.oem.region", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("ro.product.locale.region", "");
        }
        if (TextUtils.isEmpty(a10)) {
            a10 = i.a("persist.sys.country", "");
        }
        if (!TextUtils.isEmpty(a10)) {
            tf.c.l("get region from system, region = " + a10);
        }
        if (TextUtils.isEmpty(a10)) {
            String country = Locale.getDefault().getCountry();
            tf.c.l("locale.default.country = " + country);
            return country;
        }
        return a10;
    }

    public static String n(String str) {
        return Region.Global.name().equals(str) ? "SG" : Region.Europe.name().equals(str) ? "DE" : Region.Russia.name().equals(str) ? "RU" : Region.India.name().equals(str) ? "IN" : "";
    }

    public static boolean o() {
        if (f57896b < 0) {
            f57896b = !s() ? 1 : 0;
        }
        return f57896b > 0;
    }

    public static String p() {
        return f("ro.miui.ui.version.name");
    }

    private static String q(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] split = str.split("-");
        return split.length > 0 ? split[0] : str;
    }

    public static boolean r() {
        return true;
    }

    public static boolean s() {
        String str = "";
        try {
            str = i.a("ro.miui.ui.version.code", "");
        } catch (Exception unused) {
        }
        return !TextUtils.isEmpty(str);
    }
}
