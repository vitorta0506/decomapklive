package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.w7;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class d6 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes2.dex */
    public class a<K, V> extends b9<Map.Entry<K, V>, K> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        /* renamed from: b */
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes2.dex */
    public class b<K, V> extends b9<Map.Entry<K, V>, V> {
        b(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        /* renamed from: b */
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes2.dex */
    class c<K, V> extends b9<K, Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.h f13018b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Iterator it, com.google.common.base.h hVar) {
            super(it);
            this.f13018b = hVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        /* renamed from: b */
        public Map.Entry<K, V> a(K k10) {
            return d6.g(k10, this.f13018b.apply(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes2.dex */
    public class d<K, V> extends com.google.common.collect.n<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map.Entry f13019a;

        d(Map.Entry entry) {
            this.f13019a = entry;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public K getKey() {
            return (K) this.f13019a.getKey();
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public V getValue() {
            return (V) this.f13019a.getValue();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* loaded from: classes2.dex */
    class e<K, V> extends e9<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f13020a;

        e(Iterator it) {
            this.f13020a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            return d6.w((Map.Entry) this.f13020a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13020a.hasNext();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class f<K, V> extends t3<K, V> implements NavigableMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private transient Comparator<? super K> f13021a;

        /* renamed from: b  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f13022b;

        /* renamed from: c  reason: collision with root package name */
        private transient NavigableSet<K> f13023c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends h<K, V> {
            a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return f.this.y0();
            }

            @Override // com.google.common.collect.d6.h
            Map<K, V> m() {
                return f.this;
            }
        }

        private static <T> y6<T> C0(Comparator<T> comparator) {
            return y6.a(comparator).h();
        }

        abstract NavigableMap<K, V> A0();

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k10) {
            return A0().floorEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return A0().floorKey(k10);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f13021a;
            if (comparator == null) {
                Comparator<? super K> comparator2 = A0().comparator();
                if (comparator2 == null) {
                    comparator2 = y6.e();
                }
                y6 C0 = C0(comparator2);
                this.f13021a = C0;
                return C0;
            }
            return comparator;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return A0().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return A0();
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f13022b;
            if (set == null) {
                Set<Map.Entry<K, V>> w02 = w0();
                this.f13022b = w02;
                return w02;
            }
            return set;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return A0().lastEntry();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return A0().lastKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k10) {
            return A0().ceilingEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return A0().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z10) {
            return A0().tailMap(k10, z10).descendingMap();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k10) {
            return A0().lowerEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return A0().lowerKey(k10);
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return A0().firstEntry();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return A0().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k10) {
            return A0().higherEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return A0().higherKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f13023c;
            if (navigableSet == null) {
                k kVar = new k(this);
                this.f13023c = kVar;
                return kVar;
            }
            return navigableSet;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return A0().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return A0().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z10, K k11, boolean z11) {
            return A0().subMap(k11, z11, k10, z10).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z10) {
            return A0().headMap(k10, z10).descendingMap();
        }

        @Override // com.google.common.collect.w3
        public String toString() {
            return standardToString();
        }

        @Override // com.google.common.collect.t3, java.util.Map
        public Collection<V> values() {
            return new m(this);
        }

        Set<Map.Entry<K, V>> w0() {
            return new a();
        }

        abstract Iterator<Map.Entry<K, V>> y0();

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.t3, com.google.common.collect.w3
        public final Map<K, V> delegate() {
            return A0();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k10) {
            return tailMap(k10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class g implements com.google.common.base.h<Map.Entry<?, ?>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f13025a = new a("KEY", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final g f13026b = new b("VALUE", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ g[] f13027c = a();

        /* loaded from: classes2.dex */
        enum a extends g {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.base.h, java.util.function.Function
            /* renamed from: b */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        /* loaded from: classes2.dex */
        enum b extends g {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.base.h, java.util.function.Function
            /* renamed from: b */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        private g(String str, int i9) {
        }

        private static /* synthetic */ g[] a() {
            return new g[]{f13025a, f13026b};
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) f13027c.clone();
        }

        /* synthetic */ g(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class h<K, V> extends w7.f<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object t10 = d6.t(m(), key);
                if (com.google.common.base.l.a(t10, entry.getValue())) {
                    return t10 != null || m().containsKey(key);
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return m().isEmpty();
        }

        abstract Map<K, V> m();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return m().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.w7.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.o.s(collection));
            } catch (UnsupportedOperationException unused) {
                return w7.p(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.w7.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.o.s(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet k10 = w7.k(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        k10.add(((Map.Entry) obj).getKey());
                    }
                }
                return m().keySet().retainAll(k10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m().size();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class i<K, V> extends AbstractMap<K, V> {

        /* loaded from: classes2.dex */
        class a extends h<K, V> {
            a() {
            }

            @Override // java.lang.Iterable
            public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
                i.this.forEachEntry(consumer);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return i.this.entryIterator();
            }

            @Override // com.google.common.collect.d6.h
            Map<K, V> m() {
                return i.this;
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set
            public Spliterator<Map.Entry<K, V>> spliterator() {
                return i.this.entrySpliterator();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            p5.e(entryIterator());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Iterator<Map.Entry<K, V>> entryIterator();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }

        Spliterator<Map.Entry<K, V>> entrySpliterator() {
            return Spliterators.spliterator(entryIterator(), size(), 65);
        }

        void forEachEntry(Consumer<? super Map.Entry<K, V>> consumer) {
            entryIterator().forEachRemaining(consumer);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public abstract int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class j<K, V> extends w7.f<K> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f13029a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public j(Map<K, V> map) {
            this.f13029a = (Map) com.google.common.base.o.s(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            u().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return u().containsKey(obj);
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super K> consumer) {
            com.google.common.base.o.s(consumer);
            this.f13029a.forEach(new BiConsumer() { // from class: com.google.common.collect.e6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    consumer.accept(obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return u().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return d6.j(u().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                u().remove(obj);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u().size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<K, V> u() {
            return this.f13029a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class k<K, V> extends l<K, V> implements NavigableSet<K> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public k(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k10) {
            return x().ceilingKey(k10);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return x().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k10) {
            return x().floorKey(k10);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k10, boolean z10) {
            return x().headMap(k10, z10).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public K higher(K k10) {
            return x().higherKey(k10);
        }

        @Override // java.util.NavigableSet
        public K lower(K k10) {
            return x().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) d6.k(x().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) d6.k(x().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k10, boolean z10, K k11, boolean z11) {
            return x().subMap(k10, z10, k11, z11).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k10, boolean z10) {
            return x().tailMap(k10, z10).navigableKeySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.l
        /* renamed from: y */
        public NavigableMap<K, V> x() {
            return (NavigableMap) this.f13029a;
        }

        @Override // com.google.common.collect.d6.l, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k10) {
            return headSet(k10, false);
        }

        @Override // com.google.common.collect.d6.l, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k10, K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override // com.google.common.collect.d6.l, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k10) {
            return tailSet(k10, true);
        }
    }

    /* loaded from: classes2.dex */
    static class l<K, V> extends j<K, V> implements SortedSet<K> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public l(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return u().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return u().firstKey();
        }

        public SortedSet<K> headSet(K k10) {
            return new l(u().headMap(k10));
        }

        @Override // java.util.SortedSet
        public K last() {
            return u().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new l(u().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new l(u().tailMap(k10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.j
        /* renamed from: x */
        public SortedMap<K, V> u() {
            return (SortedMap) super.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class m<K, V> extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f13030a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public m(Map<K, V> map) {
            this.f13030a = (Map) com.google.common.base.o.s(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            f().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return f().containsValue(obj);
        }

        final Map<K, V> f() {
            return this.f13030a;
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super V> consumer) {
            com.google.common.base.o.s(consumer);
            this.f13030a.forEach(new BiConsumer() { // from class: com.google.common.collect.f6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    consumer.accept(obj2);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return f().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return d6.z(f().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : f().entrySet()) {
                    if (com.google.common.base.l.a(obj, entry.getValue())) {
                        f().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.o.s(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet g10 = w7.g();
                for (Map.Entry<K, V> entry : f().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        g10.add(entry.getKey());
                    }
                }
                return f().keySet().removeAll(g10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.o.s(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet g10 = w7.g();
                for (Map.Entry<K, V> entry : f().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        g10.add(entry.getKey());
                    }
                }
                return f().keySet().retainAll(g10);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return f().size();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class n<K, V> extends AbstractMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f13031a;

        /* renamed from: b  reason: collision with root package name */
        private transient Set<K> f13032b;

        /* renamed from: c  reason: collision with root package name */
        private transient Collection<V> f13033c;

        abstract Set<Map.Entry<K, V>> a();

        Set<K> b() {
            return new j(this);
        }

        Collection<V> c() {
            return new m(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f13031a;
            if (set == null) {
                Set<Map.Entry<K, V>> a10 = a();
                this.f13031a = a10;
                return a10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f13032b;
            if (set == null) {
                Set<K> b10 = b();
                this.f13032b = b10;
                return b10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f13033c;
            if (collection == null) {
                Collection<V> c10 = c();
                this.f13033c = c10;
                return c10;
            }
            return collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V A(Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> com.google.common.base.q<Map.Entry<?, V>> B(com.google.common.base.q<? super V> qVar) {
        return com.google.common.base.r.e(qVar, y());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<Map.Entry<K, V>> a(Set<K> set, com.google.common.base.h<? super K, V> hVar) {
        return new c(set.iterator(), hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9) {
        if (i9 < 3) {
            p2.b(i9, "expectedSize");
            return i9 + 1;
        } else if (i9 < 1073741824) {
            return (int) ((i9 / 0.75f) + 1.0f);
        } else {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> boolean c(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(w((Map.Entry) obj));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Map<?, ?> map, Object obj) {
        return p5.g(j(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(Map<?, ?> map, Object obj) {
        return p5.g(z(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static <K, V> Map.Entry<K, V> g(K k10, V v10) {
        return new h4(k10, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMap<E, Integer> h(Collection<E> collection) {
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i9 = 0;
        for (E e10 : collection) {
            bVar.h(e10, Integer.valueOf(i9));
            i9++;
        }
        return bVar.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> com.google.common.base.h<Map.Entry<K, ?>, K> i() {
        return g.f13025a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<K> j(Iterator<Map.Entry<K, V>> it) {
        return new a(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> K k(Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> com.google.common.base.q<Map.Entry<K, ?>> l(com.google.common.base.q<? super K> qVar) {
        return com.google.common.base.r.e(qVar, i());
    }

    public static <K, V> HashMap<K, V> m() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> n(int i9) {
        return new HashMap<>(b(i9));
    }

    public static <K, V> IdentityHashMap<K, V> o() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> p() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> q(int i9) {
        return new LinkedHashMap<>(b(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void r(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean s(Map<?, ?> map, Object obj) {
        com.google.common.base.o.s(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V t(Map<?, V> map, Object obj) {
        com.google.common.base.o.s(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V u(Map<?, V> map, Object obj) {
        com.google.common.base.o.s(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String v(Map<?, ?> map) {
        StringBuilder b10 = c3.b(map.size());
        b10.append('{');
        boolean z10 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z10) {
                b10.append(", ");
            }
            z10 = false;
            b10.append(entry.getKey());
            b10.append('=');
            b10.append(entry.getValue());
        }
        b10.append('}');
        return b10.toString();
    }

    static <K, V> Map.Entry<K, V> w(Map.Entry<? extends K, ? extends V> entry) {
        com.google.common.base.o.s(entry);
        return new d(entry);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> e9<Map.Entry<K, V>> x(Iterator<Map.Entry<K, V>> it) {
        return new e(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> com.google.common.base.h<Map.Entry<?, V>, V> y() {
        return g.f13026b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<V> z(Iterator<Map.Entry<K, V>> it) {
        return new b(it);
    }
}
