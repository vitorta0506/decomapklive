package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* loaded from: classes2.dex */
final class eb implements ListIterator {

    /* renamed from: a  reason: collision with root package name */
    final ListIterator f8055a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f8056b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ gb f8057c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(gb gbVar, int i9) {
        h9 h9Var;
        this.f8057c = gbVar;
        this.f8056b = i9;
        h9Var = gbVar.f8099a;
        this.f8055a = h9Var.listIterator(i9);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8055a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8055a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f8055a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8055a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f8055a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8055a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }
}
