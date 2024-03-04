package cn.jiguang.at;

import android.os.Build;
import android.text.TextUtils;
import cn.jiguang.f.g;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Random;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f2091c = new c();

    /* renamed from: a  reason: collision with root package name */
    public final String f2092a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2093b;

    private c() {
        String d10 = d();
        this.f2092a = d10;
        this.f2093b = a(d10);
    }

    public static c a() {
        return f2091c;
    }

    static String a(String str) {
        return String.format("QiniuAndroid%s/%s (%s; %s; %s", "", "VERSION", b(), c(), str);
    }

    private static String a(String str, String str2) {
        String lowerCase = str.toLowerCase(Locale.getDefault());
        if (lowerCase.startsWith("unknown") || lowerCase.startsWith("alps") || lowerCase.startsWith("android") || lowerCase.startsWith("sprd") || lowerCase.startsWith("spreadtrum") || lowerCase.startsWith("rockchip") || lowerCase.startsWith("wondermedia") || lowerCase.startsWith("mtk") || lowerCase.startsWith("mt65") || lowerCase.startsWith("nvidia") || lowerCase.startsWith("brcm") || lowerCase.startsWith("marvell") || str2.toLowerCase(Locale.getDefault()).contains(lowerCase)) {
            return null;
        }
        return str;
    }

    public static String b() {
        try {
            String str = Build.VERSION.RELEASE;
            return str == null ? "-" : g.m(str.trim());
        } catch (Throwable unused) {
            return "-";
        }
    }

    public static String c() {
        try {
            String trim = Build.MODEL.trim();
            String a10 = a(Build.MANUFACTURER.trim(), trim);
            if (TextUtils.isEmpty(a10)) {
                a10 = a(Build.BRAND.trim(), trim);
            }
            StringBuilder sb2 = new StringBuilder();
            if (a10 == null) {
                a10 = "-";
            }
            sb2.append(a10);
            sb2.append("-");
            sb2.append(trim);
            return g.m(sb2.toString());
        } catch (Throwable unused) {
            return "-";
        }
    }

    private static String d() {
        Random random = new Random();
        return System.currentTimeMillis() + "" + random.nextInt(999);
    }

    public String b(String str) {
        String trim = ("" + str).trim();
        if (trim.length() > 15) {
            trim = trim.substring(0, Math.min(16, trim.length()));
        }
        return new String((this.f2093b + "; " + trim + ")").getBytes(Charset.forName("ISO-8859-1")));
    }
}
