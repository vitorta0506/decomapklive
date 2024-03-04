package cl;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final BigInteger f1756a = BigInteger.valueOf(0);

    /* renamed from: b  reason: collision with root package name */
    private static final BigInteger f1757b = BigInteger.valueOf(1);

    /* renamed from: c  reason: collision with root package name */
    private static final BigInteger f1758c = BigInteger.valueOf(2);

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f1759d = BigInteger.valueOf(4);

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f1760e = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};

    /* renamed from: f  reason: collision with root package name */
    private static SecureRandom f1761f = null;

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f1762g = {0, 1, 0, -1, 0, -1, 0, 1};

    public static int a(int i9) {
        if (i9 == 0) {
            return 1;
        }
        if (i9 < 0) {
            i9 = -i9;
        }
        int i10 = 0;
        while (i9 > 0) {
            i10++;
            i9 >>>= 8;
        }
        return i10;
    }
}
