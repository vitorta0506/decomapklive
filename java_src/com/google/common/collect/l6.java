package com.google.common.collect;

import com.google.common.collect.d6;
import com.google.common.collect.j;
import com.google.common.collect.l6;
import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class l6 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a<K, V> extends d6.n<K, Collection<V>> {

        /* renamed from: d  reason: collision with root package name */
        private final i6<K, V> f13218d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.l6$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0115a extends d6.h<K, Collection<V>> {

            /* renamed from: com.google.common.collect.l6$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0116a implements com.google.common.base.h<K, Collection<V>> {
                C0116a() {
                }

                @Override // com.google.common.base.h, java.util.function.Function
                /* renamed from: a */
                public Collection<V> apply(K k10) {
                    return a.this.f13218d.get(k10);
                }
            }

            C0115a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return d6.a(a.this.f13218d.keySet(), new C0116a());
            }

            @Override // com.google.common.collect.d6.h
            Map<K, Collection<V>> m() {
                return a.this;
            }

            @Override // com.google.common.collect.d6.h, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    Map.Entry entry = (Map.Entry) obj;
                    Objects.requireNonNull(entry);
                    a.this.g(entry.getKey());
                    return true;
                }
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(i6<K, V> i6Var) {
            this.f13218d = (i6) com.google.common.base.o.s(i6Var);
        }

        @Override // com.google.common.collect.d6.n
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new C0115a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f13218d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f13218d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.f13218d.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: f */
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.f13218d.removeAll(obj);
            }
            return null;
        }

        void g(Object obj) {
            this.f13218d.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f13218d.isEmpty();
        }

        @Override // com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f13218d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f13218d.keySet().size();
        }
    }

    /* loaded from: classes2.dex */
    private static class b<K, V> extends com.google.common.collect.d<K, V> {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        transient com.google.common.base.w<? extends List<V>> f13221a;

        b(Map<K, Collection<V>> map, com.google.common.base.w<? extends List<V>> wVar) {
            super(map);
            this.f13221a = (com.google.common.base.w) com.google.common.base.o.s(wVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f13221a = (com.google.common.base.w) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f13221a);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.j, com.google.common.collect.o
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.o
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d, com.google.common.collect.j
        public List<V> createCollection() {
            return this.f13221a.get();
        }
    }

    /* loaded from: classes2.dex */
    private static class c<K, V> extends t<K, V> {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        transient com.google.common.base.w<? extends Set<V>> f13222a;

        c(Map<K, Collection<V>> map, com.google.common.base.w<? extends Set<V>> wVar) {
            super(map);
            this.f13222a = (com.google.common.base.w) com.google.common.base.o.s(wVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f13222a = (com.google.common.base.w) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f13222a);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.j, com.google.common.collect.o
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.o
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.t, com.google.common.collect.j
        <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return w7.r((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            return Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.t, com.google.common.collect.j
        Collection<V> wrapCollection(K k10, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new j.m(k10, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new j.o(k10, (SortedSet) collection, null);
            }
            return new j.n(k10, (Set) collection);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.t, com.google.common.collect.j
        public Set<V> createCollection() {
            return this.f13222a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract i6<K, V> c();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return c().containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return c().remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return c().size();
        }
    }

    /* loaded from: classes2.dex */
    static class e<K, V> extends p<K> {

        /* renamed from: a  reason: collision with root package name */
        final i6<K, V> f13223a;

        /* loaded from: classes2.dex */
        class a extends b9<Map.Entry<K, Collection<V>>, q6.a<K>> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.common.collect.l6$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0117a extends t6.b<K> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f13224a;

                C0117a(a aVar, Map.Entry entry) {
                    this.f13224a = entry;
                }

                @Override // com.google.common.collect.q6.a
                public K a() {
                    return (K) this.f13224a.getKey();
                }

                @Override // com.google.common.collect.q6.a
                public int getCount() {
                    return ((Collection) this.f13224a.getValue()).size();
                }
            }

            a(e eVar, Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.b9
            /* renamed from: b */
            public q6.a<K> a(Map.Entry<K, Collection<V>> entry) {
                return new C0117a(this, entry);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(i6<K, V> i6Var) {
            this.f13223a = i6Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(Consumer consumer, Map.Entry entry) {
            consumer.accept(entry.getKey());
        }

        @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f13223a.clear();
        }

        @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
        public boolean contains(Object obj) {
            return this.f13223a.containsKey(obj);
        }

        @Override // com.google.common.collect.q6
        public int count(Object obj) {
            Collection collection = (Collection) d6.t(this.f13223a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.p
        int distinctElements() {
            return this.f13223a.asMap().size();
        }

        @Override // com.google.common.collect.p
        Iterator<K> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.p, com.google.common.collect.q6
        public Set<K> elementSet() {
            return this.f13223a.keySet();
        }

        @Override // com.google.common.collect.p
        Iterator<q6.a<K>> entryIterator() {
            return new a(this, this.f13223a.asMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.p, java.lang.Iterable
        public void forEach(final Consumer<? super K> consumer) {
            com.google.common.base.o.s(consumer);
            this.f13223a.entries().forEach(new Consumer() { // from class: com.google.common.collect.m6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    l6.e.d(consumer, (Map.Entry) obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return d6.j(this.f13223a.entries().iterator());
        }

        @Override // com.google.common.collect.p, com.google.common.collect.q6
        public int remove(Object obj, int i9) {
            p2.b(i9, "occurrences");
            if (i9 == 0) {
                return count(obj);
            }
            Collection collection = (Collection) d6.t(this.f13223a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i9 >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i10 = 0; i10 < i9; i10++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
        public int size() {
            return this.f13223a.size();
        }

        @Override // com.google.common.collect.p, java.util.Collection, java.lang.Iterable
        public Spliterator<K> spliterator() {
            return s2.e(this.f13223a.entries().spliterator(), l4.f13216a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(i6<?, ?> i6Var, Object obj) {
        if (obj == i6Var) {
            return true;
        }
        if (obj instanceof i6) {
            return i6Var.asMap().equals(((i6) obj).asMap());
        }
        return false;
    }

    public static <K, V> x5<K, V> b(Map<K, Collection<V>> map, com.google.common.base.w<? extends List<V>> wVar) {
        return new b(map, wVar);
    }

    public static <K, V> u7<K, V> c(Map<K, Collection<V>> map, com.google.common.base.w<? extends Set<V>> wVar) {
        return new c(map, wVar);
    }
}
