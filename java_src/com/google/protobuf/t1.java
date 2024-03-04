package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.google.protobuf.o0;
import com.google.protobuf.w0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
final class t1<T> implements n2<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o1 f15276a;

    /* renamed from: b  reason: collision with root package name */
    private final g3<?, ?> f15277b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15278c;

    /* renamed from: d  reason: collision with root package name */
    private final g0<?> f15279d;

    private t1(g3<?, ?> g3Var, g0<?> g0Var, o1 o1Var) {
        this.f15277b = g3Var;
        this.f15278c = g0Var.e(o1Var);
        this.f15279d = g0Var;
        this.f15276a = o1Var;
    }

    private <UT, UB> int k(g3<UT, UB> g3Var, T t10) {
        return g3Var.i(g3Var.g(t10));
    }

    private <UT, UB, ET extends o0.c<ET>> void l(g3<UT, UB> g3Var, g0<ET> g0Var, T t10, k2 k2Var, f0 f0Var) throws IOException {
        UB f10 = g3Var.f(t10);
        o0<ET> d10 = g0Var.d(t10);
        do {
            try {
                if (k2Var.F() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                g3Var.o(t10, f10);
            }
        } while (n(k2Var, f0Var, g0Var, d10, g3Var, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> t1<T> m(g3<?, ?> g3Var, g0<?> g0Var, o1 o1Var) {
        return new t1<>(g3Var, g0Var, o1Var);
    }

    private <UT, UB, ET extends o0.c<ET>> boolean n(k2 k2Var, f0 f0Var, g0<ET> g0Var, o0<ET> o0Var, g3<UT, UB> g3Var, UB ub2) throws IOException {
        int tag = k2Var.getTag();
        if (tag != WireFormat.f14842a) {
            if (WireFormat.b(tag) == 2) {
                Object b10 = g0Var.b(f0Var, this.f15276a, WireFormat.a(tag));
                if (b10 != null) {
                    g0Var.h(k2Var, b10, f0Var, o0Var);
                    return true;
                }
                return g3Var.m(ub2, k2Var);
            }
            return k2Var.K();
        }
        int i9 = 0;
        Object obj = null;
        ByteString byteString = null;
        while (k2Var.F() != Integer.MAX_VALUE) {
            int tag2 = k2Var.getTag();
            if (tag2 == WireFormat.f14844c) {
                i9 = k2Var.i();
                obj = g0Var.b(f0Var, this.f15276a, i9);
            } else if (tag2 == WireFormat.f14845d) {
                if (obj != null) {
                    g0Var.h(k2Var, obj, f0Var, o0Var);
                } else {
                    byteString = k2Var.r();
                }
            } else if (!k2Var.K()) {
                break;
            }
        }
        if (k2Var.getTag() == WireFormat.f14843b) {
            if (byteString != null) {
                if (obj != null) {
                    g0Var.i(byteString, obj, f0Var, o0Var);
                } else {
                    g3Var.d(ub2, i9, byteString);
                }
            }
            return true;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    private <UT, UB> void o(g3<UT, UB> g3Var, T t10, Writer writer) throws IOException {
        g3Var.s(g3Var.g(t10), writer);
    }

    @Override // com.google.protobuf.n2
    public void a(T t10, T t11) {
        p2.H(this.f15277b, t10, t11);
        if (this.f15278c) {
            p2.F(this.f15279d, t10, t11);
        }
    }

    @Override // com.google.protobuf.n2
    public int b(T t10) {
        int hashCode = this.f15277b.g(t10).hashCode();
        return this.f15278c ? (hashCode * 53) + this.f15279d.c(t10).hashCode() : hashCode;
    }

    @Override // com.google.protobuf.n2
    public boolean c(T t10, T t11) {
        if (this.f15277b.g(t10).equals(this.f15277b.g(t11))) {
            if (this.f15278c) {
                return this.f15279d.c(t10).equals(this.f15279d.c(t11));
            }
            return true;
        }
        return false;
    }

    @Override // com.google.protobuf.n2
    public void d(T t10, Writer writer) throws IOException {
        Iterator<Map.Entry<?, Object>> E = this.f15279d.c(t10).E();
        while (E.hasNext()) {
            Map.Entry<?, Object> next = E.next();
            o0.c cVar = (o0.c) next.getKey();
            if (cVar.s0() == WireFormat.JavaType.MESSAGE && !cVar.isRepeated() && !cVar.isPacked()) {
                if (next instanceof w0.b) {
                    writer.c(cVar.getNumber(), ((w0.b) next).a().f());
                } else {
                    writer.c(cVar.getNumber(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        o(this.f15277b, t10, writer);
    }

    @Override // com.google.protobuf.n2
    public void e(T t10) {
        this.f15277b.j(t10);
        this.f15279d.f(t10);
    }

    @Override // com.google.protobuf.n2
    public final boolean f(T t10) {
        return this.f15279d.c(t10).B();
    }

    @Override // com.google.protobuf.n2
    public int g(T t10) {
        int k10 = k(this.f15277b, t10) + 0;
        return this.f15278c ? k10 + this.f15279d.c(t10).s() : k10;
    }

    @Override // com.google.protobuf.n2
    public T h() {
        return (T) this.f15276a.newBuilderForType().I();
    }

    @Override // com.google.protobuf.n2
    public void i(T t10, k2 k2Var, f0 f0Var) throws IOException {
        l(this.f15277b, this.f15279d, t10, k2Var, f0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb A[EDGE_INSN: B:57:0x00cb->B:34:0x00cb ?: BREAK  , SYNTHETIC] */
    @Override // com.google.protobuf.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j(T r11, byte[] r12, int r13, int r14, com.google.protobuf.j.b r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.google.protobuf.GeneratedMessageLite r0 = (com.google.protobuf.GeneratedMessageLite) r0
            com.google.protobuf.i3 r1 = r0.f14689a
            com.google.protobuf.i3 r2 = com.google.protobuf.i3.c()
            if (r1 != r2) goto L11
            com.google.protobuf.i3 r1 = com.google.protobuf.i3.j()
            r0.f14689a = r1
        L11:
            com.google.protobuf.GeneratedMessageLite$b r11 = (com.google.protobuf.GeneratedMessageLite.b) r11
            com.google.protobuf.o0 r11 = r11.l()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Ld7
            int r4 = com.google.protobuf.j.I(r12, r13, r15)
            int r13 = r15.f15014a
            int r3 = com.google.protobuf.WireFormat.f14842a
            r5 = 2
            if (r13 == r3) goto L6b
            int r3 = com.google.protobuf.WireFormat.b(r13)
            if (r3 != r5) goto L66
            com.google.protobuf.g0<?> r2 = r10.f15279d
            com.google.protobuf.f0 r3 = r15.f15017d
            com.google.protobuf.o1 r5 = r10.f15276a
            int r6 = com.google.protobuf.WireFormat.a(r13)
            java.lang.Object r2 = r2.b(r3, r5, r6)
            r8 = r2
            com.google.protobuf.GeneratedMessageLite$d r8 = (com.google.protobuf.GeneratedMessageLite.d) r8
            if (r8 == 0) goto L5b
            com.google.protobuf.g2 r13 = com.google.protobuf.g2.a()
            com.google.protobuf.o1 r2 = r8.c()
            java.lang.Class r2 = r2.getClass()
            com.google.protobuf.n2 r13 = r13.d(r2)
            int r13 = com.google.protobuf.j.p(r13, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$c r2 = r8.f14701b
            java.lang.Object r3 = r15.f15016c
            r11.L(r2, r3)
            goto L64
        L5b:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.protobuf.j.G(r2, r3, r4, r5, r6, r7)
        L64:
            r2 = r8
            goto L19
        L66:
            int r13 = com.google.protobuf.j.N(r13, r12, r4, r14, r15)
            goto L19
        L6b:
            r13 = 0
            r3 = r0
        L6d:
            if (r4 >= r14) goto Lcb
            int r4 = com.google.protobuf.j.I(r12, r4, r15)
            int r6 = r15.f15014a
            int r7 = com.google.protobuf.WireFormat.a(r6)
            int r8 = com.google.protobuf.WireFormat.b(r6)
            if (r7 == r5) goto Lac
            r9 = 3
            if (r7 == r9) goto L83
            goto Lc1
        L83:
            if (r2 == 0) goto La1
            com.google.protobuf.g2 r6 = com.google.protobuf.g2.a()
            com.google.protobuf.o1 r7 = r2.c()
            java.lang.Class r7 = r7.getClass()
            com.google.protobuf.n2 r6 = r6.d(r7)
            int r4 = com.google.protobuf.j.p(r6, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$c r6 = r2.f14701b
            java.lang.Object r7 = r15.f15016c
            r11.L(r6, r7)
            goto L6d
        La1:
            if (r8 != r5) goto Lc1
            int r4 = com.google.protobuf.j.b(r12, r4, r15)
            java.lang.Object r3 = r15.f15016c
            com.google.protobuf.ByteString r3 = (com.google.protobuf.ByteString) r3
            goto L6d
        Lac:
            if (r8 != 0) goto Lc1
            int r4 = com.google.protobuf.j.I(r12, r4, r15)
            int r13 = r15.f15014a
            com.google.protobuf.g0<?> r2 = r10.f15279d
            com.google.protobuf.f0 r6 = r15.f15017d
            com.google.protobuf.o1 r7 = r10.f15276a
            java.lang.Object r2 = r2.b(r6, r7, r13)
            com.google.protobuf.GeneratedMessageLite$d r2 = (com.google.protobuf.GeneratedMessageLite.d) r2
            goto L6d
        Lc1:
            int r7 = com.google.protobuf.WireFormat.f14843b
            if (r6 != r7) goto Lc6
            goto Lcb
        Lc6:
            int r4 = com.google.protobuf.j.N(r6, r12, r4, r14, r15)
            goto L6d
        Lcb:
            if (r3 == 0) goto Ld4
            int r13 = com.google.protobuf.WireFormat.c(r13, r5)
            r1.m(r13, r3)
        Ld4:
            r13 = r4
            goto L19
        Ld7:
            if (r13 != r14) goto Lda
            return
        Lda:
            com.google.protobuf.InvalidProtocolBufferException r11 = com.google.protobuf.InvalidProtocolBufferException.parseFailure()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.t1.j(java.lang.Object, byte[], int, int, com.google.protobuf.j$b):void");
    }
}
