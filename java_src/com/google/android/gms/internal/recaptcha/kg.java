package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes2.dex */
public final class kg<F, T> extends AbstractList<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<F> f8821a;

    /* renamed from: b  reason: collision with root package name */
    private final jg<F, T> f8822b;

    public kg(List<F> list, jg<F, T> jgVar) {
        this.f8821a = list;
        this.f8822b = jgVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i9) {
        return this.f8822b.a(this.f8821a.get(i9));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8821a.size();
    }
}
