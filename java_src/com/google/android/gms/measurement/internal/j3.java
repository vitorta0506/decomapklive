package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
/* loaded from: classes2.dex */
public final class j3 extends h5 {

    /* renamed from: c  reason: collision with root package name */
    private char f9501c;

    /* renamed from: d  reason: collision with root package name */
    private long f9502d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private String f9503e;

    /* renamed from: f  reason: collision with root package name */
    private final h3 f9504f;

    /* renamed from: g  reason: collision with root package name */
    private final h3 f9505g;

    /* renamed from: h  reason: collision with root package name */
    private final h3 f9506h;

    /* renamed from: i  reason: collision with root package name */
    private final h3 f9507i;

    /* renamed from: j  reason: collision with root package name */
    private final h3 f9508j;

    /* renamed from: k  reason: collision with root package name */
    private final h3 f9509k;

    /* renamed from: l  reason: collision with root package name */
    private final h3 f9510l;

    /* renamed from: m  reason: collision with root package name */
    private final h3 f9511m;

    /* renamed from: n  reason: collision with root package name */
    private final h3 f9512n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(n4 n4Var) {
        super(n4Var);
        this.f9501c = (char) 0;
        this.f9502d = -1L;
        this.f9504f = new h3(this, 6, false, false);
        this.f9505g = new h3(this, 6, true, false);
        this.f9506h = new h3(this, 6, false, true);
        this.f9507i = new h3(this, 5, false, false);
        this.f9508j = new h3(this, 5, true, false);
        this.f9509k = new h3(this, 5, false, true);
        this.f9510l = new h3(this, 4, false, false);
        this.f9511m = new h3(this, 3, false, false);
        this.f9512n = new h3(this, 2, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String A(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String B = B(z10, obj);
        String B2 = B(z10, obj2);
        String B3 = B(z10, obj3);
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(B)) {
            sb2.append(str2);
            sb2.append(B);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(B2)) {
            str3 = str2;
        } else {
            sb2.append(str2);
            sb2.append(B2);
        }
        if (!TextUtils.isEmpty(B3)) {
            sb2.append(str3);
            sb2.append(B3);
        }
        return sb2.toString();
    }

    static String B(boolean z10, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i9 = 0;
        if (obj instanceof Long) {
            if (!z10) {
                return obj.toString();
            }
            Long l10 = (Long) obj;
            if (Math.abs(l10.longValue()) < 100) {
                return obj.toString();
            }
            String str2 = obj.toString().charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l10.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            return str2 + round + "..." + str2 + round2;
        } else if (obj instanceof Boolean) {
            return obj.toString();
        } else {
            if (obj instanceof Throwable) {
                Throwable th2 = (Throwable) obj;
                StringBuilder sb2 = new StringBuilder(z10 ? th2.getClass().getName() : th2.toString());
                String G = G(n4.class.getCanonicalName());
                StackTraceElement[] stackTrace = th2.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i9 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i9];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && G(className).equals(G)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i9++;
                }
                return sb2.toString();
            } else if (!(obj instanceof i3)) {
                return z10 ? "-" : obj.toString();
            } else {
                str = ((i3) obj).f9485a;
                return str;
            }
        }
    }

    private static String G(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object z(String str) {
        if (str == null) {
            return null;
        }
        return new i3(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String C() {
        String str;
        synchronized (this) {
            if (this.f9503e == null) {
                if (this.f9432a.Q() != null) {
                    this.f9503e = this.f9432a.Q();
                } else {
                    this.f9503e = this.f9432a.z().w();
                }
            }
            com.google.android.gms.common.internal.p.j(this.f9503e);
            str = this.f9503e;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F(int i9, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        if (!z10 && Log.isLoggable(C(), i9)) {
            Log.println(i9, C(), A(false, str, obj, obj2, obj3));
        }
        if (z11 || i9 < 5) {
            return;
        }
        com.google.android.gms.common.internal.p.j(str);
        l4 G = this.f9432a.G();
        if (G == null) {
            Log.println(6, C(), "Scheduler not set. Not logging error/warn");
        } else if (!G.n()) {
            Log.println(6, C(), "Scheduler not initialized. Not logging error/warn");
        } else {
            G.z(new g3(this, i9 >= 9 ? 8 : i9, str, obj, obj2, obj3));
        }
    }

    @Override // com.google.android.gms.measurement.internal.h5
    protected final boolean j() {
        return false;
    }

    public final h3 q() {
        return this.f9511m;
    }

    public final h3 r() {
        return this.f9504f;
    }

    public final h3 s() {
        return this.f9506h;
    }

    public final h3 t() {
        return this.f9505g;
    }

    public final h3 u() {
        return this.f9510l;
    }

    public final h3 v() {
        return this.f9512n;
    }

    public final h3 w() {
        return this.f9507i;
    }

    public final h3 x() {
        return this.f9509k;
    }

    public final h3 y() {
        return this.f9508j;
    }
}
