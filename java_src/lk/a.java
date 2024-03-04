package lk;

import java.util.Objects;
import kk.a;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import nk.n;
import org.bouncycastle.crypto.e;
import rj.h;
/* loaded from: classes7.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f54332a = {83, 105, 103, 69, 100, 50, 53, 53, 49, 57, 32, 110, 111, 32, 69, 100, 50, 53, 53, 49, 57, 32, 99, 111, 108, 108, 105, 115, 105, 111, 110, 115};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f54333b = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f54334c = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f54335d = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f54336e = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f54337f = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f54338g = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f54339h = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};

    /* renamed from: i  reason: collision with root package name */
    private static final Object f54340i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static c[] f54341j = null;

    /* renamed from: k  reason: collision with root package name */
    private static int[] f54342k = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int[] f54343a;

        /* renamed from: b  reason: collision with root package name */
        int[] f54344b;

        /* renamed from: c  reason: collision with root package name */
        int[] f54345c;

        /* renamed from: d  reason: collision with root package name */
        int[] f54346d;

        /* renamed from: e  reason: collision with root package name */
        int[] f54347e;

        private b() {
            this.f54343a = kk.b.h();
            this.f54344b = kk.b.h();
            this.f54345c = kk.b.h();
            this.f54346d = kk.b.h();
            this.f54347e = kk.b.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int[] f54348a;

        /* renamed from: b  reason: collision with root package name */
        int[] f54349b;

        /* renamed from: c  reason: collision with root package name */
        int[] f54350c;

        /* renamed from: d  reason: collision with root package name */
        int[] f54351d;

        private c() {
            this.f54348a = kk.b.h();
            this.f54349b = kk.b.h();
            this.f54350c = kk.b.h();
            this.f54351d = kk.b.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int[] f54352a;

        /* renamed from: b  reason: collision with root package name */
        int[] f54353b;

        /* renamed from: c  reason: collision with root package name */
        int[] f54354c;

        private d() {
            this.f54352a = kk.b.h();
            this.f54353b = kk.b.h();
            this.f54354c = kk.b.h();
        }
    }

    private static int a(int[] iArr, int[] iArr2) {
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        int[] h12 = kk.b.h();
        kk.b.y(iArr, h11);
        kk.b.y(iArr2, h12);
        kk.b.u(h11, h12, h10);
        kk.b.z(h12, h11, h12);
        kk.b.u(h10, f54337f, h10);
        kk.b.b(h10);
        kk.b.z(h10, h12, h10);
        kk.b.v(h10);
        return kk.b.t(h10);
    }

    private static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        int[] h12 = kk.b.h();
        int[] h13 = kk.b.h();
        kk.b.y(iArr, h11);
        kk.b.y(iArr2, h12);
        kk.b.y(iArr3, h13);
        kk.b.u(h11, h12, h10);
        kk.b.z(h12, h11, h12);
        kk.b.u(h12, h13, h12);
        kk.b.y(h13, h13);
        kk.b.u(h10, f54337f, h10);
        kk.b.a(h10, h13, h10);
        kk.b.z(h10, h12, h10);
        kk.b.v(h10);
        return kk.b.t(h10);
    }

    private static e c() {
        return new h();
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
        e(bArr, i9, iArr, 0, 8);
    }

    private static int g(b bVar, byte[] bArr, int i9) {
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        kk.b.r(bVar.f54345c, h11);
        kk.b.u(bVar.f54343a, h11, h10);
        kk.b.u(bVar.f54344b, h11, h11);
        kk.b.v(h10);
        kk.b.v(h11);
        int a10 = a(h10, h11);
        kk.b.m(h11, bArr, i9);
        int i10 = (i9 + 32) - 1;
        bArr[i10] = (byte) (((h10[0] & 1) << 7) | bArr[i10]);
        return a10;
    }

    public static void h(byte[] bArr, int i9, byte[] bArr2, int i10) {
        e c10 = c();
        byte[] bArr3 = new byte[c10.d()];
        c10.c(bArr, i9, 32);
        c10.a(bArr3, 0);
        byte[] bArr4 = new byte[32];
        v(bArr3, 0, bArr4);
        x(bArr4, bArr2, i10);
    }

    private static void i(d dVar, b bVar) {
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        int[] h12 = kk.b.h();
        int[] iArr = bVar.f54346d;
        int[] h13 = kk.b.h();
        int[] h14 = kk.b.h();
        int[] iArr2 = bVar.f54347e;
        kk.b.c(bVar.f54344b, bVar.f54343a, h11, h10);
        kk.b.u(h10, dVar.f54353b, h10);
        kk.b.u(h11, dVar.f54352a, h11);
        kk.b.u(bVar.f54346d, bVar.f54347e, h12);
        kk.b.u(h12, dVar.f54354c, h12);
        kk.b.c(h11, h10, iArr2, iArr);
        kk.b.c(bVar.f54345c, h12, h14, h13);
        kk.b.d(h14);
        kk.b.u(iArr, h13, bVar.f54343a);
        kk.b.u(h14, iArr2, bVar.f54344b);
        kk.b.u(h13, h14, bVar.f54345c);
    }

    private static void j(boolean z10, c cVar, c cVar2, c cVar3) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        int[] h12 = kk.b.h();
        int[] h13 = kk.b.h();
        int[] h14 = kk.b.h();
        int[] h15 = kk.b.h();
        int[] h16 = kk.b.h();
        int[] h17 = kk.b.h();
        if (z10) {
            iArr2 = h12;
            iArr = h13;
            iArr4 = h15;
            iArr3 = h16;
        } else {
            iArr = h12;
            iArr2 = h13;
            iArr3 = h15;
            iArr4 = h16;
        }
        kk.b.c(cVar.f54349b, cVar.f54348a, h11, h10);
        kk.b.c(cVar2.f54349b, cVar2.f54348a, iArr2, iArr);
        kk.b.u(h10, h12, h10);
        kk.b.u(h11, h13, h11);
        kk.b.u(cVar.f54351d, cVar2.f54351d, h12);
        kk.b.u(h12, f54338g, h12);
        kk.b.u(cVar.f54350c, cVar2.f54350c, h13);
        kk.b.a(h13, h13, h13);
        kk.b.c(h11, h10, h17, h14);
        kk.b.c(h13, h12, iArr4, iArr3);
        kk.b.d(iArr4);
        kk.b.u(h14, h15, cVar3.f54348a);
        kk.b.u(h16, h17, cVar3.f54349b);
        kk.b.u(h15, h16, cVar3.f54350c);
        kk.b.u(h14, h17, cVar3.f54351d);
    }

    private static c k(b bVar) {
        c cVar = new c();
        kk.b.g(bVar.f54343a, 0, cVar.f54348a, 0);
        kk.b.g(bVar.f54344b, 0, cVar.f54349b, 0);
        kk.b.g(bVar.f54345c, 0, cVar.f54350c, 0);
        kk.b.u(bVar.f54346d, bVar.f54347e, cVar.f54351d);
        return cVar;
    }

    private static c l(c cVar) {
        c cVar2 = new c();
        m(cVar, cVar2);
        return cVar2;
    }

    private static void m(c cVar, c cVar2) {
        kk.b.g(cVar.f54348a, 0, cVar2.f54348a, 0);
        kk.b.g(cVar.f54349b, 0, cVar2.f54349b, 0);
        kk.b.g(cVar.f54350c, 0, cVar2.f54350c, 0);
        kk.b.g(cVar.f54351d, 0, cVar2.f54351d, 0);
    }

    private static void n(b bVar) {
        int[] h10 = kk.b.h();
        int[] h11 = kk.b.h();
        int[] h12 = kk.b.h();
        int[] iArr = bVar.f54346d;
        int[] h13 = kk.b.h();
        int[] h14 = kk.b.h();
        int[] iArr2 = bVar.f54347e;
        kk.b.y(bVar.f54343a, h10);
        kk.b.y(bVar.f54344b, h11);
        kk.b.y(bVar.f54345c, h12);
        kk.b.a(h12, h12, h12);
        kk.b.c(h10, h11, iArr2, h14);
        kk.b.a(bVar.f54343a, bVar.f54344b, iArr);
        kk.b.y(iArr, iArr);
        kk.b.z(iArr2, iArr, iArr);
        kk.b.a(h12, h14, h13);
        kk.b.d(h13);
        kk.b.u(iArr, h13, bVar.f54343a);
        kk.b.u(h14, iArr2, bVar.f54344b);
        kk.b.u(h13, h14, bVar.f54345c);
    }

    private static void o(b bVar) {
        kk.b.w(bVar.f54345c);
        kk.b.g(bVar.f54343a, 0, bVar.f54346d, 0);
        kk.b.g(bVar.f54344b, 0, bVar.f54347e, 0);
    }

    private static void p(c cVar) {
        kk.b.w(cVar.f54350c);
        kk.b.u(cVar.f54348a, cVar.f54349b, cVar.f54351d);
    }

    private static void q(int i9, int i10, d dVar) {
        int i11 = i9 * 8 * 3 * 10;
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = ((i12 ^ i10) - 1) >> 31;
            kk.b.e(i13, f54342k, i11, dVar.f54352a, 0);
            int i14 = i11 + 10;
            kk.b.e(i13, f54342k, i14, dVar.f54353b, 0);
            int i15 = i14 + 10;
            kk.b.e(i13, f54342k, i15, dVar.f54354c, 0);
            i11 = i15 + 10;
        }
    }

    private static c[] r(c cVar, int i9) {
        c cVar2 = new c();
        j(false, cVar, cVar, cVar2);
        c[] cVarArr = new c[i9];
        cVarArr[0] = l(cVar);
        for (int i10 = 1; i10 < i9; i10++) {
            c cVar3 = cVarArr[i10 - 1];
            c cVar4 = new c();
            cVarArr[i10] = cVar4;
            j(false, cVar3, cVar2, cVar4);
        }
        return cVarArr;
    }

    private static void s(b bVar) {
        kk.b.A(bVar.f54343a);
        kk.b.w(bVar.f54344b);
        kk.b.w(bVar.f54345c);
        kk.b.A(bVar.f54346d);
        kk.b.w(bVar.f54347e);
    }

    private static void t(c cVar) {
        kk.b.A(cVar.f54348a);
        kk.b.w(cVar.f54349b);
        kk.b.w(cVar.f54350c);
        kk.b.A(cVar.f54351d);
    }

    public static void u() {
        int i9;
        synchronized (f54340i) {
            if (f54342k != null) {
                return;
            }
            c cVar = new c();
            int[] iArr = f54335d;
            kk.b.g(iArr, 0, cVar.f54348a, 0);
            int[] iArr2 = f54336e;
            kk.b.g(iArr2, 0, cVar.f54349b, 0);
            p(cVar);
            f54341j = r(cVar, 32);
            b bVar = new b();
            kk.b.g(iArr, 0, bVar.f54343a, 0);
            kk.b.g(iArr2, 0, bVar.f54344b, 0);
            o(bVar);
            f54342k = kk.b.i(192);
            int i10 = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                c[] cVarArr = new c[4];
                c cVar2 = new c();
                t(cVar2);
                int i12 = 0;
                while (true) {
                    i9 = 1;
                    if (i12 >= 4) {
                        break;
                    }
                    j(true, cVar2, k(bVar), cVar2);
                    n(bVar);
                    cVarArr[i12] = k(bVar);
                    if (i11 + i12 != 10) {
                        while (i9 < 8) {
                            n(bVar);
                            i9++;
                        }
                    }
                    i12++;
                }
                c[] cVarArr2 = new c[8];
                cVarArr2[0] = cVar2;
                int i13 = 0;
                int i14 = 1;
                while (i13 < 3) {
                    int i15 = i9 << i13;
                    int i16 = 0;
                    while (i16 < i15) {
                        c cVar3 = cVarArr2[i14 - i15];
                        c cVar4 = cVarArr[i13];
                        c cVar5 = new c();
                        cVarArr2[i14] = cVar5;
                        j(false, cVar3, cVar4, cVar5);
                        i16++;
                        i14++;
                    }
                    i13++;
                    i9 = 1;
                }
                int[] i17 = kk.b.i(8);
                int[] h10 = kk.b.h();
                kk.b.g(cVarArr2[0].f54350c, 0, h10, 0);
                kk.b.g(h10, 0, i17, 0);
                int i18 = 0;
                while (true) {
                    i18++;
                    if (i18 >= 8) {
                        break;
                    }
                    kk.b.u(h10, cVarArr2[i18].f54350c, h10);
                    kk.b.g(h10, 0, i17, i18 * 10);
                }
                kk.b.a(h10, h10, h10);
                kk.b.s(h10, h10);
                int i19 = i18 - 1;
                int[] h11 = kk.b.h();
                while (i19 > 0) {
                    int i20 = i19 - 1;
                    kk.b.g(i17, i20 * 10, h11, 0);
                    kk.b.u(h11, h10, h11);
                    kk.b.g(h11, 0, i17, i19 * 10);
                    kk.b.u(h10, cVarArr2[i19].f54350c, h10);
                    i19 = i20;
                }
                kk.b.g(h10, 0, i17, 0);
                for (int i21 = 0; i21 < 8; i21++) {
                    c cVar6 = cVarArr2[i21];
                    int[] h12 = kk.b.h();
                    int[] h13 = kk.b.h();
                    kk.b.g(i17, i21 * 10, h13, 0);
                    kk.b.u(cVar6.f54348a, h13, h12);
                    kk.b.u(cVar6.f54349b, h13, h13);
                    d dVar = new d();
                    kk.b.c(h13, h12, dVar.f54352a, dVar.f54353b);
                    kk.b.u(h12, h13, dVar.f54354c);
                    int[] iArr3 = dVar.f54354c;
                    kk.b.u(iArr3, f54339h, iArr3);
                    kk.b.v(dVar.f54352a);
                    kk.b.v(dVar.f54353b);
                    kk.b.g(dVar.f54352a, 0, f54342k, i10);
                    int i22 = i10 + 10;
                    kk.b.g(dVar.f54353b, 0, f54342k, i22);
                    int i23 = i22 + 10;
                    kk.b.g(dVar.f54354c, 0, f54342k, i23);
                    i10 = i23 + 10;
                }
            }
        }
    }

    private static void v(byte[] bArr, int i9, byte[] bArr2) {
        System.arraycopy(bArr, i9, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        bArr2[31] = (byte) (bArr2[31] & ByteCompanionObject.MAX_VALUE);
        bArr2[31] = (byte) (bArr2[31] | 64);
    }

    private static void w(byte[] bArr, b bVar) {
        u();
        int[] iArr = new int[8];
        f(bArr, 0, iArr);
        n.h(8, (~iArr[0]) & 1, iArr, f54334c, iArr);
        n.E(8, iArr, 1);
        for (int i9 = 0; i9 < 8; i9++) {
            iArr[i9] = nk.b.e(iArr[i9]);
        }
        d dVar = new d();
        s(bVar);
        int i10 = 28;
        while (true) {
            for (int i11 = 0; i11 < 8; i11++) {
                int i12 = iArr[i11] >>> i10;
                int i13 = (i12 >>> 3) & 1;
                q(i11, (i12 ^ (-i13)) & 7, dVar);
                kk.b.j(i13, dVar.f54352a, dVar.f54353b);
                kk.b.f(i13, dVar.f54354c);
                i(dVar, bVar);
            }
            i10 -= 4;
            if (i10 < 0) {
                return;
            }
            n(bVar);
        }
    }

    private static void x(byte[] bArr, byte[] bArr2, int i9) {
        b bVar = new b();
        w(bArr, bVar);
        if (g(bVar, bArr2, i9) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void y(a.C0553a c0553a, byte[] bArr, int i9, int[] iArr, int[] iArr2) {
        Objects.requireNonNull(c0553a, "This method is only for use by X25519");
        byte[] bArr2 = new byte[32];
        v(bArr, i9, bArr2);
        b bVar = new b();
        w(bArr2, bVar);
        if (b(bVar.f54343a, bVar.f54344b, bVar.f54345c) == 0) {
            throw new IllegalStateException();
        }
        kk.b.g(bVar.f54344b, 0, iArr, 0);
        kk.b.g(bVar.f54345c, 0, iArr2, 0);
    }
}
