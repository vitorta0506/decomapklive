package com.google.protobuf;

import com.google.protobuf.o1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes3.dex */
public abstract class p {

    /* renamed from: f  reason: collision with root package name */
    private static volatile int f15122f = 100;

    /* renamed from: a  reason: collision with root package name */
    int f15123a;

    /* renamed from: b  reason: collision with root package name */
    int f15124b;

    /* renamed from: c  reason: collision with root package name */
    int f15125c;

    /* renamed from: d  reason: collision with root package name */
    q f15126d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15127e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class b extends p {

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f15128g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f15129h;

        /* renamed from: i  reason: collision with root package name */
        private int f15130i;

        /* renamed from: j  reason: collision with root package name */
        private int f15131j;

        /* renamed from: k  reason: collision with root package name */
        private int f15132k;

        /* renamed from: l  reason: collision with root package name */
        private int f15133l;

        /* renamed from: m  reason: collision with root package name */
        private int f15134m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f15135n;

        /* renamed from: o  reason: collision with root package name */
        private int f15136o;

        private void X() {
            int i9 = this.f15130i + this.f15131j;
            this.f15130i = i9;
            int i10 = i9 - this.f15133l;
            int i11 = this.f15136o;
            if (i10 > i11) {
                int i12 = i10 - i11;
                this.f15131j = i12;
                this.f15130i = i9 - i12;
                return;
            }
            this.f15131j = 0;
        }

        private void a0() throws IOException {
            if (this.f15130i - this.f15132k >= 10) {
                b0();
            } else {
                c0();
            }
        }

        private void b0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                byte[] bArr = this.f15128g;
                int i10 = this.f15132k;
                this.f15132k = i10 + 1;
                if (bArr[i10] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void c0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                if (R() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.p
        public long A() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public <T extends o1> T B(e2<T> e2Var, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            T m10 = e2Var.m(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return m10;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public void C(o1.a aVar, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int D() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f15132k
                int r1 = r5.f15130i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f15128g
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f15132k = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.W()
                int r1 = (int) r0
                return r1
            L70:
                r5.f15132k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.b.D():int");
        }

        @Override // com.google.protobuf.p
        public int F() throws IOException {
            return T();
        }

        @Override // com.google.protobuf.p
        public long G() throws IOException {
            return U();
        }

        @Override // com.google.protobuf.p
        public int H() throws IOException {
            return p.c(D());
        }

        @Override // com.google.protobuf.p
        public long I() throws IOException {
            return p.d(V());
        }

        @Override // com.google.protobuf.p
        public String J() throws IOException {
            int D = D();
            if (D > 0) {
                int i9 = this.f15130i;
                int i10 = this.f15132k;
                if (D <= i9 - i10) {
                    String str = new String(this.f15128g, i10, D, u0.f15284b);
                    this.f15132k += D;
                    return str;
                }
            }
            if (D == 0) {
                return "";
            }
            if (D < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public String K() throws IOException {
            int D = D();
            if (D > 0) {
                int i9 = this.f15130i;
                int i10 = this.f15132k;
                if (D <= i9 - i10) {
                    String h10 = n3.h(this.f15128g, i10, D);
                    this.f15132k += D;
                    return h10;
                }
            }
            if (D == 0) {
                return "";
            }
            if (D <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public int L() throws IOException {
            if (g()) {
                this.f15134m = 0;
                return 0;
            }
            int D = D();
            this.f15134m = D;
            if (WireFormat.a(D) != 0) {
                return this.f15134m;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.p
        public int M() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public long N() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public boolean Q(int i9) throws IOException {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                a0();
                return true;
            } else if (b10 == 1) {
                Z(8);
                return true;
            } else if (b10 == 2) {
                Z(D());
                return true;
            } else if (b10 == 3) {
                Y();
                a(WireFormat.c(WireFormat.a(i9), 4));
                return true;
            } else if (b10 != 4) {
                if (b10 == 5) {
                    Z(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        public byte R() throws IOException {
            int i9 = this.f15132k;
            if (i9 != this.f15130i) {
                byte[] bArr = this.f15128g;
                this.f15132k = i9 + 1;
                return bArr[i9];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public byte[] S(int i9) throws IOException {
            if (i9 > 0) {
                int i10 = this.f15130i;
                int i11 = this.f15132k;
                if (i9 <= i10 - i11) {
                    int i12 = i9 + i11;
                    this.f15132k = i12;
                    return Arrays.copyOfRange(this.f15128g, i11, i12);
                }
            }
            if (i9 <= 0) {
                if (i9 == 0) {
                    return u0.f15286d;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public int T() throws IOException {
            int i9 = this.f15132k;
            if (this.f15130i - i9 >= 4) {
                byte[] bArr = this.f15128g;
                this.f15132k = i9 + 4;
                return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long U() throws IOException {
            int i9 = this.f15132k;
            if (this.f15130i - i9 >= 8) {
                byte[] bArr = this.f15128g;
                this.f15132k = i9 + 8;
                return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long V() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.b.V():long");
        }

        long W() throws IOException {
            long j10 = 0;
            for (int i9 = 0; i9 < 64; i9 += 7) {
                byte R = R();
                j10 |= (R & ByteCompanionObject.MAX_VALUE) << i9;
                if ((R & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void Y() throws IOException {
            int L;
            do {
                L = L();
                if (L == 0) {
                    return;
                }
            } while (Q(L));
        }

        public void Z(int i9) throws IOException {
            if (i9 >= 0) {
                int i10 = this.f15130i;
                int i11 = this.f15132k;
                if (i9 <= i10 - i11) {
                    this.f15132k = i11 + i9;
                    return;
                }
            }
            if (i9 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public void a(int i9) throws InvalidProtocolBufferException {
            if (this.f15134m != i9) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.p
        public int e() {
            int i9 = this.f15136o;
            if (i9 == Integer.MAX_VALUE) {
                return -1;
            }
            return i9 - f();
        }

        @Override // com.google.protobuf.p
        public int f() {
            return this.f15132k - this.f15133l;
        }

        @Override // com.google.protobuf.p
        public boolean g() throws IOException {
            return this.f15132k == this.f15130i;
        }

        @Override // com.google.protobuf.p
        public void p(int i9) {
            this.f15136o = i9;
            X();
        }

        @Override // com.google.protobuf.p
        public int q(int i9) throws InvalidProtocolBufferException {
            if (i9 >= 0) {
                int f10 = i9 + f();
                if (f10 >= 0) {
                    int i10 = this.f15136o;
                    if (f10 <= i10) {
                        this.f15136o = f10;
                        X();
                        return i10;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.parseFailure();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.p
        public boolean r() throws IOException {
            return V() != 0;
        }

        @Override // com.google.protobuf.p
        public ByteString s() throws IOException {
            ByteString copyFrom;
            int D = D();
            if (D > 0) {
                int i9 = this.f15130i;
                int i10 = this.f15132k;
                if (D <= i9 - i10) {
                    if (this.f15129h && this.f15135n) {
                        copyFrom = ByteString.wrap(this.f15128g, i10, D);
                    } else {
                        copyFrom = ByteString.copyFrom(this.f15128g, i10, D);
                    }
                    this.f15132k += D;
                    return copyFrom;
                }
            }
            if (D == 0) {
                return ByteString.EMPTY;
            }
            return ByteString.wrap(S(D));
        }

        @Override // com.google.protobuf.p
        public double t() throws IOException {
            return Double.longBitsToDouble(U());
        }

        @Override // com.google.protobuf.p
        public int u() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public int v() throws IOException {
            return T();
        }

        @Override // com.google.protobuf.p
        public long w() throws IOException {
            return U();
        }

        @Override // com.google.protobuf.p
        public float x() throws IOException {
            return Float.intBitsToFloat(T());
        }

        @Override // com.google.protobuf.p
        public void y(int i9, o1.a aVar, f0 f0Var) throws IOException {
            b();
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(WireFormat.c(i9, 4));
            this.f15123a--;
        }

        @Override // com.google.protobuf.p
        public int z() throws IOException {
            return D();
        }

        private b(byte[] bArr, int i9, int i10, boolean z10) {
            super();
            this.f15136o = Integer.MAX_VALUE;
            this.f15128g = bArr;
            this.f15130i = i10 + i9;
            this.f15132k = i9;
            this.f15133l = i9;
            this.f15129h = z10;
        }
    }

    /* loaded from: classes3.dex */
    private static final class c extends p {

        /* renamed from: g  reason: collision with root package name */
        private final Iterable<ByteBuffer> f15137g;

        /* renamed from: h  reason: collision with root package name */
        private final Iterator<ByteBuffer> f15138h;

        /* renamed from: i  reason: collision with root package name */
        private ByteBuffer f15139i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f15140j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f15141k;

        /* renamed from: l  reason: collision with root package name */
        private int f15142l;

        /* renamed from: m  reason: collision with root package name */
        private int f15143m;

        /* renamed from: n  reason: collision with root package name */
        private int f15144n;

        /* renamed from: o  reason: collision with root package name */
        private int f15145o;

        /* renamed from: p  reason: collision with root package name */
        private int f15146p;

        /* renamed from: q  reason: collision with root package name */
        private int f15147q;

        /* renamed from: r  reason: collision with root package name */
        private long f15148r;

        /* renamed from: s  reason: collision with root package name */
        private long f15149s;

        /* renamed from: t  reason: collision with root package name */
        private long f15150t;

        /* renamed from: u  reason: collision with root package name */
        private long f15151u;

        private long R() {
            return this.f15151u - this.f15148r;
        }

        private void S() throws InvalidProtocolBufferException {
            if (this.f15138h.hasNext()) {
                f0();
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void U(byte[] bArr, int i9, int i10) throws IOException {
            if (i10 < 0 || i10 > a0()) {
                if (i10 > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i10 != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i11 = i10;
            while (i11 > 0) {
                if (R() == 0) {
                    S();
                }
                int min = Math.min(i11, (int) R());
                long j10 = min;
                m3.p(this.f15148r, bArr, (i10 - i11) + i9, j10);
                i11 -= min;
                this.f15148r += j10;
            }
        }

        private void Z() {
            int i9 = this.f15142l + this.f15143m;
            this.f15142l = i9;
            int i10 = i9 - this.f15147q;
            int i11 = this.f15144n;
            if (i10 > i11) {
                int i12 = i10 - i11;
                this.f15143m = i12;
                this.f15142l = i9 - i12;
                return;
            }
            this.f15143m = 0;
        }

        private int a0() {
            return (int) (((this.f15142l - this.f15146p) - this.f15148r) + this.f15149s);
        }

        private void d0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                if (T() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer e0(int i9, int i10) throws IOException {
            int position = this.f15139i.position();
            int limit = this.f15139i.limit();
            ByteBuffer byteBuffer = this.f15139i;
            try {
                try {
                    byteBuffer.position(i9);
                    byteBuffer.limit(i10);
                    return this.f15139i.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        private void f0() {
            ByteBuffer next = this.f15138h.next();
            this.f15139i = next;
            this.f15146p += (int) (this.f15148r - this.f15149s);
            long position = next.position();
            this.f15148r = position;
            this.f15149s = position;
            this.f15151u = this.f15139i.limit();
            long k10 = m3.k(this.f15139i);
            this.f15150t = k10;
            this.f15148r += k10;
            this.f15149s += k10;
            this.f15151u += k10;
        }

        @Override // com.google.protobuf.p
        public long A() throws IOException {
            return X();
        }

        @Override // com.google.protobuf.p
        public <T extends o1> T B(e2<T> e2Var, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            T m10 = e2Var.m(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return m10;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public void C(o1.a aVar, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
            if (com.google.protobuf.m3.w(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int D() throws java.io.IOException {
            /*
                r10 = this;
                long r0 = r10.f15148r
                long r2 = r10.f15151u
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 != 0) goto La
                goto L8a
            La:
                r2 = 1
                long r4 = r0 + r2
                byte r0 = com.google.protobuf.m3.w(r0)
                if (r0 < 0) goto L1a
                long r4 = r10.f15148r
                long r4 = r4 + r2
                r10.f15148r = r4
                return r0
            L1a:
                long r6 = r10.f15151u
                long r8 = r10.f15148r
                long r6 = r6 - r8
                r8 = 10
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L26
                goto L8a
            L26:
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                int r1 = r1 << 7
                r0 = r0 ^ r1
                if (r0 >= 0) goto L34
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L90
            L34:
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L43
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L41:
                r6 = r4
                goto L90
            L43:
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                int r1 = r1 << 21
                r0 = r0 ^ r1
                if (r0 >= 0) goto L53
                r1 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                goto L90
            L53:
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                int r6 = r1 << 28
                r0 = r0 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r6
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L90
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L90
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L90
            L8a:
                long r0 = r10.Y()
                int r1 = (int) r0
                return r1
            L90:
                r10.f15148r = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.c.D():int");
        }

        @Override // com.google.protobuf.p
        public int F() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public long G() throws IOException {
            return W();
        }

        @Override // com.google.protobuf.p
        public int H() throws IOException {
            return p.c(D());
        }

        @Override // com.google.protobuf.p
        public long I() throws IOException {
            return p.d(X());
        }

        @Override // com.google.protobuf.p
        public String J() throws IOException {
            int D = D();
            if (D > 0) {
                long j10 = D;
                long j11 = this.f15151u;
                long j12 = this.f15148r;
                if (j10 <= j11 - j12) {
                    byte[] bArr = new byte[D];
                    m3.p(j12, bArr, 0L, j10);
                    String str = new String(bArr, u0.f15284b);
                    this.f15148r += j10;
                    return str;
                }
            }
            if (D > 0 && D <= a0()) {
                byte[] bArr2 = new byte[D];
                U(bArr2, 0, D);
                return new String(bArr2, u0.f15284b);
            } else if (D == 0) {
                return "";
            } else {
                if (D < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.p
        public String K() throws IOException {
            int D = D();
            if (D > 0) {
                long j10 = D;
                long j11 = this.f15151u;
                long j12 = this.f15148r;
                if (j10 <= j11 - j12) {
                    String g10 = n3.g(this.f15139i, (int) (j12 - this.f15149s), D);
                    this.f15148r += j10;
                    return g10;
                }
            }
            if (D >= 0 && D <= a0()) {
                byte[] bArr = new byte[D];
                U(bArr, 0, D);
                return n3.h(bArr, 0, D);
            } else if (D == 0) {
                return "";
            } else {
                if (D <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.p
        public int L() throws IOException {
            if (g()) {
                this.f15145o = 0;
                return 0;
            }
            int D = D();
            this.f15145o = D;
            if (WireFormat.a(D) != 0) {
                return this.f15145o;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.p
        public int M() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public long N() throws IOException {
            return X();
        }

        @Override // com.google.protobuf.p
        public boolean Q(int i9) throws IOException {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                d0();
                return true;
            } else if (b10 == 1) {
                c0(8);
                return true;
            } else if (b10 == 2) {
                c0(D());
                return true;
            } else if (b10 == 3) {
                b0();
                a(WireFormat.c(WireFormat.a(i9), 4));
                return true;
            } else if (b10 != 4) {
                if (b10 == 5) {
                    c0(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        public byte T() throws IOException {
            if (R() == 0) {
                S();
            }
            long j10 = this.f15148r;
            this.f15148r = 1 + j10;
            return m3.w(j10);
        }

        public int V() throws IOException {
            if (R() >= 4) {
                long j10 = this.f15148r;
                this.f15148r = 4 + j10;
                return ((m3.w(j10 + 3) & UByte.MAX_VALUE) << 24) | (m3.w(j10) & UByte.MAX_VALUE) | ((m3.w(1 + j10) & UByte.MAX_VALUE) << 8) | ((m3.w(2 + j10) & UByte.MAX_VALUE) << 16);
            }
            return (T() & UByte.MAX_VALUE) | ((T() & UByte.MAX_VALUE) << 8) | ((T() & UByte.MAX_VALUE) << 16) | ((T() & UByte.MAX_VALUE) << 24);
        }

        public long W() throws IOException {
            if (R() >= 8) {
                long j10 = this.f15148r;
                this.f15148r = 8 + j10;
                return ((m3.w(j10 + 7) & 255) << 56) | (m3.w(j10) & 255) | ((m3.w(1 + j10) & 255) << 8) | ((m3.w(2 + j10) & 255) << 16) | ((m3.w(3 + j10) & 255) << 24) | ((m3.w(4 + j10) & 255) << 32) | ((m3.w(5 + j10) & 255) << 40) | ((m3.w(6 + j10) & 255) << 48);
            }
            return (T() & 255) | ((T() & 255) << 8) | ((T() & 255) << 16) | ((T() & 255) << 24) | ((T() & 255) << 32) | ((T() & 255) << 40) | ((T() & 255) << 48) | ((T() & 255) << 56);
        }

        public long X() throws IOException {
            long w6;
            long j10;
            long j11;
            int i9;
            long j12 = this.f15148r;
            if (this.f15151u != j12) {
                long j13 = j12 + 1;
                byte w8 = m3.w(j12);
                if (w8 >= 0) {
                    this.f15148r++;
                    return w8;
                } else if (this.f15151u - this.f15148r >= 10) {
                    long j14 = j13 + 1;
                    int w10 = w8 ^ (m3.w(j13) << 7);
                    if (w10 >= 0) {
                        long j15 = j14 + 1;
                        int w11 = w10 ^ (m3.w(j14) << 14);
                        if (w11 >= 0) {
                            w6 = w11 ^ 16256;
                        } else {
                            j14 = j15 + 1;
                            int w12 = w11 ^ (m3.w(j15) << 21);
                            if (w12 < 0) {
                                i9 = w12 ^ (-2080896);
                            } else {
                                j15 = j14 + 1;
                                long w13 = w12 ^ (m3.w(j14) << 28);
                                if (w13 < 0) {
                                    long j16 = j15 + 1;
                                    long w14 = w13 ^ (m3.w(j15) << 35);
                                    if (w14 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j15 = j16 + 1;
                                        w13 = w14 ^ (m3.w(j16) << 42);
                                        if (w13 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j16 = j15 + 1;
                                            w14 = w13 ^ (m3.w(j15) << 49);
                                            if (w14 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                j15 = j16 + 1;
                                                w6 = (w14 ^ (m3.w(j16) << 56)) ^ 71499008037633920L;
                                                if (w6 < 0) {
                                                    long j17 = 1 + j15;
                                                    if (m3.w(j15) >= 0) {
                                                        j14 = j17;
                                                        this.f15148r = j14;
                                                        return w6;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    w6 = w14 ^ j10;
                                    j14 = j16;
                                    this.f15148r = j14;
                                    return w6;
                                }
                                j11 = 266354560;
                                w6 = w13 ^ j11;
                            }
                        }
                        j14 = j15;
                        this.f15148r = j14;
                        return w6;
                    }
                    i9 = w10 ^ (-128);
                    w6 = i9;
                    this.f15148r = j14;
                    return w6;
                }
            }
            return Y();
        }

        long Y() throws IOException {
            long j10 = 0;
            for (int i9 = 0; i9 < 64; i9 += 7) {
                byte T = T();
                j10 |= (T & ByteCompanionObject.MAX_VALUE) << i9;
                if ((T & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.p
        public void a(int i9) throws InvalidProtocolBufferException {
            if (this.f15145o != i9) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        public void b0() throws IOException {
            int L;
            do {
                L = L();
                if (L == 0) {
                    return;
                }
            } while (Q(L));
        }

        public void c0(int i9) throws IOException {
            if (i9 < 0 || i9 > ((this.f15142l - this.f15146p) - this.f15148r) + this.f15149s) {
                if (i9 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            while (i9 > 0) {
                if (R() == 0) {
                    S();
                }
                int min = Math.min(i9, (int) R());
                i9 -= min;
                this.f15148r += min;
            }
        }

        @Override // com.google.protobuf.p
        public int e() {
            int i9 = this.f15144n;
            if (i9 == Integer.MAX_VALUE) {
                return -1;
            }
            return i9 - f();
        }

        @Override // com.google.protobuf.p
        public int f() {
            return (int) (((this.f15146p - this.f15147q) + this.f15148r) - this.f15149s);
        }

        @Override // com.google.protobuf.p
        public boolean g() throws IOException {
            return (((long) this.f15146p) + this.f15148r) - this.f15149s == ((long) this.f15142l);
        }

        @Override // com.google.protobuf.p
        public void p(int i9) {
            this.f15144n = i9;
            Z();
        }

        @Override // com.google.protobuf.p
        public int q(int i9) throws InvalidProtocolBufferException {
            if (i9 >= 0) {
                int f10 = i9 + f();
                int i10 = this.f15144n;
                if (f10 <= i10) {
                    this.f15144n = f10;
                    Z();
                    return i10;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.p
        public boolean r() throws IOException {
            return X() != 0;
        }

        @Override // com.google.protobuf.p
        public ByteString s() throws IOException {
            int D = D();
            if (D > 0) {
                long j10 = D;
                long j11 = this.f15151u;
                long j12 = this.f15148r;
                if (j10 <= j11 - j12) {
                    if (this.f15140j && this.f15141k) {
                        int i9 = (int) (j12 - this.f15150t);
                        ByteString wrap = ByteString.wrap(e0(i9, D + i9));
                        this.f15148r += j10;
                        return wrap;
                    }
                    byte[] bArr = new byte[D];
                    m3.p(j12, bArr, 0L, j10);
                    this.f15148r += j10;
                    return ByteString.wrap(bArr);
                }
            }
            if (D <= 0 || D > a0()) {
                if (D == 0) {
                    return ByteString.EMPTY;
                }
                if (D < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (this.f15140j && this.f15141k) {
                ArrayList arrayList = new ArrayList();
                while (D > 0) {
                    if (R() == 0) {
                        S();
                    }
                    int min = Math.min(D, (int) R());
                    int i10 = (int) (this.f15148r - this.f15150t);
                    arrayList.add(ByteString.wrap(e0(i10, i10 + min)));
                    D -= min;
                    this.f15148r += min;
                }
                return ByteString.copyFrom(arrayList);
            } else {
                byte[] bArr2 = new byte[D];
                U(bArr2, 0, D);
                return ByteString.wrap(bArr2);
            }
        }

        @Override // com.google.protobuf.p
        public double t() throws IOException {
            return Double.longBitsToDouble(W());
        }

        @Override // com.google.protobuf.p
        public int u() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public int v() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public long w() throws IOException {
            return W();
        }

        @Override // com.google.protobuf.p
        public float x() throws IOException {
            return Float.intBitsToFloat(V());
        }

        @Override // com.google.protobuf.p
        public void y(int i9, o1.a aVar, f0 f0Var) throws IOException {
            b();
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(WireFormat.c(i9, 4));
            this.f15123a--;
        }

        @Override // com.google.protobuf.p
        public int z() throws IOException {
            return D();
        }

        private c(Iterable<ByteBuffer> iterable, int i9, boolean z10) {
            super();
            this.f15144n = Integer.MAX_VALUE;
            this.f15142l = i9;
            this.f15137g = iterable;
            this.f15138h = iterable.iterator();
            this.f15140j = z10;
            this.f15146p = 0;
            this.f15147q = 0;
            if (i9 == 0) {
                this.f15139i = u0.f15287e;
                this.f15148r = 0L;
                this.f15149s = 0L;
                this.f15151u = 0L;
                this.f15150t = 0L;
                return;
            }
            f0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class d extends p {

        /* renamed from: g  reason: collision with root package name */
        private final InputStream f15152g;

        /* renamed from: h  reason: collision with root package name */
        private final byte[] f15153h;

        /* renamed from: i  reason: collision with root package name */
        private int f15154i;

        /* renamed from: j  reason: collision with root package name */
        private int f15155j;

        /* renamed from: k  reason: collision with root package name */
        private int f15156k;

        /* renamed from: l  reason: collision with root package name */
        private int f15157l;

        /* renamed from: m  reason: collision with root package name */
        private int f15158m;

        /* renamed from: n  reason: collision with root package name */
        private int f15159n;

        /* renamed from: o  reason: collision with root package name */
        private a f15160o;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public interface a {
            void a();
        }

        private static int R(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private static int S(InputStream inputStream, byte[] bArr, int i9, int i10) throws IOException {
            try {
                return inputStream.read(bArr, i9, i10);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private ByteString T(int i9) throws IOException {
            byte[] W = W(i9);
            if (W != null) {
                return ByteString.copyFrom(W);
            }
            int i10 = this.f15156k;
            int i11 = this.f15154i;
            int i12 = i11 - i10;
            this.f15158m += i11;
            this.f15156k = 0;
            this.f15154i = 0;
            List<byte[]> X = X(i9 - i12);
            byte[] bArr = new byte[i9];
            System.arraycopy(this.f15153h, i10, bArr, 0, i12);
            for (byte[] bArr2 : X) {
                System.arraycopy(bArr2, 0, bArr, i12, bArr2.length);
                i12 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] V(int i9, boolean z10) throws IOException {
            byte[] W = W(i9);
            if (W != null) {
                return z10 ? (byte[]) W.clone() : W;
            }
            int i10 = this.f15156k;
            int i11 = this.f15154i;
            int i12 = i11 - i10;
            this.f15158m += i11;
            this.f15156k = 0;
            this.f15154i = 0;
            List<byte[]> X = X(i9 - i12);
            byte[] bArr = new byte[i9];
            System.arraycopy(this.f15153h, i10, bArr, 0, i12);
            for (byte[] bArr2 : X) {
                System.arraycopy(bArr2, 0, bArr, i12, bArr2.length);
                i12 += bArr2.length;
            }
            return bArr;
        }

        private byte[] W(int i9) throws IOException {
            if (i9 == 0) {
                return u0.f15286d;
            }
            if (i9 >= 0) {
                int i10 = this.f15158m;
                int i11 = this.f15156k;
                int i12 = i10 + i11 + i9;
                if (i12 - this.f15125c <= 0) {
                    int i13 = this.f15159n;
                    if (i12 <= i13) {
                        int i14 = this.f15154i - i11;
                        int i15 = i9 - i14;
                        if (i15 < 4096 || i15 <= R(this.f15152g)) {
                            byte[] bArr = new byte[i9];
                            System.arraycopy(this.f15153h, this.f15156k, bArr, 0, i14);
                            this.f15158m += this.f15154i;
                            this.f15156k = 0;
                            this.f15154i = 0;
                            while (i14 < i9) {
                                int S = S(this.f15152g, bArr, i14, i9 - i14);
                                if (S != -1) {
                                    this.f15158m += S;
                                    i14 += S;
                                } else {
                                    throw InvalidProtocolBufferException.truncatedMessage();
                                }
                            }
                            return bArr;
                        }
                        return null;
                    }
                    g0((i13 - i10) - i11);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        private List<byte[]> X(int i9) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i9 > 0) {
                int min = Math.min(i9, 4096);
                byte[] bArr = new byte[min];
                int i10 = 0;
                while (i10 < min) {
                    int read = this.f15152g.read(bArr, i10, min - i10);
                    if (read != -1) {
                        this.f15158m += read;
                        i10 += read;
                    } else {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                }
                i9 -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void c0() {
            int i9 = this.f15154i + this.f15155j;
            this.f15154i = i9;
            int i10 = this.f15158m + i9;
            int i11 = this.f15159n;
            if (i10 > i11) {
                int i12 = i10 - i11;
                this.f15155j = i12;
                this.f15154i = i9 - i12;
                return;
            }
            this.f15155j = 0;
        }

        private void d0(int i9) throws IOException {
            if (l0(i9)) {
                return;
            }
            if (i9 > (this.f15125c - this.f15158m) - this.f15156k) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private static long e0(InputStream inputStream, long j10) throws IOException {
            try {
                return inputStream.skip(j10);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void h0(int i9) throws IOException {
            if (i9 >= 0) {
                int i10 = this.f15158m;
                int i11 = this.f15156k;
                int i12 = i10 + i11 + i9;
                int i13 = this.f15159n;
                if (i12 <= i13) {
                    int i14 = 0;
                    if (this.f15160o == null) {
                        this.f15158m = i10 + i11;
                        this.f15154i = 0;
                        this.f15156k = 0;
                        i14 = this.f15154i - i11;
                        while (i14 < i9) {
                            try {
                                long j10 = i9 - i14;
                                long e02 = e0(this.f15152g, j10);
                                int i15 = (e02 > 0L ? 1 : (e02 == 0L ? 0 : -1));
                                if (i15 < 0 || e02 > j10) {
                                    throw new IllegalStateException(this.f15152g.getClass() + "#skip returned invalid result: " + e02 + "\nThe InputStream implementation is buggy.");
                                } else if (i15 == 0) {
                                    break;
                                } else {
                                    i14 += (int) e02;
                                }
                            } finally {
                                this.f15158m += i14;
                                c0();
                            }
                        }
                    }
                    if (i14 >= i9) {
                        return;
                    }
                    int i16 = this.f15154i;
                    int i17 = i16 - this.f15156k;
                    this.f15156k = i16;
                    d0(1);
                    while (true) {
                        int i18 = i9 - i17;
                        int i19 = this.f15154i;
                        if (i18 > i19) {
                            i17 += i19;
                            this.f15156k = i19;
                            d0(1);
                        } else {
                            this.f15156k = i18;
                            return;
                        }
                    }
                } else {
                    g0((i13 - i10) - i11);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        private void i0() throws IOException {
            if (this.f15154i - this.f15156k >= 10) {
                j0();
            } else {
                k0();
            }
        }

        private void j0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                byte[] bArr = this.f15153h;
                int i10 = this.f15156k;
                this.f15156k = i10 + 1;
                if (bArr[i10] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void k0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                if (U() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean l0(int i9) throws IOException {
            int i10 = this.f15156k;
            if (i10 + i9 > this.f15154i) {
                int i11 = this.f15125c;
                int i12 = this.f15158m;
                if (i9 <= (i11 - i12) - i10 && i12 + i10 + i9 <= this.f15159n) {
                    a aVar = this.f15160o;
                    if (aVar != null) {
                        aVar.a();
                    }
                    int i13 = this.f15156k;
                    if (i13 > 0) {
                        int i14 = this.f15154i;
                        if (i14 > i13) {
                            byte[] bArr = this.f15153h;
                            System.arraycopy(bArr, i13, bArr, 0, i14 - i13);
                        }
                        this.f15158m += i13;
                        this.f15154i -= i13;
                        this.f15156k = 0;
                    }
                    InputStream inputStream = this.f15152g;
                    byte[] bArr2 = this.f15153h;
                    int i15 = this.f15154i;
                    int S = S(inputStream, bArr2, i15, Math.min(bArr2.length - i15, (this.f15125c - this.f15158m) - i15));
                    if (S == 0 || S < -1 || S > this.f15153h.length) {
                        throw new IllegalStateException(this.f15152g.getClass() + "#read(byte[]) returned invalid result: " + S + "\nThe InputStream implementation is buggy.");
                    } else if (S > 0) {
                        this.f15154i += S;
                        c0();
                        if (this.f15154i >= i9) {
                            return true;
                        }
                        return l0(i9);
                    } else {
                        return false;
                    }
                }
                return false;
            }
            throw new IllegalStateException("refillBuffer() called when " + i9 + " bytes were already available in buffer");
        }

        @Override // com.google.protobuf.p
        public long A() throws IOException {
            return a0();
        }

        @Override // com.google.protobuf.p
        public <T extends o1> T B(e2<T> e2Var, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            T m10 = e2Var.m(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return m10;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public void C(o1.a aVar, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int D() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f15156k
                int r1 = r5.f15154i
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f15153h
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f15156k = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.b0()
                int r1 = (int) r0
                return r1
            L70:
                r5.f15156k = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.d.D():int");
        }

        @Override // com.google.protobuf.p
        public int F() throws IOException {
            return Y();
        }

        @Override // com.google.protobuf.p
        public long G() throws IOException {
            return Z();
        }

        @Override // com.google.protobuf.p
        public int H() throws IOException {
            return p.c(D());
        }

        @Override // com.google.protobuf.p
        public long I() throws IOException {
            return p.d(a0());
        }

        @Override // com.google.protobuf.p
        public String J() throws IOException {
            int D = D();
            if (D > 0) {
                int i9 = this.f15154i;
                int i10 = this.f15156k;
                if (D <= i9 - i10) {
                    String str = new String(this.f15153h, i10, D, u0.f15284b);
                    this.f15156k += D;
                    return str;
                }
            }
            if (D == 0) {
                return "";
            }
            if (D <= this.f15154i) {
                d0(D);
                String str2 = new String(this.f15153h, this.f15156k, D, u0.f15284b);
                this.f15156k += D;
                return str2;
            }
            return new String(V(D, false), u0.f15284b);
        }

        @Override // com.google.protobuf.p
        public String K() throws IOException {
            byte[] V;
            int D = D();
            int i9 = this.f15156k;
            int i10 = this.f15154i;
            if (D <= i10 - i9 && D > 0) {
                V = this.f15153h;
                this.f15156k = i9 + D;
            } else if (D == 0) {
                return "";
            } else {
                if (D <= i10) {
                    d0(D);
                    V = this.f15153h;
                    this.f15156k = D + 0;
                } else {
                    V = V(D, false);
                }
                i9 = 0;
            }
            return n3.h(V, i9, D);
        }

        @Override // com.google.protobuf.p
        public int L() throws IOException {
            if (g()) {
                this.f15157l = 0;
                return 0;
            }
            int D = D();
            this.f15157l = D;
            if (WireFormat.a(D) != 0) {
                return this.f15157l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.p
        public int M() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public long N() throws IOException {
            return a0();
        }

        @Override // com.google.protobuf.p
        public boolean Q(int i9) throws IOException {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                i0();
                return true;
            } else if (b10 == 1) {
                g0(8);
                return true;
            } else if (b10 == 2) {
                g0(D());
                return true;
            } else if (b10 == 3) {
                f0();
                a(WireFormat.c(WireFormat.a(i9), 4));
                return true;
            } else if (b10 != 4) {
                if (b10 == 5) {
                    g0(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        public byte U() throws IOException {
            if (this.f15156k == this.f15154i) {
                d0(1);
            }
            byte[] bArr = this.f15153h;
            int i9 = this.f15156k;
            this.f15156k = i9 + 1;
            return bArr[i9];
        }

        public int Y() throws IOException {
            int i9 = this.f15156k;
            if (this.f15154i - i9 < 4) {
                d0(4);
                i9 = this.f15156k;
            }
            byte[] bArr = this.f15153h;
            this.f15156k = i9 + 4;
            return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
        }

        public long Z() throws IOException {
            int i9 = this.f15156k;
            if (this.f15154i - i9 < 8) {
                d0(8);
                i9 = this.f15156k;
            }
            byte[] bArr = this.f15153h;
            this.f15156k = i9 + 8;
            return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
        }

        @Override // com.google.protobuf.p
        public void a(int i9) throws InvalidProtocolBufferException {
            if (this.f15157l != i9) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long a0() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.d.a0():long");
        }

        long b0() throws IOException {
            long j10 = 0;
            for (int i9 = 0; i9 < 64; i9 += 7) {
                byte U = U();
                j10 |= (U & ByteCompanionObject.MAX_VALUE) << i9;
                if ((U & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.p
        public int e() {
            int i9 = this.f15159n;
            if (i9 == Integer.MAX_VALUE) {
                return -1;
            }
            return i9 - (this.f15158m + this.f15156k);
        }

        @Override // com.google.protobuf.p
        public int f() {
            return this.f15158m + this.f15156k;
        }

        public void f0() throws IOException {
            int L;
            do {
                L = L();
                if (L == 0) {
                    return;
                }
            } while (Q(L));
        }

        @Override // com.google.protobuf.p
        public boolean g() throws IOException {
            return this.f15156k == this.f15154i && !l0(1);
        }

        public void g0(int i9) throws IOException {
            int i10 = this.f15154i;
            int i11 = this.f15156k;
            if (i9 <= i10 - i11 && i9 >= 0) {
                this.f15156k = i11 + i9;
            } else {
                h0(i9);
            }
        }

        @Override // com.google.protobuf.p
        public void p(int i9) {
            this.f15159n = i9;
            c0();
        }

        @Override // com.google.protobuf.p
        public int q(int i9) throws InvalidProtocolBufferException {
            if (i9 >= 0) {
                int i10 = i9 + this.f15158m + this.f15156k;
                int i11 = this.f15159n;
                if (i10 <= i11) {
                    this.f15159n = i10;
                    c0();
                    return i11;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.p
        public boolean r() throws IOException {
            return a0() != 0;
        }

        @Override // com.google.protobuf.p
        public ByteString s() throws IOException {
            int D = D();
            int i9 = this.f15154i;
            int i10 = this.f15156k;
            if (D > i9 - i10 || D <= 0) {
                if (D == 0) {
                    return ByteString.EMPTY;
                }
                return T(D);
            }
            ByteString copyFrom = ByteString.copyFrom(this.f15153h, i10, D);
            this.f15156k += D;
            return copyFrom;
        }

        @Override // com.google.protobuf.p
        public double t() throws IOException {
            return Double.longBitsToDouble(Z());
        }

        @Override // com.google.protobuf.p
        public int u() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public int v() throws IOException {
            return Y();
        }

        @Override // com.google.protobuf.p
        public long w() throws IOException {
            return Z();
        }

        @Override // com.google.protobuf.p
        public float x() throws IOException {
            return Float.intBitsToFloat(Y());
        }

        @Override // com.google.protobuf.p
        public void y(int i9, o1.a aVar, f0 f0Var) throws IOException {
            b();
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(WireFormat.c(i9, 4));
            this.f15123a--;
        }

        @Override // com.google.protobuf.p
        public int z() throws IOException {
            return D();
        }

        private d(InputStream inputStream, int i9) {
            super();
            this.f15159n = Integer.MAX_VALUE;
            this.f15160o = null;
            u0.b(inputStream, "input");
            this.f15152g = inputStream;
            this.f15153h = new byte[i9];
            this.f15154i = 0;
            this.f15156k = 0;
            this.f15158m = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class e extends p {

        /* renamed from: g  reason: collision with root package name */
        private final ByteBuffer f15161g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f15162h;

        /* renamed from: i  reason: collision with root package name */
        private final long f15163i;

        /* renamed from: j  reason: collision with root package name */
        private long f15164j;

        /* renamed from: k  reason: collision with root package name */
        private long f15165k;

        /* renamed from: l  reason: collision with root package name */
        private long f15166l;

        /* renamed from: m  reason: collision with root package name */
        private int f15167m;

        /* renamed from: n  reason: collision with root package name */
        private int f15168n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f15169o;

        /* renamed from: p  reason: collision with root package name */
        private int f15170p;

        private int R(long j10) {
            return (int) (j10 - this.f15163i);
        }

        static boolean S() {
            return m3.K();
        }

        private void Y() {
            long j10 = this.f15164j + this.f15167m;
            this.f15164j = j10;
            int i9 = (int) (j10 - this.f15166l);
            int i10 = this.f15170p;
            if (i9 > i10) {
                int i11 = i9 - i10;
                this.f15167m = i11;
                this.f15164j = j10 - i11;
                return;
            }
            this.f15167m = 0;
        }

        private int Z() {
            return (int) (this.f15164j - this.f15165k);
        }

        private void c0() throws IOException {
            if (Z() >= 10) {
                d0();
            } else {
                e0();
            }
        }

        private void d0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                long j10 = this.f15165k;
                this.f15165k = 1 + j10;
                if (m3.w(j10) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void e0() throws IOException {
            for (int i9 = 0; i9 < 10; i9++) {
                if (T() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer f0(long j10, long j11) throws IOException {
            int position = this.f15161g.position();
            int limit = this.f15161g.limit();
            ByteBuffer byteBuffer = this.f15161g;
            try {
                try {
                    byteBuffer.position(R(j10));
                    byteBuffer.limit(R(j11));
                    return this.f15161g.slice();
                } catch (IllegalArgumentException e10) {
                    InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    truncatedMessage.initCause(e10);
                    throw truncatedMessage;
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        @Override // com.google.protobuf.p
        public long A() throws IOException {
            return W();
        }

        @Override // com.google.protobuf.p
        public <T extends o1> T B(e2<T> e2Var, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            T m10 = e2Var.m(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return m10;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.p
        public void C(o1.a aVar, f0 f0Var) throws IOException {
            int D = D();
            b();
            int q10 = q(D);
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(0);
            this.f15123a--;
            if (e() == 0) {
                p(q10);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
            if (com.google.protobuf.m3.w(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int D() throws java.io.IOException {
            /*
                r10 = this;
                long r0 = r10.f15165k
                long r2 = r10.f15164j
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 != 0) goto La
                goto L85
            La:
                r2 = 1
                long r4 = r0 + r2
                byte r0 = com.google.protobuf.m3.w(r0)
                if (r0 < 0) goto L17
                r10.f15165k = r4
                return r0
            L17:
                long r6 = r10.f15164j
                long r6 = r6 - r4
                r8 = 9
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L21
                goto L85
            L21:
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                int r1 = r1 << 7
                r0 = r0 ^ r1
                if (r0 >= 0) goto L2f
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L8b
            L2f:
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3e
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L3c:
                r6 = r4
                goto L8b
            L3e:
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                int r1 = r1 << 21
                r0 = r0 ^ r1
                if (r0 >= 0) goto L4e
                r1 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                goto L8b
            L4e:
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                int r6 = r1 << 28
                r0 = r0 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r6
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L8b
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L8b
                long r4 = r6 + r2
                byte r1 = com.google.protobuf.m3.w(r6)
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.google.protobuf.m3.w(r4)
                if (r1 >= 0) goto L8b
            L85:
                long r0 = r10.X()
                int r1 = (int) r0
                return r1
            L8b:
                r10.f15165k = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.p.e.D():int");
        }

        @Override // com.google.protobuf.p
        public int F() throws IOException {
            return U();
        }

        @Override // com.google.protobuf.p
        public long G() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public int H() throws IOException {
            return p.c(D());
        }

        @Override // com.google.protobuf.p
        public long I() throws IOException {
            return p.d(W());
        }

        @Override // com.google.protobuf.p
        public String J() throws IOException {
            int D = D();
            if (D <= 0 || D > Z()) {
                if (D == 0) {
                    return "";
                }
                if (D < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = new byte[D];
            long j10 = D;
            m3.p(this.f15165k, bArr, 0L, j10);
            String str = new String(bArr, u0.f15284b);
            this.f15165k += j10;
            return str;
        }

        @Override // com.google.protobuf.p
        public String K() throws IOException {
            int D = D();
            if (D > 0 && D <= Z()) {
                String g10 = n3.g(this.f15161g, R(this.f15165k), D);
                this.f15165k += D;
                return g10;
            } else if (D == 0) {
                return "";
            } else {
                if (D <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.p
        public int L() throws IOException {
            if (g()) {
                this.f15168n = 0;
                return 0;
            }
            int D = D();
            this.f15168n = D;
            if (WireFormat.a(D) != 0) {
                return this.f15168n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.p
        public int M() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public long N() throws IOException {
            return W();
        }

        @Override // com.google.protobuf.p
        public boolean Q(int i9) throws IOException {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                c0();
                return true;
            } else if (b10 == 1) {
                b0(8);
                return true;
            } else if (b10 == 2) {
                b0(D());
                return true;
            } else if (b10 == 3) {
                a0();
                a(WireFormat.c(WireFormat.a(i9), 4));
                return true;
            } else if (b10 != 4) {
                if (b10 == 5) {
                    b0(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        public byte T() throws IOException {
            long j10 = this.f15165k;
            if (j10 != this.f15164j) {
                this.f15165k = 1 + j10;
                return m3.w(j10);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public int U() throws IOException {
            long j10 = this.f15165k;
            if (this.f15164j - j10 >= 4) {
                this.f15165k = 4 + j10;
                return ((m3.w(j10 + 3) & UByte.MAX_VALUE) << 24) | (m3.w(j10) & UByte.MAX_VALUE) | ((m3.w(1 + j10) & UByte.MAX_VALUE) << 8) | ((m3.w(2 + j10) & UByte.MAX_VALUE) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long V() throws IOException {
            long j10 = this.f15165k;
            if (this.f15164j - j10 >= 8) {
                this.f15165k = 8 + j10;
                return ((m3.w(j10 + 7) & 255) << 56) | (m3.w(j10) & 255) | ((m3.w(1 + j10) & 255) << 8) | ((m3.w(2 + j10) & 255) << 16) | ((m3.w(3 + j10) & 255) << 24) | ((m3.w(4 + j10) & 255) << 32) | ((m3.w(5 + j10) & 255) << 40) | ((m3.w(6 + j10) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long W() throws IOException {
            long w6;
            long j10;
            long j11;
            int i9;
            long j12 = this.f15165k;
            if (this.f15164j != j12) {
                long j13 = j12 + 1;
                byte w8 = m3.w(j12);
                if (w8 >= 0) {
                    this.f15165k = j13;
                    return w8;
                } else if (this.f15164j - j13 >= 9) {
                    long j14 = j13 + 1;
                    int w10 = w8 ^ (m3.w(j13) << 7);
                    if (w10 >= 0) {
                        long j15 = j14 + 1;
                        int w11 = w10 ^ (m3.w(j14) << 14);
                        if (w11 >= 0) {
                            w6 = w11 ^ 16256;
                        } else {
                            j14 = j15 + 1;
                            int w12 = w11 ^ (m3.w(j15) << 21);
                            if (w12 < 0) {
                                i9 = w12 ^ (-2080896);
                            } else {
                                j15 = j14 + 1;
                                long w13 = w12 ^ (m3.w(j14) << 28);
                                if (w13 < 0) {
                                    long j16 = j15 + 1;
                                    long w14 = w13 ^ (m3.w(j15) << 35);
                                    if (w14 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j15 = j16 + 1;
                                        w13 = w14 ^ (m3.w(j16) << 42);
                                        if (w13 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j16 = j15 + 1;
                                            w14 = w13 ^ (m3.w(j15) << 49);
                                            if (w14 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                j15 = j16 + 1;
                                                w6 = (w14 ^ (m3.w(j16) << 56)) ^ 71499008037633920L;
                                                if (w6 < 0) {
                                                    long j17 = 1 + j15;
                                                    if (m3.w(j15) >= 0) {
                                                        j14 = j17;
                                                        this.f15165k = j14;
                                                        return w6;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    w6 = w14 ^ j10;
                                    j14 = j16;
                                    this.f15165k = j14;
                                    return w6;
                                }
                                j11 = 266354560;
                                w6 = w13 ^ j11;
                            }
                        }
                        j14 = j15;
                        this.f15165k = j14;
                        return w6;
                    }
                    i9 = w10 ^ (-128);
                    w6 = i9;
                    this.f15165k = j14;
                    return w6;
                }
            }
            return X();
        }

        long X() throws IOException {
            long j10 = 0;
            for (int i9 = 0; i9 < 64; i9 += 7) {
                byte T = T();
                j10 |= (T & ByteCompanionObject.MAX_VALUE) << i9;
                if ((T & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.p
        public void a(int i9) throws InvalidProtocolBufferException {
            if (this.f15168n != i9) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        public void a0() throws IOException {
            int L;
            do {
                L = L();
                if (L == 0) {
                    return;
                }
            } while (Q(L));
        }

        public void b0(int i9) throws IOException {
            if (i9 >= 0 && i9 <= Z()) {
                this.f15165k += i9;
            } else if (i9 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.p
        public int e() {
            int i9 = this.f15170p;
            if (i9 == Integer.MAX_VALUE) {
                return -1;
            }
            return i9 - f();
        }

        @Override // com.google.protobuf.p
        public int f() {
            return (int) (this.f15165k - this.f15166l);
        }

        @Override // com.google.protobuf.p
        public boolean g() throws IOException {
            return this.f15165k == this.f15164j;
        }

        @Override // com.google.protobuf.p
        public void p(int i9) {
            this.f15170p = i9;
            Y();
        }

        @Override // com.google.protobuf.p
        public int q(int i9) throws InvalidProtocolBufferException {
            if (i9 >= 0) {
                int f10 = i9 + f();
                int i10 = this.f15170p;
                if (f10 <= i10) {
                    this.f15170p = f10;
                    Y();
                    return i10;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.p
        public boolean r() throws IOException {
            return W() != 0;
        }

        @Override // com.google.protobuf.p
        public ByteString s() throws IOException {
            int D = D();
            if (D <= 0 || D > Z()) {
                if (D == 0) {
                    return ByteString.EMPTY;
                }
                if (D < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (this.f15162h && this.f15169o) {
                long j10 = this.f15165k;
                long j11 = D;
                ByteBuffer f02 = f0(j10, j10 + j11);
                this.f15165k += j11;
                return ByteString.wrap(f02);
            } else {
                byte[] bArr = new byte[D];
                long j12 = D;
                m3.p(this.f15165k, bArr, 0L, j12);
                this.f15165k += j12;
                return ByteString.wrap(bArr);
            }
        }

        @Override // com.google.protobuf.p
        public double t() throws IOException {
            return Double.longBitsToDouble(V());
        }

        @Override // com.google.protobuf.p
        public int u() throws IOException {
            return D();
        }

        @Override // com.google.protobuf.p
        public int v() throws IOException {
            return U();
        }

        @Override // com.google.protobuf.p
        public long w() throws IOException {
            return V();
        }

        @Override // com.google.protobuf.p
        public float x() throws IOException {
            return Float.intBitsToFloat(U());
        }

        @Override // com.google.protobuf.p
        public void y(int i9, o1.a aVar, f0 f0Var) throws IOException {
            b();
            this.f15123a++;
            aVar.f0(this, f0Var);
            a(WireFormat.c(i9, 4));
            this.f15123a--;
        }

        @Override // com.google.protobuf.p
        public int z() throws IOException {
            return D();
        }

        private e(ByteBuffer byteBuffer, boolean z10) {
            super();
            this.f15170p = Integer.MAX_VALUE;
            this.f15161g = byteBuffer;
            long k10 = m3.k(byteBuffer);
            this.f15163i = k10;
            this.f15164j = byteBuffer.limit() + k10;
            long position = k10 + byteBuffer.position();
            this.f15165k = position;
            this.f15166l = position;
            this.f15162h = z10;
        }
    }

    public static int E(int i9, InputStream inputStream) throws IOException {
        if ((i9 & 128) == 0) {
            return i9;
        }
        int i10 = i9 & 127;
        int i11 = 7;
        while (i11 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i10 |= (read & 127) << i11;
            if ((read & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        while (i11 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i10;
            }
            i11 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public static int c(int i9) {
        return (-(i9 & 1)) ^ (i9 >>> 1);
    }

    public static long d(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static p h(InputStream inputStream) {
        return i(inputStream, 4096);
    }

    public static p i(InputStream inputStream, int i9) {
        if (i9 > 0) {
            if (inputStream == null) {
                return m(u0.f15286d);
            }
            return new d(inputStream, i9);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p j(Iterable<ByteBuffer> iterable, boolean z10) {
        boolean z11 = false;
        int i9 = 0;
        for (ByteBuffer byteBuffer : iterable) {
            i9 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z11 |= true;
            } else {
                z11 = byteBuffer.isDirect() ? z11 | true : z11 | true;
            }
        }
        if (z11) {
            return new c(iterable, i9, z10);
        }
        return h(new v0(iterable));
    }

    public static p k(ByteBuffer byteBuffer) {
        return l(byteBuffer, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p l(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return o(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z10);
        }
        if (byteBuffer.isDirect() && e.S()) {
            return new e(byteBuffer, z10);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return o(bArr, 0, remaining, true);
    }

    public static p m(byte[] bArr) {
        return n(bArr, 0, bArr.length);
    }

    public static p n(byte[] bArr, int i9, int i10) {
        return o(bArr, i9, i10, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p o(byte[] bArr, int i9, int i10, boolean z10) {
        b bVar = new b(bArr, i9, i10, z10);
        try {
            bVar.q(i10);
            return bVar;
        } catch (InvalidProtocolBufferException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract long A() throws IOException;

    public abstract <T extends o1> T B(e2<T> e2Var, f0 f0Var) throws IOException;

    public abstract void C(o1.a aVar, f0 f0Var) throws IOException;

    public abstract int D() throws IOException;

    public abstract int F() throws IOException;

    public abstract long G() throws IOException;

    public abstract int H() throws IOException;

    public abstract long I() throws IOException;

    public abstract String J() throws IOException;

    public abstract String K() throws IOException;

    public abstract int L() throws IOException;

    public abstract int M() throws IOException;

    public abstract long N() throws IOException;

    public final int O(int i9) {
        if (i9 >= 0) {
            int i10 = this.f15125c;
            this.f15125c = i9;
            return i10;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean P() {
        return this.f15127e;
    }

    public abstract boolean Q(int i9) throws IOException;

    public abstract void a(int i9) throws InvalidProtocolBufferException;

    public void b() throws InvalidProtocolBufferException {
        if (this.f15123a >= this.f15124b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public abstract int e();

    public abstract int f();

    public abstract boolean g() throws IOException;

    public abstract void p(int i9);

    public abstract int q(int i9) throws InvalidProtocolBufferException;

    public abstract boolean r() throws IOException;

    public abstract ByteString s() throws IOException;

    public abstract double t() throws IOException;

    public abstract int u() throws IOException;

    public abstract int v() throws IOException;

    public abstract long w() throws IOException;

    public abstract float x() throws IOException;

    public abstract void y(int i9, o1.a aVar, f0 f0Var) throws IOException;

    public abstract int z() throws IOException;

    private p() {
        this.f15124b = f15122f;
        this.f15125c = Integer.MAX_VALUE;
        this.f15127e = false;
    }
}
