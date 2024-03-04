package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import java.io.Serializable;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class n4<K, V> extends ImmutableSet.b<Map.Entry<K, V>> {

    /* loaded from: classes2.dex */
    private static class a<K, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMap<K, V> f13268a;

        a(ImmutableMap<K, V> immutableMap) {
            this.f13268a = immutableMap;
        }

        Object readResolve() {
            return this.f13268a.entrySet();
        }
    }

    /* loaded from: classes2.dex */
    static final class b<K, V> extends n4<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final transient ImmutableMap<K, V> f13269a;

        /* renamed from: b  reason: collision with root package name */
        private final transient ImmutableList<Map.Entry<K, V>> f13270b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ImmutableMap<K, V> immutableMap, Map.Entry<K, V>[] entryArr) {
            this(immutableMap, ImmutableList.asImmutableList(entryArr));
        }

        @Override // com.google.common.collect.n4
        ImmutableMap<K, V> c() {
            return this.f13269a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i9) {
            return this.f13270b.copyIntoArray(objArr, i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.b
        public ImmutableList<Map.Entry<K, V>> createAsList() {
            return new g7(this, this.f13270b);
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
            this.f13270b.forEach(consumer);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
        public Spliterator<Map.Entry<K, V>> spliterator() {
            return this.f13270b.spliterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ImmutableMap<K, V> immutableMap, ImmutableList<Map.Entry<K, V>> immutableList) {
            this.f13269a = immutableMap;
            this.f13270b = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<Map.Entry<K, V>> iterator() {
            return this.f13270b.iterator();
        }
    }

    abstract ImmutableMap<K, V> c();

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            V v10 = c().get(entry.getKey());
            return v10 != null && v10.equals(entry.getValue());
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return c().hashCode();
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return c().isHashCodeFast();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return c().isPartialView();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return c().size();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new a(c());
    }
}
