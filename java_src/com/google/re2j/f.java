package com.google.re2j;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private k f15382a;

    /* renamed from: b  reason: collision with root package name */
    private final j f15383b;

    /* renamed from: c  reason: collision with root package name */
    private final a f15384c;

    /* renamed from: d  reason: collision with root package name */
    private final a f15385d;

    /* renamed from: e  reason: collision with root package name */
    private b[] f15386e = new b[10];

    /* renamed from: f  reason: collision with root package name */
    private int f15387f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f15388g;

    /* renamed from: h  reason: collision with root package name */
    private int[] f15389h;

    /* renamed from: i  reason: collision with root package name */
    private int f15390i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final b[] f15391a;

        /* renamed from: b  reason: collision with root package name */
        final int[] f15392b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f15393c;

        /* renamed from: d  reason: collision with root package name */
        int f15394d;

        a(int i9) {
            this.f15393c = new int[i9];
            this.f15392b = new int[i9];
            this.f15391a = new b[i9];
        }

        int a(int i9) {
            int i10 = this.f15394d;
            this.f15394d = i10 + 1;
            this.f15393c[i9] = i10;
            this.f15391a[i10] = null;
            this.f15392b[i10] = i9;
            return i10;
        }

        void b() {
            this.f15394d = 0;
        }

        boolean c(int i9) {
            int i10 = this.f15393c[i9];
            return i10 < this.f15394d && this.f15392b[i10] == i9;
        }

        boolean d() {
            return this.f15394d == 0;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('{');
            for (int i9 = 0; i9 < this.f15394d; i9++) {
                if (i9 != 0) {
                    sb2.append(", ");
                }
                sb2.append(this.f15392b[i9]);
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int[] f15395a;

        /* renamed from: b  reason: collision with root package name */
        e f15396b;

        b(int i9) {
            this.f15395a = new int[i9];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(k kVar) {
        j jVar = kVar.f15427b;
        this.f15383b = jVar;
        this.f15382a = kVar;
        this.f15384c = new a(jVar.e());
        this.f15385d = new a(jVar.e());
        int i9 = jVar.f15425d;
        this.f15389h = new int[i9 < 2 ? 2 : i9];
    }

    private b a(a aVar, int i9, int i10, int[] iArr, int i11, b bVar) {
        int[] iArr2;
        b bVar2 = bVar;
        if (i9 == 0 || aVar.c(i9)) {
            return bVar2;
        }
        int a10 = aVar.a(i9);
        e eVar = this.f15383b.f15422a[i9];
        switch (eVar.f15378a) {
            case 1:
            case 2:
                return a(aVar, eVar.f15380c, i10, iArr, i11, a(aVar, eVar.f15379b, i10, iArr, i11, bVar));
            case 3:
                int i12 = eVar.f15380c;
                if (i12 < this.f15390i) {
                    int i13 = iArr[i12];
                    iArr[i12] = i10;
                    a(aVar, eVar.f15379b, i10, iArr, i11, null);
                    iArr[eVar.f15380c] = i13;
                    break;
                } else {
                    return a(aVar, eVar.f15379b, i10, iArr, i11, bVar);
                }
            case 4:
                if ((eVar.f15380c & (~i11)) == 0) {
                    return a(aVar, eVar.f15379b, i10, iArr, i11, bVar);
                }
                break;
            case 5:
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
                if (bVar2 == null) {
                    bVar2 = b(eVar);
                } else {
                    bVar2.f15396b = eVar;
                }
                int i14 = this.f15390i;
                if (i14 > 0 && (iArr2 = bVar2.f15395a) != iArr) {
                    System.arraycopy(iArr, 0, iArr2, 0, i14);
                }
                aVar.f15391a[a10] = bVar2;
                return null;
            case 7:
                return a(aVar, eVar.f15379b, i10, iArr, i11, bVar);
            default:
                throw new IllegalStateException("unhandled");
        }
        return bVar2;
    }

    private b b(e eVar) {
        b bVar;
        int i9 = this.f15387f;
        if (i9 > 0) {
            int i10 = i9 - 1;
            this.f15387f = i10;
            bVar = this.f15386e[i10];
        } else {
            bVar = new b(this.f15389h.length);
        }
        bVar.f15396b = eVar;
        return bVar;
    }

    private void c(a aVar) {
        d(aVar, 0);
    }

    private void d(a aVar, int i9) {
        int i10 = this.f15387f + (aVar.f15394d - i9);
        b[] bVarArr = this.f15386e;
        if (bVarArr.length < i10) {
            this.f15386e = (b[]) Arrays.copyOf(bVarArr, Math.max(bVarArr.length * 2, i10));
        }
        while (i9 < aVar.f15394d) {
            b bVar = aVar.f15391a[i9];
            if (bVar != null) {
                b[] bVarArr2 = this.f15386e;
                int i11 = this.f15387f;
                bVarArr2[i11] = bVar;
                this.f15387f = i11 + 1;
            }
            i9++;
        }
        aVar.b();
    }

    private void e(b bVar) {
        b[] bVarArr = this.f15386e;
        if (bVarArr.length <= this.f15387f) {
            this.f15386e = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
        }
        b[] bVarArr2 = this.f15386e;
        int i9 = this.f15387f;
        bVarArr2[i9] = bVar;
        this.f15387f = i9 + 1;
    }

    private void g(int i9) {
        for (int i10 = 0; i10 < this.f15387f; i10++) {
            this.f15386e[i10].f15395a = new int[i9];
        }
        this.f15389h = new int[i9];
    }

    private void i(int i9) {
        for (int i10 = 0; i10 < this.f15387f; i10++) {
            Arrays.fill(this.f15386e[i10].f15395a, 0, i9, 0);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        if (r20 != 10) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
        if (r20 == r0.f15381d[0]) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j(com.google.re2j.f.a r16, com.google.re2j.f.a r17, int r18, int r19, int r20, int r21, int r22, boolean r23) {
        /*
            r15 = this;
            r7 = r15
            r8 = r16
            r9 = r18
            r10 = r20
            com.google.re2j.k r0 = r7.f15382a
            boolean r11 = r0.f15430e
            r12 = 0
            r13 = 0
        Ld:
            int r0 = r8.f15394d
            if (r13 >= r0) goto La2
            com.google.re2j.f$b[] r0 = r8.f15391a
            r6 = r0[r13]
            if (r6 != 0) goto L1b
        L17:
            r14 = r22
            goto L9e
        L1b:
            if (r11 == 0) goto L33
            boolean r0 = r7.f15388g
            if (r0 == 0) goto L33
            int r0 = r7.f15390i
            if (r0 <= 0) goto L33
            int[] r0 = r7.f15389h
            r0 = r0[r12]
            int[] r1 = r6.f15395a
            r1 = r1[r12]
            if (r0 >= r1) goto L33
            r15.e(r6)
            goto L17
        L33:
            com.google.re2j.e r0 = r6.f15396b
            int r1 = r0.f15378a
            r2 = 1
            switch(r1) {
                case 6: goto L58;
                case 7: goto L3b;
                case 8: goto L51;
                case 9: goto L4a;
                case 10: goto L55;
                case 11: goto L43;
                default: goto L3b;
            }
        L3b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "bad inst"
            r0.<init>(r1)
            throw r0
        L43:
            r1 = 10
            if (r10 == r1) goto L48
            goto L55
        L48:
            r2 = 0
            goto L55
        L4a:
            int[] r1 = r0.f15381d
            r1 = r1[r12]
            if (r10 != r1) goto L48
            goto L55
        L51:
            boolean r2 = r0.c(r10)
        L55:
            r14 = r22
            goto L83
        L58:
            r1 = 2
            r14 = r22
            if (r14 != r1) goto L60
            if (r23 != 0) goto L60
            goto L82
        L60:
            int r1 = r7.f15390i
            if (r1 <= 0) goto L79
            if (r11 == 0) goto L70
            boolean r3 = r7.f15388g
            if (r3 == 0) goto L70
            int[] r3 = r7.f15389h
            r3 = r3[r2]
            if (r3 >= r9) goto L79
        L70:
            int[] r3 = r6.f15395a
            r3[r2] = r9
            int[] r4 = r7.f15389h
            java.lang.System.arraycopy(r3, r12, r4, r12, r1)
        L79:
            if (r11 != 0) goto L80
            int r1 = r13 + 1
            r15.d(r8, r1)
        L80:
            r7.f15388g = r2
        L82:
            r2 = 0
        L83:
            if (r2 == 0) goto L94
            int r2 = r0.f15379b
            int[] r4 = r6.f15395a
            r0 = r15
            r1 = r17
            r3 = r19
            r5 = r21
            com.google.re2j.f$b r6 = r0.a(r1, r2, r3, r4, r5, r6)
        L94:
            if (r6 == 0) goto L9e
            r15.e(r6)
            com.google.re2j.f$b[] r0 = r8.f15391a
            r1 = 0
            r0[r13] = r1
        L9e:
            int r13 = r13 + 1
            goto Ld
        La2:
            r16.b()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.f.j(com.google.re2j.f$a, com.google.re2j.f$a, int, int, int, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i9) {
        this.f15390i = i9;
        if (i9 > this.f15389h.length) {
            g(i9);
        } else {
            i(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(com.google.re2j.g r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.f.h(com.google.re2j.g, int, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] k() {
        int i9 = this.f15390i;
        if (i9 == 0) {
            return p.f15549a;
        }
        return Arrays.copyOf(this.f15389h, i9);
    }
}
