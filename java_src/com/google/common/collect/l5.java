package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class l5<E> extends ImmutableSet.b<E> {

    /* loaded from: classes2.dex */
    class a extends f4<E> {
        a() {
        }

        @Override // com.google.common.collect.f4
        ImmutableCollection<E> c() {
            return l5.this;
        }

        @Override // java.util.List
        public E get(int i9) {
            return (E) l5.this.get(i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f4, com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return l5.this.isPartialView();
        }

        @Override // com.google.common.collect.f4, java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return l5.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        return asList().copyIntoArray(objArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet.b
    public ImmutableList<E> createAsList() {
        return new a();
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        com.google.common.base.o.s(consumer);
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            consumer.accept(get(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract E get(int i9);

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return s2.c(size(), 1297, new IntFunction() { // from class: com.google.common.collect.k5
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                return l5.this.get(i9);
            }
        });
    }

    @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return asList().iterator();
    }
}
