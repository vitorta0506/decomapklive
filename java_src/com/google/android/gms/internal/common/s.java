package com.google.android.gms.internal.common;

import java.util.NoSuchElementException;
import org.jspecify.nullness.NullMarked;
@NullMarked
/* loaded from: classes2.dex */
abstract class s extends j {

    /* renamed from: a  reason: collision with root package name */
    private final int f7929a;

    /* renamed from: b  reason: collision with root package name */
    private int f7930b;

    /* JADX INFO: Access modifiers changed from: protected */
    public s(int i9, int i10) {
        q.b(i10, i9, "index");
        this.f7929a = i9;
        this.f7930b = i10;
    }

    protected abstract Object a(int i9);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f7930b < this.f7929a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f7930b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i9 = this.f7930b;
            this.f7930b = i9 + 1;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f7930b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i9 = this.f7930b - 1;
            this.f7930b = i9;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f7930b - 1;
    }
}
