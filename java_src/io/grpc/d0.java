package io.grpc;

import io.grpc.a;
import io.grpc.n0;
/* loaded from: classes5.dex */
public abstract class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static final a.c<d0> f42306a = a.c.a("io.grpc.config-selector");

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Status f42307a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f42308b;

        /* renamed from: c  reason: collision with root package name */
        public h f42309c;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Object f42310a;

            /* renamed from: b  reason: collision with root package name */
            private h f42311b;

            private a() {
            }

            public b a() {
                com.google.common.base.o.A(this.f42310a != null, "config is not set");
                return new b(Status.f41704f, this.f42310a, this.f42311b);
            }

            public a b(Object obj) {
                this.f42310a = com.google.common.base.o.t(obj, "config");
                return this;
            }

            public a c(h hVar) {
                this.f42311b = (h) com.google.common.base.o.t(hVar, "interceptor");
                return this;
            }
        }

        public static b a(Status status) {
            com.google.common.base.o.e(!status.p(), "status is OK");
            return new b(status, null, null);
        }

        public static a e() {
            return new a();
        }

        public Object b() {
            return this.f42308b;
        }

        public h c() {
            return this.f42309c;
        }

        public Status d() {
            return this.f42307a;
        }

        private b(Status status, Object obj, h hVar) {
            this.f42307a = (Status) com.google.common.base.o.t(status, "status");
            this.f42308b = obj;
            this.f42309c = hVar;
        }
    }

    public abstract b a(n0.f fVar);
}
