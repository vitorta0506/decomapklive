package com.google.android.gms.internal.recaptcha;

import android.os.Build;
import android.os.Trace;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class d7 {

    /* renamed from: a  reason: collision with root package name */
    static final d2 f8590a = new d2("tiktok_systrace");

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap<Thread, e7> f8591b = new WeakHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<e7> f8592c = new b7();

    /* renamed from: d  reason: collision with root package name */
    private static final Deque<Object> f8593d = new ArrayDeque();

    /* renamed from: e  reason: collision with root package name */
    private static final Deque<u6> f8594e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f8595f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static final Runnable f8596g = new Runnable() { // from class: com.google.android.gms.internal.recaptcha.z6
        @Override // java.lang.Runnable
        public final void run() {
            d7.g();
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private static final Runnable f8597h = new Runnable() { // from class: com.google.android.gms.internal.recaptcha.a7
        @Override // java.lang.Runnable
        public final void run() {
            d7.h();
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f8598i = 0;

    static u6 a() {
        return f8592c.get().f8632b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u6 b() {
        u6 a10 = a();
        return a10 == null ? new n6() : a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u6 c(u6 u6Var) {
        return k(f8592c.get(), u6Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(u6 u6Var) {
        if (u6Var.zza() == null) {
            return u6Var.D();
        }
        String d10 = d(u6Var.zza());
        String D = u6Var.D();
        StringBuilder sb2 = new StringBuilder(String.valueOf(d10).length() + 4 + String.valueOf(D).length());
        sb2.append(d10);
        sb2.append(" -> ");
        sb2.append(D);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(u6 u6Var) {
        Objects.requireNonNull(u6Var);
        e7 e7Var = f8592c.get();
        u6 u6Var2 = e7Var.f8632b;
        String D = u6Var2.D();
        String D2 = u6Var.D();
        if (u6Var == u6Var2) {
            k(e7Var, u6Var2.zza());
            return;
        }
        throw new IllegalStateException(g8.b("Wrong trace, expected %s but got %s", D, D2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g() {
        Object remove = f8593d.remove();
        if (remove == f8595f) {
            f8594e.pop();
        } else {
            f8594e.push((u6) remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h() {
        c(null);
        f8593d.clear();
        h2.a().removeCallbacks(f8596g);
        f8594e.clear();
    }

    public static q6 i(String str, int i9) {
        return j(str, 1, s6.f9036c, true);
    }

    public static q6 j(String str, int i9, t6 t6Var, boolean z10) {
        u6 r12;
        u6 a10 = a();
        if (a10 == null) {
            r12 = new o6(str, t6Var, z10);
        } else if (a10 instanceof g6) {
            r12 = ((g6) a10).q0(str, t6Var, z10);
        } else {
            r12 = a10.r1(str, t6Var);
        }
        c(r12);
        return new q6(r12);
    }

    private static u6 k(e7 e7Var, u6 u6Var) {
        boolean a10;
        u6 u6Var2 = e7Var.f8632b;
        if (u6Var2 == u6Var) {
            return u6Var;
        }
        if (u6Var2 == null) {
            if (Build.VERSION.SDK_INT >= 29) {
                a10 = c7.a();
            } else {
                a10 = f2.a(f8590a);
            }
            e7Var.f8631a = a10;
        }
        if (e7Var.f8631a) {
            o(u6Var2, u6Var);
        }
        e7Var.f8632b = u6Var;
        return u6Var2;
    }

    private static void l(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    private static void m(u6 u6Var) {
        if (u6Var.zza() != null) {
            m(u6Var.zza());
        }
        l(u6Var.D());
    }

    private static void n(u6 u6Var) {
        Trace.endSection();
        if (u6Var.zza() != null) {
            n(u6Var.zza());
        }
    }

    private static void o(u6 u6Var, u6 u6Var2) {
        if (u6Var != null) {
            if (u6Var2 != null) {
                if (u6Var.zza() == u6Var2) {
                    Trace.endSection();
                    return;
                } else if (u6Var == u6Var2.zza()) {
                    l(u6Var2.D());
                    return;
                }
            }
            n(u6Var);
        }
        if (u6Var2 != null) {
            m(u6Var2);
        }
    }
}
