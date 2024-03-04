package fk;

import java.math.BigInteger;
import java.util.Random;
/* loaded from: classes7.dex */
public abstract class f implements fk.d {

    /* loaded from: classes7.dex */
    public static abstract class a extends f {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [fk.f] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r4v3, types: [fk.f] */
        public f u() {
            int f10 = f();
            if ((f10 & 1) != 0) {
                int i9 = (f10 + 1) >>> 1;
                int a10 = 31 - org.bouncycastle.util.e.a(i9);
                int i10 = 1;
                f fVar = this;
                while (a10 > 0) {
                    fVar = fVar.q(i10 << 1).a(fVar);
                    a10--;
                    i10 = i9 >>> a10;
                    if ((i10 & 1) != 0) {
                        fVar = fVar.q(2).a(this);
                    }
                }
                return fVar;
            }
            throw new IllegalStateException("Half-trace only defined for odd m");
        }

        public boolean v() {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [fk.f] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r4v2, types: [fk.f] */
        public int w() {
            int f10 = f();
            int a10 = 31 - org.bouncycastle.util.e.a(f10);
            int i9 = 1;
            f fVar = this;
            while (a10 > 0) {
                fVar = fVar.q(i9).a(fVar);
                a10--;
                i9 = f10 >>> a10;
                if ((i9 & 1) != 0) {
                    fVar = fVar.o().a(this);
                }
            }
            if (fVar.i()) {
                return 0;
            }
            if (fVar.h()) {
                return 1;
            }
            throw new IllegalStateException("Internal error in trace calculation");
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class b extends f {
    }

    /* loaded from: classes7.dex */
    public static class c extends a {

        /* renamed from: g  reason: collision with root package name */
        private int f39797g;

        /* renamed from: h  reason: collision with root package name */
        private int f39798h;

        /* renamed from: i  reason: collision with root package name */
        private int[] f39799i;

        /* renamed from: j  reason: collision with root package name */
        n f39800j;

        public c(int i9, int i10, int i11, int i12, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i9) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i11 == 0 && i12 == 0) {
                this.f39797g = 2;
                this.f39799i = new int[]{i10};
            } else if (i11 >= i12) {
                throw new IllegalArgumentException("k2 must be smaller than k3");
            } else {
                if (i11 <= 0) {
                    throw new IllegalArgumentException("k2 must be larger than 0");
                }
                this.f39797g = 3;
                this.f39799i = new int[]{i10, i11, i12};
            }
            this.f39798h = i9;
            this.f39800j = new n(bigInteger);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(int i9, int[] iArr, n nVar) {
            this.f39798h = i9;
            this.f39797g = iArr.length == 1 ? 2 : 3;
            this.f39799i = iArr;
            this.f39800j = nVar;
        }

        @Override // fk.f
        public f a(f fVar) {
            n nVar = (n) this.f39800j.clone();
            nVar.g(((c) fVar).f39800j, 0);
            return new c(this.f39798h, this.f39799i, nVar);
        }

        @Override // fk.f
        public f b() {
            return new c(this.f39798h, this.f39799i, this.f39800j.e());
        }

        @Override // fk.f
        public int c() {
            return this.f39800j.l();
        }

        @Override // fk.f
        public f d(f fVar) {
            return j(fVar.g());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f39798h == cVar.f39798h && this.f39797g == cVar.f39797g && org.bouncycastle.util.a.c(this.f39799i, cVar.f39799i) && this.f39800j.equals(cVar.f39800j);
            }
            return false;
        }

        @Override // fk.f
        public int f() {
            return this.f39798h;
        }

        @Override // fk.f
        public f g() {
            int i9 = this.f39798h;
            int[] iArr = this.f39799i;
            return new c(i9, iArr, this.f39800j.v(i9, iArr));
        }

        @Override // fk.f
        public boolean h() {
            return this.f39800j.t();
        }

        public int hashCode() {
            return (this.f39800j.hashCode() ^ this.f39798h) ^ org.bouncycastle.util.a.u(this.f39799i);
        }

        @Override // fk.f
        public boolean i() {
            return this.f39800j.u();
        }

        @Override // fk.f
        public f j(f fVar) {
            int i9 = this.f39798h;
            int[] iArr = this.f39799i;
            return new c(i9, iArr, this.f39800j.w(((c) fVar).f39800j, i9, iArr));
        }

        @Override // fk.f
        public f k(f fVar, f fVar2, f fVar3) {
            return l(fVar, fVar2, fVar3);
        }

        @Override // fk.f
        public f l(f fVar, f fVar2, f fVar3) {
            n nVar = this.f39800j;
            n nVar2 = ((c) fVar).f39800j;
            n nVar3 = ((c) fVar2).f39800j;
            n nVar4 = ((c) fVar3).f39800j;
            n z10 = nVar.z(nVar2, this.f39798h, this.f39799i);
            n z11 = nVar3.z(nVar4, this.f39798h, this.f39799i);
            if (z10 == nVar || z10 == nVar2) {
                z10 = (n) z10.clone();
            }
            z10.g(z11, 0);
            z10.B(this.f39798h, this.f39799i);
            return new c(this.f39798h, this.f39799i, z10);
        }

        @Override // fk.f
        public f m() {
            return this;
        }

        @Override // fk.f
        public f n() {
            return (this.f39800j.u() || this.f39800j.t()) ? this : q(this.f39798h - 1);
        }

        @Override // fk.f
        public f o() {
            int i9 = this.f39798h;
            int[] iArr = this.f39799i;
            return new c(i9, iArr, this.f39800j.x(i9, iArr));
        }

        @Override // fk.f
        public f p(f fVar, f fVar2) {
            n nVar = this.f39800j;
            n nVar2 = ((c) fVar).f39800j;
            n nVar3 = ((c) fVar2).f39800j;
            n O = nVar.O(this.f39798h, this.f39799i);
            n z10 = nVar2.z(nVar3, this.f39798h, this.f39799i);
            if (O == nVar) {
                O = (n) O.clone();
            }
            O.g(z10, 0);
            O.B(this.f39798h, this.f39799i);
            return new c(this.f39798h, this.f39799i, O);
        }

        @Override // fk.f
        public f q(int i9) {
            if (i9 < 1) {
                return this;
            }
            int i10 = this.f39798h;
            int[] iArr = this.f39799i;
            return new c(i10, iArr, this.f39800j.y(i9, i10, iArr));
        }

        @Override // fk.f
        public f r(f fVar) {
            return a(fVar);
        }

        @Override // fk.f
        public boolean s() {
            return this.f39800j.R();
        }

        @Override // fk.f
        public BigInteger t() {
            return this.f39800j.S();
        }
    }

