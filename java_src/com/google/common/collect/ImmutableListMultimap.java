package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;
/* loaded from: classes2.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements x5<K, V> {
    private static final long serialVersionUID = 0;
    private transient ImmutableListMultimap<V, K> inverse;

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMultimap.c<K, V> {
        public ImmutableListMultimap<K, V> h() {
            return (ImmutableListMultimap) super.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a<K, V> i(ImmutableMultimap.c<K, V> cVar) {
            super.b(cVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* renamed from: j */
        public a<K, V> d(K k10, V v10) {
            super.d(k10, v10);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* renamed from: k */
        public a<K, V> e(Map.Entry<? extends K, ? extends V> entry) {
            super.e(entry);
            return this;
        }

        public a<K, V> l(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.f(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* renamed from: m */
        public a<K, V> g(K k10, Iterable<? extends V> iterable) {
            super.g(k10, iterable);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i9) {
        super(immutableMap, i9);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(i6<? extends K, ? extends V> i6Var) {
        if (i6Var.isEmpty()) {
            return of();
        }
        if (i6Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) i6Var;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        return fromMapEntries(i6Var.asMap().entrySet(), null);
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> flatteningToImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return o2.s(function, function2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableListMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        ImmutableList sortedCopyOf;
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i9 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            if (comparator == null) {
                sortedCopyOf = ImmutableList.copyOf((Collection) value);
            } else {
                sortedCopyOf = ImmutableList.sortedCopyOf(comparator, value);
            }
            if (!sortedCopyOf.isEmpty()) {
                bVar.h(key, sortedCopyOf);
                i9 += sortedCopyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.d(), i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> invert() {
        a builder = builder();
        e9 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.d(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> h10 = builder.h();
        h10.inverse = this;
        return h10;
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return n3.f13267a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.b builder = ImmutableMap.builder();
            int i9 = 0;
            for (int i10 = 0; i10 < readInt; i10++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableList.b builder2 = ImmutableList.builder();
                    for (int i11 = 0; i11 < readInt2; i11++) {
                        builder2.a(objectInputStream.readObject());
                    }
                    builder.h(readObject, builder2.j());
                    i9 += readInt2;
                } else {
                    StringBuilder sb2 = new StringBuilder(31);
                    sb2.append("Invalid value count ");
                    sb2.append(readInt2);
                    throw new InvalidObjectException(sb2.toString());
                }
            }
            try {
                ImmutableMultimap.e.f12692a.b(this, builder.d());
                ImmutableMultimap.e.f12693b.a(this, i9);
                return;
            } catch (IllegalArgumentException e10) {
                throw ((InvalidObjectException) new InvalidObjectException(e10.getMessage()).initCause(e10));
            }
        }
        StringBuilder sb3 = new StringBuilder(29);
        sb3.append("Invalid key count ");
        sb3.append(readInt);
        throw new InvalidObjectException(sb3.toString());
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> toImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return o2.P(function, function2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        t7.j(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ ImmutableCollection get(Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ ImmutableCollection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10) {
        a builder = builder();
        builder.d(k10, v10);
        return builder.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.inverse;
        if (immutableListMultimap == null) {
            ImmutableListMultimap<V, K> invert = invert();
            this.inverse = invert;
            return invert;
        }
        return immutableListMultimap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ List get(Object obj) {
        return get((ImmutableListMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ List replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public ImmutableList<V> get(K k10) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k10);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    @Deprecated
    public final ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public final ImmutableList<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        return builder.h();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().l(iterable).h();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        return builder.h();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        builder.d(k13, v13);
        return builder.h();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        builder.d(k13, v13);
        builder.d(k14, v14);
        return builder.h();
    }
}
