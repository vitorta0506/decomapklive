package com.google.common.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.framework.common.ExceptionCode;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.ugc.UGCTransitionRules;
import java.math.RoundingMode;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f13587a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    static final int[] f13588b = {1, 10, 100, 1000, 10000, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, 1000000, ExceptionCode.CRASH_EXCEPTION, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f13589c = {3, 31, TypedValues.AttributesType.TYPE_PATH_ROTATE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f13590d = {1, 1, 2, 6, 24, 120, UGCTransitionRules.DEFAULT_IMAGE_WIDTH, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    /* renamed from: e  reason: collision with root package name */
    static int[] f13591e = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13592a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f13592a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13592a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13592a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13592a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13592a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13592a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13592a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13592a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int a(int i9, int i10) {
        long j10 = i9 + i10;
        int i11 = (int) j10;
        f.b(j10 == ((long) i11), "checkedAdd", i9, i10);
        return i11;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
        if (((r7 == java.math.RoundingMode.HALF_EVEN) & ((r0 & 1) != 0)) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
        if (r1 > 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
        if (r5 > 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
        if (r5 < 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(int r5, int r6, java.math.RoundingMode r7) {
        /*
            com.google.common.base.o.s(r7)
            if (r6 == 0) goto L5c
            int r0 = r5 / r6
            int r1 = r6 * r0
            int r1 = r5 - r1
            if (r1 != 0) goto Le
            return r0
        Le:
            r5 = r5 ^ r6
            int r5 = r5 >> 31
            r2 = 1
            r5 = r5 | r2
            int[] r3 = com.google.common.math.c.a.f13592a
            int r4 = r7.ordinal()
            r3 = r3[r4]
            r4 = 0
            switch(r3) {
                case 1: goto L50;
                case 2: goto L57;
                case 3: goto L4d;
                case 4: goto L58;
                case 5: goto L4a;
                case 6: goto L25;
                case 7: goto L25;
                case 8: goto L25;
                default: goto L1f;
            }
        L1f:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L25:
            int r1 = java.lang.Math.abs(r1)
            int r6 = java.lang.Math.abs(r6)
            int r6 = r6 - r1
            int r1 = r1 - r6
            if (r1 != 0) goto L47
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_UP
            if (r7 == r6) goto L58
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_EVEN
            if (r7 != r6) goto L3b
            r6 = 1
            goto L3c
        L3b:
            r6 = 0
        L3c:
            r7 = r0 & 1
            if (r7 == 0) goto L42
            r7 = 1
            goto L43
        L42:
            r7 = 0
        L43:
            r6 = r6 & r7
            if (r6 == 0) goto L57
            goto L58
        L47:
            if (r1 <= 0) goto L57
            goto L58
        L4a:
            if (r5 <= 0) goto L57
            goto L58
        L4d:
            if (r5 >= 0) goto L57
            goto L58
        L50:
            if (r1 != 0) goto L53
            goto L54
        L53:
            r2 = 0
        L54:
            com.google.common.math.f.f(r2)
        L57:
            r2 = 0
        L58:
            if (r2 == 0) goto L5b
            int r0 = r0 + r5
        L5b:
            return r0
        L5c:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "/ by zero"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.c.b(int, int, java.math.RoundingMode):int");
    }

    public static boolean c(int i9) {
        return (i9 > 0) & ((i9 & (i9 + (-1))) == 0);
    }

    static int d(int i9, int i10) {
        return (~(~(i9 - i10))) >>> 31;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int e(int i9, RoundingMode roundingMode) {
        f.e(x.f19108w, i9);
        switch (a.f13592a[roundingMode.ordinal()]) {
            case 1:
                f.f(c(i9));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i9 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i9);
                return (31 - numberOfLeadingZeros) + d((-1257966797) >>> numberOfLeadingZeros, i9);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i9);
    }

    public static int f(int i9, int i10) {
        return com.google.common.primitives.f.i(i9 * i10);
    }

    public static int g(int i9, RoundingMode roundingMode) {
        int d10;
        f.d(x.f19108w, i9);
        int h10 = h(i9);
        switch (a.f13592a[roundingMode.ordinal()]) {
            case 1:
                f.f(h10 * h10 == i9);
                return h10;
            case 2:
            case 3:
                return h10;
            case 4:
            case 5:
                d10 = d(h10 * h10, i9);
                return h10 + d10;
            case 6:
            case 7:
            case 8:
                d10 = d((h10 * h10) + h10, i9);
                return h10 + d10;
            default:
                throw new AssertionError();
        }
    }

    private static int h(int i9) {
        return (int) Math.sqrt(i9);
    }
}
