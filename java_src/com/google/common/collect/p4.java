package com.google.common.collect;

import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p4<K, V> extends l5<K> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<K, V> f13341a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(ImmutableMap<K, V> immutableMap) {
        this.f13341a = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13341a.containsKey(obj);
    }

    @Override // com.google.common.collect.l5, java.lang.Iterable
    public void forEach(final Consumer<? super K> consumer) {
        com.google.common.base.o.s(consumer);
        this.f13341a.forEach(new BiConsumer() { // from class: com.google.common.collect.o4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                consumer.accept(obj);
            }
        });
    }

    @Override // com.google.common.collect.l5
    K get(int i9) {
        return this.f13341a.entrySet().asList().get(i9).getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13341a.size();
    }

    @Override // com.google.common.collect.l5, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<K> spliterator() {
        return this.f13341a.keySpliterator();
    }

    @Override // com.google.common.collect.l5, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<K> iterator() {
        return this.f13341a.keyIterator();
    }
}
