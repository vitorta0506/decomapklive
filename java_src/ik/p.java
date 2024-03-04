package ik;

import java.math.BigInteger;
import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f41579a = {-4553, -2, -1, -1, -1, -1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f41580b = {20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f41581c = {-20729809, -9107, -2, -1, -1, -1, 9105, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.f.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && nk.f.r(iArr3, f41579a))) {
            nk.n.b(6, 4553, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (nk.n.w(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && nk.f.r(iArr2, f41579a))) {
            nk.n.b(6, 4553, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] o10 = nk.f.o(bigInteger);
        if (o10[5] == -1) {
            int[] iArr = f41579a;
            if (nk.f.r(o10, iArr)) {
                nk.f.G(iArr, o10);
            }
        }
        return o10;
    }

    public static void d(int[] iArr, int[] iArr2) {
        nk.c.c(f41579a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i9 = 0;
        for (int i10 = 0; i10 < 6; i10++) {
            i9 |= iArr[i10];
        }
        return (((i9 >>> 1) | (i9 & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] j10 = nk.f.j();
        nk.f.x(iArr, iArr2, j10);
        k(j10, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.f.B(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && nk.n.u(12, iArr3, f41580b))) {
            int[] iArr4 = f41581c;
            if (nk.n.e(iArr4.length, iArr4, iArr3) != 0) {
                nk.n.x(12, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            nk.f.F(f41579a, iArr, iArr2);
            return;
        }
        int[] iArr3 = f41579a;
        nk.f.F(iArr3, iArr3, iArr2);
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            org.bouncycastle.util.g.f(bArr, 0, iArr, 0, 6);
        } while (nk.n.B(6, iArr, f41579a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (nk.f.z(4553, nk.f.y(4553, iArr, 6, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[5] == -1 && nk.f.r(iArr2, f41579a))) {
            nk.n.b(6, 4553, iArr2);
        }
    }

    public static void l(int i9, int[] iArr) {
        if ((i9 == 0 || nk.f.A(4553, i9, iArr, 0) == 0) && !(iArr[5] == -1 && nk.f.r(iArr, f41579a))) {
            return;
        }
        nk.n.b(6, 4553, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] j10 = nk.f.j();
        nk.f.D(iArr, j10);
        k(j10, iArr2);
    }

    public static void n(int[] iArr, int i9, int[] iArr2) {
        int[] j10 = nk.f.j();
        nk.f.D(iArr, j10);
        while (true) {
            k(j10, iArr2);
            i9--;
            if (i9 <= 0) {
                return;
            }
            nk.f.D(iArr2, j10);
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (nk.f.F(iArr, iArr2, iArr3) != 0) {
            nk.n.Q(6, 4553, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (nk.n.J(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && nk.f.r(iArr2, f41579a))) {
            nk.n.b(6, 4553, iArr2);
        }
    }
}
