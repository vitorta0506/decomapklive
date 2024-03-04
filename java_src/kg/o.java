package kg;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import io.grpc.netty.shaded.io.netty.util.internal.RecyclableArrayList;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.util.Arrays;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.UByte;
import kotlin.UShort;
/* loaded from: classes5.dex */
public class o extends kg.e implements Iterable<j> {

    /* renamed from: u  reason: collision with root package name */
    private static final ByteBuffer f53852u = s0.f53902d.q1();

    /* renamed from: v  reason: collision with root package name */
    private static final Iterator<j> f53853v = Collections.emptyList().iterator();

    /* renamed from: w  reason: collision with root package name */
    static final c<byte[]> f53854w = new a();

    /* renamed from: x  reason: collision with root package name */
    static final c<ByteBuffer> f53855x = new b();

    /* renamed from: n  reason: collision with root package name */
    private final k f53856n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f53857o;

    /* renamed from: p  reason: collision with root package name */
    private final int f53858p;

    /* renamed from: q  reason: collision with root package name */
    private int f53859q;

    /* renamed from: r  reason: collision with root package name */
    private d[] f53860r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f53861s;

    /* renamed from: t  reason: collision with root package name */
    private d f53862t;

    /* loaded from: classes5.dex */
    static class a implements c<byte[]> {
        a() {
        }
    }

    /* loaded from: classes5.dex */
    static class b implements c<ByteBuffer> {
        b() {
        }
    }

    /* loaded from: classes5.dex */
    interface c<T> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final j f53863a;

        /* renamed from: b  reason: collision with root package name */
        final j f53864b;

        /* renamed from: c  reason: collision with root package name */
        int f53865c;

        /* renamed from: d  reason: collision with root package name */
        int f53866d;

        /* renamed from: e  reason: collision with root package name */
        int f53867e;

        /* renamed from: f  reason: collision with root package name */
        int f53868f;

        /* renamed from: g  reason: collision with root package name */
        private j f53869g;

        d(j jVar, int i9, j jVar2, int i10, int i11, int i12, j jVar3) {
            this.f53863a = jVar;
            this.f53865c = i9 - i11;
            this.f53864b = jVar2;
            this.f53866d = i10 - i11;
            this.f53867e = i11;
            this.f53868f = i11 + i12;
            this.f53869g = jVar3;
        }

        void c() {
            this.f53869g = null;
            this.f53863a.release();
        }

        int d(int i9) {
            return i9 + this.f53866d;
        }

        ByteBuffer e(int i9, int i10) {
            return this.f53863a.e1(i(i9), i10);
        }

        int f() {
            return this.f53868f - this.f53867e;
        }

        void g(int i9) {
            int i10 = i9 - this.f53867e;
            this.f53868f += i10;
            this.f53865c -= i10;
            this.f53866d -= i10;
            this.f53867e = i9;
        }

        j h() {
            j jVar = this.f53869g;
            if (jVar == null) {
                j n22 = this.f53863a.n2(i(this.f53867e), f());
                this.f53869g = n22;
                return n22;
            }
            return jVar;
        }

        int i(int i9) {
            return i9 + this.f53865c;
        }

