package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.util.Arrays;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class l7<E> extends ImmutableMultiset<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final t6.e<?>[] f13225f = new t6.e[0];

    /* renamed from: g  reason: collision with root package name */
    static final ImmutableMultiset<Object> f13226g = d(ImmutableList.of());

    /* renamed from: a  reason: collision with root package name */
    private final transient t6.e<E>[] f13227a;

    /* renamed from: b  reason: collision with root package name */
    private final transient t6.e<?>[] f13228b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f13229c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f13230d;

    /* renamed from: e  reason: collision with root package name */
    private transient ImmutableSet<E> f13231e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a<E> extends t6.e<E> {

        /* renamed from: c  reason: collision with root package name */
        private final t6.e<E> f13232c;

        a(E e10, int i9, t6.e<E> eVar) {
            super(e10, i9);
            this.f13232c = eVar;
        }

        @Override // com.google.common.collect.t6.e
        public t6.e<E> b() {
            return this.f13232c;
        }
    }

    private l7(t6.e<E>[] eVarArr, t6.e<?>[] eVarArr2, int i9, int i10, ImmutableSet<E> immutableSet) {
        this.f13227a = eVarArr;
        this.f13228b = eVarArr2;
        this.f13229c = i9;
        this.f13230d = i10;
        this.f13231e = immutableSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMultiset<E> d(Collection<? extends q6.a<? extends E>> collection) {
        t6.e aVar;
        int size = collection.size();
        t6.e[] eVarArr = new t6.e[size];
        if (size == 0) {
            return new l7(eVarArr, f13225f, 0, 0, ImmutableSet.of());
        }
        int a10 = e4.a(size, 1.0d);
        int i9 = a10 - 1;
        t6.e[] eVarArr2 = new t6.e[a10];
        long j10 = 0;
        int i10 = 0;
        int i11 = 0;
        for (q6.a<? extends E> aVar2 : collection) {
            Object s10 = com.google.common.base.o.s(aVar2.a());
            int count = aVar2.getCount();
            int hashCode = s10.hashCode();
            int c10 = e4.c(hashCode) & i9;
            t6.e eVar = eVarArr2[c10];
            if (eVar == null) {
                aVar = (aVar2 instanceof t6.e) && !(aVar2 instanceof a) ? (t6.e) aVar2 : new t6.e(s10, count);
            } else {
                aVar = new a(s10, count, eVar);
            }
            i10 += hashCode ^ count;
            eVarArr[i11] = aVar;
            eVarArr2[c10] = aVar;
            j10 += count;
            i11++;
        }
        if (f(eVarArr2)) {
            return u5.d(ImmutableList.asImmutableList(eVarArr));
        }
        return new l7(eVarArr, eVarArr2, com.google.common.primitives.f.i(j10), i10, null);
    }

    private static boolean f(t6.e<?>[] eVarArr) {
        for (t6.e<?> eVar : eVarArr) {
            int i9 = 0;
            for (; eVar != null; eVar = eVar.b()) {
                i9++;
                if (i9 > 9) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public int count(Object obj) {
        t6.e<?>[] eVarArr = this.f13228b;
        if (obj != null && eVarArr.length != 0) {
            for (t6.e<?> eVar = eVarArr[e4.d(obj) & (eVarArr.length - 1)]; eVar != null; eVar = eVar.b()) {
                if (com.google.common.base.l.a(obj, eVar.a())) {
                    return eVar.getCount();
                }
            }
        }
        return 0;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    q6.a<E> getEntry(int i9) {
        return this.f13227a[i9];
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.q6
    public int hashCode() {
        return this.f13230d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return this.f13229c;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f13231e;
        if (immutableSet == null) {
            ImmutableMultiset.c cVar = new ImmutableMultiset.c(Arrays.asList(this.f13227a), this);
            this.f13231e = cVar;
            return cVar;
        }
        return immutableSet;
    }
}
