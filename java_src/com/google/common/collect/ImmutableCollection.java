package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    static final int SPLITERATOR_CHARACTERISTICS = 1296;

    /* loaded from: classes2.dex */
    public static abstract class a<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static int e(int i9, int i10) {
            if (i10 >= 0) {
                int i11 = i9 + (i9 >> 1) + 1;
                if (i11 < i10) {
                    i11 = Integer.highestOneBit(i10 - 1) << 1;
                }
                if (i11 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i11;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        public abstract a<E> a(E e10);

        public a<E> b(E... eArr) {
            for (E e10 : eArr) {
                a(e10);
            }
            return this;
        }

        public a<E> c(Iterable<? extends E> iterable) {
            for (E e10 : iterable) {
                a(e10);
            }
            return this;
        }

        public a<E> d(Iterator<? extends E> it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        int size = size();
        if (size != 0) {
            if (size != 1) {
                return new g7(this, toArray());
            }
            return ImmutableList.of((Object) iterator().next());
        }
        return ImmutableList.of();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int copyIntoArray(Object[] objArr, int i9) {
        e9<E> it = iterator();
        while (it.hasNext()) {
            objArr[i9] = it.next();
            i9++;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] internalArray() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract e9<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    @Deprecated
    public final boolean removeIf(Predicate<? super E> predicate) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this, (int) SPLITERATOR_CHARACTERISTICS);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    Object writeReplace() {
        return new ImmutableList.d(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        com.google.common.base.o.s(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] internalArray = internalArray();
            if (internalArray != null) {
                return (T[]) a7.a(internalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) x6.e(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }
}
