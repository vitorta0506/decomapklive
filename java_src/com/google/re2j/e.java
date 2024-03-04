package com.google.re2j;

import kotlin.text.Typography;
/* loaded from: classes3.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    int f15378a;

    /* renamed from: b  reason: collision with root package name */
    int f15379b;

    /* renamed from: c  reason: collision with root package name */
    int f15380c;

    /* renamed from: d  reason: collision with root package name */
    int[] f15381d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(int i9) {
        this.f15378a = i9;
    }

    private static String a(int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Typography.quote);
        for (int i9 : iArr) {
            p.b(sb2, i9);
        }
        sb2.append(Typography.quote);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i9) {
        return 8 <= i9 && i9 <= 11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0039, code lost:
        r0 = r1.length / 2;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003d, code lost:
        if (r1 >= r0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003f, code lost:
        r4 = ((r0 - r1) / 2) + r1;
        r5 = r8.f15381d;
        r6 = r4 * 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004a, code lost:
        if (r5[r6] > r9) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
        if (r9 > r5[r6 + 1]) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0052, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0053, code lost:
        r1 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0056, code lost:
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0058, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(int r9) {
        /*
            r8 = this;
            int[] r0 = r8.f15381d
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r1 != r3) goto L20
            r0 = r0[r2]
            if (r9 != r0) goto Lc
            return r3
        Lc:
            int r1 = r8.f15380c
            r1 = r1 & r3
            if (r1 == 0) goto L1f
            int r1 = com.google.re2j.n.d(r0)
        L15:
            if (r1 == r0) goto L1f
            if (r9 != r1) goto L1a
            return r3
        L1a:
            int r1 = com.google.re2j.n.d(r1)
            goto L15
        L1f:
            return r2
        L20:
            r0 = 0
        L21:
            int[] r1 = r8.f15381d
            int r4 = r1.length
            if (r0 >= r4) goto L39
            r4 = 8
            if (r0 > r4) goto L39
            r4 = r1[r0]
            if (r9 >= r4) goto L2f
            return r2
        L2f:
            int r4 = r0 + 1
            r1 = r1[r4]
            if (r9 > r1) goto L36
            return r3
        L36:
            int r0 = r0 + 2
            goto L21
        L39:
            int r0 = r1.length
            int r0 = r0 / 2
            r1 = 0
        L3d:
            if (r1 >= r0) goto L58
            int r4 = r0 - r1
            int r4 = r4 / 2
            int r4 = r4 + r1
            int[] r5 = r8.f15381d
            int r6 = r4 * 2
            r7 = r5[r6]
            if (r7 > r9) goto L56
            int r6 = r6 + 1
            r1 = r5[r6]
            if (r9 > r1) goto L53
            return r3
        L53:
            int r1 = r4 + 1
            goto L3d
        L56:
            r0 = r4
            goto L3d
        L58:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.e.c(int):boolean");
    }

    public String toString() {
        switch (this.f15378a) {
            case 1:
                return "alt -> " + this.f15379b + ", " + this.f15380c;
            case 2:
                return "altmatch -> " + this.f15379b + ", " + this.f15380c;
            case 3:
                return "cap " + this.f15380c + " -> " + this.f15379b;
            case 4:
                return "empty " + this.f15380c + " -> " + this.f15379b;
            case 5:
                return "fail";
            case 6:
                return "match";
            case 7:
                return "nop -> " + this.f15379b;
            case 8:
                if (this.f15381d == null) {
                    return "rune <null>";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("rune ");
                sb2.append(a(this.f15381d));
                sb2.append((this.f15380c & 1) != 0 ? "/i" : "");
                sb2.append(" -> ");
                sb2.append(this.f15379b);
                return sb2.toString();
            case 9:
                return "rune1 " + a(this.f15381d) + " -> " + this.f15379b;
            case 10:
                return "any -> " + this.f15379b;
            case 11:
                return "anynotnl -> " + this.f15379b;
            default:
                throw new IllegalStateException("unhandled case in Inst.toString");
        }
    }
}