    /* loaded from: classes7.dex */
    public static class d extends b {

        /* renamed from: g  reason: collision with root package name */
        BigInteger f39801g;

        /* renamed from: h  reason: collision with root package name */
        BigInteger f39802h;

        /* renamed from: i  reason: collision with root package name */
        BigInteger f39803i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.f39801g = bigInteger;
            this.f39802h = bigInteger2;
            this.f39803i = bigInteger3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static BigInteger u(BigInteger bigInteger) {
            int bitLength = bigInteger.bitLength();
            if (bitLength < 96 || bigInteger.shiftRight(bitLength - 64).longValue() != -1) {
                return null;
            }
            return fk.d.f39762b.shiftLeft(bitLength).subtract(bigInteger);
        }

        private f v(f fVar) {
            if (fVar.o().equals(this)) {
                return fVar;
            }
            return null;
        }

        private BigInteger[] w(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int bitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigInteger4 = fk.d.f39762b;
            BigInteger bigInteger5 = bigInteger;
            BigInteger bigInteger6 = bigInteger4;
            BigInteger bigInteger7 = fk.d.f39763c;
            BigInteger bigInteger8 = bigInteger6;
            for (int i9 = bitLength - 1; i9 >= lowestSetBit + 1; i9--) {
                bigInteger4 = B(bigInteger4, bigInteger8);
                if (bigInteger3.testBit(i9)) {
                    bigInteger8 = B(bigInteger4, bigInteger2);
                    bigInteger6 = B(bigInteger6, bigInteger5);
                    bigInteger7 = C(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(bigInteger4)));
                    bigInteger5 = C(bigInteger5.multiply(bigInteger5).subtract(bigInteger8.shiftLeft(1)));
                } else {
                    BigInteger C = C(bigInteger6.multiply(bigInteger7).subtract(bigInteger4));
                    BigInteger C2 = C(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(bigInteger4)));
                    bigInteger7 = C(bigInteger7.multiply(bigInteger7).subtract(bigInteger4.shiftLeft(1)));
                    bigInteger5 = C2;
                    bigInteger6 = C;
                    bigInteger8 = bigInteger4;
                }
            }
            BigInteger B = B(bigInteger4, bigInteger8);
            BigInteger B2 = B(B, bigInteger2);
            BigInteger C3 = C(bigInteger6.multiply(bigInteger7).subtract(B));
            BigInteger C4 = C(bigInteger5.multiply(bigInteger7).subtract(bigInteger.multiply(B)));
            BigInteger B3 = B(B, B2);
            for (int i10 = 1; i10 <= lowestSetBit; i10++) {
                C3 = B(C3, C4);
                C4 = C(C4.multiply(C4).subtract(B3.shiftLeft(1)));
                B3 = B(B3, B3);
            }
            return new BigInteger[]{C3, C4};
        }

