package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.t7;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;
/* loaded from: classes2.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements u7<K, V> {
    private static final long serialVersionUID = 0;
    private final transient ImmutableSet<V> emptySet;
    private transient ImmutableSet<Map.Entry<K, V>> entries;
    private transient ImmutableSetMultimap<V, K> inverse;

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMultimap.c<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.c
        Collection<V> c() {
            return a7.g();
        }

        public ImmutableSetMultimap<K, V> h() {
            Collection entrySet = this.f12688a.entrySet();
            Comparator<? super K> comparator = this.f12689b;
            if (comparator != null) {
                entrySet = y6.a(comparator).f().b(entrySet);
            }
            return ImmutableSetMultimap.fromMapEntries(entrySet, this.f12690c);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final transient ImmutableSetMultimap<K, V> f12748a;

        b(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.f12748a = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return this.f12748a.containsEntry(entry.getKey(), entry.getValue());
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f12748a.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<Map.Entry<K, V>> iterator() {
            return this.f12748a.entryIterator();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final t7.b<ImmutableSetMultimap> f12749a = t7.a(ImmutableSetMultimap.class, "emptySet");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i9, Comparator<? super V> comparator) {
        super(immutableMap, i9);
        this.emptySet = emptySet(comparator);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(i6<? extends K, ? extends V> i6Var) {
        return copyOf(i6Var, null);
    }

    private static <V> ImmutableSet<V> emptySet(Comparator<? super V> comparator) {
        if (comparator == null) {
            return ImmutableSet.of();
        }
        return ImmutableSortedSet.emptySet(comparator);
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> flatteningToImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return o2.t(function, function2);
    }

    static <K, V> ImmutableSetMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i9 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            ImmutableSet valueSet = valueSet(comparator, entry.getValue());
            if (!valueSet.isEmpty()) {
                bVar.h(key, valueSet);
                i9 += valueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), i9, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> invert() {
        a builder = builder();
        e9 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.d(entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> h10 = builder.h();
        h10.inverse = this;
        return h10;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return o3.f13325a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            ImmutableMap.b builder = ImmutableMap.builder();
            int i9 = 0;
            for (int i10 = 0; i10 < readInt; i10++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    ImmutableSet.a valuesBuilder = valuesBuilder(comparator);
                    for (int i11 = 0; i11 < readInt2; i11++) {
                        valuesBuilder.a(objectInputStream.readObject());
                    }
                    ImmutableSet h10 = valuesBuilder.h();
                    if (h10.size() == readInt2) {
                        builder.h(readObject, h10);
                        i9 += readInt2;
                    } else {
                        String valueOf = String.valueOf(readObject);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 40);
                        sb2.append("Duplicate key-value pairs exist for key ");
                        sb2.append(valueOf);
                        throw new InvalidObjectException(sb2.toString());
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder(31);
                    sb3.append("Invalid value count ");
                    sb3.append(readInt2);
                    throw new InvalidObjectException(sb3.toString());
                }
            }
            try {
                ImmutableMultimap.e.f12692a.b(this, builder.d());
                ImmutableMultimap.e.f12693b.a(this, i9);
                c.f12749a.b(this, emptySet(comparator));
                return;
            } catch (IllegalArgumentException e10) {
                throw ((InvalidObjectException) new InvalidObjectException(e10.getMessage()).initCause(e10));
            }
        }
        StringBuilder sb4 = new StringBuilder(29);
        sb4.append("Invalid key count ");
        sb4.append(readInt);
        throw new InvalidObjectException(sb4.toString());
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> toImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return o2.W(function, function2);
    }

    private static <V> ImmutableSet<V> valueSet(Comparator<? super V> comparator, Collection<? extends V> collection) {
        if (comparator == null) {
            return ImmutableSet.copyOf((Collection) collection);
        }
        return ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet.a<V> valuesBuilder(Comparator<? super V> comparator) {
        if (comparator == null) {
            return new ImmutableSet.a<>();
        }
        return new ImmutableSortedSet.b(comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        t7.j(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ ImmutableCollection get(Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ ImmutableCollection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    Comparator<? super V> valueComparator() {
        ImmutableSet<V> immutableSet = this.emptySet;
        if (immutableSet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) immutableSet).comparator();
        }
        return null;
    }

    private static <K, V> ImmutableSetMultimap<K, V> copyOf(i6<? extends K, ? extends V> i6Var, Comparator<? super V> comparator) {
        com.google.common.base.o.s(i6Var);
        if (i6Var.isEmpty() && comparator == null) {
            return of();
        }
        if (i6Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) i6Var;
            if (!immutableSetMultimap.isPartialView()) {
                return immutableSetMultimap;
            }
        }
        return fromMapEntries(i6Var.asMap().entrySet(), comparator);
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v10) {
        a builder = builder();
        builder.d(k10, v10);
        return builder.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.inverse;
        if (immutableSetMultimap == null) {
            ImmutableSetMultimap<V, K> invert = invert();
            this.inverse = invert;
            return invert;
        }
        return immutableSetMultimap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return get((ImmutableSetMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableSetMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o, com.google.common.collect.i6
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entries;
        if (immutableSet == null) {
            b bVar = new b(this);
            this.entries = bVar;
            return bVar;
        }
        return immutableSet;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    public ImmutableSet<V> get(K k10) {
        return (ImmutableSet) com.google.common.base.j.a((ImmutableSet) this.map.get(k10), this.emptySet);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.i6
    @Deprecated
    public final ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.o
    @Deprecated
    public final ImmutableSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v10, K k11, V v11) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        return builder.h();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().l(iterable).h();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        return builder.h();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        builder.d(k13, v13);
        return builder.h();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a builder = builder();
        builder.d(k10, v10);
        builder.d(k11, v11);
        builder.d(k12, v12);
        builder.d(k13, v13);
        builder.d(k14, v14);
        return builder.h();
    }
}