        void j(j jVar) {
            jVar.z2(this.f53864b, d(this.f53867e), f());
            c();
        }
    }

    private o(k kVar, boolean z10, int i9, int i10) {
        super(Integer.MAX_VALUE);
        this.f53856n = (k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        if (i9 >= 1) {
            this.f53857o = z10;
            this.f53858p = i9;
            this.f53860r = i4(i10, i9);
            return;
        }
        throw new IllegalArgumentException("maxNumComponents: " + i9 + " (expected: >= 1)");
    }

    private void G3(int i9, d dVar) {
        G4(i9, 1);
        this.f53860r[i9] = dVar;
    }

    private void G4(int i9, int i10) {
        d[] dVarArr;
        int i11 = this.f53859q;
        int i12 = i11 + i10;
        d[] dVarArr2 = this.f53860r;
        if (i12 > dVarArr2.length) {
            int max = Math.max((i11 >> 1) + i11, i12);
            if (i9 == i11) {
                dVarArr = (d[]) Arrays.copyOf(this.f53860r, max, d[].class);
            } else {
                d[] dVarArr3 = new d[max];
                if (i9 > 0) {
                    System.arraycopy(this.f53860r, 0, dVarArr3, 0, i9);
                }
                if (i9 < i11) {
                    System.arraycopy(this.f53860r, i9, dVarArr3, i10 + i9, i11 - i9);
                }
                dVarArr = dVarArr3;
            }
            this.f53860r = dVarArr;
        } else if (i9 < i11) {
            System.arraycopy(dVarArr2, i9, dVarArr2, i10 + i9, i11 - i9);
        }
        this.f53859q = i12;
    }

    private int I4(int i9) {
        int i10 = this.f53859q;
        int i11 = 0;
        if (i9 == 0) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (this.f53860r[i12].f53868f > 0) {
                    return i12;
                }
            }
        }
        if (i10 <= 2) {
            return (i10 == 1 || i9 < this.f53860r[0].f53868f) ? 0 : 1;
        }
        while (i11 <= i10) {
            int i13 = (i11 + i10) >>> 1;
            d dVar = this.f53860r[i13];
            if (i9 >= dVar.f53868f) {
                i11 = i13 + 1;
            } else if (i9 >= dVar.f53867e) {
                return i13;
            } else {
                i10 = i13 - 1;
            }
        }
        throw new Error("should not reach here");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038 A[Catch: all -> 0x0026, TRY_LEAVE, TryCatch #0 {all -> 0x0026, blocks: (B:5:0x001d, B:7:0x0022, B:13:0x0038, B:11:0x002b), top: B:19:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int J3(boolean r6, int r7, kg.j r8) {
        /*
            r5 = this;
            r0 = 0
            r1 = 1
            r5.N3(r7)     // Catch: java.lang.Throwable -> L3e
            kg.j r2 = W3(r8)     // Catch: java.lang.Throwable -> L3e
            kg.o$d r2 = r5.j4(r2, r0)     // Catch: java.lang.Throwable -> L3e
            int r3 = r2.f()     // Catch: java.lang.Throwable -> L3e
            int r4 = r5.F()     // Catch: java.lang.Throwable -> L3e
            O3(r4, r3)     // Catch: java.lang.Throwable -> L3e
            r5.G3(r7, r2)     // Catch: java.lang.Throwable -> L3e
            if (r3 <= 0) goto L29
            int r0 = r5.f53859q     // Catch: java.lang.Throwable -> L26
            int r0 = r0 - r1
            if (r7 >= r0) goto L29
            r5.L4(r7)     // Catch: java.lang.Throwable -> L26
            goto L36
        L26:
            r6 = move-exception
            r0 = 1
            goto L3f
        L29:
            if (r7 <= 0) goto L36
            kg.o$d[] r0 = r5.f53860r     // Catch: java.lang.Throwable -> L26
            int r4 = r7 + (-1)
            r0 = r0[r4]     // Catch: java.lang.Throwable -> L26
            int r0 = r0.f53868f     // Catch: java.lang.Throwable -> L26
            r2.g(r0)     // Catch: java.lang.Throwable -> L26
        L36:
            if (r6 == 0) goto L3d
            int r6 = r5.f53718b     // Catch: java.lang.Throwable -> L26
            int r6 = r6 + r3
            r5.f53718b = r6     // Catch: java.lang.Throwable -> L26
        L3d:
            return r7
        L3e:
            r6 = move-exception
        L3f:
            if (r0 != 0) goto L44
            r8.release()
        L44:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kg.o.J3(boolean, int, kg.j):int");
    }

    private j L3(int i9) {
        return this.f53857o ? P().h(i9) : P().b(i9);
    }

    private void L4(int i9) {
        int i10 = this.f53859q;
        if (i10 <= i9) {
            return;
        }
        int i11 = i9 > 0 ? this.f53860r[i9 - 1].f53868f : 0;
        while (i9 < i10) {
            d dVar = this.f53860r[i9];
            dVar.g(i11);
            i11 = dVar.f53868f;
            i9++;
        }
    }

    private void N3(int i9) {
        p3();
        if (i9 < 0 || i9 > this.f53859q) {
            throw new IndexOutOfBoundsException(String.format("cIndex: %d (expected: >= 0 && <= numComponents(%d))", Integer.valueOf(i9), Integer.valueOf(this.f53859q)));
        }
    }

    private static void O3(int i9, int i10) {
        if (i9 + i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException("Can't increase by " + i10 + " as capacity(" + i9 + ") would overflow 2147483647");
    }

    private void Q3() {
        r4(0, this.f53859q);
    }

    private void R3(int i9, int i10) {
        if (i10 <= 1) {
            return;
        }
        int i11 = i9 + i10;
        j L3 = L3(this.f53860r[i11 - 1].f53868f - (i9 != 0 ? this.f53860r[i9].f53867e : 0));
        for (int i12 = i9; i12 < i11; i12++) {
            this.f53860r[i12].j(L3);
        }
        this.f53862t = null;
        r4(i9 + 1, i11);
        this.f53860r[i9] = j4(L3, 0);
        if (i9 == 0 && i10 == this.f53859q) {
            return;
        }
        L4(i9);
    }

    private void S3() {
        int i9 = this.f53859q;
        if (i9 > this.f53858p) {
            R3(0, i9);
        }
    }

    private void T3(int i9, int i10, int i11, j jVar) {
        int i12 = 0;
        while (i10 > 0) {
            d dVar = this.f53860r[i11];
            int min = Math.min(i10, dVar.f53868f - i9);
            dVar.f53864b.A0(dVar.d(i9), jVar, i12, min);
            i9 += min;
            i12 += min;
            i10 -= min;
            i11++;
        }
        jVar.L2(jVar.F());
    }

    private static j W3(j jVar) {
        if (!kg.a.f53714g || jVar.f1()) {
            return jVar;
        }
        throw new IllegalReferenceCountException(0);
    }

    private d Y3(int i9) {
        d dVar = this.f53862t;
        if (dVar != null && i9 >= dVar.f53867e && i9 < dVar.f53868f) {
            p3();
            return dVar;
        }
        e3(i9);
        return a4(i9);
    }

    private d Z3(int i9) {
        d dVar = this.f53862t;
        return (dVar == null || i9 < dVar.f53867e || i9 >= dVar.f53868f) ? a4(i9) : dVar;
    }

    private d a4(int i9) {
        int i10 = this.f53859q;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            d dVar = this.f53860r[i12];
            if (dVar != null) {
                if (i9 >= dVar.f53868f) {
                    i11 = i12 + 1;
                } else if (i9 >= dVar.f53867e) {
                    this.f53862t = dVar;
                    return dVar;
                } else {
                    i10 = i12 - 1;
                }
            } else {
                throw new IllegalStateException("No component found for offset. Composite buffer layout might be outdated, e.g. from a discardReadBytes call.");
            }
        }
        throw new Error("should not reach here");
    }

    private static d[] i4(int i9, int i10) {
        return new d[Math.max(i9, Math.min(16, i10))];
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private kg.o.d j4(kg.j r10, int r11) {
        /*
            r9 = this;
            int r2 = r10.Q1()
            int r6 = r10.P1()
            r0 = r10
        L9:
            boolean r1 = r0 instanceof kg.f1
            if (r1 != 0) goto L5e
            boolean r1 = r0 instanceof kg.r0
            if (r1 == 0) goto L12
            goto L5e
        L12:
            boolean r1 = r0 instanceof kg.f
            if (r1 == 0) goto L25
            r1 = r0
            kg.f r1 = (kg.f) r1
            r3 = 0
            int r1 = r1.J3(r3)
            int r1 = r1 + r2
            kg.j r0 = r0.s2()
        L23:
            r4 = r1
            goto L41
        L25:
            boolean r1 = r0 instanceof kg.i0
            if (r1 == 0) goto L34
            r1 = r0
            kg.i0 r1 = (kg.i0) r1
            int r1 = r1.f53819q
            int r1 = r1 + r2
            kg.j r0 = r0.s2()
            goto L23
        L34:
            boolean r1 = r0 instanceof kg.q
            if (r1 != 0) goto L3c
            boolean r1 = r0 instanceof kg.g0
            if (r1 == 0) goto L40
        L3c:
            kg.j r0 = r0.s2()
        L40:
            r4 = r2
        L41:
            int r1 = r10.F()
            if (r1 != r6) goto L49
            r7 = r10
            goto L4b
        L49:
            r1 = 0
            r7 = r1
        L4b:
            kg.o$d r8 = new kg.o$d
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            kg.j r10 = r10.w1(r1)
            kg.j r3 = r0.w1(r1)
            r0 = r8
            r1 = r10
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return r8
        L5e:
            kg.j r0 = r0.s2()
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: kg.o.j4(kg.j, int):kg.o$d");
    }

    private void q4(int i9) {
        r4(i9, i9 + 1);
    }

    private void r4(int i9, int i10) {
        if (i9 >= i10) {
            return;
        }
        int i11 = this.f53859q;
        if (i10 < i11) {
            d[] dVarArr = this.f53860r;
            System.arraycopy(dVarArr, i10, dVarArr, i9, i11 - i10);
        }
        int i12 = (i11 - i10) + i9;
        for (int i13 = i12; i13 < i11; i13++) {
            this.f53860r[i13] = null;
        }
        this.f53859q = i12;
    }

    @Override // kg.a, kg.j
    /* renamed from: A4 */
    public o d2(int i9, int i10) {
        super.d2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: B4 */
    public o e2(int i9, int i10) {
        f3(i9, 4);
        V2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.e
    public void C3() {
        if (this.f53861s) {
            return;
        }
        this.f53861s = true;
        int i9 = this.f53859q;
        for (int i10 = 0; i10 < i9; i10++) {
            this.f53860r[i10].c();
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: C4 */
    public o g2(int i9, long j10) {
        f3(i9, 8);
        X2(i9, j10);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: D4 */
    public o h2(int i9, int i10) {
        f3(i9, 3);
        Y2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: E4 */
    public o i2(int i9, int i10) {
        f3(i9, 2);
        Z2(i9, i10);
        return this;
    }

    @Override // kg.j
    public int F() {
        int i9 = this.f53859q;
        if (i9 > 0) {
            return this.f53860r[i9 - 1].f53868f;
        }
        return 0;
    }

    @Override // kg.a, kg.j
    /* renamed from: F4 */
    public o k2(int i9, int i10) {
        super.k2(i9, i10);
        return this;
    }

    public o H3(boolean z10, int i9, j jVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "buffer");
        J3(z10, i9, jVar);
        S3();
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: H4 */
    public o l2(int i9) {
        super.l2(i9);
        return this;
    }

    public o I3(boolean z10, j jVar) {
        return H3(z10, this.f53859q, jVar);
    }

    @Override // kg.e, kg.j
    /* renamed from: J4 */
    public o q2() {
        return this;
    }

    public o K3(boolean z10, j jVar) {
        o oVar;
        int i9;
        d[] dVarArr;
        int i10;
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "buffer");
        int Q1 = jVar.Q1();
        int K2 = jVar.K2();
        if (Q1 == K2) {
            jVar.release();
            return this;
        } else if (!(jVar instanceof o)) {
            J3(z10, this.f53859q, jVar);
            S3();
            return this;
        } else {
            if (jVar instanceof g1) {
                oVar = (o) jVar.s2();
            } else {
                oVar = (o) jVar;
            }
            int i11 = K2 - Q1;
            oVar.f3(Q1, i11);
            d[] dVarArr2 = oVar.f53860r;
            int i12 = this.f53859q;
            int i13 = this.f53718b;
            try {
                int I4 = oVar.I4(Q1);
                int F = F();
                while (true) {
                    d dVar = dVarArr2[I4];
                    int max = Math.max(Q1, dVar.f53867e);
                    int min = Math.min(K2, dVar.f53868f);
                    int i14 = min - max;
                    if (i14 > 0) {
                        i9 = Q1;
                        dVarArr = dVarArr2;
                        i10 = min;
                        G3(this.f53859q, new d(dVar.f53863a.retain(), dVar.i(max), dVar.f53864b, dVar.d(max), F, i14, null));
                    } else {
                        i9 = Q1;
                        dVarArr = dVarArr2;
                        i10 = min;
                    }
                    if (K2 == i10) {
                        break;
                    }
                    F += i14;
                    I4++;
                    Q1 = i9;
                    dVarArr2 = dVarArr;
                }
                if (z10) {
                    this.f53718b = i11 + i13;
                }
                S3();
                jVar.release();
                return this;
            } catch (Throwable th2) {
                if (z10) {
                    this.f53718b = i13;
                }
                for (int i15 = this.f53859q - 1; i15 >= i12; i15--) {
                    this.f53860r[i15].c();
                    q4(i15);
                }
                throw th2;
            }
        }
    }

    @Override // kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: K4 */
    public o touch(Object obj) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        d Z3 = Z3(i9);
        return Z3.f53864b.u0(Z3.d(i9));
    }

    @Override // kg.j
    /* renamed from: M3 */
    public o I(int i9) {
        i3(i9);
        int i10 = this.f53859q;
        int F = F();
        if (i9 > F) {
            int i11 = i9 - F;
            J3(false, i10, L3(i11).d2(0, i11));
            if (this.f53859q >= this.f53858p) {
                S3();
            }
        } else if (i9 < F) {
            this.f53862t = null;
            int i12 = i10 - 1;
            int i13 = F - i9;
            while (true) {
                if (i12 < 0) {
                    break;
                }
                d dVar = this.f53860r[i12];
                int f10 = dVar.f();
                if (i13 < f10) {
                    dVar.f53868f -= i13;
                    j jVar = dVar.f53869g;
                    if (jVar != null) {
                        dVar.f53869g = jVar.n2(0, dVar.f());
                    }
                } else {
                    dVar.c();
                    i13 -= f10;
                    i12--;
                }
            }
            r4(i12 + 1, i10);
            if (Q1() > i9) {
                y3(i9, i9);
            } else if (this.f53718b > i9) {
                this.f53718b = i9;
            }
        }
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: M4 */
    public o u2(int i9) {
        q3(1);
        int i10 = this.f53718b;
        this.f53718b = i10 + 1;
        U2(i10, i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 4 <= Z3.f53868f) {
            return Z3.f53864b.getInt(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return (R2(i9 + 2) & UShort.MAX_VALUE) | ((R2(i9) & UShort.MAX_VALUE) << 16);
        }
        return ((R2(i9 + 2) & UShort.MAX_VALUE) << 16) | (R2(i9) & UShort.MAX_VALUE);
    }

    @Override // kg.a, kg.j
    /* renamed from: N4 */
    public o w2(ByteBuffer byteBuffer) {
        super.w2(byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 4 <= Z3.f53868f) {
            return Z3.f53864b.F0(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return ((S2(i9 + 2) & UShort.MAX_VALUE) << 16) | (S2(i9) & UShort.MAX_VALUE);
        }
        return (S2(i9 + 2) & UShort.MAX_VALUE) | ((S2(i9) & UShort.MAX_VALUE) << 16);
    }

    @Override // kg.a, kg.j
    /* renamed from: O4 */
    public o x2(j jVar) {
        super.y2(jVar, jVar.P1());
        return this;
    }

    @Override // kg.j
    public k P() {
        return this.f53856n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 8 <= Z3.f53868f) {
            return Z3.f53864b.getLong(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return ((N2(i9) & 4294967295L) << 32) | (N2(i9 + 4) & 4294967295L);
        }
        return (N2(i9) & 4294967295L) | ((4294967295L & N2(i9 + 4)) << 32);
    }

    @Override // kg.a, kg.j
    /* renamed from: P3 */
    public o L() {
        super.L();
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: P4 */
    public o y2(j jVar, int i9) {
        super.y2(jVar, i9);
        return this;
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        f3(i9, i10);
        j L3 = L3(i10);
        if (i10 != 0) {
            T3(i9, i10, I4(i9), L3);
        }
        return L3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 8 <= Z3.f53868f) {
            return Z3.f53864b.G0(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return (O2(i9) & 4294967295L) | ((4294967295L & O2(i9 + 4)) << 32);
        }
        return ((O2(i9) & 4294967295L) << 32) | (O2(i9 + 4) & 4294967295L);
    }

    @Override // kg.a, kg.j
    /* renamed from: Q4 */
    public o z2(j jVar, int i9, int i10) {
        super.z2(jVar, i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 2 <= Z3.f53868f) {
            return Z3.f53864b.P0(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return (short) ((M2(i9 + 1) & UByte.MAX_VALUE) | ((M2(i9) & UByte.MAX_VALUE) << 8));
        }
        return (short) (((M2(i9 + 1) & UByte.MAX_VALUE) << 8) | (M2(i9) & UByte.MAX_VALUE));
    }

    @Override // kg.a, kg.j
    /* renamed from: R4 */
    public o A2(byte[] bArr) {
        super.B2(bArr, 0, bArr.length);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 2 <= Z3.f53868f) {
            return Z3.f53864b.Q0(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return (short) (((M2(i9 + 1) & UByte.MAX_VALUE) << 8) | (M2(i9) & UByte.MAX_VALUE));
        }
        return (short) ((M2(i9 + 1) & UByte.MAX_VALUE) | ((M2(i9) & UByte.MAX_VALUE) << 8));
    }

    @Override // kg.a, kg.j
    /* renamed from: S4 */
    public o B2(byte[] bArr, int i9, int i10) {
        super.B2(bArr, i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        d Z3 = Z3(i9);
        if (i9 + 3 <= Z3.f53868f) {
            return Z3.f53864b.X0(Z3.d(i9));
        }
        if (v1() == ByteOrder.BIG_ENDIAN) {
            return (M2(i9 + 2) & UByte.MAX_VALUE) | ((R2(i9) & UShort.MAX_VALUE) << 8);
        }
        return ((M2(i9 + 2) & UByte.MAX_VALUE) << 16) | (R2(i9) & UShort.MAX_VALUE);
    }

    @Override // kg.a, kg.j
    /* renamed from: T4 */
    public o C2(int i9) {
        super.I2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        d Z3 = Z3(i9);
        Z3.f53864b.X1(Z3.d(i9), i10);
    }

    public o U3() {
        p3();
        int Q1 = Q1();
        if (Q1 == 0) {
            return this;
        }
        int K2 = K2();
        if (Q1 == K2 && K2 == F()) {
            int i9 = this.f53859q;
            for (int i10 = 0; i10 < i9; i10++) {
                this.f53860r[i10].c();
            }
            this.f53862t = null;
            Q3();
            d2(0, 0);
            b3(Q1);
            return this;
        }
        int i11 = this.f53859q;
        d dVar = null;
        int i12 = 0;
        while (i12 < i11) {
            dVar = this.f53860r[i12];
            if (dVar.f53868f > Q1) {
                break;
            }
            dVar.c();
            i12++;
        }
        if (i12 == 0) {
            return this;
        }
        d dVar2 = this.f53862t;
        if (dVar2 != null && dVar2.f53868f <= Q1) {
            this.f53862t = null;
        }
        r4(0, i12);
        int i13 = dVar.f53867e;
        L4(0);
        d2(Q1 - i13, K2 - i13);
        b3(i13);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: U4 */
    public o E2(int i9) {
        super.E2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        d Z3 = Z3(i9);
        if (i9 + 4 <= Z3.f53868f) {
            Z3.f53864b.e2(Z3.d(i9), i10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            Z2(i9, (short) (i10 >>> 16));
            Z2(i9 + 2, (short) i10);
        } else {
            Z2(i9, (short) i10);
            Z2(i9 + 2, (short) (i10 >>> 16));
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: V3 */
    public o c0() {
        return U3();
    }

    @Override // kg.a, kg.j
    /* renamed from: V4 */
    public o G2(long j10) {
        super.G2(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        d Z3 = Z3(i9);
        if (i9 + 4 <= Z3.f53868f) {
            Z3.f53864b.f2(Z3.d(i9), i10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            a3(i9, (short) i10);
            a3(i9 + 2, (short) (i10 >>> 16));
        } else {
            a3(i9, (short) (i10 >>> 16));
            a3(i9 + 2, (short) i10);
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: W4 */
    public o H2(int i9) {
        super.H2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        d Z3 = Z3(i9);
        if (i9 + 8 <= Z3.f53868f) {
            Z3.f53864b.g2(Z3.d(i9), j10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            V2(i9, (int) (j10 >>> 32));
            V2(i9 + 4, (int) j10);
        } else {
            V2(i9, (int) j10);
            V2(i9 + 4, (int) (j10 >>> 32));
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: X3 */
    public o n0(int i9) {
        super.n0(i9);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: X4 */
    public o I2(int i9) {
        super.I2(i9);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003c A[EDGE_INSN: B:22:0x003c->B:21:0x003c ?: BREAK  , SYNTHETIC] */
    @Override // kg.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int Y1(int r6, java.nio.channels.ScatteringByteChannel r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            r5.f3(r6, r8)
            if (r8 != 0) goto Lc
            java.nio.ByteBuffer r6 = kg.o.f53852u
            int r6 = r7.read(r6)
            return r6
        Lc:
            int r0 = r5.I4(r6)
            r1 = 0
        L11:
            kg.o$d[] r2 = r5.f53860r
            r2 = r2[r0]
            int r3 = r2.f53868f
            int r3 = r3 - r6
            int r3 = java.lang.Math.min(r8, r3)
            if (r3 != 0) goto L21
        L1e:
            int r0 = r0 + 1
            goto L3a
        L21:
            kg.j r4 = r2.f53864b
            int r2 = r2.d(r6)
            int r2 = r4.Y1(r2, r7, r3)
            if (r2 != 0) goto L2e
            goto L3c
        L2e:
            if (r2 >= 0) goto L34
            if (r1 != 0) goto L3c
            r6 = -1
            return r6
        L34:
            int r6 = r6 + r2
            int r8 = r8 - r2
            int r1 = r1 + r2
            if (r2 != r3) goto L3a
            goto L1e
        L3a:
            if (r8 > 0) goto L11
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kg.o.Y1(int, java.nio.channels.ScatteringByteChannel, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        d Z3 = Z3(i9);
        if (i9 + 3 <= Z3.f53868f) {
            Z3.f53864b.h2(Z3.d(i9), i10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            Z2(i9, (short) (i10 >> 8));
            U2(i9 + 2, (byte) i10);
        } else {
            Z2(i9, (short) i10);
            U2(i9 + 2, (byte) (i10 >>> 16));
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: Y4 */
    public o J2(int i9) {
        super.J2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        d Z3 = Z3(i9);
        if (i9 + 2 <= Z3.f53868f) {
            Z3.f53864b.i2(Z3.d(i9), i10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            U2(i9, (byte) (i10 >>> 8));
            U2(i9 + 1, (byte) i10);
        } else {
            U2(i9, (byte) i10);
            U2(i9 + 1, (byte) (i10 >>> 8));
        }
    }

    @Override // kg.a, kg.j
    /* renamed from: Z4 */
    public o L2(int i9) {
        super.L2(i9);
        return this;
    }

    @Override // kg.j
    public boolean a1() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 != 1) {
                return false;
            }
            return this.f53860r[0].f53864b.a1();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        d Z3 = Z3(i9);
        if (i9 + 2 <= Z3.f53868f) {
            Z3.f53864b.j2(Z3.d(i9), i10);
        } else if (v1() == ByteOrder.BIG_ENDIAN) {
            U2(i9, (byte) i10);
            U2(i9 + 1, (byte) (i10 >>> 8));
        } else {
            U2(i9, (byte) (i10 >>> 8));
            U2(i9 + 1, (byte) i10);
        }
    }

    @Override // kg.j
    public boolean b1() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 != 1) {
                return false;
            }
            return this.f53860r[0].f53864b.b1();
        }
        return s0.f53902d.b1();
    }

    @Override // kg.j
    /* renamed from: b4 */
    public o w0(int i9, OutputStream outputStream, int i10) throws IOException {
        f3(i9, i10);
        if (i10 == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (i10 > 0) {
            d dVar = this.f53860r[I4];
            int min = Math.min(i10, dVar.f53868f - i9);
            dVar.f53864b.w0(dVar.d(i9), outputStream, min);
            i9 += min;
            i10 -= min;
            I4++;
        }
        return this;
    }

    @Override // kg.j
    /* renamed from: c4 */
    public o y0(int i9, ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        f3(i9, remaining);
        if (remaining == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (remaining > 0) {
            try {
                d dVar = this.f53860r[I4];
                int min = Math.min(remaining, dVar.f53868f - i9);
                byteBuffer.limit(byteBuffer.position() + min);
                dVar.f53864b.y0(dVar.d(i9), byteBuffer);
                i9 += min;
                remaining -= min;
                I4++;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        return this;
    }

    @Override // kg.j
    /* renamed from: d4 */
    public o A0(int i9, j jVar, int i10, int i11) {
        d3(i9, i11, i10, jVar.F());
        if (i11 == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (i11 > 0) {
            d dVar = this.f53860r[I4];
            int min = Math.min(i11, dVar.f53868f - i9);
            dVar.f53864b.A0(dVar.d(i9), jVar, i10, min);
            i9 += min;
            i10 += min;
            i11 -= min;
            I4++;
        }
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        int i11 = this.f53859q;
        if (i11 != 0) {
            if (i11 == 1) {
                return this.f53860r[0].e(i9, i10);
            }
            throw new UnsupportedOperationException();
        }
        return f53852u;
    }

    @Override // kg.a, kg.j
    /* renamed from: e4 */
    public o C0(int i9, byte[] bArr) {
        return E0(i9, bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.e, kg.j
    public boolean f1() {
        return !this.f53861s;
    }

    @Override // kg.j
    /* renamed from: f4 */
    public o E0(int i9, byte[] bArr, int i10, int i11) {
        d3(i9, i11, i10, bArr.length);
        if (i11 == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (i11 > 0) {
            d dVar = this.f53860r[I4];
            int min = Math.min(i11, dVar.f53868f - i9);
            dVar.f53864b.E0(dVar.d(i9), bArr, i10, min);
            i9 += min;
            i10 += min;
            i11 -= min;
            I4++;
        }
        return this;
    }

    public j g4(int i9) {
        N3(i9);
        return this.f53860r[i9].h();
    }

    @Override // kg.j
    public boolean h1() {
        int i9 = this.f53859q;
        if (i9 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            if (!this.f53860r[i10].f53864b.h1()) {
                return false;
            }
        }
        return true;
    }

    @Override // kg.a, kg.j
    /* renamed from: h4 */
    public o l1() {
        super.l1();
        return this;
    }

    public Iterator<j> iterator() {
        p3();
        return this.f53859q == 0 ? f53853v : new e(this, null);
    }

    public int k4() {
        return this.f53859q;
    }

    @Override // kg.a, kg.j
    /* renamed from: l4 */
    public o A1(OutputStream outputStream, int i9) throws IOException {
        super.A1(outputStream, i9);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: m4 */
    public o B1(ByteBuffer byteBuffer) {
        super.B1(byteBuffer);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: n4 */
    public o C1(byte[] bArr) {
        super.D1(bArr, 0, bArr.length);
        return this;
    }

    @Override // kg.a, kg.j
    /* renamed from: o4 */
    public o D1(byte[] bArr, int i9, int i10) {
        super.D1(bArr, i9, i10);
        return this;
    }

    @Override // kg.j
    public long p1() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 == 1) {
                d dVar = this.f53860r[0];
                return dVar.f53864b.p1() + dVar.f53866d;
            }
            throw new UnsupportedOperationException();
        }
        return s0.f53902d.p1();
    }

    @Override // kg.a, kg.j
    /* renamed from: p4 */
    public o R1(int i9) {
        super.R1(i9);
        return this;
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        f3(i9, i10);
        int i11 = this.f53859q;
        if (i11 != 0) {
            if (i11 == 1) {
                d dVar = this.f53860r[0];
                j jVar = dVar.f53864b;
                if (jVar.s1() == 1) {
                    return jVar.r1(dVar.d(i9), i10);
                }
            }
            ByteBuffer[] u12 = u1(i9, i10);
            if (u12.length == 1) {
                return u12[0];
            }
            ByteBuffer order = ByteBuffer.allocate(i10).order(v1());
            for (ByteBuffer byteBuffer : u12) {
                order.put(byteBuffer);
            }
            order.flip();
            return order;
        }
        return f53852u;
    }

    @Override // kg.a
    protected int r3(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) throws Exception {
        int o02;
        if (i10 <= i9) {
            return -1;
        }
        int I4 = I4(i9);
        int i11 = i10 - i9;
        while (i11 > 0) {
            d dVar = this.f53860r[I4];
            if (dVar.f53867e != dVar.f53868f) {
                j jVar = dVar.f53864b;
                int d10 = dVar.d(i9);
                int min = Math.min(i11, dVar.f53868f - i9);
                if (jVar instanceof kg.a) {
                    o02 = ((kg.a) jVar).r3(d10, d10 + min, gVar);
                } else {
                    o02 = jVar.o0(d10, min, gVar);
                }
                if (o02 != -1) {
                    return o02 - dVar.f53866d;
                }
                i9 += min;
                i11 -= min;
            }
            I4++;
        }
        return -1;
    }

    @Override // kg.j
    public int s1() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 != 1) {
                int i10 = 0;
                for (int i11 = 0; i11 < i9; i11++) {
                    i10 += this.f53860r[i11].f53864b.s1();
                }
                return i10;
            }
            return this.f53860r[0].f53864b.s1();
        }
        return 1;
    }

    @Override // kg.j
    public j s2() {
        return null;
    }

    @Override // kg.a, kg.j
    /* renamed from: s4 */
    public o S1() {
        super.S1();
        return this;
    }

    @Override // kg.a, kg.j
    public ByteBuffer[] t1() {
        return u1(Q1(), P1());
    }

    @Override // kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: t4 */
    public o retain() {
        super.retain();
        return this;
    }

    @Override // kg.a, kg.j
    public String toString() {
        String aVar = super.toString();
        String substring = aVar.substring(0, aVar.length() - 1);
        return substring + ", components=" + this.f53859q + ')';
    }

    @Override // kg.a, kg.j
    public byte u0(int i9) {
        d Y3 = Y3(i9);
        return Y3.f53864b.u0(Y3.d(i9));
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        f3(i9, i10);
        if (i10 == 0) {
            return new ByteBuffer[]{f53852u};
        }
        RecyclableArrayList newInstance = RecyclableArrayList.newInstance(this.f53859q);
        try {
            int I4 = I4(i9);
            while (i10 > 0) {
                d dVar = this.f53860r[I4];
                j jVar = dVar.f53864b;
                int min = Math.min(i10, dVar.f53868f - i9);
                int s12 = jVar.s1();
                if (s12 == 0) {
                    throw new UnsupportedOperationException();
                }
                if (s12 != 1) {
                    Collections.addAll(newInstance, jVar.u1(dVar.d(i9), min));
                } else {
                    newInstance.add(jVar.r1(dVar.d(i9), min));
                }
                i9 += min;
                i10 -= min;
                I4++;
            }
            return (ByteBuffer[]) newInstance.toArray(new ByteBuffer[0]);
        } finally {
            newInstance.recycle();
        }
    }

    @Override // kg.e, kg.j
    /* renamed from: u4 */
    public o U1(int i9) {
        super.U1(i9);
        return this;
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        if (s1() == 1) {
            return gatheringByteChannel.write(e1(i9, i10));
        }
        long write = gatheringByteChannel.write(u1(i9, i10));
        if (write > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) write;
    }

    @Override // kg.j
    public ByteOrder v1() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // kg.a, kg.j
    /* renamed from: v4 */
    public o X1(int i9, int i10) {
        d Y3 = Y3(i9);
        Y3.f53864b.X1(Y3.d(i9), i10);
        return this;
    }

    @Override // kg.j
    /* renamed from: w4 */
    public o Z1(int i9, ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        f3(i9, remaining);
        if (remaining == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (remaining > 0) {
            try {
                d dVar = this.f53860r[I4];
                int min = Math.min(remaining, dVar.f53868f - i9);
                byteBuffer.limit(byteBuffer.position() + min);
                dVar.f53864b.Z1(dVar.d(i9), byteBuffer);
                i9 += min;
                remaining -= min;
                I4++;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        return this;
    }

    @Override // kg.j
    /* renamed from: x4 */
    public o a2(int i9, j jVar, int i10, int i11) {
        n3(i9, i11, i10, jVar.F());
        if (i11 == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (i11 > 0) {
            d dVar = this.f53860r[I4];
            int min = Math.min(i11, dVar.f53868f - i9);
            dVar.f53864b.a2(dVar.d(i9), jVar, i10, min);
            i9 += min;
            i10 += min;
            i11 -= min;
            I4++;
        }
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 == 1) {
                return this.f53860r[0].f53864b.y();
            }
            throw new UnsupportedOperationException();
        }
        return io.grpc.netty.shaded.io.netty.util.internal.h.f45065b;
    }

    @Override // kg.a
    /* renamed from: y4 */
    public o w3(int i9, byte[] bArr) {
        return b2(i9, bArr, 0, bArr.length);
    }

    @Override // kg.j
    public int z() {
        int i9 = this.f53859q;
        if (i9 != 0) {
            if (i9 == 1) {
                d dVar = this.f53860r[0];
                return dVar.d(dVar.f53864b.z());
            }
            throw new UnsupportedOperationException();
        }
        return 0;
    }

    @Override // kg.j
    /* renamed from: z4 */
    public o b2(int i9, byte[] bArr, int i10, int i11) {
        n3(i9, i11, i10, bArr.length);
        if (i11 == 0) {
            return this;
        }
        int I4 = I4(i9);
        while (i11 > 0) {
            d dVar = this.f53860r[I4];
            int min = Math.min(i11, dVar.f53868f - i9);
            dVar.f53864b.b2(dVar.d(i9), bArr, i10, min);
            i9 += min;
            i10 += min;
            i11 -= min;
            I4++;
        }
        return this;
    }

    /* loaded from: classes5.dex */
    private final class e implements Iterator<j> {

        /* renamed from: a  reason: collision with root package name */
        private final int f53870a;

        /* renamed from: b  reason: collision with root package name */
        private int f53871b;

        private e() {
            this.f53870a = o.this.k4();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public j next() {
            if (this.f53870a == o.this.k4()) {
                if (hasNext()) {
                    try {
                        d[] dVarArr = o.this.f53860r;
                        int i9 = this.f53871b;
                        this.f53871b = i9 + 1;
                        return dVarArr[i9].h();
                    } catch (IndexOutOfBoundsException unused) {
                        throw new ConcurrentModificationException();
                    }
                }
                throw new NoSuchElementException();
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f53870a > this.f53871b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-Only");
        }

        /* synthetic */ e(o oVar, a aVar) {
            this();
        }
    }

    public o(k kVar, boolean z10, int i9) {
        this(kVar, z10, i9, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(k kVar) {
        super(Integer.MAX_VALUE);
        this.f53856n = kVar;
        this.f53857o = false;
        this.f53858p = 0;
        this.f53860r = null;
    }
}
