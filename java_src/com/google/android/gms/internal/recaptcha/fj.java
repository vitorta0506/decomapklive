package com.google.android.gms.internal.recaptcha;

import java.text.SimpleDateFormat;
import org.threeten.bp.Year;
/* loaded from: classes2.dex */
public final class fj {

    /* renamed from: a  reason: collision with root package name */
    public static final ji f8684a;

    /* renamed from: b  reason: collision with root package name */
    public static final ji f8685b;

    /* renamed from: c  reason: collision with root package name */
    public static final ji f8686c;

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f8687d;

    static {
        ii v10 = ji.v();
        v10.p(-62135596800L);
        v10.o(0);
        f8684a = v10.l();
        ii v11 = ji.v();
        v11.p(253402300799L);
        v11.o(Year.MAX_VALUE);
        f8685b = v11.l();
        ii v12 = ji.v();
        v12.p(0L);
        v12.o(0);
        f8686c = v12.l();
        f8687d = new ej();
    }

    public static mf a(ji jiVar, ji jiVar2) {
        b(jiVar);
        b(jiVar2);
        long c10 = va.c(jiVar2.u(), jiVar.u());
        int t10 = jiVar2.t();
        int t11 = jiVar.t();
        long j10 = t10 - t11;
        int i9 = (int) j10;
        if (j10 == i9) {
            return cj.c(c10, i9);
        }
        StringBuilder sb2 = new StringBuilder(51);
        sb2.append("overflow: checkedSubtract(");
        sb2.append(t10);
        sb2.append(", ");
        sb2.append(t11);
        sb2.append(")");
        throw new ArithmeticException(sb2.toString());
    }

    public static ji b(ji jiVar) {
        long u10 = jiVar.u();
        int t10 = jiVar.t();
        if (u10 < -62135596800L || u10 > 253402300799L || t10 < 0 || t10 >= 1000000000) {
            throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(u10), Integer.valueOf(t10)));
        }
        return jiVar;
    }

    public static ji c(long j10) {
        return d(j10 / 1000, (int) ((j10 % 1000) * 1000000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ji d(long j10, int i9) {
        long j11 = i9;
        if (j11 <= -1000000000 || j11 >= 1000000000) {
            j10 = va.a(j10, j11 / 1000000000);
            i9 = (int) (j11 % 1000000000);
        }
        if (i9 < 0) {
            i9 = (int) (i9 + 1000000000);
            j10 = va.c(j10, 1L);
        }
        ii v10 = ji.v();
        v10.p(j10);
        v10.o(i9);
        ji l10 = v10.l();
        b(l10);
        return l10;
    }
}
