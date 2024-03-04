package com.huawei.hms.hatool;

import android.util.Pair;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class d1 extends v {

    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f27445a;

        static {
            int[] iArr = new int[y0.values().length];
            f27445a = iArr;
            try {
                iArr[y0.SN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27445a[y0.IMEI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27445a[y0.UDID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static e1 a(String str, String str2) {
        e1 a10 = v.a(str, str2);
        x0 c10 = z0.a().c(str, str2);
        a10.g(z0.a().a(c.c(str, str2)));
        a10.f(c.o(str, str2));
        a10.c(z0.a().f(str, str2));
        int i9 = a.f27445a[c10.a().ordinal()];
        if (i9 == 1) {
            a10.d(c10.b());
        } else if (i9 == 2) {
            a10.b(c10.b());
        } else if (i9 == 3) {
            a10.e(c10.b());
        }
        return a10;
    }

    public static f1 a(String str, String str2, String str3, String str4) {
        f1 a10 = v.a(str, str2, str3, str4);
        String a11 = z0.a().a(c.c(str2, str3));
        long currentTimeMillis = System.currentTimeMillis();
        String b10 = zb.b.b(b.f() + a11 + currentTimeMillis);
        a10.f(String.valueOf(currentTimeMillis));
        a10.g(b10);
        return a10;
    }

    public static g1 a(String str, String str2, String str3) {
        g1 a10 = v.a(str, str2, str3);
        Pair<String, String> e10 = z0.a().e(str2, str);
        a10.f((String) e10.first);
        a10.g((String) e10.second);
        a10.h(f.b());
        a10.d(z0.a().d(str2, str));
        return a10;
    }

    public static C0711r a(List<q> list, String str, String str2, String str3, String str4) {
        y.c("hmsSdk", "generate UploadData");
        C0711r b10 = v.b(str, str2);
        if (b10 == null) {
            return null;
        }
        b10.a(a(x.d().a(), str, str2, str3));
        b10.a(a(str, str2));
        b10.a(a(str2, str, str4));
        b10.a(c.g(str, str2));
        b10.a(list);
        return b10;
    }

    public static Map<String, String> b(String str, String str2, String str3) {
        Map<String, String> c10 = v.c(str, str3);
        Map<String, String> i9 = c.i(str, str2);
        if (i9 == null) {
            return c10;
        }
        c10.putAll(i9);
        return c10;
    }
}
