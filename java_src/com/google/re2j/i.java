package com.google.re2j;

import com.google.re2j.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class i {

    /* renamed from: g  reason: collision with root package name */
    private static final int[][] f15410g = {new int[]{0, 1114111, 1}};

    /* renamed from: a  reason: collision with root package name */
    private final String f15411a;

    /* renamed from: b  reason: collision with root package name */
    private int f15412b;

    /* renamed from: d  reason: collision with root package name */
    private l f15414d;

    /* renamed from: c  reason: collision with root package name */
    private final c f15413c = new c(null);

    /* renamed from: e  reason: collision with root package name */
    private int f15415e = 0;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Integer> f15416f = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15417a;

        static {
            int[] iArr = new int[l.b.values().length];
            f15417a = iArr;
            try {
                iArr[l.b.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15417a[l.b.CHAR_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15417a[l.b.ANY_CHAR_NOT_NL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15417a[l.b.ANY_CHAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b<F, S> {

        /* renamed from: a  reason: collision with root package name */
        final F f15418a;

        /* renamed from: b  reason: collision with root package name */
        final S f15419b;

        b(F f10, S s10) {
            this.f15418a = f10;
            this.f15419b = s10;
        }

        static <F, S> b<F, S> a(F f10, S s10) {
            return new b<>(f10, s10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c extends ArrayList<l> {
        private c() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList
        public void removeRange(int i9, int i10) {
            super.removeRange(i9, i10);
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f15420a;

        /* renamed from: b  reason: collision with root package name */
        private int f15421b = 0;

        d(String str) {
            this.f15420a = str;
        }

        String a(int i9) {
            return this.f15420a.substring(i9, this.f15421b);
        }

        boolean b(char c10) {
            return this.f15420a.charAt(this.f15421b) == c10;
        }

        boolean c(String str) {
            return h().startsWith(str);
        }

        boolean d() {
            return this.f15421b < this.f15420a.length();
        }

        int e() {
            return this.f15420a.codePointAt(this.f15421b);
        }

        int f() {
            int codePointAt = this.f15420a.codePointAt(this.f15421b);
            this.f15421b += Character.charCount(codePointAt);
            return codePointAt;
        }

        int g() {
            return this.f15421b;
        }

        String h() {
            return this.f15420a.substring(this.f15421b);
        }

        void i(int i9) {
            this.f15421b = i9;
        }

        void j(int i9) {
            this.f15421b += i9;
        }

        void k(String str) {
            this.f15421b += str.length();
        }

        public String toString() {
            return h();
        }
    }

    i(String str, int i9) {
        this.f15411a = str;
        this.f15412b = i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009d, code lost:
        if (r2 < 0) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A(com.google.re2j.i.d r10) throws com.google.re2j.PatternSyntaxException {
        /*
            r9 = this;
            int r0 = r10.g()
            java.lang.String r1 = r10.h()
            java.lang.String r2 = "(?P<"
            boolean r2 = r1.startsWith(r2)
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L62
            r0 = 62
            int r0 = r1.indexOf(r0)
            java.lang.String r2 = "invalid named capture"
            if (r0 < 0) goto L5c
            r5 = 4
            java.lang.String r5 = r1.substring(r5, r0)
            r10.k(r5)
            r6 = 5
            r10.j(r6)
            boolean r10 = h(r5)
            if (r10 == 0) goto L52
            com.google.re2j.l$b r10 = com.google.re2j.l.b.LEFT_PAREN
            com.google.re2j.l r10 = r9.r(r10)
            int r0 = r9.f15415e
            int r0 = r0 + r4
            r9.f15415e = r0
            r10.f15444g = r0
            java.util.Map<java.lang.String, java.lang.Integer> r1 = r9.f15416f
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object r0 = r1.put(r5, r0)
            if (r0 != 0) goto L4a
            r10.f15445h = r5
            return
        L4a:
            com.google.re2j.PatternSyntaxException r10 = new com.google.re2j.PatternSyntaxException
            java.lang.String r0 = "duplicate capture group name"
            r10.<init>(r0, r5)
            throw r10
        L52:
            com.google.re2j.PatternSyntaxException r10 = new com.google.re2j.PatternSyntaxException
            java.lang.String r0 = r1.substring(r3, r0)
            r10.<init>(r2, r0)
            throw r10
        L5c:
            com.google.re2j.PatternSyntaxException r10 = new com.google.re2j.PatternSyntaxException
            r10.<init>(r2, r1)
            throw r10
        L62:
            r1 = 2
            r10.j(r1)
            int r1 = r9.f15412b
            r2 = 1
        L69:
            r5 = 0
        L6a:
            boolean r6 = r10.d()
            if (r6 == 0) goto Lb1
            int r6 = r10.f()
            r7 = 41
            r8 = 58
            if (r6 == r7) goto La2
            r7 = 45
            if (r6 == r7) goto L9d
            if (r6 == r8) goto La2
            r5 = 85
            if (r6 == r5) goto L99
            r5 = 105(0x69, float:1.47E-43)
            if (r6 == r5) goto L96
            r5 = 109(0x6d, float:1.53E-43)
            if (r6 == r5) goto L93
            r5 = 115(0x73, float:1.61E-43)
            if (r6 != r5) goto Lb1
            r1 = r1 | 8
            goto L9b
        L93:
            r1 = r1 & (-17)
            goto L9b
        L96:
            r1 = r1 | 1
            goto L9b
        L99:
            r1 = r1 | 32
        L9b:
            r5 = 1
            goto L6a
        L9d:
            if (r2 < 0) goto Lb1
            r2 = -1
            int r1 = ~r1
            goto L69
        La2:
            if (r2 >= 0) goto La7
            if (r5 == 0) goto Lb1
            int r1 = ~r1
        La7:
            if (r6 != r8) goto Lae
            com.google.re2j.l$b r10 = com.google.re2j.l.b.LEFT_PAREN
            r9.r(r10)
        Lae:
            r9.f15412b = r1
            return
        Lb1:
            com.google.re2j.PatternSyntaxException r1 = new com.google.re2j.PatternSyntaxException
            java.lang.String r10 = r10.a(r0)
            java.lang.String r0 = "invalid or unsupported Perl syntax"
            r1.<init>(r0, r10)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.i.A(com.google.re2j.i$d):void");
    }

    private static int B(d dVar) throws PatternSyntaxException {
        int w6;
        int g10 = dVar.g();
        if (dVar.d() && dVar.b('{')) {
            dVar.j(1);
            int w8 = w(dVar);
            if (w8 == -1 || !dVar.d()) {
                return -1;
            }
            if (dVar.b(',')) {
                dVar.j(1);
                if (!dVar.d()) {
                    return -1;
                }
                if (dVar.b('}')) {
                    w6 = -1;
                } else {
                    w6 = w(dVar);
                    if (w6 == -1) {
                        return -1;
                    }
                }
            } else {
                w6 = w8;
            }
            if (dVar.d() && dVar.b('}')) {
                dVar.j(1);
                if (w8 < 0 || w8 > 1000 || w6 == -2 || w6 > 1000 || (w6 >= 0 && w8 > w6)) {
                    throw new PatternSyntaxException("invalid repeat count", dVar.a(g10));
                }
                return (w8 << 16) | (65535 & w6);
            }
        }
        return -1;
    }

    private void C() throws PatternSyntaxException {
        d();
        if (N()) {
            F();
        }
        a();
        if (this.f15413c.size() >= 2) {
            l F = F();
            l F2 = F();
            if (F2.f15438a == l.b.LEFT_PAREN) {
                this.f15412b = F2.f15439b;
                if (F2.f15444g == 0) {
                    H(F);
                    return;
                }
                F2.f15438a = l.b.CAPTURE;
                F2.f15440c = new l[]{F};
                H(F2);
                return;
            }
            throw new PatternSyntaxException("missing closing )", this.f15411a);
        }
        throw new PatternSyntaxException("regexp/syntax: internal error", "stack underflow");
    }

    private boolean D(d dVar, com.google.re2j.a aVar) throws PatternSyntaxException {
        String substring;
        int g10 = dVar.g();
        if ((this.f15412b & 128) == 0 || !(dVar.c("\\p") || dVar.c("\\P"))) {
            return false;
        }
        dVar.j(1);
        int i9 = dVar.f() == 80 ? -1 : 1;
        if (dVar.d()) {
            int f10 = dVar.f();
            if (f10 != 123) {
                substring = p.e(f10);
            } else {
                String h10 = dVar.h();
                int indexOf = h10.indexOf(125);
                if (indexOf >= 0) {
                    substring = h10.substring(0, indexOf);
                    dVar.k(substring);
                    dVar.j(1);
                } else {
                    dVar.i(g10);
                    throw new PatternSyntaxException("invalid character class range", dVar.h());
                }
            }
            if (!substring.isEmpty() && substring.charAt(0) == '^') {
                i9 = -i9;
                substring = substring.substring(1);
            }
            b<int[][], int[][]> O = O(substring);
            if (O != null) {
                int[][] iArr = O.f15418a;
                int[][] iArr2 = O.f15419b;
                if ((this.f15412b & 1) != 0 && iArr2 != null) {
                    aVar.b(new com.google.re2j.a().j(iArr).j(iArr2).m().r(), i9);
                } else {
                    aVar.k(iArr, i9);
                }
                return true;
            }
            throw new PatternSyntaxException("invalid character class range", dVar.a(g10));
        }
        dVar.i(g10);
        throw new PatternSyntaxException("invalid character class range", dVar.h());
    }

    private void E() {
        d();
        if (N()) {
            return;
        }
        r(l.b.VERTICAL_BAR);
    }

    private l F() {
        c cVar = this.f15413c;
        return cVar.remove(cVar.size() - 1);
    }

    private l[] G() {
        int size = this.f15413c.size();
        int i9 = size;
        while (i9 > 0 && !this.f15413c.get(i9 - 1).f15438a.a()) {
            i9--;
        }
        l[] lVarArr = (l[]) this.f15413c.subList(i9, size).toArray(new l[size - i9]);
        this.f15413c.removeRange(i9, size);
        return lVarArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        if (com.google.re2j.n.d(r6[2]) == r10.f15441d[0]) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008b, code lost:
        if (com.google.re2j.n.d(r1[1]) == r10.f15441d[0]) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
        if (m(r10.f15441d[0], r9.f15412b | 1) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
        r10.f15438a = com.google.re2j.l.b.LITERAL;
        r10.f15441d = new int[]{r10.f15441d[0]};
        r10.f15439b = r9.f15412b | 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.re2j.l H(com.google.re2j.l r10) {
        /*
            r9 = this;
            com.google.re2j.l$b r0 = r10.f15438a
            com.google.re2j.l$b r1 = com.google.re2j.l.b.CHAR_CLASS
            r2 = 0
            r3 = 2
            r4 = 1
            r5 = 0
            if (r0 != r1) goto L38
            int[] r6 = r10.f15441d
            int r7 = r6.length
            if (r7 != r3) goto L38
            r7 = r6[r5]
            r8 = r6[r4]
            if (r7 != r8) goto L38
            r0 = r6[r5]
            int r1 = r9.f15412b
            r1 = r1 & (-2)
            boolean r0 = r9.m(r0, r1)
            if (r0 == 0) goto L22
            return r2
        L22:
            com.google.re2j.l$b r0 = com.google.re2j.l.b.LITERAL
            r10.f15438a = r0
            int[] r0 = new int[r4]
            int[] r1 = r10.f15441d
            r1 = r1[r5]
            r0[r5] = r1
            r10.f15441d = r0
            int r0 = r9.f15412b
            r0 = r0 & (-2)
            r10.f15439b = r0
            goto Lb3
        L38:
            if (r0 != r1) goto L65
            int[] r0 = r10.f15441d
            int r6 = r0.length
            r7 = 4
            if (r6 != r7) goto L65
            r6 = r0[r5]
            r7 = r0[r4]
            if (r6 != r7) goto L65
            r6 = r0[r3]
            r7 = 3
            r7 = r0[r7]
            if (r6 != r7) goto L65
            r0 = r0[r5]
            int r0 = com.google.re2j.n.d(r0)
            int[] r6 = r10.f15441d
            r7 = r6[r3]
            if (r0 != r7) goto L65
            r0 = r6[r3]
            int r0 = com.google.re2j.n.d(r0)
            int[] r6 = r10.f15441d
            r6 = r6[r5]
            if (r0 == r6) goto L8d
        L65:
            com.google.re2j.l$b r0 = r10.f15438a
            if (r0 != r1) goto Laf
            int[] r0 = r10.f15441d
            int r1 = r0.length
            if (r1 != r3) goto Laf
            r1 = r0[r5]
            int r1 = r1 + r4
            r3 = r0[r4]
            if (r1 != r3) goto Laf
            r0 = r0[r5]
            int r0 = com.google.re2j.n.d(r0)
            int[] r1 = r10.f15441d
            r3 = r1[r4]
            if (r0 != r3) goto Laf
            r0 = r1[r4]
            int r0 = com.google.re2j.n.d(r0)
            int[] r1 = r10.f15441d
            r1 = r1[r5]
            if (r0 != r1) goto Laf
        L8d:
            int[] r0 = r10.f15441d
            r0 = r0[r5]
            int r1 = r9.f15412b
            r1 = r1 | r4
            boolean r0 = r9.m(r0, r1)
            if (r0 == 0) goto L9b
            return r2
        L9b:
            com.google.re2j.l$b r0 = com.google.re2j.l.b.LITERAL
            r10.f15438a = r0
            int[] r0 = new int[r4]
            int[] r1 = r10.f15441d
            r1 = r1[r5]
            r0[r5] = r1
            r10.f15441d = r0
            int r0 = r9.f15412b
            r0 = r0 | r4
            r10.f15439b = r0
            goto Lb3
        Laf:
            r0 = -1
            r9.m(r0, r5)
        Lb3:
            com.google.re2j.i$c r0 = r9.f15413c
            r0.add(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.i.H(com.google.re2j.l):com.google.re2j.l");
    }

    private l I(l lVar, boolean z10) {
        if (lVar.f15438a == l.b.CONCAT) {
            l[] lVarArr = lVar.f15440c;
            if (lVarArr.length > 0) {
                if (z10) {
                    L(lVarArr[0]);
                }
                l[] lVarArr2 = lVar.f15440c;
                l[] M = M(lVarArr2, 1, lVarArr2.length);
                lVar.f15440c = M;
                int length = M.length;
                if (length == 0) {
                    lVar.f15438a = l.b.EMPTY_MATCH;
                    lVar.f15440c = l.f15437j;
                    return lVar;
                } else if (length != 1) {
                    return lVar;
                } else {
                    l lVar2 = M[0];
                    L(lVar);
                    return lVar2;
                }
            }
        }
        if (z10) {
            L(lVar);
        }
        return q(l.b.EMPTY_MATCH);
    }

    private l J(l lVar, int i9) {
        l.b bVar = lVar.f15438a;
        if (bVar == l.b.CONCAT) {
            l[] lVarArr = lVar.f15440c;
            if (lVarArr.length > 0) {
                l J = J(lVarArr[0], i9);
                lVar.f15440c[0] = J;
                l.b bVar2 = J.f15438a;
                l.b bVar3 = l.b.EMPTY_MATCH;
                if (bVar2 == bVar3) {
                    L(J);
                    l[] lVarArr2 = lVar.f15440c;
                    int length = lVarArr2.length;
                    if (length == 0 || length == 1) {
                        lVar.f15438a = bVar3;
                        lVar.f15440c = null;
                        return lVar;
                    } else if (length != 2) {
                        lVar.f15440c = M(lVarArr2, 1, lVarArr2.length);
                        return lVar;
                    } else {
                        l lVar2 = lVarArr2[1];
                        L(lVar);
                        return lVar2;
                    }
                }
                return lVar;
            }
        }
        if (bVar == l.b.LITERAL) {
            int[] iArr = lVar.f15441d;
            int[] g10 = p.g(iArr, i9, iArr.length);
            lVar.f15441d = g10;
            if (g10.length == 0) {
                lVar.f15438a = l.b.EMPTY_MATCH;
            }
        }
        return lVar;
    }

    private void K(l.b bVar, int i9, int i10, int i11, d dVar, int i12) throws PatternSyntaxException {
        int i13 = this.f15412b;
        if ((i13 & 64) != 0) {
            if (dVar.d() && dVar.b('?')) {
                dVar.j(1);
                i13 ^= 32;
            }
            if (i12 != -1) {
                throw new PatternSyntaxException("invalid nested repetition operator", dVar.a(i12));
            }
        }
        int size = this.f15413c.size();
        if (size != 0) {
            int i14 = size - 1;
            l lVar = this.f15413c.get(i14);
            if (!lVar.f15438a.a()) {
                l q10 = q(bVar);
                q10.f15442e = i9;
                q10.f15443f = i10;
                q10.f15439b = i13;
                q10.f15440c = new l[]{lVar};
                this.f15413c.set(i14, q10);
                return;
            }
            throw new PatternSyntaxException("missing argument to repetition operator", dVar.a(i11));
        }
        throw new PatternSyntaxException("missing argument to repetition operator", dVar.a(i11));
    }

    private void L(l lVar) {
        l[] lVarArr = lVar.f15440c;
        if (lVarArr != null && lVarArr.length > 0) {
            lVarArr[0] = this.f15414d;
        }
        this.f15414d = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l[] M(l[] lVarArr, int i9, int i10) {
        l[] lVarArr2 = new l[i10 - i9];
        for (int i11 = i9; i11 < i10; i11++) {
            lVarArr2[i11 - i9] = lVarArr[i11];
        }
        return lVarArr2;
    }

    private boolean N() {
        int size = this.f15413c.size();
        if (size >= 3 && this.f15413c.get(size - 2).f15438a == l.b.VERTICAL_BAR) {
            int i9 = size - 1;
            if (g(this.f15413c.get(i9))) {
                int i10 = size - 3;
                if (g(this.f15413c.get(i10))) {
                    l lVar = this.f15413c.get(i9);
                    l lVar2 = this.f15413c.get(i10);
                    if (lVar.f15438a.ordinal() > lVar2.f15438a.ordinal()) {
                        this.f15413c.set(i10, lVar);
                    } else {
                        lVar2 = lVar;
                        lVar = lVar2;
                    }
                    n(lVar, lVar2);
                    L(lVar2);
                    F();
                    return true;
                }
            }
        }
        if (size >= 2) {
            int i11 = size - 1;
            l lVar3 = this.f15413c.get(i11);
            int i12 = size - 2;
            l lVar4 = this.f15413c.get(i12);
            if (lVar4.f15438a == l.b.VERTICAL_BAR) {
                if (size >= 3) {
                    b(this.f15413c.get(size - 3));
                }
                this.f15413c.set(i12, lVar3);
                this.f15413c.set(i11, lVar4);
                return true;
            }
            return false;
        }
        return false;
    }

    private static b<int[][], int[][]> O(String str) {
        if (str.equals("Any")) {
            int[][] iArr = f15410g;
            return b.a(iArr, iArr);
        }
        int[][] iArr2 = o.E1.get(str);
        if (iArr2 != null) {
            return b.a(iArr2, o.O1.get(str));
        }
        int[][] iArr3 = o.F1.get(str);
        if (iArr3 != null) {
            return b.a(iArr3, o.J1.get(str));
        }
        return null;
    }

    private l a() {
        l[] G = G();
        if (G.length > 0) {
            b(G[G.length - 1]);
        }
        if (G.length == 0) {
            return H(q(l.b.NO_MATCH));
        }
        return H(c(G, l.b.ALTERNATE));
    }

    private void b(l lVar) {
        if (lVar.f15438a == l.b.CHAR_CLASS) {
            int[] r10 = new com.google.re2j.a(lVar.f15441d).m().r();
            lVar.f15441d = r10;
            if (r10.length == 2 && r10[0] == 0 && r10[1] == 1114111) {
                lVar.f15441d = null;
                lVar.f15438a = l.b.ANY_CHAR;
            } else if (r10.length == 4 && r10[0] == 0 && r10[1] == 9 && r10[2] == 11 && r10[3] == 1114111) {
                lVar.f15441d = null;
                lVar.f15438a = l.b.ANY_CHAR_NOT_NL;
            }
        }
    }

    private l c(l[] lVarArr, l.b bVar) {
        if (lVarArr.length == 1) {
            return lVarArr[0];
        }
        int i9 = 0;
        for (l lVar : lVarArr) {
            i9 += lVar.f15438a == bVar ? lVar.f15440c.length : 1;
        }
        l[] lVarArr2 = new l[i9];
        int i10 = 0;
        for (l lVar2 : lVarArr) {
            if (lVar2.f15438a == bVar) {
                l[] lVarArr3 = lVar2.f15440c;
                System.arraycopy(lVarArr3, 0, lVarArr2, i10, lVarArr3.length);
                i10 += lVar2.f15440c.length;
                L(lVar2);
            } else {
                lVarArr2[i10] = lVar2;
                i10++;
            }
        }
        l q10 = q(bVar);
        q10.f15440c = lVarArr2;
        if (bVar == l.b.ALTERNATE) {
            l[] f10 = f(lVarArr2, q10.f15439b);
            q10.f15440c = f10;
            if (f10.length == 1) {
                l lVar3 = f10[0];
                L(q10);
                return lVar3;
            }
            return q10;
        }
        return q10;
    }

    private l d() {
        m(-1, 0);
        l[] G = G();
        if (G.length == 0) {
            return H(q(l.b.EMPTY_MATCH));
        }
        return H(c(G, l.b.CONCAT));
    }

    private static int[] e(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
        r10 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.re2j.l[] f(com.google.re2j.l[] r17, int r18) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.i.f(com.google.re2j.l[], int):com.google.re2j.l[]");
    }

    private static boolean g(l lVar) {
        l.b bVar = lVar.f15438a;
        return (bVar == l.b.LITERAL && lVar.f15441d.length == 1) || bVar == l.b.CHAR_CLASS || bVar == l.b.ANY_CHAR_NOT_NL || bVar == l.b.ANY_CHAR;
    }

    private static boolean h(String str) {
        if (str.isEmpty()) {
            return false;
        }
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt != '_' && !p.d(charAt)) {
                return false;
            }
        }
        return true;
    }

    private static l i(l lVar) {
        l.b bVar = lVar.f15438a;
        l.b bVar2 = l.b.EMPTY_MATCH;
        if (bVar == bVar2) {
            return null;
        }
        if (bVar == l.b.CONCAT) {
            l[] lVarArr = lVar.f15440c;
            if (lVarArr.length > 0) {
                lVar = lVarArr[0];
                if (lVar.f15438a == bVar2) {
                    return null;
                }
            }
        }
        return lVar;
    }

    private void j(int i9) {
        H(p(i9, this.f15412b));
    }

    private static l k(String str, int i9) {
        l lVar = new l(l.b.LITERAL);
        lVar.f15439b = i9;
        lVar.f15441d = p.f(str);
        return lVar;
    }

    private static boolean l(l lVar, int i9) {
        int i10 = a.f15417a[lVar.f15438a.ordinal()];
        if (i10 == 1) {
            int[] iArr = lVar.f15441d;
            return iArr.length == 1 && iArr[0] == i9;
        } else if (i10 != 2) {
            return i10 != 3 ? i10 == 4 : i9 != 10;
        } else {
            int i11 = 0;
            while (true) {
                int[] iArr2 = lVar.f15441d;
                if (i11 >= iArr2.length) {
                    return false;
                }
                if (iArr2[i11] <= i9 && i9 <= iArr2[i11 + 1]) {
                    return true;
                }
                i11 += 2;
            }
        }
    }

    private boolean m(int i9, int i10) {
        int size = this.f15413c.size();
        if (size < 2) {
            return false;
        }
        l lVar = this.f15413c.get(size - 1);
        l lVar2 = this.f15413c.get(size - 2);
        l.b bVar = lVar.f15438a;
        l.b bVar2 = l.b.LITERAL;
        if (bVar == bVar2 && lVar2.f15438a == bVar2 && (lVar.f15439b & 1) == (lVar2.f15439b & 1)) {
            lVar2.f15441d = e(lVar2.f15441d, lVar.f15441d);
            if (i9 >= 0) {
                lVar.f15441d = new int[]{i9};
                lVar.f15439b = i10;
                return true;
            }
            F();
            L(lVar);
        }
        return false;
    }

    private static void n(l lVar, l lVar2) {
        int i9 = a.f15417a[lVar.f15438a.ordinal()];
        if (i9 == 1) {
            if (lVar2.f15441d[0] == lVar.f15441d[0] && lVar2.f15439b == lVar.f15439b) {
                return;
            }
            lVar.f15438a = l.b.CHAR_CLASS;
            lVar.f15441d = new com.google.re2j.a().f(lVar.f15441d[0], lVar.f15439b).f(lVar2.f15441d[0], lVar2.f15439b).r();
        } else if (i9 != 2) {
            if (i9 == 3 && l(lVar2, 10)) {
                lVar.f15438a = l.b.ANY_CHAR;
            }
        } else if (lVar2.f15438a == l.b.LITERAL) {
            lVar.f15441d = new com.google.re2j.a(lVar.f15441d).f(lVar2.f15441d[0], lVar2.f15439b).r();
        } else {
            lVar.f15441d = new com.google.re2j.a(lVar.f15441d).a(lVar2.f15441d).r();
        }
    }

    private static int o(int i9) {
        if (i9 < 65 || i9 > 66639) {
            return i9;
        }
        int i10 = i9;
        for (int d10 = n.d(i9); d10 != i9; d10 = n.d(d10)) {
            if (i10 > d10) {
                i10 = d10;
            }
        }
        return i10;
    }

    private l p(int i9, int i10) {
        l q10 = q(l.b.LITERAL);
        q10.f15439b = i10;
        if ((i10 & 1) != 0) {
            i9 = o(i9);
        }
        q10.f15441d = new int[]{i9};
        return q10;
    }

    private l q(l.b bVar) {
        l[] lVarArr;
        l lVar = this.f15414d;
        if (lVar != null && (lVarArr = lVar.f15440c) != null && lVarArr.length > 0) {
            this.f15414d = lVarArr[0];
            lVar.d();
            lVar.f15438a = bVar;
            return lVar;
        }
        return new l(bVar);
    }

    private l r(l.b bVar) {
        l q10 = q(bVar);
        q10.f15439b = this.f15412b;
        return H(q10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l s(String str, int i9) throws PatternSyntaxException {
        return new i(str, i9).x();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x008b, code lost:
        r14.i(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0097, code lost:
        throw new com.google.re2j.PatternSyntaxException("invalid character class range", r14.h());
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00fb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void t(com.google.re2j.i.d r14) throws com.google.re2j.PatternSyntaxException {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.i.t(com.google.re2j.i$d):void");
    }

    private static int u(d dVar, int i9) throws PatternSyntaxException {
        if (dVar.d()) {
            if (dVar.b(IOUtils.DIR_SEPARATOR_WINDOWS)) {
                return v(dVar);
            }
            return dVar.f();
        }
        throw new PatternSyntaxException("missing closing ]", dVar.a(i9));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
        if (r6.e() <= 55) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int v(com.google.re2j.i.d r6) throws com.google.re2j.PatternSyntaxException {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.i.v(com.google.re2j.i$d):int");
    }

    private static int w(d dVar) {
        int e10;
        int g10 = dVar.g();
        while (dVar.d() && (e10 = dVar.e()) >= 48 && e10 <= 57) {
            dVar.j(1);
        }
        String a10 = dVar.a(g10);
        if (a10.isEmpty()) {
            return -1;
        }
        if (a10.length() <= 1 || a10.charAt(0) != '0') {
            if (a10.length() > 8) {
                return -2;
            }
            return Integer.valueOf(a10, 10).intValue();
        }
        return -1;
    }

    private l x() throws PatternSyntaxException {
        int i9;
        int i10 = this.f15412b;
        if ((i10 & 2) != 0) {
            return k(this.f15411a, i10);
        }
        d dVar = new d(this.f15411a);
        int i11 = -1;
        int i12 = -1;
        short s10 = -1;
        while (true) {
            if (dVar.d()) {
                int e10 = dVar.e();
                if (e10 == 36) {
                    if ((this.f15412b & 16) != 0) {
                        r(l.b.END_TEXT).f15439b |= 256;
                    } else {
                        r(l.b.END_LINE);
                    }
                    dVar.j(1);
                } else if (e10 != 46) {
                    if (e10 != 63) {
                        if (e10 == 94) {
                            if ((this.f15412b & 16) != 0) {
                                r(l.b.BEGIN_TEXT);
                            } else {
                                r(l.b.BEGIN_LINE);
                            }
                            dVar.j(1);
                        } else if (e10 == 91) {
                            t(dVar);
                        } else if (e10 == 92) {
                            int g10 = dVar.g();
                            dVar.j(1);
                            if ((this.f15412b & 64) != 0 && dVar.d()) {
                                int f10 = dVar.f();
                                if (f10 == 81) {
                                    String h10 = dVar.h();
                                    int indexOf = h10.indexOf("\\E");
                                    if (indexOf >= 0) {
                                        h10 = h10.substring(0, indexOf);
                                    }
                                    dVar.k(h10);
                                    dVar.k("\\E");
                                    for (int i13 = 0; i13 < h10.length(); i13++) {
                                        j(h10.charAt(i13));
                                    }
                                } else if (f10 == 98) {
                                    r(l.b.WORD_BOUNDARY);
                                } else if (f10 != 122) {
                                    switch (f10) {
                                        case 65:
                                            r(l.b.BEGIN_TEXT);
                                            break;
                                        case 66:
                                            r(l.b.NO_WORD_BOUNDARY);
                                            break;
                                        case 67:
                                            throw new PatternSyntaxException("invalid escape sequence", "\\C");
                                        default:
                                            dVar.i(g10);
                                            break;
                                    }
                                } else {
                                    r(l.b.END_TEXT);
                                }
                            }
                            l q10 = q(l.b.CHAR_CLASS);
                            q10.f15439b = this.f15412b;
                            if (dVar.c("\\p") || dVar.c("\\P")) {
                                com.google.re2j.a aVar = new com.google.re2j.a();
                                if (D(dVar, aVar)) {
                                    q10.f15441d = aVar.r();
                                    H(q10);
                                }
                            }
                            com.google.re2j.a aVar2 = new com.google.re2j.a();
                            if (z(dVar, aVar2)) {
                                q10.f15441d = aVar2.r();
                                H(q10);
                            } else {
                                dVar.i(g10);
                                L(q10);
                                j(v(dVar));
                            }
                        } else if (e10 == 123) {
                            i9 = dVar.g();
                            int B = B(dVar);
                            if (B < 0) {
                                dVar.i(i9);
                                j(dVar.f());
                            } else {
                                i12 = B >> 16;
                                s10 = (short) (B & 65535);
                                K(l.b.REPEAT, i12, s10, i9, dVar, i11);
                            }
                            i11 = i9;
                        } else if (e10 != 124) {
                            switch (e10) {
                                case 40:
                                    if ((this.f15412b & 64) != 0 && dVar.c("(?")) {
                                        A(dVar);
                                        break;
                                    } else {
                                        l r10 = r(l.b.LEFT_PAREN);
                                        int i14 = this.f15415e + 1;
                                        this.f15415e = i14;
                                        r10.f15444g = i14;
                                        dVar.j(1);
                                        break;
                                    }
                                case 41:
                                    C();
                                    dVar.j(1);
                                    break;
                                case 42:
                                case 43:
                                    break;
                                default:
                                    j(dVar.f());
                                    break;
                            }
                        } else {
                            E();
                            dVar.j(1);
                        }
                    }
                    i9 = dVar.g();
                    l.b bVar = null;
                    int f11 = dVar.f();
                    if (f11 == 42) {
                        bVar = l.b.STAR;
                    } else if (f11 == 43) {
                        bVar = l.b.PLUS;
                    } else if (f11 == 63) {
                        bVar = l.b.QUEST;
                    }
                    K(bVar, i12, s10, i9, dVar, i11);
                    i11 = i9;
                } else {
                    if ((this.f15412b & 8) != 0) {
                        r(l.b.ANY_CHAR);
                    } else {
                        r(l.b.ANY_CHAR_NOT_NL);
                    }
                    dVar.j(1);
                }
                i11 = -1;
            } else {
                d();
                if (N()) {
                    F();
                }
                a();
                if (this.f15413c.size() == 1) {
                    this.f15413c.get(0).f15446i = this.f15416f;
                    return this.f15413c.get(0);
                }
                throw new PatternSyntaxException("missing closing )", this.f15411a);
            }
        }
    }

    private boolean y(d dVar, com.google.re2j.a aVar) throws PatternSyntaxException {
        String h10 = dVar.h();
        int indexOf = h10.indexOf(":]");
        if (indexOf < 0) {
            return false;
        }
        String substring = h10.substring(0, indexOf + 2);
        dVar.k(substring);
        com.google.re2j.b bVar = com.google.re2j.b.f15369u.get(substring);
        if (bVar != null) {
            aVar.e(bVar, (this.f15412b & 1) != 0);
            return true;
        }
        throw new PatternSyntaxException("invalid character class range", substring);
    }

    private boolean z(d dVar, com.google.re2j.a aVar) {
        int g10 = dVar.g();
        if ((this.f15412b & 64) != 0 && dVar.d() && dVar.f() == 92 && dVar.d()) {
            dVar.f();
            com.google.re2j.b bVar = com.google.re2j.b.f15354f.get(dVar.a(g10));
            if (bVar == null) {
                return false;
            }
            aVar.e(bVar, (this.f15412b & 1) != 0);
            return true;
        }
        return false;
    }
}
