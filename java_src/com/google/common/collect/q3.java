package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class q3<E> extends w3 implements Collection<E> {
    public boolean add(E e10) {
        return delegate().add(e10);
    }

    public boolean addAll(Collection<? extends E> collection) {
        return delegate().addAll(collection);
    }

    public void clear() {
        delegate().clear();
    }

    public boolean contains(Object obj) {
        return delegate().contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return delegate().containsAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.w3
    public abstract Collection<E> delegate();

    @Override // java.util.Collection
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Iterator<E> iterator() {
        return delegate().iterator();
    }

    public boolean remove(Object obj) {
        return delegate().remove(obj);
    }

    public boolean removeAll(Collection<?> collection) {
        return delegate().removeAll(collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return delegate().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return delegate().size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardAddAll(Collection<? extends E> collection) {
        return p5.a(this, collection.iterator());
    }

    protected void standardClear() {
        p5.e(iterator());
    }

    protected boolean standardContains(Object obj) {
        return p5.g(iterator(), obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardContainsAll(Collection<?> collection) {
        return c3.a(this, collection);
    }

    protected boolean standardIsEmpty() {
        return !iterator().hasNext();
    }

    protected boolean standardRemove(Object obj) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (com.google.common.base.l.a(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    protected boolean standardRemoveAll(Collection<?> collection) {
        return p5.w(iterator(), collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardRetainAll(Collection<?> collection) {
        return p5.y(iterator(), collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object[] standardToArray() {
        return toArray(new Object[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String standardToString() {
        return c3.e(this);
    }

    public Object[] toArray() {
        return delegate().toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return (T[]) delegate().toArray(tArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T[] standardToArray(T[] tArr) {
        return (T[]) x6.f(this, tArr);
    }
}
