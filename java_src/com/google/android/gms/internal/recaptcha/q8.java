package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class q8<E> extends o8<E> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q8(int i9) {
        super(4);
    }

    public final q8<E> d(E e10) {
        super.b(e10);
        return this;
    }

    public final q8<E> e(Iterator<? extends E> it) {
        while (it.hasNext()) {
            super.b(it.next());
        }
        return this;
    }

    public final zzkj<E> f() {
        this.f8941c = true;
        return zzkj.zzl(this.f8939a, this.f8940b);
    }
}
