package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.a9;
import com.google.common.collect.q8;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableTable<R, C, V> extends y<R, C, V> implements Serializable {

    /* loaded from: classes2.dex */
    public static final class a<R, C, V> {

        /* renamed from: a  reason: collision with root package name */
        private final List<q8.a<R, C, V>> f12765a = z5.g();

        /* renamed from: b  reason: collision with root package name */
        private Comparator<? super R> f12766b;

        /* renamed from: c  reason: collision with root package name */
        private Comparator<? super C> f12767c;

        public ImmutableTable<R, C, V> a() {
            return b();
        }

        public ImmutableTable<R, C, V> b() {
            int size = this.f12765a.size();
            if (size != 0) {
                if (size != 1) {
                    return q7.c(this.f12765a, this.f12766b, this.f12767c);
                }
                return new d8((q8.a) n5.i(this.f12765a));
            }
            return ImmutableTable.of();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a<R, C, V> c(a<R, C, V> aVar) {
            this.f12765a.addAll(aVar.f12765a);
            return this;
        }

        public a<R, C, V> d(q8.a<? extends R, ? extends C, ? extends V> aVar) {
            if (aVar instanceof a9.c) {
                com.google.common.base.o.t(aVar.a(), "row");
                com.google.common.base.o.t(aVar.b(), "column");
                com.google.common.base.o.t(aVar.getValue(), "value");
                this.f12765a.add(aVar);
            } else {
                e(aVar.a(), aVar.b(), aVar.getValue());
            }
            return this;
        }

        public a<R, C, V> e(R r10, C c10, V v10) {
            this.f12765a.add(ImmutableTable.cellOf(r10, c10, v10));
            return this;
        }
    }

    /* loaded from: classes2.dex */
    static final class b implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Object[] f12768a;

        /* renamed from: b  reason: collision with root package name */
        private final Object[] f12769b;

        /* renamed from: c  reason: collision with root package name */
        private final Object[] f12770c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f12771d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f12772e;

        private b(Object[] objArr, Object[] objArr2, Object[] objArr3, int[] iArr, int[] iArr2) {
            this.f12768a = objArr;
            this.f12769b = objArr2;
            this.f12770c = objArr3;
            this.f12771d = iArr;
            this.f12772e = iArr2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b a(ImmutableTable<?, ?, ?> immutableTable, int[] iArr, int[] iArr2) {
            return new b(immutableTable.rowKeySet().toArray(), immutableTable.columnKeySet().toArray(), immutableTable.values().toArray(), iArr, iArr2);
        }

        Object readResolve() {
            Object[] objArr = this.f12770c;
            if (objArr.length == 0) {
                return ImmutableTable.of();
            }
            int i9 = 0;
            if (objArr.length == 1) {
                return ImmutableTable.of(this.f12768a[0], this.f12769b[0], objArr[0]);
            }
            ImmutableList.b bVar = new ImmutableList.b(objArr.length);
            while (true) {
                Object[] objArr2 = this.f12770c;
                if (i9 < objArr2.length) {
                    bVar.a(ImmutableTable.cellOf(this.f12768a[this.f12771d[i9]], this.f12769b[this.f12772e[i9]], objArr2[i9]));
                    i9++;
                } else {
                    return q7.e(bVar.j(), ImmutableSet.copyOf(this.f12768a), ImmutableSet.copyOf(this.f12769b));
                }
            }
        }
    }

    public static <R, C, V> a<R, C, V> builder() {
        return new a<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> q8.a<R, C, V> cellOf(R r10, C c10, V v10) {
        return a9.b(com.google.common.base.o.t(r10, "rowKey"), com.google.common.base.o.t(c10, "columnKey"), com.google.common.base.o.t(v10, "value"));
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(q8<? extends R, ? extends C, ? extends V> q8Var) {
        if (q8Var instanceof ImmutableTable) {
            return (ImmutableTable) q8Var;
        }
        return copyOf(q8Var.cellSet());
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) j8.f13177e;
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3) {
        return z8.k(function, function2, function3);
    }

    @Override // com.google.common.collect.y
    final Spliterator<q8.a<R, C, V>> cellSpliterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: column  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Map mo212column(Object obj) {
        return column((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.q8
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    @Override // com.google.common.collect.y
    public boolean contains(Object obj, Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.y
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.y
    public abstract ImmutableSet<q8.a<R, C, V>> createCellSet();

    abstract b createSerializedForm();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.y
    public abstract ImmutableCollection<V> createValues();

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    @Deprecated
    public final V put(R r10, C c10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public final void putAll(q8<? extends R, ? extends C, ? extends V> q8Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return row((ImmutableTable<R, C, V>) obj);
    }

    @Override // com.google.common.collect.q8
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override // com.google.common.collect.q8
    public abstract /* synthetic */ int size();

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.y
    final Iterator<V> valuesIterator() {
        throw new AssertionError("should never be called");
    }

    final Object writeReplace() {
        return createSerializedForm();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r10, C c10, V v10) {
        return new d8(r10, c10, v10);
    }

    public static <T, R, C, V> Collector<T, ?, ImmutableTable<R, C, V>> toImmutableTable(Function<? super T, ? extends R> function, Function<? super T, ? extends C> function2, Function<? super T, ? extends V> function3, BinaryOperator<V> binaryOperator) {
        return z8.l(function, function2, function3, binaryOperator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.y
    public final e9<q8.a<R, C, V>> cellIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public ImmutableSet<q8.a<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    public ImmutableMap<R, V> column(C c10) {
        com.google.common.base.o.t(c10, "columnKey");
        return (ImmutableMap) com.google.common.base.j.a((ImmutableMap) columnMap().get(c10), ImmutableMap.of());
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.q8
    public ImmutableMap<C, V> row(R r10) {
        com.google.common.base.o.t(r10, "rowKey");
        return (ImmutableMap) com.google.common.base.j.a((ImmutableMap) rowMap().get(r10), ImmutableMap.of());
    }

    @Override // com.google.common.collect.y, com.google.common.collect.q8
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.y
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Iterable<? extends q8.a<? extends R, ? extends C, ? extends V>> iterable) {
        a builder = builder();
        for (q8.a<? extends R, ? extends C, ? extends V> aVar : iterable) {
            builder.d(aVar);
        }
        return builder.a();
    }
}
