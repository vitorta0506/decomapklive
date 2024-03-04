package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
public final class gb extends AbstractList implements RandomAccess, h9 {

    /* renamed from: a  reason: collision with root package name */
    private final h9 f8099a;

    public gb(h9 h9Var) {
        this.f8099a = h9Var;
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final void U0(zzjd zzjdVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final List a() {
        return this.f8099a.a();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        return ((g9) this.f8099a).get(i9);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new fb(this);
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final h9 l() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i9) {
        return new eb(this, i9);
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final Object o(int i9) {
        return this.f8099a.o(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8099a.size();
    }
}
