package com.google.common.collect;

import com.google.common.collect.ArrayTable;
import com.google.common.collect.a9;
import com.google.common.collect.d6;
import com.google.common.collect.q8;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class ArrayTable<R, C, V> extends y<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    private final V[][] array;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableList<C> columnList;
    private transient ArrayTable<R, C, V>.f columnMap;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableList<R> rowList;
    private transient ArrayTable<R, C, V>.h rowMap;

    /* loaded from: classes2.dex */
    class a extends com.google.common.collect.b<q8.a<R, C, V>> {
        a(int i9) {
            super(i9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.b
        /* renamed from: b */
        public q8.a<R, C, V> a(int i9) {
            return ArrayTable.this.getCell(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends a9.b<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        final int f12608a;

        /* renamed from: b  reason: collision with root package name */
        final int f12609b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f12610c;

        b(int i9) {
            this.f12610c = i9;
            this.f12608a = i9 / ArrayTable.this.columnList.size();
            this.f12609b = i9 % ArrayTable.this.columnList.size();
        }

        @Override // com.google.common.collect.q8.a
        public R a() {
            return (R) ArrayTable.this.rowList.get(this.f12608a);
        }

        @Override // com.google.common.collect.q8.a
        public C b() {
            return (C) ArrayTable.this.columnList.get(this.f12609b);
        }

        @Override // com.google.common.collect.q8.a
        public V getValue() {
            return (V) ArrayTable.this.at(this.f12608a, this.f12609b);
        }
    }

    /* loaded from: classes2.dex */
    class c extends com.google.common.collect.b<V> {
        c(int i9) {
            super(i9);
        }

        @Override // com.google.common.collect.b
        protected V a(int i9) {
            return (V) ArrayTable.this.getValue(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V> extends d6.i<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<K, Integer> f12613a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends n<K, V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f12614a;

            a(int i9) {
                this.f12614a = i9;
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public K getKey() {
                return (K) d.this.b(this.f12614a);
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public V getValue() {
                return (V) d.this.d(this.f12614a);
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public V setValue(V v10) {
                return (V) d.this.e(this.f12614a, v10);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.b<Map.Entry<K, V>> {
            b(int i9) {
                super(i9);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.b
            /* renamed from: b */
            public Map.Entry<K, V> a(int i9) {
                return d.this.a(i9);
            }
        }

        /* synthetic */ d(ImmutableMap immutableMap, a aVar) {
            this(immutableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map.Entry<K, V> a(int i9) {
            com.google.common.base.o.q(i9, size());
            return new a(i9);
        }

        K b(int i9) {
            return this.f12613a.keySet().asList().get(i9);
        }

        abstract String c();

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f12613a.containsKey(obj);
        }

        abstract V d(int i9);

        abstract V e(int i9, V v10);

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return new b(size());
        }

        @Override // com.google.common.collect.d6.i
        Spliterator<Map.Entry<K, V>> entrySpliterator() {
            return s2.c(size(), 16, new IntFunction() { // from class: com.google.common.collect.c0
                @Override // java.util.function.IntFunction
                public final Object apply(int i9) {
                    return ArrayTable.d.this.a(i9);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Integer num = this.f12613a.get(obj);
            if (num == null) {
                return null;
            }
            return d(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f12613a.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f12613a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k10, V v10) {
            Integer num = this.f12613a.get(k10);
            if (num != null) {
                return e(num.intValue(), v10);
            }
            String c10 = c();
            String valueOf = String.valueOf(k10);
            String valueOf2 = String.valueOf(this.f12613a.keySet());
            StringBuilder sb2 = new StringBuilder(String.valueOf(c10).length() + 9 + valueOf.length() + valueOf2.length());
            sb2.append(c10);
            sb2.append(" ");
            sb2.append(valueOf);
            sb2.append(" not in ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f12613a.size();
        }

        private d(ImmutableMap<K, Integer> immutableMap) {
            this.f12613a = immutableMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends d<R, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f12617b;

        e(int i9) {
            super(ArrayTable.this.rowKeyToIndex, null);
            this.f12617b = i9;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String c() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V d(int i9) {
            return (V) ArrayTable.this.at(i9, this.f12617b);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i9, V v10) {
            return (V) ArrayTable.this.set(i9, this.f12617b, v10);
        }
    }

    /* loaded from: classes2.dex */
    private class f extends d<C, Map<R, V>> {
        /* synthetic */ f(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String c() {
            return "Column";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: f */
        public Map<R, V> d(int i9) {
            return new e(i9);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* renamed from: g */
        public Map<R, V> put(C c10, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: h */
        public Map<R, V> e(int i9, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        private f() {
            super(ArrayTable.this.columnKeyToIndex, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class g extends d<C, V> {

        /* renamed from: b  reason: collision with root package name */
        final int f12620b;

        g(int i9) {
            super(ArrayTable.this.columnKeyToIndex, null);
            this.f12620b = i9;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String c() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V d(int i9) {
            return (V) ArrayTable.this.at(this.f12620b, i9);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i9, V v10) {
            return (V) ArrayTable.this.set(this.f12620b, i9, v10);
        }
    }

    /* loaded from: classes2.dex */
    private class h extends d<R, Map<C, V>> {
        /* synthetic */ h(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String c() {
            return "Row";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: f */
        public Map<C, V> d(int i9) {
            return new g(i9);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* renamed from: g */
        public Map<C, V> put(R r10, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* renamed from: h */
        public Map<C, V> e(int i9, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        private h() {
            super(ArrayTable.this.rowKeyToIndex, null);
        }
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> copyOf = ImmutableList.copyOf(iterable);
        this.rowList = copyOf;
        ImmutableList<C> copyOf2 = ImmutableList.copyOf(iterable2);
        this.columnList = copyOf2;
        com.google.common.base.o.d(copyOf.isEmpty() == copyOf2.isEmpty());
        this.rowKeyToIndex = d6.h(copyOf);
        this.columnKeyToIndex = d6.h(copyOf2);
        this.array = (V[][]) ((Object[][]) Array.newInstance(Object.class, copyOf.size(), copyOf2.size()));
        eraseAll();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public q8.a<R, C, V> getCell(int i9) {
        return new b(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V getValue(int i9) {
        return at(i9 / this.columnList.size(), i9 % this.columnList.size());
    }

    public V at(int i9, int i10) {
        com.google.common.base.o.q(i9, this.rowList.size());
        com.google.common.base.o.q(i10, this.columnList.size());
        return this.array[i9][i10];
    }

    @Override // com.google.common.collect.y
    Iterator<q8.a<R, C, V>> cellIterator() {
        return new a(size());
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public Set<q8.a<R, C, V>> cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.y
    Spliterator<q8.a<R, C, V>> cellSpliterator() {
        return s2.c(size(), 273, new IntFunction() { // from class: com.google.common.collect.b0
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                q8.a cell;
                cell = ArrayTable.this.getCell(i9);
                return cell;
            }
        });
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Map<R, V> column(C c10) {
        com.google.common.base.o.s(c10);
        Integer num = this.columnKeyToIndex.get(c10);
        if (num == null) {
            return Collections.emptyMap();
        }
        return new e(num.intValue());
    }

    public ImmutableList<C> columnKeyList() {
        return this.columnList;
    }

    @Override // com.google.common.collect.q8
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.f fVar = this.columnMap;
        if (fVar == null) {
            ArrayTable<R, C, V>.f fVar2 = new f(this, null);
            this.columnMap = fVar2;
            return fVar2;
        }
        return fVar;
    }

    @Override // com.google.common.collect.y
    public boolean contains(Object obj, Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // com.google.common.collect.y
    public boolean containsColumn(Object obj) {
        return this.columnKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.y
    public boolean containsRow(Object obj) {
        return this.rowKeyToIndex.containsKey(obj);
    }

    @Override // com.google.common.collect.y
    public boolean containsValue(Object obj) {
        V[][] vArr;
        for (V[] vArr2 : this.array) {
            for (V v10 : vArr2) {
                if (com.google.common.base.l.a(obj, v10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public V erase(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    public void eraseAll() {
        for (V[] vArr : this.array) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public V get(Object obj, Object obj2) {
        Integer num = this.rowKeyToIndex.get(obj);
        Integer num2 = this.columnKeyToIndex.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.y
    public boolean isEmpty() {
        return this.rowList.isEmpty() || this.columnList.isEmpty();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public V put(R r10, C c10, V v10) {
        com.google.common.base.o.s(r10);
        com.google.common.base.o.s(c10);
        Integer num = this.rowKeyToIndex.get(r10);
        com.google.common.base.o.n(num != null, "Row %s not in %s", r10, this.rowList);
        Integer num2 = this.columnKeyToIndex.get(c10);
        com.google.common.base.o.n(num2 != null, "Column %s not in %s", c10, this.columnList);
        return set(num.intValue(), num2.intValue(), v10);
    }

    @Override // com.google.common.collect.y
    public void putAll(q8<? extends R, ? extends C, ? extends V> q8Var) {
        super.putAll(q8Var);
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.q8
    public Map<C, V> row(R r10) {
        com.google.common.base.o.s(r10);
        Integer num = this.rowKeyToIndex.get(r10);
        if (num == null) {
            return Collections.emptyMap();
        }
        return new g(num.intValue());
    }

    public ImmutableList<R> rowKeyList() {
        return this.rowList;
    }

    @Override // com.google.common.collect.q8
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.h hVar = this.rowMap;
        if (hVar == null) {
            ArrayTable<R, C, V>.h hVar2 = new h(this, null);
            this.rowMap = hVar2;
            return hVar2;
        }
        return hVar;
    }

    public V set(int i9, int i10, V v10) {
        com.google.common.base.o.q(i9, this.rowList.size());
        com.google.common.base.o.q(i10, this.columnList.size());
        V[][] vArr = this.array;
        V v11 = vArr[i9][i10];
        vArr[i9][i10] = v10;
        return v11;
    }

    @Override // com.google.common.collect.q8
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.rowList.size(), this.columnList.size()));
        for (int i9 = 0; i9 < this.rowList.size(); i9++) {
            V[][] vArr2 = this.array;
            System.arraycopy(vArr2[i9], 0, vArr[i9], 0, vArr2[i9].length);
        }
        return vArr;
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.y
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.y
    Iterator<V> valuesIterator() {
        return new c(size());
    }

    @Override // com.google.common.collect.y
    Spliterator<V> valuesSpliterator() {
        return s2.c(size(), 16, new IntFunction() { // from class: com.google.common.collect.a0
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                Object value;
                value = ArrayTable.this.getValue(i9);
                return value;
            }
        });
    }

    public static <R, C, V> ArrayTable<R, C, V> create(q8<R, C, ? extends V> q8Var) {
        if (q8Var instanceof ArrayTable) {
            return new ArrayTable<>((ArrayTable) q8Var);
        }
        return new ArrayTable<>(q8Var);
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayTable(q8<R, C, ? extends V> q8Var) {
        this(q8Var.rowKeySet(), q8Var.columnKeySet());
        putAll(q8Var);
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.rowList;
        this.rowList = immutableList;
        ImmutableList<C> immutableList2 = arrayTable.columnList;
        this.columnList = immutableList2;
        this.rowKeyToIndex = arrayTable.rowKeyToIndex;
        this.columnKeyToIndex = arrayTable.columnKeyToIndex;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance(Object.class, immutableList.size(), immutableList2.size()));
        this.array = vArr;
        for (int i9 = 0; i9 < this.rowList.size(); i9++) {
            V[][] vArr2 = arrayTable.array;
            System.arraycopy(vArr2[i9], 0, vArr[i9], 0, vArr2[i9].length);
        }
    }
}
