package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
public final class pi extends AbstractList<String> implements RandomAccess, qg {

    /* renamed from: a  reason: collision with root package name */
    private final qg f8988a;

    public pi(qg qgVar) {
        this.f8988a = qgVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final List<?> a() {
        return this.f8988a.a();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i9) {
        return ((pg) this.f8988a).get(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final void h0(zzpy zzpyVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new oi(this);
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final qg l() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i9) {
        return new ni(this, i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final Object o(int i9) {
        return this.f8988a.o(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8988a.size();
    }
}
