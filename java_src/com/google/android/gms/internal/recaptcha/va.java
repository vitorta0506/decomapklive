package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class va {

    /* renamed from: a  reason: collision with root package name */
    private static final long[][] f9102a = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    public static long a(long j10, long j11) {
        long j12 = j10 + j11;
        wa.a(((j10 ^ j11) < 0) | ((j10 ^ j12) >= 0), "checkedAdd", j10, j11);
        return j12;
    }

    public static long b(long j10, long j11) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j10) + Long.numberOfLeadingZeros(~j10) + Long.numberOfLeadingZeros(1000L) + Long.numberOfLeadingZeros(-1001L);
        if (numberOfLeadingZeros > 65) {
            return j10 * 1000;
        }
        wa.a(numberOfLeadingZeros >= 64, "checkedMultiply", j10, 1000L);
        long j12 = j10 * 1000;
        wa.a(j10 == 0 || j12 / j10 == 1000, "checkedMultiply", j10, 1000L);
        return j12;
    }

    public static long c(long j10, long j11) {
        long j12 = j10 - j11;
        wa.a(((j10 ^ j11) >= 0) | ((j10 ^ j12) >= 0), "checkedSubtract", j10, j11);
        return j12;
    }
}
