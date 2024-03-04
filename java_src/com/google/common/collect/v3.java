package com.google.common.collect;

import com.google.common.collect.q6;
import java.util.Collection;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public abstract class v3<E> extends q3<E> implements q6<E> {
    @Override // com.google.common.collect.q6
    public int add(E e10, int i9) {
        return w0().add(e10, i9);
    }

    @Override // com.google.common.collect.q6
    public int count(Object obj) {
        return w0().count(obj);
    }

    public abstract Set<q6.a<E>> entrySet();

    @Override // java.util.Collection, com.google.common.collect.q6
    public boolean equals(Object obj) {
        return obj == this || w0().equals(obj);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.q6
    public /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        p6.b(this, objIntConsumer);
    }

    @Override // java.util.Collection, com.google.common.collect.q6
    public int hashCode() {
        return w0().hashCode();
    }

    @Override // com.google.common.collect.q6
    public int remove(Object obj, int i9) {
        return w0().remove(obj, i9);
    }

    @Override // com.google.common.collect.q6
    public int setCount(E e10, int i9) {
        return w0().setCount(e10, i9);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3
    public boolean standardAddAll(Collection<? extends E> collection) {
        return t6.c(this, collection);
    }

    @Override // com.google.common.collect.q3
    protected void standardClear() {
        p5.e(entrySet().iterator());
    }

    @Override // com.google.common.collect.q3
    protected boolean standardContains(Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.q3
    protected boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // com.google.common.collect.q3
    protected boolean standardRemoveAll(Collection<?> collection) {
        return t6.k(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3
    public boolean standardRetainAll(Collection<?> collection) {
        return t6.l(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3
    public String standardToString() {
        return entrySet().toString();
    }

    protected abstract q6<E> w0();

    @Override // com.google.common.collect.q6
    public boolean setCount(E e10, int i9, int i10) {
        return w0().setCount(e10, i9, i10);
    }
}
