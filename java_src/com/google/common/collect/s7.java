package com.google.common.collect;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s7<T> extends y6<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final y6<? super T> f13413a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s7(y6<? super T> y6Var) {
        this.f13413a = (y6) com.google.common.base.o.s(y6Var);
    }

    @Override // com.google.common.collect.y6
    public <E extends T> E c(E e10, E e11) {
        return (E) this.f13413a.d(e10, e11);
    }

    @Override // com.google.common.collect.y6, java.util.Comparator
    public int compare(T t10, T t11) {
        return this.f13413a.compare(t11, t10);
    }

    @Override // com.google.common.collect.y6
    public <E extends T> E d(E e10, E e11) {
        return (E) this.f13413a.c(e10, e11);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s7) {
            return this.f13413a.equals(((s7) obj).f13413a);
        }
        return false;
    }

    @Override // com.google.common.collect.y6
    public <S extends T> y6<S> h() {
        return (y6<? super T>) this.f13413a;
    }

    public int hashCode() {
        return -this.f13413a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f13413a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
        sb2.append(valueOf);
        sb2.append(".reverse()");
        return sb2.toString();
    }
}
