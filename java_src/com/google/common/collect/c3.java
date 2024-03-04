package com.google.common.collect;

import com.google.common.collect.c3;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public final class c3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a<E> extends AbstractCollection<E> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<E> f12951a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.q<? super E> f12952b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Collection<E> collection, com.google.common.base.q<? super E> qVar) {
            this.f12951a = collection;
            this.f12952b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Consumer consumer, Object obj) {
            if (this.f12952b.test(obj)) {
                consumer.accept(obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean m(Predicate predicate, Object obj) {
            return this.f12952b.apply(obj) && predicate.test(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean n(Collection collection, Object obj) {
            return !collection.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e10) {
            com.google.common.base.o.d(this.f12952b.apply(e10));
            return this.f12951a.add(e10);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            for (E e10 : collection) {
                com.google.common.base.o.d(this.f12952b.apply(e10));
            }
            return this.f12951a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            n5.k(this.f12951a, this.f12952b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (c3.c(this.f12951a, obj)) {
                return this.f12952b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return c3.a(this, collection);
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super E> consumer) {
            com.google.common.base.o.s(consumer);
            this.f12951a.forEach(new Consumer() { // from class: com.google.common.collect.y2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    c3.a.this.g(consumer, obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !n5.b(this.f12951a, this.f12952b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return p5.l(this.f12951a.iterator(), this.f12952b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.f12951a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(final Collection<?> collection) {
            Objects.requireNonNull(collection);
            return removeIf(new Predicate() { // from class: com.google.common.collect.b3
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return collection.contains(obj);
                }
            });
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super E> predicate) {
            com.google.common.base.o.s(predicate);
            return this.f12951a.removeIf(new Predicate() { // from class: com.google.common.collect.z2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m10;
                    m10 = c3.a.this.m(predicate, obj);
                    return m10;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(final Collection<?> collection) {
            return removeIf(new Predicate() { // from class: com.google.common.collect.a3
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean n9;
                    n9 = c3.a.n(collection, obj);
                    return n9;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i9 = 0;
            for (E e10 : this.f12951a) {
                if (this.f12952b.apply(e10)) {
                    i9++;
                }
            }
            return i9;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return s2.a(this.f12951a.spliterator(), this.f12952b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return z5.i(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) z5.i(iterator()).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder b(int i9) {
        p2.b(i9, "size");
        return new StringBuilder((int) Math.min(i9 * 8, 1073741824L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Collection<?> collection, Object obj) {
        com.google.common.base.o.s(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Collection<?> collection, Object obj) {
        com.google.common.base.o.s(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(Collection<?> collection) {
        StringBuilder b10 = b(collection.size());
        b10.append('[');
        boolean z10 = true;
        for (Object obj : collection) {
            if (!z10) {
                b10.append(", ");
            }
            z10 = false;
            if (obj == collection) {
                b10.append("(this Collection)");
            } else {
                b10.append(obj);
            }
        }
        b10.append(']');
        return b10.toString();
    }
}
