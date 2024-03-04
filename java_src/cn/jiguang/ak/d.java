package cn.jiguang.ak;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static String f1931a = "";

    /* renamed from: b  reason: collision with root package name */
    private static d f1932b;

    /* renamed from: e  reason: collision with root package name */
    private static final String f1933e = cn.jiguang.s.a.b(new byte[]{113, 124, 98, 97, 67, 26, 54, 39, 112, 114, 81, 80, 112, 38, 124, 97, 69, 83, 113, 38, 117, ByteCompanionObject.MAX_VALUE, 31, 76, 123, 123, 57, 103, 1, 15, 120, 120, 102, 118, 71, 67, 54, 123, 98, 112, 68, 85, 106});

    /* renamed from: c  reason: collision with root package name */
    private Context f1934c;

    /* renamed from: d  reason: collision with root package name */
    private String f1935d = "";

    public static d a() {
        if (f1932b == null) {
            synchronized (d.class) {
                if (f1932b == null) {
                    f1932b = new d();
                }
            }
        }
        return f1932b;
    }

    public static void a(Context context, String str) {
        try {
            cn.jiguang.al.a.a("JLocationHelper", "parseConfig:" + str);
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("code") != 0) {
                cn.jiguang.o.b.a(context, "JLocationv2_g", c.f1920e * 1000);
                cn.jiguang.o.b.a(context, "JLocationv2_w", c.f1919d * 1000);
                cn.jiguang.o.b.a(context, "JLocationv2_c", c.f1921f * 1000);
                cn.jiguang.o.b.b(context, "JLocationHelper", c.f1927l * 1000);
                return;
            }
            c.f1925j = jSONObject.optString("pkgList", "");
            c.f1926k = jSONObject.optString("servList", "");
            String optString = jSONObject.optString("enable", "0,0,0");
            if (!TextUtils.isEmpty(optString)) {
                String[] split = optString.split(",");
                if (split.length >= 3) {
                    c.f1917b = split[0].equals("1");
                    c.f1916a = split[1].equals("1");
                    c.f1918c = split[2].equals("1");
                }
            }
            int optInt = jSONObject.optInt("r_interval", LocalCache.TIME_HOUR);
            c.f1927l = optInt;
            cn.jiguang.o.b.b(context, "JLocationv2", optInt * 1000);
            String optString2 = jSONObject.optString("b_interval", "800,800,800");
            if (!TextUtils.isEmpty(optString2)) {
                String[] split2 = optString2.split(",");
                if (split2.length >= 3) {
                    c.f1920e = Integer.parseInt(split2[0]);
                    c.f1919d = Integer.parseInt(split2[1]);
                    c.f1921f = Integer.parseInt(split2[2]);
                    cn.jiguang.o.b.a(context, "JLocationv2_g", c.f1920e * 1000);
                    cn.jiguang.o.b.a(context, "JLocationv2_w", c.f1919d * 1000);
                    cn.jiguang.o.b.a(context, "JLocationv2_c", c.f1921f * 1000);
                }
            }
            c.f1923h = jSONObject.optInt("wi_level", -90);
            c.f1922g = jSONObject.optInt("wi_count", 20);
            c.f1924i = jSONObject.optInt("wi_percent", 30);
            c.f1928m = jSONObject.optInt("g_interval", 240);
            c.f1929n = jSONObject.optInt("g_distance", 800);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JLocationHelper", "parseConfig error:" + th2);
            cn.jiguang.o.b.a(context, "JLocationv2_g", (long) (c.f1920e * 1000));
            cn.jiguang.o.b.a(context, "JLocationv2_w", (long) (c.f1919d * 1000));
            cn.jiguang.o.b.a(context, "JLocationv2_c", (long) (c.f1921f * 1000));
            cn.jiguang.o.b.b(context, "JLocationHelper", c.f1927l * 1000);
        }
    }

    public void a(Context context) {
        this.f1934c = JCoreManager.getAppContext(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x027b, code lost:
        if (r2 == null) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ak.d.b(android.content.Context):java.lang.String");
    }

    public boolean b() {
        String[] split;
        try {
            for (String str : c.f1925j.split(",")) {
                if (cn.jiguang.f.a.h(this.f1934c, str)) {
                    cn.jiguang.al.a.a("JLocationHelper", "checkSafeStatus pkgName = " + str);
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JLocationHelper", "checkSafeStatus error:" + th2);
            return false;
        }
    }
}
