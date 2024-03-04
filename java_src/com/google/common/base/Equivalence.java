package com.google.common.base;

import java.io.Serializable;
import java.util.function.BiPredicate;
/* loaded from: classes2.dex */
public abstract class Equivalence<T> implements BiPredicate<T, T> {

    /* loaded from: classes2.dex */
    public static final class Wrapper<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<? super T> equivalence;
        private final T reference;

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Wrapper) {
                Wrapper wrapper = (Wrapper) obj;
                if (this.equivalence.equals(wrapper.equivalence)) {
                    return this.equivalence.d((T) this.reference, (T) wrapper.reference);
                }
                return false;
            }
            return false;
        }

        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.e((T) this.reference);
        }

        public String toString() {
            String valueOf = String.valueOf(this.equivalence);
            String valueOf2 = String.valueOf(this.reference);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 7 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".wrap(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        private Wrapper(Equivalence<? super T> equivalence, T t10) {
            this.equivalence = (Equivalence) o.s(equivalence);
            this.reference = t10;
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final b f12329a = new b();
        private static final long serialVersionUID = 1;

        b() {
        }

        private Object readResolve() {
            return f12329a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final c f12330a = new c();
        private static final long serialVersionUID = 1;

        c() {
        }

        private Object readResolve() {
            return f12330a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        protected int b(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    protected Equivalence() {
    }

    public static Equivalence<Object> c() {
        return b.f12329a;
    }

    public static Equivalence<Object> f() {
        return c.f12330a;
    }

    protected abstract boolean a(T t10, T t11);

    protected abstract int b(T t10);

    public final boolean d(T t10, T t11) {
        if (t10 == t11) {
            return true;
        }
        if (t10 == null || t11 == null) {
            return false;
        }
        return a(t10, t11);
    }

    public final int e(T t10) {
        if (t10 == null) {
            return 0;
        }
        return b(t10);
    }

    @Override // java.util.function.BiPredicate
    @Deprecated
    public final boolean test(T t10, T t11) {
        return d(t10, t11);
    }
}
