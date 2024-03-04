package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import java.util.Spliterator;
import java.util.Spliterators;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m7<E> extends ImmutableSet.b<E> {

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f13256e;

    /* renamed from: f  reason: collision with root package name */
    static final m7<Object> f13257f;

    /* renamed from: a  reason: collision with root package name */
    private final transient Object[] f13258a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f13259b;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f13260c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f13261d;

    static {
        Object[] objArr = new Object[0];
        f13256e = objArr;
        f13257f = new m7<>(objArr, 0, objArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m7(Object[] objArr, int i9, Object[] objArr2, int i10) {
        this.f13258a = objArr;
        this.f13259b = i9;
        this.f13260c = objArr2;
        this.f13261d = i10;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        Object[] objArr = this.f13260c;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int d10 = e4.d(obj);
        while (true) {
            int i9 = d10 & this.f13261d;
            Object obj2 = objArr[i9];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            d10 = i9 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        Object[] objArr2 = this.f13258a;
        System.arraycopy(objArr2, 0, objArr, i9, objArr2.length);
        return i9 + this.f13258a.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet.b
    public ImmutableList<E> createAsList() {
        if (this.f13260c.length == 0) {
            return ImmutableList.of();
        }
        return new g7(this, this.f13258a);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f13259b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.f13258a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.f13258a.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13258a.length;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this.f13258a, 1297);
    }

    @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return p5.n(this.f13258a);
    }
}
