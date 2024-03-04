package com.google.common.collect;

import com.google.common.collect.c3;
import com.google.common.collect.w7;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
/* loaded from: classes2.dex */
public final class w7 {

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes2.dex */
    class a<E> extends g<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f13462a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f13463b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.w7$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0121a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<? extends E> f13464c;

            /* renamed from: d  reason: collision with root package name */
            final Iterator<? extends E> f13465d;

            C0121a() {
                this.f13464c = a.this.f13462a.iterator();
                this.f13465d = a.this.f13463b.iterator();
            }

            @Override // com.google.common.collect.c
            protected E a() {
                if (this.f13464c.hasNext()) {
                    return this.f13464c.next();
                }
                while (this.f13465d.hasNext()) {
                    E next = this.f13465d.next();
                    if (!a.this.f13462a.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f13462a = set;
            this.f13463b = set2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean f(Set set, Object obj) {
            return !set.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f13462a.contains(obj) || this.f13463b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: d */
        public e9<E> iterator() {
            return new C0121a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f13462a.isEmpty() && this.f13463b.isEmpty();
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return (Stream) stream().parallel();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f13462a.size();
            for (E e10 : this.f13463b) {
                if (!this.f13462a.contains(e10)) {
                    size++;
                }
            }
            return size;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f13462a.stream();
            Stream<E> stream2 = this.f13463b.stream();
            final Set set = this.f13462a;
            return Stream.concat(stream, stream2.filter(new Predicate() { // from class: com.google.common.collect.v7
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean f10;
                    f10 = w7.a.f(set, obj);
                    return f10;
                }
            }));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes2.dex */
    class b<E> extends g<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f13467a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f13468b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<E> f13469c;

            a() {
                this.f13469c = b.this.f13467a.iterator();
            }

            @Override // com.google.common.collect.c
            protected E a() {
                while (this.f13469c.hasNext()) {
                    E next = this.f13469c.next();
                    if (b.this.f13468b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f13467a = set;
            this.f13468b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: c */
        public e9<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f13467a.contains(obj) && this.f13468b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f13467a.containsAll(collection) && this.f13468b.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f13468b, this.f13467a);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            Stream<E> parallelStream = this.f13467a.parallelStream();
            Set set = this.f13468b;
            Objects.requireNonNull(set);
            return parallelStream.filter(new x7(set));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i9 = 0;
            for (E e10 : this.f13467a) {
                if (this.f13468b.contains(e10)) {
                    i9++;
                }
            }
            return i9;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f13467a.stream();
            Set set = this.f13468b;
            Objects.requireNonNull(set);
            return stream.filter(new x7(set));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* loaded from: classes2.dex */
    class c<E> extends g<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f13471a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f13472b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<E> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<E> f13473c;

            a() {
                this.f13473c = c.this.f13471a.iterator();
            }

            @Override // com.google.common.collect.c
            protected E a() {
                while (this.f13473c.hasNext()) {
                    E next = this.f13473c.next();
                    if (!c.this.f13472b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Set set, Set set2) {
            super(null);
            this.f13471a = set;
            this.f13472b = set2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean g(Set set, Object obj) {
            return !set.contains(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean m(Set set, Object obj) {
            return !set.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f13471a.contains(obj) && !this.f13472b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: f */
        public e9<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f13472b.containsAll(this.f13471a);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            Stream<E> parallelStream = this.f13471a.parallelStream();
            final Set set = this.f13472b;
            return parallelStream.filter(new Predicate() { // from class: com.google.common.collect.z7
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean g10;
                    g10 = w7.c.g(set, obj);
                    return g10;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i9 = 0;
            for (E e10 : this.f13471a) {
                if (!this.f13472b.contains(e10)) {
                    i9++;
                }
            }
            return i9;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f13471a.stream();
            final Set set = this.f13472b;
            return stream.filter(new Predicate() { // from class: com.google.common.collect.y7
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m10;
                    m10 = w7.c.m(set, obj);
                    return m10;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d<E> extends c3.a<E> implements Set<E> {
        d(Set<E> set, com.google.common.base.q<? super E> qVar) {
            super(set, qVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return w7.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return w7.e(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e<E> extends d<E> implements SortedSet<E> {
        e(SortedSet<E> sortedSet, com.google.common.base.q<? super E> qVar) {
            super(sortedSet, qVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f12951a).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) p5.m(this.f12951a.iterator(), this.f12952b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e10) {
            return new e(((SortedSet) this.f12951a).headSet(e10), this.f12952b);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [E, java.lang.Object] */
        @Override // java.util.SortedSet
        public E last() {
            SortedSet sortedSet = (SortedSet) this.f12951a;
            while (true) {
                ?? r12 = (Object) sortedSet.last();
                if (this.f12952b.apply(r12)) {
                    return r12;
                }
                sortedSet = sortedSet.headSet(r12);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e10, E e11) {
            return new e(((SortedSet) this.f12951a).subSet(e10, e11), this.f12952b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e10) {
            return new e(((SortedSet) this.f12951a).tailSet(e10), this.f12952b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class f<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return w7.o(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) com.google.common.base.o.s(collection));
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class g<E> extends AbstractSet<E> {
        /* synthetic */ g(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        @Deprecated
        public final boolean removeIf(Predicate<? super E> predicate) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        private g() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class h<E> extends a4<E> implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final NavigableSet<E> f13475a;

        /* renamed from: b  reason: collision with root package name */
        private final SortedSet<E> f13476b;

        /* renamed from: c  reason: collision with root package name */
        private transient h<E> f13477c;

        h(NavigableSet<E> navigableSet) {
            this.f13475a = (NavigableSet) com.google.common.base.o.s(navigableSet);
            this.f13476b = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e10) {
            return this.f13475a.ceiling(e10);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return p5.D(this.f13475a.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            h<E> hVar = this.f13477c;
            if (hVar == null) {
                h<E> hVar2 = new h<>(this.f13475a.descendingSet());
                this.f13477c = hVar2;
                hVar2.f13477c = this;
                return hVar2;
            }
            return hVar;
        }

        @Override // java.util.NavigableSet
        public E floor(E e10) {
            return this.f13475a.floor(e10);
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> consumer) {
            this.f13475a.forEach(consumer);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e10, boolean z10) {
            return w7.r(this.f13475a.headSet(e10, z10));
        }

        @Override // java.util.NavigableSet
        public E higher(E e10) {
            return this.f13475a.higher(e10);
        }

        @Override // java.util.NavigableSet
        public E lower(E e10) {
            return this.f13475a.lower(e10);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return this.f13475a.parallelStream();
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super E> predicate) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            return this.f13475a.stream();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
            return w7.r(this.f13475a.subSet(e10, z10, e11, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e10, boolean z10) {
            return w7.r(this.f13475a.tailSet(e10, z10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        /* renamed from: w0 */
        public SortedSet<E> delegate() {
            return this.f13476b;
        }
    }

    public static <E> g<E> a(Set<E> set, Set<?> set2) {
        com.google.common.base.o.t(set, "set1");
        com.google.common.base.o.t(set2, "set2");
        return new c(set, set2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <E> Set<E> c(Set<E> set, com.google.common.base.q<? super E> qVar) {
        if (set instanceof SortedSet) {
            return d((SortedSet) set, qVar);
        }
        if (set instanceof d) {
            d dVar = (d) set;
            return new d((Set) dVar.f12951a, com.google.common.base.r.c(dVar.f12952b, qVar));
        }
        return new d((Set) com.google.common.base.o.s(set), (com.google.common.base.q) com.google.common.base.o.s(qVar));
    }

    public static <E> SortedSet<E> d(SortedSet<E> sortedSet, com.google.common.base.q<? super E> qVar) {
        if (sortedSet instanceof d) {
            d dVar = (d) sortedSet;
            return new e((SortedSet) dVar.f12951a, com.google.common.base.r.c(dVar.f12952b, qVar));
        }
        return new e((SortedSet) com.google.common.base.o.s(sortedSet), (com.google.common.base.q) com.google.common.base.o.s(qVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i9 = ~(~(i9 + (next != null ? next.hashCode() : 0)));
        }
        return i9;
    }

    public static <E> g<E> f(Set<E> set, Set<?> set2) {
        com.google.common.base.o.t(set, "set1");
        com.google.common.base.o.t(set2, "set2");
        return new b(set, set2);
    }

    public static <E> HashSet<E> g() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> h(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<>((Collection) iterable);
        }
        return i(iterable.iterator());
    }

    public static <E> HashSet<E> i(Iterator<? extends E> it) {
        HashSet<E> g10 = g();
        p5.a(g10, it);
        return g10;
    }

    public static <E> HashSet<E> j(E... eArr) {
        HashSet<E> k10 = k(eArr.length);
        Collections.addAll(k10, eArr);
        return k10;
    }

    public static <E> HashSet<E> k(int i9) {
        return new HashSet<>(d6.b(i9));
    }

    public static <E> Set<E> l() {
        return Collections.newSetFromMap(d6.o());
    }

    public static <E> LinkedHashSet<E> m() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> n(int i9) {
        return new LinkedHashSet<>(d6.b(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean o(Set<?> set, Collection<?> collection) {
        com.google.common.base.o.s(collection);
        if (collection instanceof q6) {
            collection = ((q6) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return p5.w(set.iterator(), collection);
        }
        return p(set, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean p(Set<?> set, Iterator<?> it) {
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= set.remove(it.next());
        }
        return z10;
    }

    public static <E> g<E> q(Set<? extends E> set, Set<? extends E> set2) {
        com.google.common.base.o.t(set, "set1");
        com.google.common.base.o.t(set2, "set2");
        return new a(set, set2);
    }

    public static <E> NavigableSet<E> r(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof h)) ? navigableSet : new h(navigableSet);
    }
}
