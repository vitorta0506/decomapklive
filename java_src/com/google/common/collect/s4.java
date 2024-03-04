package com.google.common.collect;

import java.util.Map;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
final class s4<K, V> extends ImmutableCollection<V> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<K, V> f13406a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends e9<V> {

        /* renamed from: a  reason: collision with root package name */
        final e9<Map.Entry<K, V>> f13407a;

        a() {
            this.f13407a = s4.this.f13406a.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13407a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f13407a.next().getValue();
        }
    }

    /* loaded from: classes2.dex */
    class b extends f4<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImmutableList f13409a;

        b(ImmutableList immutableList) {
            this.f13409a = immutableList;
        }

        @Override // com.google.common.collect.f4
        ImmutableCollection<V> c() {
            return s4.this;
        }

        @Override // java.util.List
        public V get(int i9) {
            return (V) ((Map.Entry) this.f13409a.get(i9)).getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s4(ImmutableMap<K, V> immutableMap) {
        this.f13406a = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<V> asList() {
        return new b(this.f13406a.entrySet().asList());
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return obj != null && p5.g(iterator(), obj);
    }

    @Override // java.lang.Iterable
    public void forEach(final Consumer<? super V> consumer) {
        com.google.common.base.o.s(consumer);
        this.f13406a.forEach(new BiConsumer() { // from class: com.google.common.collect.q4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                consumer.accept(obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f13406a.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<V> spliterator() {
        return s2.e(this.f13406a.entrySet().spliterator(), r4.f13377a);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<V> iterator() {
        return new a();
    }
}
