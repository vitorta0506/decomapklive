package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d3<T> extends y6<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final Comparator<T> f13015a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(Comparator<T> comparator) {
        this.f13015a = (Comparator) com.google.common.base.o.s(comparator);
    }

    @Override // com.google.common.collect.y6, java.util.Comparator
    public int compare(T t10, T t11) {
        return this.f13015a.compare(t10, t11);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d3) {
            return this.f13015a.equals(((d3) obj).f13015a);
        }
        return false;
    }

    public int hashCode() {
        return this.f13015a.hashCode();
    }

    public String toString() {
        return this.f13015a.toString();
    }
}
