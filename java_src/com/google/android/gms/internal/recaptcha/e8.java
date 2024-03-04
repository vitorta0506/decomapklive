package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class e8 extends g7<String> {

    /* renamed from: c  reason: collision with root package name */
    final CharSequence f8633c;

    /* renamed from: d  reason: collision with root package name */
    final n7 f8634d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f8635e;

    /* renamed from: f  reason: collision with root package name */
    int f8636f = 0;

    /* renamed from: g  reason: collision with root package name */
    int f8637g;

    /* JADX INFO: Access modifiers changed from: protected */
    public e8(f8 f8Var, CharSequence charSequence) {
        n7 n7Var;
        boolean z10;
        n7Var = f8Var.f8669a;
        this.f8634d = n7Var;
        z10 = f8Var.f8670b;
        this.f8635e = z10;
        this.f8637g = Integer.MAX_VALUE;
        this.f8633c = charSequence;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        r3 = r5.f8637g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
        if (r3 != 1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
        r1 = r5.f8633c.length();
        r5.f8636f = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        if (r1 <= r0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        r5.f8633c.charAt(r1 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        r5.f8637g = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
        return r5.f8633c.subSequence(r0, r1).toString();
     */
    @Override // com.google.android.gms.internal.recaptcha.g7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* bridge */ /* synthetic */ java.lang.String a() {
        /*
            r5 = this;
            int r0 = r5.f8636f
        L2:
            int r1 = r5.f8636f
            r2 = -1
            if (r1 == r2) goto L6c
            int r1 = r5.d(r1)
            if (r1 != r2) goto L17
            java.lang.CharSequence r1 = r5.f8633c
            int r1 = r1.length()
            r5.f8636f = r2
            r3 = -1
            goto L1d
        L17:
            int r3 = r5.c(r1)
            r5.f8636f = r3
        L1d:
            if (r3 != r0) goto L2e
            int r3 = r3 + 1
            r5.f8636f = r3
            java.lang.CharSequence r1 = r5.f8633c
            int r1 = r1.length()
            if (r3 <= r1) goto L2
            r5.f8636f = r2
            goto L2
        L2e:
            if (r0 >= r1) goto L35
            java.lang.CharSequence r3 = r5.f8633c
            r3.charAt(r0)
        L35:
            if (r0 >= r1) goto L3e
            java.lang.CharSequence r3 = r5.f8633c
            int r4 = r1 + (-1)
            r3.charAt(r4)
        L3e:
            boolean r3 = r5.f8635e
            if (r3 == 0) goto L47
            if (r0 != r1) goto L47
            int r0 = r5.f8636f
            goto L2
        L47:
            int r3 = r5.f8637g
            r4 = 1
            if (r3 != r4) goto L5e
            java.lang.CharSequence r1 = r5.f8633c
            int r1 = r1.length()
            r5.f8636f = r2
            if (r1 <= r0) goto L61
            java.lang.CharSequence r2 = r5.f8633c
            int r3 = r1 + (-1)
            r2.charAt(r3)
            goto L61
        L5e:
            int r3 = r3 + r2
            r5.f8637g = r3
        L61:
            java.lang.CharSequence r2 = r5.f8633c
            java.lang.CharSequence r0 = r2.subSequence(r0, r1)
            java.lang.String r0 = r0.toString()
            goto L70
        L6c:
            r5.b()
            r0 = 0
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.e8.a():java.lang.Object");
    }

    abstract int c(int i9);

    abstract int d(int i9);
}
