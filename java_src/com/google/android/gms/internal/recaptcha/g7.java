package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
abstract class g7<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f8703a;

    /* renamed from: b  reason: collision with root package name */
    private int f8704b = 2;

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f8704b = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        z7.i(this.f8704b != 4);
        int i9 = this.f8704b;
        int i10 = i9 - 1;
        if (i9 != 0) {
            if (i10 != 0) {
                if (i10 != 2) {
                    this.f8704b = 4;
                    this.f8703a = a();
                    if (this.f8704b != 3) {
                        this.f8704b = 1;
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        throw null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f8704b = 2;
            T t10 = this.f8703a;
            this.f8703a = null;
            return t10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
