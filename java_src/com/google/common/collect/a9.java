package com.google.common.collect;

import com.google.common.collect.q8;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a9 {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.common.base.h<? extends Map<?, ?>, ? extends Map<?, ?>> f12913a = new a();

    /* loaded from: classes2.dex */
    class a implements com.google.common.base.h<Map<Object, Object>, Map<Object, Object>> {
        a() {
        }

        @Override // com.google.common.base.h, java.util.function.Function
        /* renamed from: a */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class b<R, C, V> implements q8.a<R, C, V> {
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof q8.a) {
                q8.a aVar = (q8.a) obj;
                return com.google.common.base.l.a(a(), aVar.a()) && com.google.common.base.l.a(b(), aVar.b()) && com.google.common.base.l.a(getValue(), aVar.getValue());
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(a(), b(), getValue());
        }

        public String toString() {
            String valueOf = String.valueOf(a());
            String valueOf2 = String.valueOf(b());
            String valueOf3 = String.valueOf(getValue());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length() + valueOf3.length());
            sb2.append("(");
            sb2.append(valueOf);
            sb2.append(",");
            sb2.append(valueOf2);
            sb2.append(")=");
            sb2.append(valueOf3);
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    static final class c<R, C, V> extends b<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final R f12914a;

        /* renamed from: b  reason: collision with root package name */
        private final C f12915b;

        /* renamed from: c  reason: collision with root package name */
        private final V f12916c;

        c(R r10, C c10, V v10) {
            this.f12914a = r10;
            this.f12915b = c10;
            this.f12916c = v10;
        }

        @Override // com.google.common.collect.q8.a
        public R a() {
            return this.f12914a;
        }

        @Override // com.google.common.collect.q8.a
        public C b() {
            return this.f12915b;
        }

        @Override // com.google.common.collect.q8.a
        public V getValue() {
            return this.f12916c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(q8<?, ?, ?> q8Var, Object obj) {
        if (obj == q8Var) {
            return true;
        }
        if (obj instanceof q8) {
            return q8Var.cellSet().equals(((q8) obj).cellSet());
        }
        return false;
    }

    public static <R, C, V> q8.a<R, C, V> b(R r10, C c10, V v10) {
        return new c(r10, c10, v10);
    }
}
