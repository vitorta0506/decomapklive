package com.google.common.base;

import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a<T> extends Optional<T> {

    /* renamed from: a  reason: collision with root package name */
    static final a<Object> f12334a = new a<>();
    private static final long serialVersionUID = 0;

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> Optional<T> a() {
        return f12334a;
    }

    private Object readResolve() {
        return f12334a;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public T or(T t10) {
        return (T) o.t(t10, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return null;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(h<? super T, V> hVar) {
        o.s(hVar);
        return Optional.absent();
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        return (Optional) o.s(optional);
    }

    @Override // com.google.common.base.Optional
    public T or(w<? extends T> wVar) {
        return (T) o.t(wVar.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }
}
