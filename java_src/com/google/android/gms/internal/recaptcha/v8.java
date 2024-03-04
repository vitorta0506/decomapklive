package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* loaded from: classes2.dex */
public final class v8<E> extends o8<E> {
    public v8() {
        super(4);
    }

    public final v8<E> d(E e10) {
        Objects.requireNonNull(e10);
        super.b(e10);
        return this;
    }

    public final zzkn<E> e() {
        zzkn<E> zzn;
        int i9 = this.f8940b;
        if (i9 != 0) {
            if (i9 != 1) {
                zzn = zzkn.zzn(i9, this.f8939a);
                this.f8940b = zzn.size();
                this.f8941c = true;
                return zzn;
            }
            Object obj = this.f8939a[0];
            obj.getClass();
            return new h9(obj);
        }
        return f9.f8673g;
    }
}
