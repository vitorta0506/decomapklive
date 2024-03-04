package com.google.common.collect;

import com.google.common.collect.z5;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public final class z5 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final List<F> f13502a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.h<? super F, ? extends T> f13503b;

        /* renamed from: com.google.common.collect.z5$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0122a extends c9<F, T> {
            C0122a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.b9
            public T a(F f10) {
                return a.this.f13503b.apply(f10);
            }
        }

        a(List<F> list, com.google.common.base.h<? super F, ? extends T> hVar) {
            this.f13502a = (List) com.google.common.base.o.s(list);
            this.f13503b = (com.google.common.base.h) com.google.common.base.o.s(hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean d(Predicate predicate, Object obj) {
            return predicate.test(this.f13503b.apply(obj));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f13502a.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i9) {
            return this.f13503b.apply((F) this.f13502a.get(i9));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f13502a.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i9) {
            return new C0122a(this.f13502a.listIterator(i9));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i9) {
            return this.f13503b.apply((F) this.f13502a.remove(i9));
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super T> predicate) {
            com.google.common.base.o.s(predicate);
            return this.f13502a.removeIf(new Predicate() { // from class: com.google.common.collect.y5
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean d10;
                    d10 = z5.a.this.d(predicate, obj);
                    return d10;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13502a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final List<F> f13505a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.h<? super F, ? extends T> f13506b;

        /* loaded from: classes2.dex */
        class a extends c9<F, T> {
            a(ListIterator listIterator) {
                super(listIterator);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.b9
            public T a(F f10) {
                return b.this.f13506b.apply(f10);
            }
        }

        b(List<F> list, com.google.common.base.h<? super F, ? extends T> hVar) {
            this.f13505a = (List) com.google.common.base.o.s(list);
            this.f13506b = (com.google.common.base.h) com.google.common.base.o.s(hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean d(Predicate predicate, Object obj) {
            return predicate.test(this.f13506b.apply(obj));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f13505a.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i9) {
            return new a(this.f13505a.listIterator(i9));
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super T> predicate) {
            com.google.common.base.o.s(predicate);
            return this.f13505a.removeIf(new Predicate() { // from class: com.google.common.collect.a6
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean d10;
                    d10 = z5.b.this.d(predicate, obj);
                    return d10;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13505a.size();
        }
    }

    static int a(int i9) {
        p2.b(i9, "arraySize");
        return com.google.common.primitives.f.i(i9 + 5 + (i9 / 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(List<?> list, Object obj) {
        if (obj == com.google.common.base.o.s(list)) {
            return true;
        }
        if (obj instanceof List) {
            List list2 = (List) obj;
            int size = list.size();
            if (size != list2.size()) {
                return false;
            }
            if ((list instanceof RandomAccess) && (list2 instanceof RandomAccess)) {
                for (int i9 = 0; i9 < size; i9++) {
                    if (!com.google.common.base.l.a(list.get(i9), list2.get(i9))) {
                        return false;
                    }
                }
                return true;
            }
            return p5.h(list.iterator(), list2.iterator());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return d(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (com.google.common.base.l.a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int d(List<?> list, Object obj) {
        int size = list.size();
        int i9 = 0;
        if (obj == null) {
            while (i9 < size) {
                if (list.get(i9) == null) {
                    return i9;
                }
                i9++;
            }
            return -1;
        }
        while (i9 < size) {
            if (obj.equals(list.get(i9))) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return f(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (com.google.common.base.l.a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int f(List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static <E> ArrayList<E> g() {
        return new ArrayList<>();
    }

    public static <E> ArrayList<E> h(Iterable<? extends E> iterable) {
        com.google.common.base.o.s(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<>((Collection) iterable);
        }
        return i(iterable.iterator());
    }

    public static <E> ArrayList<E> i(Iterator<? extends E> it) {
        ArrayList<E> g10 = g();
        p5.a(g10, it);
        return g10;
    }

    @SafeVarargs
    public static <E> ArrayList<E> j(E... eArr) {
        com.google.common.base.o.s(eArr);
        ArrayList<E> arrayList = new ArrayList<>(a(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <E> ArrayList<E> k(int i9) {
        p2.b(i9, "initialArraySize");
        return new ArrayList<>(i9);
    }

    public static <E> ArrayList<E> l(int i9) {
        return new ArrayList<>(a(i9));
    }

    public static <F, T> List<T> m(List<F> list, com.google.common.base.h<? super F, ? extends T> hVar) {
        if (list instanceof RandomAccess) {
            return new a(list, hVar);
        }
        return new b(list, hVar);
    }
}
