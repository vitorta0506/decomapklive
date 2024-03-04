package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.xiaomi.push.service.az;
import java.util.Locale;
import sf.k;
/* loaded from: classes5.dex */
public class z1 {

    /* renamed from: a  reason: collision with root package name */
    public final String f37426a;

    /* renamed from: b  reason: collision with root package name */
    public final String f37427b;

    /* renamed from: c  reason: collision with root package name */
    public final String f37428c;

    /* renamed from: d  reason: collision with root package name */
    public final String f37429d;

    /* renamed from: e  reason: collision with root package name */
    public final String f37430e;

    /* renamed from: f  reason: collision with root package name */
    public final String f37431f;

    /* renamed from: g  reason: collision with root package name */
    public final int f37432g;

    public z1(String str, String str2, String str3, String str4, String str5, String str6, int i9) {
        this.f37426a = str;
        this.f37427b = str2;
        this.f37428c = str3;
        this.f37429d = str4;
        this.f37430e = str5;
        this.f37431f = str6;
        this.f37432g = i9;
    }

    private static String c(Context context) {
        if ("com.xiaomi.xmsf".equals(context)) {
            if (TextUtils.isEmpty(null)) {
                String f10 = sf.e.f("ro.miui.region");
                return TextUtils.isEmpty(f10) ? sf.e.f("ro.product.locale.region") : f10;
            }
            return null;
        }
        return sf.e.m();
    }

    public static boolean d() {
        try {
            return sf.j.c(null, "miui.os.Build").getField("IS_ALPHA_BUILD").getBoolean(null);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean e(Context context) {
        return "com.xiaomi.xmsf".equals(context.getPackageName()) && d();
    }

    private static boolean f(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    public az.b a(XMPushService xMPushService) {
        az.b bVar = new az.b(xMPushService);
        b(bVar, xMPushService, xMPushService.m1538b(), com.huawei.hms.opendevice.c.f27627a);
        return bVar;
    }

    public az.b b(az.b bVar, Context context, s1 s1Var, String str) {
        bVar.f37141a = context.getPackageName();
        bVar.f37142b = this.f37426a;
        bVar.f37149i = this.f37428c;
        bVar.f37143c = this.f37427b;
        bVar.f37148h = "5";
        bVar.f37144d = "XMPUSH-PASS";
        bVar.f37145e = false;
        k.a aVar = new k.a();
        aVar.a(HiAnalyticsConstant.BI_KEY_SDK_VER, 48).a("cpvn", "5_0_6-G").a("cpvc", 50006).a("country_code", b.a(context).f()).a("region", b.a(context).b()).a("miui_vn", sf.e.p()).a("miui_vc", Integer.valueOf(sf.e.b(context))).a("xmsf_vc", Integer.valueOf(com.xiaomi.channel.commonutils.android.a.b(context, "com.xiaomi.xmsf"))).a("android_ver", Integer.valueOf(Build.VERSION.SDK_INT)).a("n_belong_to_app", Boolean.valueOf(r.t(context))).a("systemui_vc", Integer.valueOf(com.xiaomi.channel.commonutils.android.a.a(context)));
        String c10 = c(context);
        if (!TextUtils.isEmpty(c10)) {
            aVar.a("latest_country_code", c10);
        }
        bVar.f37146f = aVar.toString();
        String str2 = f(context) ? "1000271" : this.f37429d;
        k.a aVar2 = new k.a();
        aVar2.a("appid", str2).a("locale", Locale.getDefault().toString()).a("sync", 1);
        if (e(context)) {
            aVar2.a("ab", str);
        }
        bVar.f37147g = aVar2.toString();
        bVar.f37151k = s1Var;
        return bVar;
    }
}
