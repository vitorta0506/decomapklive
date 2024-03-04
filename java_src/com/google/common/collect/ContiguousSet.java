package com.google.common.collect;

import com.google.common.collect.ImmutableSortedSet;
import java.lang.Comparable;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.SortedSet;
/* loaded from: classes2.dex */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    final l3<C> domain;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContiguousSet(l3<C> l3Var) {
        super(y6.e());
        this.domain = l3Var;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.b<E> builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i9, int i10) {
        return create(Range.closed(Integer.valueOf(i9), Integer.valueOf(i10)), l3.b());
    }

    public static ContiguousSet<Integer> closedOpen(int i9, int i10) {
        return create(Range.closedOpen(Integer.valueOf(i9), Integer.valueOf(i10)), l3.b());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, l3<C> l3Var) {
        com.google.common.base.o.s(range);
        com.google.common.base.o.s(l3Var);
        try {
            Range<C> intersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(l3Var.e())) : range;
            if (!range.hasUpperBound()) {
                intersection = intersection.intersection(Range.atMost(l3Var.d()));
            }
            boolean z10 = true;
            if (!intersection.isEmpty()) {
                C l10 = range.lowerBound.l(l3Var);
                Objects.requireNonNull(l10);
                C j10 = range.upperBound.j(l3Var);
                Objects.requireNonNull(j10);
                if (Range.compareOrThrow(l10, j10) <= 0) {
                    z10 = false;
                }
            }
            if (z10) {
                return new m3(l3Var);
            }
            return new f7(intersection, l3Var);
        } catch (NoSuchElementException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<C> createDescendingSet() {
        return new j3(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSet(Object obj) {
        return headSet((ContiguousSet<C>) ((Comparable) obj));
    }

    abstract ContiguousSet<C> headSetImpl(C c10, boolean z10);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSetImpl(Object obj, boolean z10) {
        return headSetImpl((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    abstract ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet subSetImpl(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSetImpl((boolean) ((Comparable) obj), z10, (boolean) ((Comparable) obj2), z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet tailSet(Object obj) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj));
    }

    abstract ContiguousSet<C> tailSetImpl(C c10, boolean z10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet tailSetImpl(Object obj, boolean z10) {
        return tailSetImpl((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    public static ContiguousSet<Long> closed(long j10, long j11) {
        return create(Range.closed(Long.valueOf(j10), Long.valueOf(j11)), l3.c());
    }

    public static ContiguousSet<Long> closedOpen(long j10, long j11) {
        return create(Range.closedOpen(Long.valueOf(j10), Long.valueOf(j11)), l3.c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSet(Object obj, boolean z10) {
        return headSet((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSet((boolean) ((Comparable) obj), z10, (boolean) ((Comparable) obj2), z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet tailSet(Object obj, boolean z10) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z10) {
        return headSet((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSet((boolean) ((Comparable) obj), z10, (boolean) ((Comparable) obj2), z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z10) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((ContiguousSet<C>) ((Comparable) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> headSet(C c10) {
        return headSetImpl((ContiguousSet<C>) ((Comparable) com.google.common.base.o.s(c10)), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> subSet(C c10, C c11) {
        com.google.common.base.o.s(c10);
        com.google.common.base.o.s(c11);
        com.google.common.base.o.d(comparator().compare(c10, c11) <= 0);
        return subSetImpl((boolean) c10, true, (boolean) c11, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> tailSet(C c10) {
        return tailSetImpl((ContiguousSet<C>) ((Comparable) com.google.common.base.o.s(c10)), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> headSet(C c10, boolean z10) {
        return headSetImpl((ContiguousSet<C>) ((Comparable) com.google.common.base.o.s(c10)), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> tailSet(C c10, boolean z10) {
        return tailSetImpl((ContiguousSet<C>) ((Comparable) com.google.common.base.o.s(c10)), z10);
    }

    public ContiguousSet<C> subSet(C c10, boolean z10, C c11, boolean z11) {
        com.google.common.base.o.s(c10);
        com.google.common.base.o.s(c11);
        com.google.common.base.o.d(comparator().compare(c10, c11) <= 0);
        return subSetImpl((boolean) c10, z10, (boolean) c11, z11);
    }
}
