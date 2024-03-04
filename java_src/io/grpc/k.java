package io.grpc;
/* loaded from: classes5.dex */
public abstract class k extends c1 {

    /* loaded from: classes5.dex */
    public static abstract class a {
        public k a(b bVar, s0 s0Var) {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c f43344a;

        /* renamed from: b  reason: collision with root package name */
        private final int f43345b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f43346c;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private c f43347a = c.f42037k;

            /* renamed from: b  reason: collision with root package name */
            private int f43348b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f43349c;

            a() {
            }

            public b a() {
                return new b(this.f43347a, this.f43348b, this.f43349c);
            }

            public a b(c cVar) {
                this.f43347a = (c) com.google.common.base.o.t(cVar, "callOptions cannot be null");
                return this;
            }

            public a c(boolean z10) {
                this.f43349c = z10;
                return this;
            }

            public a d(int i9) {
                this.f43348b = i9;
                return this;
            }
        }

        b(c cVar, int i9, boolean z10) {
            this.f43344a = (c) com.google.common.base.o.t(cVar, "callOptions");
            this.f43345b = i9;
            this.f43346c = z10;
        }

        public static a a() {
            return new a();
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("callOptions", this.f43344a).b("previousAttempts", this.f43345b).e("isTransparentRetry", this.f43346c).toString();
        }
    }

    public void j() {
    }

    public void k(s0 s0Var) {
    }

    public void l() {
    }

    public void m(io.grpc.a aVar, s0 s0Var) {
    }
}