        protected BigInteger A(BigInteger bigInteger) {
            return org.bouncycastle.util.b.f(this.f39801g, bigInteger);
        }

        protected BigInteger B(BigInteger bigInteger, BigInteger bigInteger2) {
            return C(bigInteger.multiply(bigInteger2));
        }

        protected BigInteger C(BigInteger bigInteger) {
            if (this.f39802h != null) {
                boolean z10 = bigInteger.signum() < 0;
                if (z10) {
                    bigInteger = bigInteger.abs();
                }
                int bitLength = this.f39801g.bitLength();
                boolean equals = this.f39802h.equals(fk.d.f39762b);
                while (bigInteger.bitLength() > bitLength + 1) {
                    BigInteger shiftRight = bigInteger.shiftRight(bitLength);
                    BigInteger subtract = bigInteger.subtract(shiftRight.shiftLeft(bitLength));
                    if (!equals) {
                        shiftRight = shiftRight.multiply(this.f39802h);
                    }
                    bigInteger = shiftRight.add(subtract);
                }
                while (bigInteger.compareTo(this.f39801g) >= 0) {
                    bigInteger = bigInteger.subtract(this.f39801g);
                }
                return (!z10 || bigInteger.signum() == 0) ? bigInteger : this.f39801g.subtract(bigInteger);
            }
            return bigInteger.mod(this.f39801g);
        }

        protected BigInteger D(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger subtract = bigInteger.subtract(bigInteger2);
            return subtract.signum() < 0 ? subtract.add(this.f39801g) : subtract;
        }

        @Override // fk.f
        public f a(f fVar) {
            return new d(this.f39801g, this.f39802h, x(this.f39803i, fVar.t()));
        }

        @Override // fk.f
        public f b() {
            BigInteger add = this.f39803i.add(fk.d.f39762b);
            if (add.compareTo(this.f39801g) == 0) {
                add = fk.d.f39761a;
            }
            return new d(this.f39801g, this.f39802h, add);
        }

