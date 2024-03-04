package com.google.common.base;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class x {

    /* loaded from: classes2.dex */
    private static class a<T> implements w<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final T f12406a;

        a(T t10) {
            this.f12406a = t10;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return l.a(this.f12406a, ((a) obj).f12406a);
            }
            return false;
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        public T get() {
            return this.f12406a;
        }

        public int hashCode() {
            return l.b(this.f12406a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12406a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
            sb2.append("Suppliers.ofInstance(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static <T> w<T> a(T t10) {
        return new a(t10);
    }
}
