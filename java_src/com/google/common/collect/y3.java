package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class y3<E> extends q3<E> implements Set<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3, com.google.common.collect.w3
    public abstract Set<E> delegate();

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return delegate().hashCode();
    }

    protected boolean standardEquals(Object obj) {
        return w7.b(this, obj);
    }

    protected int standardHashCode() {
        return w7.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3
    public boolean standardRemoveAll(Collection<?> collection) {
        return w7.o(this, (Collection) com.google.common.base.o.s(collection));
    }
}
