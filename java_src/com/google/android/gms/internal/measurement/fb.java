package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes2.dex */
final class fb implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f8082a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gb f8083b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(gb gbVar) {
        h9 h9Var;
        this.f8083b = gbVar;
        h9Var = gbVar.f8099a;
        this.f8082a = h9Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8082a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f8082a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
