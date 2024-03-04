package com.google.common.collect;

import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Spliterator;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j4<E extends Enum<E>> extends ImmutableSet<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient EnumSet<E> f13172a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f13173b;

    /* loaded from: classes2.dex */
    private static class b<E extends Enum<E>> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final EnumSet<E> f13174a;

        b(EnumSet<E> enumSet) {
            this.f13174a = enumSet;
        }

        Object readResolve() {
            return new j4(this.f13174a.clone());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImmutableSet c(EnumSet enumSet) {
        int size = enumSet.size();
        if (size != 0) {
            if (size != 1) {
                return new j4(enumSet);
            }
            return ImmutableSet.of(n5.i(enumSet));
        }
        return ImmutableSet.of();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13172a.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof j4) {
            collection = ((j4) collection).f13172a;
        }
        return this.f13172a.containsAll(collection);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j4) {
            obj = ((j4) obj).f13172a;
        }
        return this.f13172a.equals(obj);
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        this.f13172a.forEach(consumer);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        int i9 = this.f13173b;
        if (i9 == 0) {
            int hashCode = this.f13172a.hashCode();
            this.f13173b = hashCode;
            return hashCode;
        }
        return i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f13172a.isEmpty();
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
        return this.f13172a.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return this.f13172a.spliterator();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.f13172a.toString();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new b(this.f13172a);
    }

    private j4(EnumSet<E> enumSet) {
        this.f13172a = enumSet;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return p5.D(this.f13172a.iterator());
    }
}
