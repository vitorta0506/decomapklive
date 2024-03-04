package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes2.dex */
final class r7 extends y6<Comparable<?>> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final r7 f13384a = new r7();
    private static final long serialVersionUID = 0;

    private r7() {
    }

    private Object readResolve() {
        return f13384a;
    }

    @Override // com.google.common.collect.y6
    public <S extends Comparable<?>> y6<S> h() {
        return y6.e();
    }

    @Override // com.google.common.collect.y6, java.util.Comparator
    /* renamed from: i */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        com.google.common.base.o.s(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.y6
    /* renamed from: j */
    public <E extends Comparable<?>> E c(E e10, E e11) {
        return (E) v6.f13454a.d(e10, e11);
    }

    @Override // com.google.common.collect.y6
    /* renamed from: k */
    public <E extends Comparable<?>> E d(E e10, E e11) {
        return (E) v6.f13454a.c(e10, e11);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
