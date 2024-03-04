package com.google.common.collect;

import com.google.common.collect.d6;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class TreeBasedTable<R, C, V> extends k8<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> columnComparator;

    /* loaded from: classes2.dex */
    class a extends com.google.common.collect.c<C> {

        /* renamed from: c  reason: collision with root package name */
        C f12832c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Iterator f12833d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Comparator f12834e;

        a(TreeBasedTable treeBasedTable, Iterator it, Comparator comparator) {
            this.f12833d = it;
            this.f12834e = comparator;
        }

        @Override // com.google.common.collect.c
        protected C a() {
            boolean z10;
            while (this.f12833d.hasNext()) {
                C c10 = (C) this.f12833d.next();
                C c11 = this.f12832c;
                if (c11 == null || this.f12834e.compare(c10, c11) != 0) {
                    z10 = false;
                    continue;
                } else {
                    z10 = true;
                    continue;
                }
                if (!z10) {
                    this.f12832c = c10;
                    return c10;
                }
            }
            this.f12832c = null;
            return b();
        }
    }

    /* loaded from: classes2.dex */
    private static class b<C, V> implements com.google.common.base.w<TreeMap<C, V>>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super C> f12835a;

        b(Comparator<? super C> comparator) {
            this.f12835a = comparator;
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.f12835a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c extends n8<R, C, V>.g implements SortedMap<C, V> {

        /* renamed from: d  reason: collision with root package name */
        final C f12836d;

        /* renamed from: e  reason: collision with root package name */
        final C f12837e;

        /* renamed from: f  reason: collision with root package name */
        transient SortedMap<C, V> f12838f;

        c(TreeBasedTable treeBasedTable, R r10) {
            this(r10, null, null);
        }

        @Override // com.google.common.collect.n8.g
        void b() {
            i();
            SortedMap<C, V> sortedMap = this.f12838f;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            TreeBasedTable.this.backingMap.remove(this.f13308a);
            this.f12838f = null;
            this.f13309b = null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override // com.google.common.collect.n8.g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return h(obj) && super.containsKey(obj);
        }

        int e(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.n8.g
        /* renamed from: f */
        public SortedMap<C, V> a() {
            i();
            SortedMap<C, V> sortedMap = this.f12838f;
            if (sortedMap != null) {
                C c10 = this.f12836d;
                if (c10 != null) {
                    sortedMap = sortedMap.tailMap(c10);
                }
                C c11 = this.f12837e;
                return c11 != null ? sortedMap.headMap(c11) : sortedMap;
            }
            return null;
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            c();
            Map<C, V> map = this.f13309b;
            if (map != null) {
                return (C) ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: g */
        public SortedSet<C> keySet() {
            return new d6.l(this);
        }

        boolean h(Object obj) {
            C c10;
            C c11;
            return obj != null && ((c10 = this.f12836d) == null || e(c10, obj) <= 0) && ((c11 = this.f12837e) == null || e(c11, obj) > 0);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c10) {
            com.google.common.base.o.d(h(com.google.common.base.o.s(c10)));
            return new c(this.f13308a, this.f12836d, c10);
        }

        void i() {
            SortedMap<C, V> sortedMap = this.f12838f;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.backingMap.containsKey(this.f13308a))) {
                this.f12838f = (SortedMap) TreeBasedTable.this.backingMap.get(this.f13308a);
            }
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            c();
            Map<C, V> map = this.f13309b;
            if (map != null) {
                return (C) ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.n8.g, java.util.AbstractMap, java.util.Map
        public V put(C c10, V v10) {
            com.google.common.base.o.d(h(com.google.common.base.o.s(c10)));
            return (V) super.put(c10, v10);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c10, C c11) {
            com.google.common.base.o.d(h(com.google.common.base.o.s(c10)) && h(com.google.common.base.o.s(c11)));
            return new c(this.f13308a, c10, c11);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c10) {
            com.google.common.base.o.d(h(com.google.common.base.o.s(c10)));
            return new c(this.f13308a, c10, this.f12837e);
        }

        c(R r10, C c10, C c11) {
            super(r10);
            this.f12836d = c10;
            this.f12837e = c11;
            com.google.common.base.o.d(c10 == null || c11 == null || e(c10, c11) <= 0);
        }
    }

    TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new b(comparator2));
        this.columnComparator = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(y6.e(), y6.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$createColumnKeyIterator$0(Map map) {
        return map.keySet().iterator();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.columnComparator;
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean contains(Object obj, Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.n8
    Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> columnComparator = columnComparator();
        return new a(this, p5.t(n5.p(this.backingMap.values(), new com.google.common.base.h() { // from class: com.google.common.collect.d9
            @Override // com.google.common.base.h, java.util.function.Function
            public final Object apply(Object obj) {
                Iterator lambda$createColumnKeyIterator$0;
                lambda$createColumnKeyIterator$0 = TreeBasedTable.lambda$createColumnKeyIterator$0((Map) obj);
                return lambda$createColumnKeyIterator$0;
            }
        }), columnComparator), columnComparator);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ void putAll(q8 q8Var) {
        super.putAll(q8Var);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ Object remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((TreeBasedTable<R, C, V>) obj);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        Comparator<? super R> comparator = rowKeySet().comparator();
        Objects.requireNonNull(comparator);
        return comparator;
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public SortedMap<C, V> row(R r10) {
        return new c(this, r10);
    }

    @Override // com.google.common.collect.k8, com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.k8, com.google.common.collect.n8, com.google.common.collect.q8
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }
}
