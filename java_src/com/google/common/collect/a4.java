package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
/* loaded from: classes2.dex */
public abstract class a4<E> extends y3<E> implements SortedSet<E> {
    @Override // java.util.SortedSet
    public Comparator<? super E> comparator() {
        return w0().comparator();
    }

    @Override // java.util.SortedSet
    public E first() {
        return w0().first();
    }

    @Override // java.util.SortedSet
    public SortedSet<E> headSet(E e10) {
        return w0().headSet(e10);
    }

    @Override // java.util.SortedSet
    public E last() {
        return w0().last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q3
    protected boolean standardContains(Object obj) {
        try {
            return z3.w0(comparator(), tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q3
    protected boolean standardRemove(Object obj) {
        try {
            Iterator<E> it = tailSet(obj).iterator();
            if (it.hasNext()) {
                if (z3.w0(comparator(), it.next(), obj) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    @Override // java.util.SortedSet
    public SortedSet<E> subSet(E e10, E e11) {
        return w0().subSet(e10, e11);
    }

    @Override // java.util.SortedSet
    public SortedSet<E> tailSet(E e10) {
        return w0().tailSet(e10);
    }

    protected abstract SortedSet<E> w0();
}
