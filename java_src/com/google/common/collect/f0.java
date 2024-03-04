package com.google.common.collect;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f0<F, T> extends y6<F> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final com.google.common.base.h<F, ? extends T> f13049a;

    /* renamed from: b  reason: collision with root package name */
    final y6<T> f13050b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(com.google.common.base.h<F, ? extends T> hVar, y6<T> y6Var) {
        this.f13049a = (com.google.common.base.h) com.google.common.base.o.s(hVar);
        this.f13050b = (y6) com.google.common.base.o.s(y6Var);
    }

    @Override // com.google.common.collect.y6, java.util.Comparator
    public int compare(F f10, F f11) {
        return this.f13050b.compare(this.f13049a.apply(f10), this.f13049a.apply(f11));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            return this.f13049a.equals(f0Var.f13049a) && this.f13050b.equals(f0Var.f13050b);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f13049a, this.f13050b);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f13050b);
        String valueOf2 = String.valueOf(this.f13049a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(".onResultOf(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
