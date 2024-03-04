package com.google.common.collect;

import com.google.common.collect.q8;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class q7<R, C, V> extends ImmutableTable<R, C, V> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends l5<q8.a<R, C, V>> {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l5
        /* renamed from: c */
        public q8.a<R, C, V> get(int i9) {
            return q7.this.getCell(i9);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof q8.a) {
                q8.a aVar = (q8.a) obj;
                Object obj2 = q7.this.get(aVar.a(), aVar.b());
                return obj2 != null && obj2.equals(aVar.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return q7.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c extends ImmutableList<V> {
        private c() {
        }

        @Override // java.util.List
        public V get(int i9) {
            return (V) q7.this.getValue(i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return q7.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> q7<R, C, V> c(List<q8.a<R, C, V>> list, final Comparator<? super R> comparator, final Comparator<? super C> comparator2) {
        com.google.common.base.o.s(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() { // from class: com.google.common.collect.p7
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = q7.f(comparator, comparator2, (q8.a) obj, (q8.a) obj2);
                    return f10;
                }
            });
        }
        return d(list, comparator, comparator2);
    }

    private static <R, C, V> q7<R, C, V> d(Iterable<q8.a<R, C, V>> iterable, Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        ImmutableSet copyOf;
        ImmutableSet copyOf2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList copyOf3 = ImmutableList.copyOf(iterable);
        for (q8.a<R, C, V> aVar : iterable) {
            linkedHashSet.add(aVar.a());
            linkedHashSet2.add(aVar.b());
        }
        if (comparator == null) {
            copyOf = ImmutableSet.copyOf((Collection) linkedHashSet);
        } else {
            copyOf = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet));
        }
        if (comparator2 == null) {
            copyOf2 = ImmutableSet.copyOf((Collection) linkedHashSet2);
        } else {
            copyOf2 = ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2));
        }
        return e(copyOf3, copyOf, copyOf2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R, C, V> q7<R, C, V> e(ImmutableList<q8.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        if (immutableList.size() > (immutableSet.size() * immutableSet2.size()) / 2) {
            return new h3(immutableList, immutableSet, immutableSet2);
        }
        return new j8(immutableList, immutableSet, immutableSet2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(Comparator comparator, Comparator comparator2, q8.a aVar, q8.a aVar2) {
        int compare = comparator == null ? 0 : comparator.compare(aVar.a(), aVar2.a());
        if (compare != 0) {
            return compare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.b(), aVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(R r10, C c10, V v10, V v11) {
        com.google.common.base.o.o(v10 == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r10, c10, v11, v10);
    }

    abstract q8.a<R, C, V> getCell(int i9);

    abstract V getValue(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.y
    public final ImmutableSet<q8.a<R, C, V>> createCellSet() {
        return isEmpty() ? ImmutableSet.of() : new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.y
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.of() : new c();
    }
}
