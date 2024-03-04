package com.google.android.gms.internal.recaptcha;

import java.util.ListIterator;
/* loaded from: classes2.dex */
final class ni implements ListIterator<String> {

    /* renamed from: a  reason: collision with root package name */
    final ListIterator<String> f8929a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f8930b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ pi f8931c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ni(pi piVar, int i9) {
        qg qgVar;
        this.f8931c = piVar;
        this.f8930b = i9;
        qgVar = piVar.f8988a;
        this.f8929a = qgVar.listIterator(i9);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8929a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8929a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f8929a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8929a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f8929a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8929a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