        @Override // fk.f
        public f d(f fVar) {
            return new d(this.f39801g, this.f39802h, B(this.f39803i, A(fVar.t())));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f39801g.equals(dVar.f39801g) && this.f39803i.equals(dVar.f39803i);
            }
            return false;
        }

        @Override // fk.f
        public int f() {
            return this.f39801g.bitLength();
        }

        @Override // fk.f
        public f g() {
            return new d(this.f39801g, this.f39802h, A(this.f39803i));
        }

        public int hashCode() {
            return this.f39801g.hashCode() ^ this.f39803i.hashCode();
        }

        @Override // fk.f
        public f j(f fVar) {
            return new d(this.f39801g, this.f39802h, B(this.f39803i, fVar.t()));
        }

        @Override // fk.f
        public f k(f fVar, f fVar2, f fVar3) {
            BigInteger bigInteger = this.f39803i;
            BigInteger t10 = fVar.t();
            BigInteger t11 = fVar2.t();
            BigInteger t12 = fVar3.t();
            return new d(this.f39801g, this.f39802h, C(bigInteger.multiply(t10).subtract(t11.multiply(t12))));
        }

        @Override // fk.f
        public f l(f fVar, f fVar2, f fVar3) {
            BigInteger bigInteger = this.f39803i;
            BigInteger t10 = fVar.t();
            BigInteger t11 = fVar2.t();
            BigInteger t12 = fVar3.t();
            return new d(this.f39801g, this.f39802h, C(bigInteger.multiply(t10).add(t11.multiply(t12))));
        }

        @Override // fk.f
        public f m() {
            if (this.f39803i.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.f39801g;
            return new d(bigInteger, this.f39802h, bigInteger.subtract(this.f39803i));
        }

        @Override // fk.f
        public f n() {
            if (i() || h()) {
                return this;
            }
            if (!this.f39801g.testBit(0)) {
                throw new RuntimeException("not done yet");
            }
            if (this.f39801g.testBit(1)) {
                BigInteger add = this.f39801g.shiftRight(2).add(fk.d.f39762b);
                BigInteger bigInteger = this.f39801g;
                return v(new d(bigInteger, this.f39802h, this.f39803i.modPow(add, bigInteger)));
            } else if (this.f39801g.testBit(2)) {
                BigInteger modPow = this.f39803i.modPow(this.f39801g.shiftRight(3), this.f39801g);
                BigInteger B = B(modPow, this.f39803i);
                if (B(B, modPow).equals(fk.d.f39762b)) {
                    return v(new d(this.f39801g, this.f39802h, B));
                }
                return v(new d(this.f39801g, this.f39802h, B(B, fk.d.f39763c.modPow(this.f39801g.shiftRight(2), this.f39801g))));
            } else {
                BigInteger shiftRight = this.f39801g.shiftRight(1);
                BigInteger modPow2 = this.f39803i.modPow(shiftRight, this.f39801g);
                BigInteger bigInteger2 = fk.d.f39762b;
                if (!modPow2.equals(bigInteger2)) {
                    return null;
                }
                BigInteger bigInteger3 = this.f39803i;
                BigInteger y10 = y(y(bigInteger3));
                BigInteger add2 = shiftRight.add(bigInteger2);
                BigInteger subtract = this.f39801g.subtract(bigInteger2);
                Random random = new Random();
                while (true) {
                    BigInteger bigInteger4 = new BigInteger(this.f39801g.bitLength(), random);
                    if (bigInteger4.compareTo(this.f39801g) < 0 && C(bigInteger4.multiply(bigInteger4).subtract(y10)).modPow(shiftRight, this.f39801g).equals(subtract)) {
                        BigInteger[] w6 = w(bigInteger4, bigInteger3, add2);
                        BigInteger bigInteger5 = w6[0];
                        BigInteger bigInteger6 = w6[1];
                        if (B(bigInteger6, bigInteger6).equals(y10)) {
                            return new d(this.f39801g, this.f39802h, z(bigInteger6));
                        }
                        if (!bigInteger5.equals(fk.d.f39762b) && !bigInteger5.equals(subtract)) {
                            return null;
                        }
                    }
                }
            }
        }

        @Override // fk.f
        public f o() {
            BigInteger bigInteger = this.f39801g;
            BigInteger bigInteger2 = this.f39802h;
            BigInteger bigInteger3 = this.f39803i;
            return new d(bigInteger, bigInteger2, B(bigInteger3, bigInteger3));
        }

        @Override // fk.f
        public f p(f fVar, f fVar2) {
            BigInteger bigInteger = this.f39803i;
            BigInteger t10 = fVar.t();
            BigInteger t11 = fVar2.t();
            return new d(this.f39801g, this.f39802h, C(bigInteger.multiply(bigInteger).add(t10.multiply(t11))));
        }

        @Override // fk.f
        public f r(f fVar) {
            return new d(this.f39801g, this.f39802h, D(this.f39803i, fVar.t()));
        }

        @Override // fk.f
        public BigInteger t() {
            return this.f39803i;
        }

        protected BigInteger x(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger add = bigInteger.add(bigInteger2);
            return add.compareTo(this.f39801g) >= 0 ? add.subtract(this.f39801g) : add;
        }

        protected BigInteger y(BigInteger bigInteger) {
            BigInteger shiftLeft = bigInteger.shiftLeft(1);
            return shiftLeft.compareTo(this.f39801g) >= 0 ? shiftLeft.subtract(this.f39801g) : shiftLeft;
        }

        protected BigInteger z(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f39801g.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }
    }

    public abstract f a(f fVar);

    public abstract f b();

    public int c() {
        return t().bitLength();
    }

    public abstract f d(f fVar);

    public byte[] e() {
        return org.bouncycastle.util.b.a((f() + 7) / 8, t());
    }

    public abstract int f();

    public abstract f g();

    public boolean h() {
        return c() == 1;
    }

    public boolean i() {
        return t().signum() == 0;
    }

    public abstract f j(f fVar);

    public f k(f fVar, f fVar2, f fVar3) {
        return j(fVar).r(fVar2.j(fVar3));
    }

    public f l(f fVar, f fVar2, f fVar3) {
        return j(fVar).a(fVar2.j(fVar3));
    }

    public abstract f m();

    public abstract f n();

    public abstract f o();

    public f p(f fVar, f fVar2) {
        return o().a(fVar.j(fVar2));
    }

    public f q(int i9) {
        f fVar = this;
        for (int i10 = 0; i10 < i9; i10++) {
            fVar = fVar.o();
        }
        return fVar;
    }

    public abstract f r(f fVar);

    public boolean s() {
        return t().testBit(0);
    }

    public abstract BigInteger t();

    public String toString() {
        return t().toString(16);
    }
}
