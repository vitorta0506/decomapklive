package fk;

import fk.f;
import fk.i;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import java.util.Random;
/* loaded from: classes7.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected mk.a f39767a;

    /* renamed from: b  reason: collision with root package name */
    protected fk.f f39768b;

    /* renamed from: c  reason: collision with root package name */
    protected fk.f f39769c;

    /* renamed from: d  reason: collision with root package name */
    protected BigInteger f39770d;

    /* renamed from: e  reason: collision with root package name */
    protected BigInteger f39771e;

    /* renamed from: f  reason: collision with root package name */
    protected int f39772f = 0;

    /* renamed from: g  reason: collision with root package name */
    protected jk.a f39773g = null;

    /* renamed from: h  reason: collision with root package name */
    protected h f39774h = null;

    /* loaded from: classes7.dex */
    class a extends fk.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39775a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f39776b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ byte[] f39777c;

        a(int i9, int i10, byte[] bArr) {
            this.f39775a = i9;
            this.f39776b = i10;
            this.f39777c = bArr;
        }

        private i b(byte[] bArr, byte[] bArr2) {
            e eVar = e.this;
            return eVar.g(eVar.k(new BigInteger(1, bArr)), e.this.k(new BigInteger(1, bArr2)));
        }

        @Override // fk.g
        public i a(int i9) {
            int i10;
            int i11 = this.f39776b;
            byte[] bArr = new byte[i11];
            byte[] bArr2 = new byte[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < this.f39775a; i13++) {
                int i14 = ((i13 ^ i9) - 1) >> 31;
                int i15 = 0;
                while (true) {
                    i10 = this.f39776b;
                    if (i15 < i10) {
                        byte b10 = bArr[i15];
                        byte[] bArr3 = this.f39777c;
                        bArr[i15] = (byte) (b10 ^ (bArr3[i12 + i15] & i14));
                        bArr2[i15] = (byte) ((bArr3[(i10 + i12) + i15] & i14) ^ bArr2[i15]);
                        i15++;
                    }
                }
                i12 += i10 * 2;
            }
            return b(bArr, bArr2);
        }

        @Override // fk.g
        public int getSize() {
            return this.f39775a;
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class b extends e {

        /* renamed from: i  reason: collision with root package name */
        private BigInteger[] f39779i;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(int i9, int i10, int i11, int i12) {
            super(A(i9, i10, i11, i12));
            this.f39779i = null;
        }

        private static mk.a A(int i9, int i10, int i11, int i12) {
            if (i10 != 0) {
                if (i11 == 0) {
                    if (i12 == 0) {
                        return mk.b.a(new int[]{0, i10, i9});
                    }
                    throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
                } else if (i11 > i10) {
                    if (i12 > i11) {
                        return mk.b.a(new int[]{0, i10, i11, i12, i9});
                    }
                    throw new IllegalArgumentException("k3 must be > k2");
                } else {
                    throw new IllegalArgumentException("k2 must be > k1");
                }
            }
            throw new IllegalArgumentException("k1 must be > 0");
        }

        private static BigInteger B(SecureRandom secureRandom, int i9) {
            BigInteger d10;
            do {
                d10 = org.bouncycastle.util.b.d(i9, secureRandom);
            } while (d10.signum() <= 0);
            return d10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public fk.f C(fk.f fVar) {
            fk.f fVar2;
            f.a aVar = (f.a) fVar;
            boolean v10 = aVar.v();
            if (!v10 || aVar.w() == 0) {
                int q10 = q();
                if ((q10 & 1) != 0) {
                    fk.f u10 = aVar.u();
                    if (v10 || u10.o().a(u10).a(fVar).i()) {
                        return u10;
                    }
                    return null;
                } else if (fVar.i()) {
                    return fVar;
                } else {
                    fk.f k10 = k(fk.d.f39761a);
                    Random random = new Random();
                    do {
                        fk.f k11 = k(new BigInteger(q10, random));
                        fk.f fVar3 = fVar;
                        fVar2 = k10;
                        for (int i9 = 1; i9 < q10; i9++) {
                            fk.f o10 = fVar3.o();
                            fVar2 = fVar2.o().a(o10.j(k11));
                            fVar3 = o10.a(fVar);
                        }
                        if (!fVar3.i()) {
                            return null;
                        }
                    } while (fVar2.o().a(fVar2).i());
                    return fVar2;
                }
            }
            return null;
        }

        @Override // fk.e
        public i f(BigInteger bigInteger, BigInteger bigInteger2) {
            fk.f k10 = k(bigInteger);
            fk.f k11 = k(bigInteger2);
            int o10 = o();
            if (o10 == 5 || o10 == 6) {
                if (!k10.i()) {
                    k11 = k11.d(k10).a(k10);
                } else if (!k11.o().equals(m())) {
                    throw new IllegalArgumentException();
                }
            }
            return g(k10, k11);
        }

        @Override // fk.e
        protected i i(int i9, BigInteger bigInteger) {
            fk.f fVar;
            fk.f k10 = k(bigInteger);
            if (k10.i()) {
                fVar = m().n();
            } else {
                fk.f C = C(k10.o().g().j(m()).a(l()).a(k10));
                if (C != null) {
                    if (C.s() != (i9 == 1)) {
                        C = C.b();
                    }
                    int o10 = o();
                    fVar = (o10 == 5 || o10 == 6) ? C.a(k10) : C.j(k10);
                } else {
                    fVar = null;
                }
            }
            if (fVar != null) {
                return g(k10, fVar);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        @Override // fk.e
        public fk.f x(SecureRandom secureRandom) {
            int q10 = q();
            return k(B(secureRandom, q10)).j(k(B(secureRandom, q10)));
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class c extends e {
        /* JADX INFO: Access modifiers changed from: protected */
        public c(BigInteger bigInteger) {
            super(mk.b.b(bigInteger));
        }

        private static BigInteger A(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger d10 = org.bouncycastle.util.b.d(bigInteger.bitLength(), secureRandom);
                if (d10.signum() > 0 && d10.compareTo(bigInteger) < 0) {
                    return d10;
                }
            }
        }

        @Override // fk.e
        protected i i(int i9, BigInteger bigInteger) {
            fk.f k10 = k(bigInteger);
            fk.f n9 = k10.o().a(this.f39768b).j(k10).a(this.f39769c).n();
            if (n9 != null) {
                if (n9.s() != (i9 == 1)) {
                    n9 = n9.m();
                }
                return g(k10, n9);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        @Override // fk.e
        public fk.f x(SecureRandom secureRandom) {
            BigInteger b10 = p().b();
            return k(A(secureRandom, b10)).j(k(A(secureRandom, b10)));
        }
    }

    /* loaded from: classes7.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        protected int f39780a;

        /* renamed from: b  reason: collision with root package name */
        protected jk.a f39781b;

        /* renamed from: c  reason: collision with root package name */
        protected h f39782c;

        d(int i9, jk.a aVar, h hVar) {
            this.f39780a = i9;
            this.f39781b = aVar;
            this.f39782c = hVar;
        }

        public e a() {
            if (e.this.y(this.f39780a)) {
                e c10 = e.this.c();
                if (c10 != e.this) {
                    synchronized (c10) {
                        c10.f39772f = this.f39780a;
                        c10.f39773g = this.f39781b;
                        c10.f39774h = this.f39782c;
                    }
                    return c10;
                }
                throw new IllegalStateException("implementation returned current curve");
            }
            throw new IllegalStateException("unsupported coordinate system");
        }

        public d b(jk.a aVar) {
            this.f39781b = aVar;
            return this;
        }
    }

    /* renamed from: fk.e$e  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0426e extends b {

        /* renamed from: j  reason: collision with root package name */
        private int f39784j;

        /* renamed from: k  reason: collision with root package name */
        private int f39785k;

        /* renamed from: l  reason: collision with root package name */
        private int f39786l;

        /* renamed from: m  reason: collision with root package name */
        private int f39787m;

        /* renamed from: n  reason: collision with root package name */
        private i.d f39788n;

        /* renamed from: fk.e$e$a */
        /* loaded from: classes7.dex */
        class a extends fk.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f39789a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f39790b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ long[] f39791c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int[] f39792d;

            a(int i9, int i10, long[] jArr, int[] iArr) {
                this.f39789a = i9;
                this.f39790b = i10;
                this.f39791c = jArr;
                this.f39792d = iArr;
            }

            private i b(long[] jArr, long[] jArr2) {
                return C0426e.this.g(new f.c(C0426e.this.f39784j, this.f39792d, new n(jArr)), new f.c(C0426e.this.f39784j, this.f39792d, new n(jArr2)));
            }

            @Override // fk.g
            public i a(int i9) {
                int i10;
                long[] l10 = nk.n.l(this.f39790b);
                long[] l11 = nk.n.l(this.f39790b);
                int i11 = 0;
                for (int i12 = 0; i12 < this.f39789a; i12++) {
                    long j10 = ((i12 ^ i9) - 1) >> 31;
                    int i13 = 0;
                    while (true) {
                        i10 = this.f39790b;
                        if (i13 < i10) {
                            long j11 = l10[i13];
                            long[] jArr = this.f39791c;
                            l10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                            l11[i13] = l11[i13] ^ (jArr[(i10 + i11) + i13] & j10);
                            i13++;
                        }
                    }
                    i11 += i10 * 2;
                }
                return b(l10, l11);
            }

            @Override // fk.g
            public int getSize() {
                return this.f39789a;
            }
        }

        protected C0426e(int i9, int i10, int i11, int i12, fk.f fVar, fk.f fVar2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i9, i10, i11, i12);
            this.f39784j = i9;
            this.f39785k = i10;
            this.f39786l = i11;
            this.f39787m = i12;
            this.f39770d = bigInteger;
            this.f39771e = bigInteger2;
            this.f39788n = new i.d(this, null, null);
            this.f39768b = fVar;
            this.f39769c = fVar2;
            this.f39772f = 6;
        }

        public C0426e(int i9, int i10, int i11, int i12, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i9, i10, i11, i12, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public C0426e(int i9, int i10, int i11, int i12, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i9, i10, i11, i12);
            this.f39784j = i9;
            this.f39785k = i10;
            this.f39786l = i11;
            this.f39787m = i12;
            this.f39770d = bigInteger3;
            this.f39771e = bigInteger4;
            this.f39788n = new i.d(this, null, null);
            this.f39768b = k(bigInteger);
            this.f39769c = k(bigInteger2);
            this.f39772f = 6;
        }

        public C0426e(int i9, int i10, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i9, i10, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        public boolean E() {
            return this.f39786l == 0 && this.f39787m == 0;
        }

        @Override // fk.e
        protected e c() {
            return new C0426e(this.f39784j, this.f39785k, this.f39786l, this.f39787m, this.f39768b, this.f39769c, this.f39770d, this.f39771e);
        }

        @Override // fk.e
        public g e(i[] iVarArr, int i9, int i10) {
            int i11 = (this.f39784j + 63) >>> 6;
            int[] iArr = E() ? new int[]{this.f39785k} : new int[]{this.f39785k, this.f39786l, this.f39787m};
            long[] jArr = new long[i10 * i11 * 2];
            int i12 = 0;
            for (int i13 = 0; i13 < i10; i13++) {
                i iVar = iVarArr[i9 + i13];
                ((f.c) iVar.n()).f39800j.k(jArr, i12);
                int i14 = i12 + i11;
                ((f.c) iVar.o()).f39800j.k(jArr, i14);
                i12 = i14 + i11;
            }
            return new a(i10, i11, jArr, iArr);
        }

        @Override // fk.e
        protected i g(fk.f fVar, fk.f fVar2) {
            return new i.d(this, fVar, fVar2);
        }

        @Override // fk.e
        public fk.f k(BigInteger bigInteger) {
            return new f.c(this.f39784j, this.f39785k, this.f39786l, this.f39787m, bigInteger);
        }

        @Override // fk.e
        public int q() {
            return this.f39784j;
        }

        @Override // fk.e
        public i r() {
            return this.f39788n;
        }

        @Override // fk.e
        public boolean y(int i9) {
            return i9 == 0 || i9 == 1 || i9 == 6;
        }
    }

    /* loaded from: classes7.dex */
    public static class f extends c {

        /* renamed from: i  reason: collision with root package name */
        BigInteger f39794i;

        /* renamed from: j  reason: collision with root package name */
        BigInteger f39795j;

        /* renamed from: k  reason: collision with root package name */
        i.e f39796k;

        protected f(BigInteger bigInteger, BigInteger bigInteger2, fk.f fVar, fk.f fVar2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.f39794i = bigInteger;
            this.f39795j = bigInteger2;
            this.f39796k = new i.e(this, null, null);
            this.f39768b = fVar;
            this.f39769c = fVar2;
            this.f39770d = bigInteger3;
            this.f39771e = bigInteger4;
            this.f39772f = 4;
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.f39794i = bigInteger;
            this.f39795j = f.d.u(bigInteger);
            this.f39796k = new i.e(this, null, null);
            this.f39768b = k(bigInteger2);
            this.f39769c = k(bigInteger3);
            this.f39770d = bigInteger4;
            this.f39771e = bigInteger5;
            this.f39772f = 4;
        }

        @Override // fk.e
        protected e c() {
            return new f(this.f39794i, this.f39795j, this.f39768b, this.f39769c, this.f39770d, this.f39771e);
        }

        @Override // fk.e
        protected i g(fk.f fVar, fk.f fVar2) {
            return new i.e(this, fVar, fVar2);
        }

        @Override // fk.e
        public fk.f k(BigInteger bigInteger) {
            return new f.d(this.f39794i, this.f39795j, bigInteger);
        }

        @Override // fk.e
        public int q() {
            return this.f39794i.bitLength();
        }

        @Override // fk.e
        public i r() {
            return this.f39796k;
        }

        @Override // fk.e
        public i t(i iVar) {
            int o10;
            return (this == iVar.i() || o() != 2 || iVar.t() || !((o10 = iVar.i().o()) == 2 || o10 == 3 || o10 == 4)) ? super.t(iVar) : new i.e(this, k(iVar.f39806b.t()), k(iVar.f39807c.t()), new fk.f[]{k(iVar.f39808d[0].t())});
        }

        @Override // fk.e
        public boolean y(int i9) {
            return i9 == 0 || i9 == 1 || i9 == 2 || i9 == 4;
        }
    }

    protected e(mk.a aVar) {
        this.f39767a = aVar;
    }

    protected void a(i iVar) {
        if (iVar == null || this != iVar.i()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    protected void b(i[] iVarArr, int i9, int i10) {
        if (iVarArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (i9 < 0 || i10 < 0 || i9 > iVarArr.length - i10) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            i iVar = iVarArr[i9 + i11];
            if (iVar != null && this != iVar.i()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    protected abstract e c();

    public synchronized d d() {
        return new d(this.f39772f, this.f39773g, this.f39774h);
    }

    public g e(i[] iVarArr, int i9, int i10) {
        int q10 = (q() + 7) >>> 3;
        byte[] bArr = new byte[i10 * q10 * 2];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i iVar = iVarArr[i9 + i12];
            byte[] byteArray = iVar.n().t().toByteArray();
            byte[] byteArray2 = iVar.o().t().toByteArray();
            int i13 = 1;
            int i14 = byteArray.length > q10 ? 1 : 0;
            int length = byteArray.length - i14;
            if (byteArray2.length <= q10) {
                i13 = 0;
            }
            int length2 = byteArray2.length - i13;
            int i15 = i11 + q10;
            System.arraycopy(byteArray, i14, bArr, i15 - length, length);
            i11 = i15 + q10;
            System.arraycopy(byteArray2, i13, bArr, i11 - length2, length2);
        }
        return new a(i10, q10, bArr);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof e) && j((e) obj));
    }

    public i f(BigInteger bigInteger, BigInteger bigInteger2) {
        return g(k(bigInteger), k(bigInteger2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract i g(fk.f fVar, fk.f fVar2);

    public i h(byte[] bArr) {
        i r10;
        int q10 = (q() + 7) / 8;
        byte b10 = bArr[0];
        if (b10 != 0) {
            if (b10 == 2 || b10 == 3) {
                if (bArr.length != q10 + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                r10 = i(b10 & 1, org.bouncycastle.util.b.e(bArr, 1, q10));
                if (!r10.s(true, true)) {
                    throw new IllegalArgumentException("Invalid point");
                }
            } else if (b10 != 4) {
                if (b10 != 6 && b10 != 7) {
                    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b10, 16));
                } else if (bArr.length != (q10 * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                } else {
                    BigInteger e10 = org.bouncycastle.util.b.e(bArr, 1, q10);
                    BigInteger e11 = org.bouncycastle.util.b.e(bArr, q10 + 1, q10);
                    if (e11.testBit(0) != (b10 == 7)) {
                        throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                    }
                    r10 = z(e10, e11);
                }
            } else if (bArr.length != (q10 * 2) + 1) {
                throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
            } else {
                r10 = z(org.bouncycastle.util.b.e(bArr, 1, q10), org.bouncycastle.util.b.e(bArr, q10 + 1, q10));
            }
        } else if (bArr.length != 1) {
            throw new IllegalArgumentException("Incorrect length for infinity encoding");
        } else {
            r10 = r();
        }
        if (b10 == 0 || !r10.t()) {
            return r10;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    public int hashCode() {
        return (p().hashCode() ^ org.bouncycastle.util.e.c(l().t().hashCode(), 8)) ^ org.bouncycastle.util.e.c(m().t().hashCode(), 16);
    }

    protected abstract i i(int i9, BigInteger bigInteger);

    public boolean j(e eVar) {
        return this == eVar || (eVar != null && p().equals(eVar.p()) && l().t().equals(eVar.l().t()) && m().t().equals(eVar.m().t()));
    }

    public abstract fk.f k(BigInteger bigInteger);

    public fk.f l() {
        return this.f39768b;
    }

    public fk.f m() {
        return this.f39769c;
    }

    public BigInteger n() {
        return this.f39771e;
    }

    public int o() {
        return this.f39772f;
    }

    public mk.a p() {
        return this.f39767a;
    }

    public abstract int q();

    public abstract i r();

    public BigInteger s() {
        return this.f39770d;
    }

    public i t(i iVar) {
        if (this == iVar.i()) {
            return iVar;
        }
        if (iVar.t()) {
            return r();
        }
        i y10 = iVar.y();
        return f(y10.p().t(), y10.q().t());
    }

    public void u(i[] iVarArr) {
        v(iVarArr, 0, iVarArr.length, null);
    }

    public void v(i[] iVarArr, int i9, int i10, fk.f fVar) {
        b(iVarArr, i9, i10);
        int o10 = o();
        if (o10 == 0 || o10 == 5) {
            if (fVar != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        fk.f[] fVarArr = new fk.f[i10];
        int[] iArr = new int[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i9 + i12;
            i iVar = iVarArr[i13];
            if (iVar != null && (fVar != null || !iVar.u())) {
                fVarArr[i11] = iVar.r(0);
                iArr[i11] = i13;
                i11++;
            }
        }
        if (i11 == 0) {
            return;
        }
        fk.c.g(fVarArr, 0, i11, fVar);
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = iArr[i14];
            iVarArr[i15] = iVarArr[i15].z(fVarArr[i14]);
        }
    }

    public p w(i iVar, String str, o oVar) {
        Hashtable hashtable;
        p a10;
        a(iVar);
        synchronized (iVar) {
            hashtable = iVar.f39809e;
            if (hashtable == null) {
                hashtable = new Hashtable(4);
                iVar.f39809e = hashtable;
            }
        }
        synchronized (hashtable) {
            p pVar = (p) hashtable.get(str);
            a10 = oVar.a(pVar);
            if (a10 != pVar) {
                hashtable.put(str, a10);
            }
        }
        return a10;
    }

    public abstract fk.f x(SecureRandom secureRandom);

    public boolean y(int i9) {
        return i9 == 0;
    }

    public i z(BigInteger bigInteger, BigInteger bigInteger2) {
        i f10 = f(bigInteger, bigInteger2);
        if (f10.v()) {
            return f10;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }
}
