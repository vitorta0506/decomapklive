package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ImmutableClassToInstanceMap<B> extends t3<Class<? extends B>, B> implements Serializable {
    private static final ImmutableClassToInstanceMap<Object> EMPTY = new ImmutableClassToInstanceMap<>(ImmutableMap.of());
    private final ImmutableMap<Class<? extends B>, B> delegate;

    /* loaded from: classes2.dex */
    public static final class b<B> {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap.b<Class<? extends B>, B> f12660a = ImmutableMap.builder();

        private static <B, T extends B> T b(Class<T> cls, B b10) {
            return (T) com.google.common.primitives.i.d(cls).cast(b10);
        }

        public ImmutableClassToInstanceMap<B> a() {
            ImmutableMap<Class<? extends B>, B> d10 = this.f12660a.d();
            if (d10.isEmpty()) {
                return ImmutableClassToInstanceMap.of();
            }
            return new ImmutableClassToInstanceMap<>(d10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <T extends B> b<B> c(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class<? extends T> key = entry.getKey();
                this.f12660a.h(key, b(key, entry.getValue()));
            }
            return this;
        }
    }

    public static <B> b<B> builder() {
        return new b<>();
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        if (map instanceof ImmutableClassToInstanceMap) {
            return (ImmutableClassToInstanceMap) map;
        }
        return new b().c(map).a();
    }

    public static <B> ImmutableClassToInstanceMap<B> of() {
        return (ImmutableClassToInstanceMap<B>) EMPTY;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T extends B, java.lang.Object] */
    public <T extends B> T getInstance(Class<T> cls) {
        return this.delegate.get(com.google.common.base.o.s(cls));
    }

    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t10) {
        throw new UnsupportedOperationException();
    }

    Object readResolve() {
        return isEmpty() ? of() : this;
    }

    private ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t10) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.t3, com.google.common.collect.w3
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }
}
