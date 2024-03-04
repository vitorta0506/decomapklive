package com.google.android.gms.internal.recaptcha;

import java.lang.Throwable;
/* loaded from: classes2.dex */
abstract class bb<V, X extends Throwable, F, T> extends sc<V> implements Runnable {

    /* renamed from: h  reason: collision with root package name */
    nd<? extends V> f8522h;

    /* renamed from: i  reason: collision with root package name */
    Class<X> f8523i;

    /* renamed from: j  reason: collision with root package name */
    F f8524j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(nd<? extends V> ndVar, Class<X> cls, F f10) {
        this.f8522h = ndVar;
        this.f8523i = cls;
        this.f8524j = f10;
    }

    abstract T S(F f10, X x10) throws Exception;

    abstract void T(T t10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        String str;
        nd<? extends V> ndVar = this.f8522h;
        Class<X> cls = this.f8523i;
        F f10 = this.f8524j;
        String k10 = super.k();
        if (ndVar != null) {
            String valueOf = String.valueOf(ndVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("inputFuture=[");
            sb2.append(valueOf);
            sb2.append("], ");
            str = sb2.toString();
        } else {
            str = "";
        }
        if (cls == null || f10 == null) {
            if (k10 != null) {
                String valueOf2 = String.valueOf(str);
                return k10.length() != 0 ? valueOf2.concat(k10) : new String(valueOf2);
            }
            return null;
        }
        String valueOf3 = String.valueOf(cls);
        String valueOf4 = String.valueOf(f10);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 29 + valueOf3.length() + valueOf4.length());
        sb3.append(str);
        sb3.append("exceptionType=[");
        sb3.append(valueOf3);
        sb3.append("], fallback=[");
        sb3.append(valueOf4);
        sb3.append("]");
        return sb3.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        E(this.f8522h);
        this.f8522h = null;
        this.f8523i = null;
        this.f8524j = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            com.google.android.gms.internal.recaptcha.nd<? extends V> r0 = r10.f8522h
            java.lang.Class<X extends java.lang.Throwable> r1 = r10.f8523i
            F r2 = r10.f8524j
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = 1
            goto Ld
        Lc:
            r5 = 0
        Ld:
            if (r1 != 0) goto L11
            r6 = 1
            goto L12
        L11:
            r6 = 0
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = 0
        L17:
            r3 = r3 | r5
            if (r3 != 0) goto Lad
            boolean r3 = r10.isCancelled()
            if (r3 == 0) goto L22
            goto Lad
        L22:
            r3 = 0
            r10.f8522h = r3
            boolean r4 = r0 instanceof com.google.android.gms.internal.recaptcha.de     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            if (r4 == 0) goto L31
            r4 = r0
            com.google.android.gms.internal.recaptcha.de r4 = (com.google.android.gms.internal.recaptcha.de) r4     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            java.lang.Throwable r4 = r4.b()     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L32
        L31:
            r4 = r3
        L32:
            if (r4 != 0) goto L3a
            java.lang.Object r5 = com.google.android.gms.internal.recaptcha.dd.l(r0)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L83
        L39:
            r4 = move-exception
        L3a:
            r5 = r3
            goto L83
        L3c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L81
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r7 = r6.length()
            int r8 = r4.length()
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            int r7 = r7 + 35
            int r7 = r7 + r8
            r9.<init>(r7)
            java.lang.String r7 = "Future type "
            r9.append(r7)
            r9.append(r6)
            java.lang.String r6 = " threw "
            r9.append(r6)
            r9.append(r4)
            java.lang.String r4 = " without a cause"
            r9.append(r4)
            java.lang.String r4 = r9.toString()
            r5.<init>(r4)
        L81:
            r4 = r5
            goto L3a
        L83:
            if (r4 != 0) goto L89
            r10.H(r5)
            return
        L89:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto Laa
            java.lang.Object r0 = r10.S(r2, r4)     // Catch: java.lang.Throwable -> L9b
            r10.f8523i = r3
            r10.f8524j = r3
            r10.T(r0)
            return
        L9b:
            r0 = move-exception
            r10.J(r0)     // Catch: java.lang.Throwable -> La4
            r10.f8523i = r3
            r10.f8524j = r3
            return
        La4:
            r0 = move-exception
            r10.f8523i = r3
            r10.f8524j = r3
            throw r0
        Laa:
            r10.n(r0)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.bb.run():void");
    }
}
