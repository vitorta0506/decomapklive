package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* loaded from: classes2.dex */
    class a implements Iterable<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterable f12331a;

        /* renamed from: com.google.common.base.Optional$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0098a extends b<T> {

            /* renamed from: c  reason: collision with root package name */
            private final Iterator<? extends Optional<? extends T>> f12332c;

            C0098a() {
                this.f12332c = (Iterator) o.s(a.this.f12331a.iterator());
            }

            @Override // com.google.common.base.b
            protected T a() {
                while (this.f12332c.hasNext()) {
                    Optional<? extends T> next = this.f12332c.next();
                    if (next.isPresent()) {
                        return next.get();
                    }
                }
                return b();
            }
        }

        a(Iterable iterable) {
            this.f12331a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0098a();
        }
    }

    public static <T> Optional<T> absent() {
        return com.google.common.base.a.a();
    }

    public static <T> Optional<T> fromJavaUtil(java.util.Optional<T> optional) {
        if (optional == null) {
            return null;
        }
        return fromNullable(optional.orElse(null));
    }

    public static <T> Optional<T> fromNullable(T t10) {
        return t10 == null ? absent() : new s(t10);
    }

    public static <T> Optional<T> of(T t10) {
        return new s(o.s(t10));
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        o.s(iterable);
        return new a(iterable);
    }

    public static <T> java.util.Optional<T> toJavaUtil(Optional<T> optional) {
        if (optional == null) {
            return null;
        }
        return optional.toJavaUtil();
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    public abstract T or(w<? extends T> wVar);

    public abstract T or(T t10);

    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(h<? super T, V> hVar);

    public java.util.Optional<T> toJavaUtil() {
        return java.util.Optional.ofNullable(orNull());
    }
}
