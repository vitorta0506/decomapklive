package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u5<E> extends ImmutableMultiset<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<E, Integer> f13441a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<q6.a<E>> f13442b;

    /* renamed from: c  reason: collision with root package name */
    private final long f13443c;

    /* renamed from: d  reason: collision with root package name */
    private transient ImmutableSet<E> f13444d;

    private u5(Map<E, Integer> map, ImmutableList<q6.a<E>> immutableList, long j10) {
        this.f13441a = map;
        this.f13442b = immutableList;
        this.f13443c = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMultiset<E> d(Collection<? extends q6.a<? extends E>> collection) {
        q6.a[] aVarArr = (q6.a[]) collection.toArray(new q6.a[0]);
        HashMap n9 = d6.n(aVarArr.length);
        long j10 = 0;
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            q6.a aVar = aVarArr[i9];
            int count = aVar.getCount();
            j10 += count;
            Object s10 = com.google.common.base.o.s(aVar.a());
            n9.put(s10, Integer.valueOf(count));
            if (!(aVar instanceof t6.e)) {
                aVarArr[i9] = t6.g(s10, count);
            }
        }
        return new u5(n9, ImmutableList.asImmutableList(aVarArr), j10);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public int count(Object obj) {
        return this.f13441a.getOrDefault(obj, 0).intValue();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    q6.a<E> getEntry(int i9) {
        return this.f13442b.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return com.google.common.primitives.f.i(this.f13443c);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f13444d;
        if (immutableSet == null) {
            ImmutableMultiset.c cVar = new ImmutableMultiset.c(this.f13442b, this);
            this.f13444d = cVar;
            return cVar;
        }
        return immutableSet;
    }
}
