package com.huawei.hms.hatool;

import android.content.Context;
import java.util.LinkedHashMap;
/* loaded from: classes4.dex */
public abstract class l1 {

    /* renamed from: a  reason: collision with root package name */
    public static j1 f27543a;

    public static synchronized j1 a() {
        j1 j1Var;
        synchronized (l1.class) {
            if (f27543a == null) {
                f27543a = o1.c().b();
            }
            j1Var = f27543a;
        }
        return j1Var;
    }

    public static void a(int i9, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (a() == null || !w0.b().a()) {
            return;
        }
        if (i9 == 1 || i9 == 0) {
            f27543a.a(i9, str, linkedHashMap);
            return;
        }
        y.d("hmsSdk", "Data type no longer collects range.type: " + i9);
    }

    @Deprecated
    public static void a(Context context, String str, String str2) {
        if (a() != null) {
            f27543a.a(context, str, str2);
        }
    }

    public static boolean b() {
        return o1.c().a();
    }

    public static void c() {
        if (a() == null || !w0.b().a()) {
            return;
        }
        f27543a.a(-1);
    }
}
