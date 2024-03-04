package com.google.common.collect;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v6 extends y6<Comparable<?>> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final v6 f13454a = new v6();
    private static final long serialVersionUID = 0;

    private v6() {
    }

    private Object readResolve() {
        return f13454a;
    }

    @Override // com.google.common.collect.y6
    public <S extends Comparable<?>> y6<S> h() {
        return r7.f13384a;
    }

    @Override // com.google.common.collect.y6, java.util.Comparator
    /* renamed from: i */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        com.google.common.base.o.s(comparable);
        com.google.common.base.o.s(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
