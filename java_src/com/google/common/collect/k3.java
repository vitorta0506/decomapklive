package com.google.common.collect;

import com.google.common.collect.i8;
import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
/* loaded from: classes2.dex */
abstract class k3<E> extends v3<E> implements h8<E> {

    /* renamed from: a  reason: collision with root package name */
    private transient Comparator<? super E> f13187a;

    /* renamed from: b  reason: collision with root package name */
    private transient NavigableSet<E> f13188b;

    /* renamed from: c  reason: collision with root package name */
    private transient Set<q6.a<E>> f13189c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends t6.d<E> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<q6.a<E>> iterator() {
            return k3.this.A0();
        }

        @Override // com.google.common.collect.t6.d
        q6<E> m() {
            return k3.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k3.this.C0().entrySet().size();
        }
    }

    abstract Iterator<q6.a<E>> A0();

    abstract h8<E> C0();

    @Override // com.google.common.collect.h8, com.google.common.collect.e8
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f13187a;
        if (comparator == null) {
            y6 h10 = y6.a(C0().comparator()).h();
            this.f13187a = h10;
            return h10;
        }
        return comparator;
    }

    @Override // com.google.common.collect.h8
    public h8<E> descendingMultiset() {
        return C0();
    }

    @Override // com.google.common.collect.v3, com.google.common.collect.q6
    public Set<q6.a<E>> entrySet() {
        Set<q6.a<E>> set = this.f13189c;
        if (set == null) {
            Set<q6.a<E>> y02 = y0();
            this.f13189c = y02;
            return y02;
        }
        return set;
    }

    @Override // com.google.common.collect.h8
    public q6.a<E> firstEntry() {
        return C0().lastEntry();
    }

    @Override // com.google.common.collect.h8
    public h8<E> headMultiset(E e10, BoundType boundType) {
        return C0().tailMultiset(e10, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.h8
    public q6.a<E> lastEntry() {
        return C0().firstEntry();
    }

    @Override // com.google.common.collect.h8
    public q6.a<E> pollFirstEntry() {
        return C0().pollLastEntry();
    }

    @Override // com.google.common.collect.h8
    public q6.a<E> pollLastEntry() {
        return C0().pollFirstEntry();
    }

    @Override // com.google.common.collect.h8
    public h8<E> subMultiset(E e10, BoundType boundType, E e11, BoundType boundType2) {
        return C0().subMultiset(e11, boundType2, e10, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.h8
    public h8<E> tailMultiset(E e10, BoundType boundType) {
        return C0().headMultiset(e10, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.q3, java.util.Collection
    public Object[] toArray() {
        return standardToArray();
    }

    @Override // com.google.common.collect.w3
    public String toString() {
        return entrySet().toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3, com.google.common.collect.w3
    /* renamed from: w0 */
    public q6<E> delegate() {
        return C0();
    }

    Set<q6.a<E>> y0() {
        return new a();
    }

    @Override // com.google.common.collect.q6
    public NavigableSet<E> elementSet() {
        NavigableSet<E> navigableSet = this.f13188b;
        if (navigableSet == null) {
            i8.b bVar = new i8.b(this);
            this.f13188b = bVar;
            return bVar;
        }
        return navigableSet;
    }

    @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) standardToArray(tArr);
    }
}
