package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t7;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes2.dex */
public abstract class ImmutableMultimap<K, V> extends d0<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    final transient int size;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends e9<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<? extends Map.Entry<K, ? extends ImmutableCollection<V>>> f12681a;

        /* renamed from: b  reason: collision with root package name */
        K f12682b = null;

        /* renamed from: c  reason: collision with root package name */
        Iterator<V> f12683c = p5.i();

        a() {
            this.f12681a = ImmutableMultimap.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (!this.f12683c.hasNext()) {
                Map.Entry<K, ? extends ImmutableCollection<V>> next = this.f12681a.next();
                this.f12682b = next.getKey();
                this.f12683c = next.getValue().iterator();
            }
            K k10 = this.f12682b;
            Objects.requireNonNull(k10);
            return d6.g(k10, this.f12683c.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12683c.hasNext() || this.f12681a.hasNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends e9<V> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<? extends ImmutableCollection<V>> f12685a;

        /* renamed from: b  reason: collision with root package name */
        Iterator<V> f12686b = p5.i();

        b() {
            this.f12685a = ImmutableMultimap.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12686b.hasNext() || this.f12685a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.f12686b.hasNext()) {
                this.f12686b = this.f12685a.next().iterator();
            }
            return this.f12686b.next();
        }
    }

    /* loaded from: classes2.dex */
    public static class c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, Collection<V>> f12688a = a7.h();

        /* renamed from: b  reason: collision with root package name */
        Comparator<? super K> f12689b;

        /* renamed from: c  reason: collision with root package name */
        Comparator<? super V> f12690c;

        public ImmutableMultimap<K, V> a() {
            Collection entrySet = this.f12688a.entrySet();
            Comparator<? super K> comparator = this.f12689b;
            if (comparator != null) {
                entrySet = y6.a(comparator).f().b(entrySet);
            }
            return ImmutableListMultimap.fromMapEntries(entrySet, this.f12690c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c<K, V> b(c<K, V> cVar) {
            for (Map.Entry<K, Collection<V>> entry : cVar.f12688a.entrySet()) {
                g(entry.getKey(), entry.getValue());
            }
            return this;
        }

        Collection<V> c() {
            return new ArrayList();
        }

        public c<K, V> d(K k10, V v10) {
            p2.a(k10, v10);
            Collection<V> collection = this.f12688a.get(k10);
            if (collection == null) {
                Map<K, Collection<V>> map = this.f12688a;
                Collection<V> c10 = c();
                map.put(k10, c10);
                collection = c10;
            }
            collection.add(v10);
            return this;
        }

        public c<K, V> e(Map.Entry<? extends K, ? extends V> entry) {
            return d(entry.getKey(), entry.getValue());
        }

        public c<K, V> f(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                e(entry);
            }
            return this;
        }

        public c<K, V> g(K k10, Iterable<? extends V> iterable) {
            if (k10 == null) {
                String valueOf = String.valueOf(n5.o(iterable));
                throw new NullPointerException(valueOf.length() != 0 ? "null key in entry: null=".concat(valueOf) : new String("null key in entry: null="));
            }
            Collection<V> collection = this.f12688a.get(k10);
            if (collection != null) {
                for (V v10 : iterable) {
                    p2.a(k10, v10);
                    collection.add(v10);
                }
                return this;
            }
            Iterator<? extends V> it = iterable.iterator();
            if (it.hasNext()) {
                Collection<V> c10 = c();
                while (it.hasNext()) {
                    V next = it.next();
                    p2.a(k10, next);
                    c10.add(next);
                }
                this.f12688a.put(k10, c10);
                return this;
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMultimap<K, V> f12691a;

        d(ImmutableMultimap<K, V> immutableMultimap) {
            this.f12691a = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f12691a.containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return this.f12691a.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f12691a.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<Map.Entry<K, V>> iterator() {
            return this.f12691a.entryIterator();
        }
    }

    /* loaded from: classes2.dex */
    static class e {

        /* renamed from: a  reason: collision with root package name */
        static final t7.b<ImmutableMultimap> f12692a = t7.a(ImmutableMultimap.class, "map");

        /* renamed from: b  reason: collision with root package name */
        static final t7.b<ImmutableMultimap> f12693b = t7.a(ImmutableMultimap.class, "size");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends ImmutableMultiset<K> {
        f() {
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
        public int count(Object obj) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.map.get(obj);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset
        q6.a<K> getEntry(int i9) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(i9);
            return t6.g(entry.getKey(), entry.getValue().size());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new g(ImmutableMultimap.this);
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }
    }

    /* loaded from: classes2.dex */
    private static final class g implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMultimap<?, ?> f12695a;

        g(ImmutableMultimap<?, ?> immutableMultimap) {
            this.f12695a = immutableMultimap;
        }

        Object readResolve() {
            return this.f12695a.keys();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class h<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final transient ImmutableMultimap<K, V> f12696a;

        h(ImmutableMultimap<K, V> immutableMultimap) {
            this.f12696a = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f12696a.containsValue(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i9) {
            e9<? extends ImmutableCollection<V>> it = this.f12696a.map.values().iterator();
            while (it.hasNext()) {
                i9 = it.next().copyIntoArray(objArr, i9);
            }
            return i9;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f12696a.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<V> iterator() {
            return this.f12696a.valueIterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i9) {
        this.map = immutableMap;
        this.size = i9;
    }

    public static <K, V> c<K, V> builder() {
        return new c<>();
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(i6<? extends K, ? extends V> i6Var) {
        if (i6Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) i6Var;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((i6) i6Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$entrySpliterator$1(Map.Entry entry) {
        final Object key = entry.getKey();
        return s2.e(((Collection) entry.getValue()).spliterator(), new Function() { // from class: com.google.common.collect.v4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map.Entry g10;
                g10 = d6.g(key, obj);
                return g10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEach$3(final BiConsumer biConsumer, final Object obj, Collection collection) {
        collection.forEach(new Consumer() { // from class: com.google.common.collect.u4
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                biConsumer.accept(obj, obj2);
            }
        });
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    @Override // com.google.common.collect.i6
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.i6
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.o
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.o
    Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.o
    Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.o
    Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return s2.b(asMap().entrySet().spliterator(), new Function() { // from class: com.google.common.collect.w4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator lambda$entrySpliterator$1;
                lambda$entrySpliterator$1 = ImmutableMultimap.lambda$entrySpliterator$1((Map.Entry) obj);
                return lambda$entrySpliterator$1;
            }
        }, (this instanceof u7 ? 1 : 0) | 64, size());
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
        com.google.common.base.o.s(biConsumer);
        asMap().forEach(new BiConsumer() { // from class: com.google.common.collect.t4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ImmutableMultimap.lambda$forEach$3(biConsumer, obj, (Collection) obj2);
            }
        });
    }

    @Override // com.google.common.collect.i6
    public abstract ImmutableCollection<V> get(K k10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    @Deprecated
    public final boolean put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o
    @Deprecated
    public final boolean putAll(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.i6
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public ImmutableMap<K, Collection<V>> asMap() {
        return (ImmutableMap<K, ? extends ImmutableCollection<V>>) this.map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public ImmutableCollection<Map.Entry<K, V>> createEntries() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public ImmutableMultiset<K> createKeys() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public ImmutableCollection<V> createValues() {
        return new h(this);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public e9<Map.Entry<K, V>> entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public ImmutableSet<K> keySet() {
        return this.map.keySet();
    }

    @Override // com.google.common.collect.o
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    @Deprecated
    public final boolean putAll(i6<? extends K, ? extends V> i6Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.i6
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o
    @Deprecated
    public ImmutableCollection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public e9<V> valueIterator() {
        return new b();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return ImmutableListMultimap.of((Object) k10, (Object) v10, (Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13, (Object) k14, (Object) v14);
    }
}
