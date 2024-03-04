package lk;

import java.util.Objects;
import kk.c;
import kk.d;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import nk.n;
import org.bouncycastle.crypto.i;
/* loaded from: classes7.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f54355a = {83, 105, 103, 69, 100, 52, 52, 56};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f54356b = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f54357c = {-1420278541, 595116690, -1916432555, 560775794, -1361693040, -1001465015, 2093622249, -1, -1, -1, -1, -1, -1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f54358d = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f54359e = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};

    /* renamed from: f  reason: collision with root package name */
    private static final Object f54360f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static C0562b[] f54361g = null;

    /* renamed from: h  reason: collision with root package name */
    private static int[] f54362h = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lk.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0562b {

        /* renamed from: a  reason: collision with root package name */
        int[] f54363a;

        /* renamed from: b  reason: collision with root package name */
        int[] f54364b;

        /* renamed from: c  reason: collision with root package name */
        int[] f54365c;

        private C0562b() {
            this.f54363a = d.f();
            this.f54364b = d.f();
            this.f54365c = d.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int[] f54366a;

        /* renamed from: b  reason: collision with root package name */
        int[] f54367b;

        private c() {
            this.f54366a = d.f();
            this.f54367b = d.f();
        }
    }

    private static int a(int[] iArr, int[] iArr2) {
        int[] f10 = d.f();
        int[] f11 = d.f();
        int[] f12 = d.f();
        d.x(iArr, f11);
        d.x(iArr2, f12);
        d.t(f11, f12, f10);
        d.a(f11, f12, f11);
        d.s(f10, 39081, f10);
        d.z(f10);
        d.a(f10, f11, f10);
        d.u(f10);
        return d.r(f10);
    }

    private static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] f10 = d.f();
        int[] f11 = d.f();
        int[] f12 = d.f();
        int[] f13 = d.f();
        d.x(iArr, f11);
        d.x(iArr2, f12);
        d.x(iArr3, f13);
        d.t(f11, f12, f10);
        d.a(f11, f12, f11);
        d.t(f11, f13, f11);
        d.x(f13, f13);
        d.s(f10, 39081, f10);
        d.y(f10, f13, f10);
        d.a(f10, f11, f10);
        d.u(f10);
        return d.r(f10);
    }

    private static i c() {
        return new rj.i(256);
    }

    private static int d(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i10] & UByte.MAX_VALUE) << 8) | ((bArr[i11] & UByte.MAX_VALUE) << 16);
    }

    private static void e(byte[] bArr, int i9, int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i10 + i12] = d(bArr, (i12 * 4) + i9);
        }
    }

    private static void f(byte[] bArr, int i9, int[] iArr) {
        e(bArr, i9, iArr, 0, 14);
    }

    private static int g(C0562b c0562b, byte[] bArr, int i9) {
        int[] f10 = d.f();
        int[] f11 = d.f();
        d.p(c0562b.f54365c, f11);
        d.t(c0562b.f54363a, f11, f10);
        d.t(c0562b.f54364b, f11, f11);
        d.u(f10);
        d.u(f11);
        int a10 = a(f10, f11);
        d.j(f11, bArr, i9);
        bArr[(i9 + 57) - 1] = (byte) ((f10[0] & 1) << 7);
        return a10;
    }

    public static void h(byte[] bArr, int i9, byte[] bArr2, int i10) {
        i c10 = c();
        byte[] bArr3 = new byte[114];
        c10.c(bArr, i9, 57);
        c10.e(bArr3, 0, 114);
        byte[] bArr4 = new byte[57];
        s(bArr3, 0, bArr4);
        u(bArr4, bArr2, i10);
    }

    private static void i(c cVar, C0562b c0562b) {
        int[] f10 = d.f();
        int[] f11 = d.f();
        int[] f12 = d.f();
        int[] f13 = d.f();
        int[] f14 = d.f();
        int[] f15 = d.f();
        int[] f16 = d.f();
        d.x(c0562b.f54365c, f10);
        d.t(cVar.f54366a, c0562b.f54363a, f11);
        d.t(cVar.f54367b, c0562b.f54364b, f12);
        d.t(f11, f12, f13);
        d.s(f13, 39081, f13);
        d.a(f10, f13, f14);
        d.y(f10, f13, f15);
        d.a(cVar.f54366a, cVar.f54367b, f10);
        d.a(c0562b.f54363a, c0562b.f54364b, f13);
        d.t(f10, f13, f16);
        d.a(f12, f11, f10);
        d.y(f12, f11, f13);
        d.b(f10);
        d.y(f16, f10, f16);
        d.t(f16, c0562b.f54365c, f16);
        d.t(f13, c0562b.f54365c, f13);
        d.t(f14, f16, c0562b.f54363a);
        d.t(f13, f15, c0562b.f54364b);
        d.t(f14, f15, c0562b.f54365c);
    }

    private static void j(boolean z10, C0562b c0562b, C0562b c0562b2) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] f10 = d.f();
        int[] f11 = d.f();
        int[] f12 = d.f();
        int[] f13 = d.f();
        int[] f14 = d.f();
        int[] f15 = d.f();
        int[] f16 = d.f();
        int[] f17 = d.f();
        if (z10) {
            d.y(c0562b.f54364b, c0562b.f54363a, f17);
            iArr2 = f11;
            iArr = f14;
            iArr4 = f15;
            iArr3 = f16;
        } else {
            d.a(c0562b.f54364b, c0562b.f54363a, f17);
            iArr = f11;
            iArr2 = f14;
            iArr3 = f15;
            iArr4 = f16;
        }
        d.t(c0562b.f54365c, c0562b2.f54365c, f10);
        d.x(f10, f11);
        d.t(c0562b.f54363a, c0562b2.f54363a, f12);
        d.t(c0562b.f54364b, c0562b2.f54364b, f13);
        d.t(f12, f13, f14);
        d.s(f14, 39081, f14);
        d.a(f11, f14, iArr3);
        d.y(f11, f14, iArr4);
        d.a(c0562b2.f54363a, c0562b2.f54364b, f14);
        d.t(f17, f14, f17);
        d.a(f13, f12, iArr);
        d.y(f13, f12, iArr2);
        d.b(iArr);
        d.y(f17, f11, f17);
        d.t(f17, f10, f17);
        d.t(f14, f10, f14);
        d.t(f15, f17, c0562b2.f54363a);
        d.t(f14, f16, c0562b2.f54364b);
        d.t(f15, f16, c0562b2.f54365c);
    }

    private static C0562b k(C0562b c0562b) {
        C0562b c0562b2 = new C0562b();
        l(c0562b, c0562b2);
        return c0562b2;
    }

    private static void l(C0562b c0562b, C0562b c0562b2) {
        d.e(c0562b.f54363a, 0, c0562b2.f54363a, 0);
        d.e(c0562b.f54364b, 0, c0562b2.f54364b, 0);
        d.e(c0562b.f54365c, 0, c0562b2.f54365c, 0);
    }

    private static void m(C0562b c0562b) {
        int[] f10 = d.f();
        int[] f11 = d.f();
        int[] f12 = d.f();
        int[] f13 = d.f();
        int[] f14 = d.f();
        int[] f15 = d.f();
        d.a(c0562b.f54363a, c0562b.f54364b, f10);
        d.x(f10, f10);
        d.x(c0562b.f54363a, f11);
        d.x(c0562b.f54364b, f12);
        d.a(f11, f12, f13);
        d.b(f13);
        d.x(c0562b.f54365c, f14);
        d.a(f14, f14, f14);
        d.b(f14);
        d.y(f13, f14, f15);
        d.y(f10, f13, f10);
        d.y(f11, f12, f11);
        d.t(f10, f15, c0562b.f54363a);
        d.t(f13, f11, c0562b.f54364b);
        d.t(f13, f15, c0562b.f54365c);
    }

    private static void n(C0562b c0562b) {
        d.v(c0562b.f54365c);
    }

    private static void o(int i9, int i10, c cVar) {
        int i11 = i9 * 16 * 2 * 16;
        for (int i12 = 0; i12 < 16; i12++) {
            int i13 = ((i12 ^ i10) - 1) >> 31;
            d.c(i13, f54362h, i11, cVar.f54366a, 0);
            int i14 = i11 + 16;
            d.c(i13, f54362h, i14, cVar.f54367b, 0);
            i11 = i14 + 16;
        }
    }

    private static C0562b[] p(C0562b c0562b, int i9) {
        C0562b k10 = k(c0562b);
        m(k10);
        C0562b[] c0562bArr = new C0562b[i9];
        c0562bArr[0] = k(c0562b);
        for (int i10 = 1; i10 < i9; i10++) {
            c0562bArr[i10] = k(c0562bArr[i10 - 1]);
            j(false, k10, c0562bArr[i10]);
        }
        return c0562bArr;
    }

    private static void q(C0562b c0562b) {
        d.A(c0562b.f54363a);
        d.v(c0562b.f54364b);
        d.v(c0562b.f54365c);
    }

    public static void r() {
        synchronized (f54360f) {
            if (f54362h != null) {
                return;
            }
            C0562b c0562b = new C0562b();
            d.e(f54358d, 0, c0562b.f54363a, 0);
            d.e(f54359e, 0, c0562b.f54364b, 0);
            n(c0562b);
            f54361g = p(c0562b, 32);
            f54362h = d.g(160);
            int i9 = 0;
            for (int i10 = 0; i10 < 5; i10++) {
                C0562b[] c0562bArr = new C0562b[5];
                C0562b c0562b2 = new C0562b();
                q(c0562b2);
                int i11 = 0;
                while (true) {
                    if (i11 >= 5) {
                        break;
                    }
                    j(true, c0562b, c0562b2);
                    m(c0562b);
                    c0562bArr[i11] = k(c0562b);
                    if (i10 + i11 != 8) {
                        for (int i12 = 1; i12 < 18; i12++) {
                            m(c0562b);
                        }
                    }
                    i11++;
                }
                C0562b[] c0562bArr2 = new C0562b[16];
                c0562bArr2[0] = c0562b2;
                int i13 = 1;
                for (int i14 = 0; i14 < 4; i14++) {
                    int i15 = 1 << i14;
                    int i16 = 0;
                    while (i16 < i15) {
                        c0562bArr2[i13] = k(c0562bArr2[i13 - i15]);
                        j(false, c0562bArr[i14], c0562bArr2[i13]);
                        i16++;
                        i13++;
                    }
                }
                int[] g10 = d.g(16);
                int[] f10 = d.f();
                d.e(c0562bArr2[0].f54365c, 0, f10, 0);
                d.e(f10, 0, g10, 0);
                int i17 = 0;
                while (true) {
                    i17++;
                    if (i17 >= 16) {
                        break;
                    }
                    d.t(f10, c0562bArr2[i17].f54365c, f10);
                    d.e(f10, 0, g10, i17 * 16);
                }
                d.q(f10, f10);
                int i18 = i17 - 1;
                int[] f11 = d.f();
                while (i18 > 0) {
                    int i19 = i18 - 1;
                    d.e(g10, i19 * 16, f11, 0);
                    d.t(f11, f10, f11);
                    d.e(f11, 0, g10, i18 * 16);
                    d.t(f10, c0562bArr2[i18].f54365c, f10);
                    i18 = i19;
                }
                d.e(f10, 0, g10, 0);
                for (int i20 = 0; i20 < 16; i20++) {
                    C0562b c0562b3 = c0562bArr2[i20];
                    d.e(g10, i20 * 16, c0562b3.f54365c, 0);
                    int[] iArr = c0562b3.f54363a;
                    d.t(iArr, c0562b3.f54365c, iArr);
                    int[] iArr2 = c0562b3.f54364b;
                    d.t(iArr2, c0562b3.f54365c, iArr2);
                    d.e(c0562b3.f54363a, 0, f54362h, i9);
                    int i21 = i9 + 16;
                    d.e(c0562b3.f54364b, 0, f54362h, i21);
                    i9 = i21 + 16;
                }
            }
        }
    }

    private static void s(byte[] bArr, int i9, byte[] bArr2) {
        System.arraycopy(bArr, i9, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & 252);
        bArr2[55] = (byte) (bArr2[55] | ByteCompanionObject.MIN_VALUE);
        bArr2[56] = 0;
    }

    private static void t(byte[] bArr, C0562b c0562b) {
        r();
        int[] iArr = new int[15];
        f(bArr, 0, iArr);
        iArr[14] = n.h(14, (~iArr[0]) & 1, iArr, f54357c, iArr) + 4;
        n.E(15, iArr, 0);
        c cVar = new c();
        q(c0562b);
        int i9 = 17;
        while (true) {
            int i10 = i9;
            for (int i11 = 0; i11 < 5; i11++) {
                int i12 = 0;
                for (int i13 = 0; i13 < 5; i13++) {
                    i12 = (i12 & (~(1 << i13))) ^ ((iArr[i10 >>> 5] >>> (i10 & 31)) << i13);
                    i10 += 18;
                }
                int i14 = (i12 >>> 4) & 1;
                o(i11, ((-i14) ^ i12) & 15, cVar);
                d.d(i14, cVar.f54366a);
                i(cVar, c0562b);
            }
            i9--;
            if (i9 < 0) {
                return;
            }
            m(c0562b);
        }
    }

    private static void u(byte[] bArr, byte[] bArr2, int i9) {
        C0562b c0562b = new C0562b();
        t(bArr, c0562b);
        if (g(c0562b, bArr2, i9) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void v(c.a aVar, byte[] bArr, int i9, int[] iArr, int[] iArr2) {
        Objects.requireNonNull(aVar, "This method is only for use by X448");
        byte[] bArr2 = new byte[57];
        s(bArr, i9, bArr2);
        C0562b c0562b = new C0562b();
        t(bArr2, c0562b);
        if (b(c0562b.f54363a, c0562b.f54364b, c0562b.f54365c) == 0) {
            throw new IllegalStateException();
        }
        d.e(c0562b.f54363a, 0, iArr, 0);
        d.e(c0562b.f54364b, 0, iArr2, 0);
    }
}
