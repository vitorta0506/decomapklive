package com.google.common.base;

import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s<T> extends Optional<T> {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    private final T f12385a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(T t10) {
        this.f12385a = t10;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.f12385a);
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f12385a.equals(((s) obj).f12385a);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return this.f12385a;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return this.f12385a.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    @Override // com.google.common.base.Optional
    public T or(T t10) {
        o.t(t10, "use Optional.orNull() instead of Optional.or(null)");
        return this.f12385a;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return this.f12385a;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        String valueOf = String.valueOf(this.f12385a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
        sb2.append("Optional.of(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(h<? super T, V> hVar) {
        return new s(o.t(hVar.apply((T) this.f12385a), "the Function passed to Optional.transform() must not return null."));
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        o.s(optional);
        return this;
    }

    @Override // com.google.common.base.Optional
    public T or(w<? extends T> wVar) {
        o.s(wVar);
        return this.f12385a;
    }
}
