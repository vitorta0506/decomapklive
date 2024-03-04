package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
abstract class ki<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B c(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T e(T t10, T t11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B f();

    abstract T g(B b10);

    abstract void h(B b10, int i9, int i10);

    abstract void i(B b10, int i9, long j10);

    abstract void j(B b10, int i9, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void k(B b10, int i9, zzpy zzpyVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void l(B b10, int i9, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void m(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void n(Object obj, B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(Object obj, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void p(T t10, bj bjVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean q(B b10, sh shVar) throws IOException {
        int c10 = shVar.c();
        int i9 = c10 >>> 3;
        int i10 = c10 & 7;
        if (i10 == 0) {
            l(b10, i9, shVar.g());
            return true;
        } else if (i10 == 1) {
            i(b10, i9, shVar.e());
            return true;
        } else if (i10 == 2) {
            k(b10, i9, shVar.H());
            return true;
        } else if (i10 != 3) {
            if (i10 != 4) {
                if (i10 == 5) {
                    h(b10, i9, shVar.b());
                    return true;
                }
                throw zzrr.zza();
            }
            return false;
        } else {
            Object f10 = f();
            int i11 = 4 | (i9 << 3);
            while (shVar.E() != Integer.MAX_VALUE && q(f10, shVar)) {
            }
            if (i11 == shVar.c()) {
                g(f10);
                j(b10, i9, f10);
                return true;
            }
            throw zzrr.zzb();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean r(sh shVar);
}
