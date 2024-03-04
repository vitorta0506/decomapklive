package com.google.android.gms.internal.recaptcha;

import org.threeten.bp.Year;
/* loaded from: classes2.dex */
public final class cj {

    /* renamed from: a  reason: collision with root package name */
    public static final mf f8578a;

    /* renamed from: b  reason: collision with root package name */
    public static final mf f8579b;

    /* renamed from: c  reason: collision with root package name */
    public static final mf f8580c;

    static {
        lf v10 = mf.v();
        v10.p(-315576000000L);
        v10.o(Year.MIN_VALUE);
        f8578a = v10.l();
        lf v11 = mf.v();
        v11.p(315576000000L);
        v11.o(Year.MAX_VALUE);
        f8579b = v11.l();
        lf v12 = mf.v();
        v12.p(0L);
        v12.o(0);
        f8580c = v12.l();
    }

    public static mf a(mf mfVar) {
        int i9;
        long u10 = mfVar.u();
        int t10 = mfVar.t();
        if (u10 >= -315576000000L && u10 <= 315576000000L) {
            long j10 = t10;
            if (j10 >= -999999999 && j10 < 1000000000 && ((u10 >= 0 && t10 >= 0) || (i9 <= 0 && t10 <= 0))) {
                return mfVar;
            }
        }
        throw new IllegalArgumentException(String.format("Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds", Long.valueOf(u10), Integer.valueOf(t10)));
    }

    public static mf b(long j10) {
        return c(j10, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static mf c(long j10, int i9) {
        long j11 = i9;
        if (j11 <= -1000000000 || j11 >= 1000000000) {
            j10 = va.a(j10, j11 / 1000000000);
            i9 = (int) (j11 % 1000000000);
        }
        if (j10 > 0 && i9 < 0) {
            i9 = (int) (i9 + 1000000000);
            j10--;
        }
        if (j10 < 0 && i9 > 0) {
            i9 = (int) (i9 - 1000000000);
            j10++;
        }
        lf v10 = mf.v();
        v10.p(j10);
        v10.o(i9);
        mf l10 = v10.l();
        a(l10);
        return l10;
    }
}
