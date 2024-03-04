package io.grpc.stub;

import com.google.common.base.o;
import io.grpc.Status;
import io.grpc.c;
import io.grpc.g;
import io.grpc.s0;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f45406a = Logger.getLogger(e.class.getName());

    /* renamed from: b  reason: collision with root package name */
    static final c.a<EnumC0497e> f45407b = c.a.b("internal-stub-type");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b<ReqT> extends io.grpc.stub.d<ReqT> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f45408a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.g<ReqT, ?> f45409b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f45410c;

        /* renamed from: d  reason: collision with root package name */
        private Runnable f45411d;

        /* renamed from: e  reason: collision with root package name */
        private int f45412e = 1;

        /* renamed from: f  reason: collision with root package name */
        private boolean f45413f = true;

        /* renamed from: g  reason: collision with root package name */
        private boolean f45414g = false;

        /* renamed from: h  reason: collision with root package name */
        private boolean f45415h = false;

        b(io.grpc.g<ReqT, ?> gVar, boolean z10) {
            this.f45409b = gVar;
            this.f45410c = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            this.f45408a = true;
        }

        public void h(int i9) {
            if (!this.f45410c && i9 == 1) {
                this.f45409b.c(2);
            } else {
                this.f45409b.c(i9);
            }
        }

        @Override // io.grpc.stub.h
        public void onCompleted() {
            this.f45409b.b();
            this.f45415h = true;
        }

        @Override // io.grpc.stub.h
        public void onError(Throwable th2) {
            this.f45409b.a("Cancelled by client with StreamObserver.onError()", th2);
            this.f45414g = true;
        }

        @Override // io.grpc.stub.h
        public void onNext(ReqT reqt) {
            o.A(!this.f45414g, "Stream was terminated by error, no further calls are allowed");
            o.A(!this.f45415h, "Stream is already completed, no further calls are allowed");
            this.f45409b.d(reqt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class c<T> extends g.a<T> {
        private c() {
        }

        abstract void e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d<ReqT, RespT> extends c<RespT> {

        /* renamed from: a  reason: collision with root package name */
        private final h<RespT> f45416a;

        /* renamed from: b  reason: collision with root package name */
        private final b<ReqT> f45417b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f45418c;

        d(h<RespT> hVar, b<ReqT> bVar) {
            super();
            this.f45416a = hVar;
            this.f45417b = bVar;
            if (hVar instanceof f) {
                ((f) hVar).a(bVar);
            }
            bVar.g();
        }

        @Override // io.grpc.g.a
        public void a(Status status, s0 s0Var) {
            if (status.p()) {
                this.f45416a.onCompleted();
            } else {
                this.f45416a.onError(status.e(s0Var));
            }
        }

        @Override // io.grpc.g.a
        public void b(s0 s0Var) {
        }

        @Override // io.grpc.g.a
        public void c(RespT respt) {
            if (this.f45418c && !((b) this.f45417b).f45410c) {
                throw Status.f41718t.r("More than one responses received for unary or client-streaming call").d();
            }
            this.f45418c = true;
            this.f45416a.onNext(respt);
            if (((b) this.f45417b).f45410c && ((b) this.f45417b).f45413f) {
                this.f45417b.h(1);
            }
        }

        @Override // io.grpc.g.a
        public void d() {
            if (((b) this.f45417b).f45411d != null) {
                ((b) this.f45417b).f45411d.run();
            }
        }

        @Override // io.grpc.stub.e.c
        void e() {
            if (((b) this.f45417b).f45412e > 0) {
                b<ReqT> bVar = this.f45417b;
                bVar.h(((b) bVar).f45412e);
            }
        }
    }

    /* renamed from: io.grpc.stub.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    enum EnumC0497e {
        BLOCKING,
        FUTURE,
        ASYNC
    }

    private e() {
    }

    public static <ReqT, RespT> h<ReqT> a(io.grpc.g<ReqT, RespT> gVar, h<RespT> hVar) {
        return b(gVar, hVar, true);
    }

    private static <ReqT, RespT> h<ReqT> b(io.grpc.g<ReqT, RespT> gVar, h<RespT> hVar, boolean z10) {
        b bVar = new b(gVar, z10);
        c(gVar, new d(hVar, bVar));
        return bVar;
    }

    private static <ReqT, RespT> void c(io.grpc.g<ReqT, RespT> gVar, c<RespT> cVar) {
        gVar.e(cVar, new s0());
        cVar.e();
    }
}
