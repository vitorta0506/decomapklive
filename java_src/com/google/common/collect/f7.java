package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f7<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Range<C> f13057a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends s<C> {

        /* renamed from: b  reason: collision with root package name */
        final C f13058b;

        a(Comparable comparable) {
            super(comparable);
            this.f13058b = (C) f7.this.last();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.s
        /* renamed from: b */
        public C a(C c10) {
            if (f7.d(c10, this.f13058b)) {
                return null;
            }
            return f7.this.domain.f(c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends s<C> {

        /* renamed from: b  reason: collision with root package name */
        final C f13060b;

        b(Comparable comparable) {
            super(comparable);
            this.f13060b = (C) f7.this.first();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.s
        /* renamed from: b */
        public C a(C c10) {
            if (f7.d(c10, this.f13060b)) {
                return null;
            }
            return f7.this.domain.h(c10);
        }
    }

    /* loaded from: classes2.dex */
    class c extends f4<C> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f4
        /* renamed from: d */
        public ImmutableSortedSet<C> c() {
            return f7.this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        /* renamed from: f */
        public C get(int i9) {
            com.google.common.base.o.q(i9, size());
            f7 f7Var = f7.this;
            return (C) f7Var.domain.g(f7Var.first(), i9);
        }
    }

    /* loaded from: classes2.dex */
    private static final class d<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Range<C> f13063a;

        /* renamed from: b  reason: collision with root package name */
        final l3<C> f13064b;

        /* synthetic */ d(Range range, l3 l3Var, a aVar) {
            this(range, l3Var);
        }

        private Object readResolve() {
            return new f7(this.f13063a, this.f13064b);
        }

        private d(Range<C> range, l3<C> l3Var) {
            this.f13063a = range;
            this.f13064b = l3Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f7(Range<C> range, l3<C> l3Var) {
        super(l3Var);
        this.f13057a = range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Comparable<?> comparable, Comparable<?> comparable2) {
        return comparable2 != null && Range.compareOrThrow(comparable, comparable2) == 0;
    }

    private ContiguousSet<C> g(Range<C> range) {
        if (this.f13057a.isConnected(range)) {
            return ContiguousSet.create(this.f13057a.intersection(range), this.domain);
        }
        return new m3(this.domain);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f13057a.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return c3.a(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet.b
    public ImmutableList<C> createAsList() {
        if (this.domain.f13213a) {
            return new c();
        }
        return super.createAsList();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f7) {
            f7 f7Var = (f7) obj;
            if (this.domain.equals(f7Var.domain)) {
                return first().equals(f7Var.first()) && last().equals(f7Var.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: f */
    public C first() {
        C l10 = this.f13057a.lowerBound.l(this.domain);
        Objects.requireNonNull(l10);
        return l10;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return w7.e(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSetImpl(Object obj, boolean z10) {
        return headSetImpl((f7<C>) ((Comparable) obj), z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(Object obj) {
        if (contains(obj)) {
            C first = first();
            Objects.requireNonNull(obj);
            return (int) this.domain.a(first, (Comparable) obj);
        }
        return -1;
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        com.google.common.base.o.s(contiguousSet);
        com.google.common.base.o.d(this.domain.equals(contiguousSet.domain));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) y6.e().c(first(), (Comparable) contiguousSet.first());
        Comparable comparable2 = (Comparable) y6.e().d(last(), (Comparable) contiguousSet.last());
        if (comparable.compareTo(comparable2) <= 0) {
            return ContiguousSet.create(Range.closed(comparable, comparable2), this.domain);
        }
        return new m3(this.domain);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: m */
    public C last() {
        C j10 = this.f13057a.upperBound.j(this.domain);
        Objects.requireNonNull(j10);
        return j10;
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        BoundType boundType = BoundType.CLOSED;
        return range(boundType, boundType);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long a10 = this.domain.a(first(), last());
        if (a10 >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) a10) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet subSetImpl(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSetImpl((boolean) ((Comparable) obj), z10, (boolean) ((Comparable) obj2), z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet tailSetImpl(Object obj, boolean z10) {
        return tailSetImpl((f7<C>) ((Comparable) obj), z10);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new d(this.f13057a, this.domain, null);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public e9<C> descendingIterator() {
        return new b(last());
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> headSetImpl(C c10, boolean z10) {
        return g(Range.upTo(c10, BoundType.forBoolean(z10)));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<C> iterator() {
        return new a(first());
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.create(this.f13057a.lowerBound.p(boundType, this.domain), this.f13057a.upperBound.q(boundType2, this.domain));
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
        if (c10.compareTo(c11) == 0 && !z10 && !z11) {
            return new m3(this.domain);
        }
        return g(Range.range(c10, BoundType.forBoolean(z10), c11, BoundType.forBoolean(z11)));
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> tailSetImpl(C c10, boolean z10) {
        return g(Range.downTo(c10, BoundType.forBoolean(z10)));
    }
}
