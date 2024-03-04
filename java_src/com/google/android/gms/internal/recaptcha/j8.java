package com.google.android.gms.internal.recaptcha;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
abstract class j8<E> extends k9<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f8772a;

    /* renamed from: b  reason: collision with root package name */
    private int f8773b;

    /* JADX INFO: Access modifiers changed from: protected */
    public j8(int i9, int i10) {
        z7.b(i10, i9, "index");
        this.f8772a = i9;
        this.f8773b = i10;
    }

    protected abstract E a(int i9);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f8773b < this.f8772a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8773b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i9 = this.f8773b;
            this.f8773b = i9 + 1;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8773b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i9 = this.f8773b - 1;
            this.f8773b = i9;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8773b - 1;
    }
}
