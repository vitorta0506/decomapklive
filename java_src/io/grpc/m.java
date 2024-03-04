package io.grpc;

import io.grpc.b;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public final class m extends io.grpc.b {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.b f43406a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.b f43407b;

    /* loaded from: classes5.dex */
    private static final class a extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private final b.a f43408a;

        /* renamed from: b  reason: collision with root package name */
        private final s0 f43409b;

        public a(b.a aVar, s0 s0Var) {
            this.f43408a = aVar;
            this.f43409b = s0Var;
        }

        @Override // io.grpc.b.a
        public void a(s0 s0Var) {
            com.google.common.base.o.t(s0Var, "headers");
            s0 s0Var2 = new s0();
            s0Var2.q(this.f43409b);
            s0Var2.q(s0Var);
            this.f43408a.a(s0Var2);
        }

        @Override // io.grpc.b.a
        public void b(Status status) {
            this.f43408a.b(status);
        }
    }

    /* loaded from: classes5.dex */
    private final class b extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private final b.AbstractC0464b f43410a;

        /* renamed from: b  reason: collision with root package name */
        private final Executor f43411b;

        /* renamed from: c  reason: collision with root package name */
        private final b.a f43412c;

        /* renamed from: d  reason: collision with root package name */
        private final r f43413d;

        public b(b.AbstractC0464b abstractC0464b, Executor executor, b.a aVar, r rVar) {
            this.f43410a = abstractC0464b;
            this.f43411b = executor;
            this.f43412c = (b.a) com.google.common.base.o.t(aVar, "delegate");
            this.f43413d = (r) com.google.common.base.o.t(rVar, "context");
        }

        @Override // io.grpc.b.a
        public void a(s0 s0Var) {
            com.google.common.base.o.t(s0Var, "headers");
            r c10 = this.f43413d.c();
            try {
                m.this.f43407b.a(this.f43410a, this.f43411b, new a(this.f43412c, s0Var));
            } finally {
                this.f43413d.k(c10);
            }
        }

        @Override // io.grpc.b.a
        public void b(Status status) {
            this.f43412c.b(status);
        }
    }

    public m(io.grpc.b bVar, io.grpc.b bVar2) {
        this.f43406a = (io.grpc.b) com.google.common.base.o.t(bVar, "creds1");
        this.f43407b = (io.grpc.b) com.google.common.base.o.t(bVar2, "creds2");
    }

    @Override // io.grpc.b
    public void a(b.AbstractC0464b abstractC0464b, Executor executor, b.a aVar) {
        this.f43406a.a(abstractC0464b, executor, new b(abstractC0464b, executor, aVar, r.j()));
    }
}
