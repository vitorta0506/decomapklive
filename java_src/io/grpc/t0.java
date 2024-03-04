package io.grpc;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
public abstract class t0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f45432a;

        a(f fVar) {
            this.f45432a = fVar;
        }

        @Override // io.grpc.t0.e, io.grpc.t0.f
        public void a(Status status) {
            this.f45432a.a(status);
        }

        @Override // io.grpc.t0.e
        public void c(g gVar) {
            this.f45432a.b(gVar.a(), gVar.b());
        }
    }

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f45434a;

        /* renamed from: b  reason: collision with root package name */
        private final z0 f45435b;

        /* renamed from: c  reason: collision with root package name */
        private final d1 f45436c;

        /* renamed from: d  reason: collision with root package name */
        private final h f45437d;

        /* renamed from: e  reason: collision with root package name */
        private final ScheduledExecutorService f45438e;

        /* renamed from: f  reason: collision with root package name */
        private final ChannelLogger f45439f;

        /* renamed from: g  reason: collision with root package name */
        private final Executor f45440g;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Integer f45441a;

            /* renamed from: b  reason: collision with root package name */
            private z0 f45442b;

            /* renamed from: c  reason: collision with root package name */
            private d1 f45443c;

            /* renamed from: d  reason: collision with root package name */
            private h f45444d;

            /* renamed from: e  reason: collision with root package name */
            private ScheduledExecutorService f45445e;

            /* renamed from: f  reason: collision with root package name */
            private ChannelLogger f45446f;

            /* renamed from: g  reason: collision with root package name */
            private Executor f45447g;

            a() {
            }

            public b a() {
                return new b(this.f45441a, this.f45442b, this.f45443c, this.f45444d, this.f45445e, this.f45446f, this.f45447g, null);
            }

            public a b(ChannelLogger channelLogger) {
                this.f45446f = (ChannelLogger) com.google.common.base.o.s(channelLogger);
                return this;
            }

            public a c(int i9) {
                this.f45441a = Integer.valueOf(i9);
                return this;
            }

            public a d(Executor executor) {
                this.f45447g = executor;
                return this;
            }

            public a e(z0 z0Var) {
                this.f45442b = (z0) com.google.common.base.o.s(z0Var);
                return this;
            }

            public a f(ScheduledExecutorService scheduledExecutorService) {
                this.f45445e = (ScheduledExecutorService) com.google.common.base.o.s(scheduledExecutorService);
                return this;
            }

            public a g(h hVar) {
                this.f45444d = (h) com.google.common.base.o.s(hVar);
                return this;
            }

            public a h(d1 d1Var) {
                this.f45443c = (d1) com.google.common.base.o.s(d1Var);
                return this;
            }
        }

        /* synthetic */ b(Integer num, z0 z0Var, d1 d1Var, h hVar, ScheduledExecutorService scheduledExecutorService, ChannelLogger channelLogger, Executor executor, a aVar) {
            this(num, z0Var, d1Var, hVar, scheduledExecutorService, channelLogger, executor);
        }

        public static a g() {
            return new a();
        }

        public int a() {
            return this.f45434a;
        }

        public Executor b() {
            return this.f45440g;
        }

        public z0 c() {
            return this.f45435b;
        }

        public ScheduledExecutorService d() {
            ScheduledExecutorService scheduledExecutorService = this.f45438e;
            if (scheduledExecutorService != null) {
                return scheduledExecutorService;
            }
            throw new IllegalStateException("ScheduledExecutorService not set in Builder");
        }

        public h e() {
            return this.f45437d;
        }

        public d1 f() {
            return this.f45436c;
        }

        public String toString() {
            return com.google.common.base.j.c(this).b("defaultPort", this.f45434a).d("proxyDetector", this.f45435b).d("syncContext", this.f45436c).d("serviceConfigParser", this.f45437d).d("scheduledExecutorService", this.f45438e).d("channelLogger", this.f45439f).d("executor", this.f45440g).toString();
        }

        private b(Integer num, z0 z0Var, d1 d1Var, h hVar, ScheduledExecutorService scheduledExecutorService, ChannelLogger channelLogger, Executor executor) {
            this.f45434a = ((Integer) com.google.common.base.o.t(num, "defaultPort not set")).intValue();
            this.f45435b = (z0) com.google.common.base.o.t(z0Var, "proxyDetector not set");
            this.f45436c = (d1) com.google.common.base.o.t(d1Var, "syncContext not set");
            this.f45437d = (h) com.google.common.base.o.t(hVar, "serviceConfigParser not set");
            this.f45438e = scheduledExecutorService;
            this.f45439f = channelLogger;
            this.f45440g = executor;
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class d {
        public abstract String a();

        public abstract t0 b(URI uri, b bVar);
    }

    /* loaded from: classes5.dex */
    public static abstract class e implements f {
        @Override // io.grpc.t0.f
        public abstract void a(Status status);

        @Override // io.grpc.t0.f
        @Deprecated
        public final void b(List<x> list, io.grpc.a aVar) {
            c(g.d().b(list).c(aVar).a());
        }

        public abstract void c(g gVar);
    }

    /* loaded from: classes5.dex */
    public interface f {
        void a(Status status);

        void b(List<x> list, io.grpc.a aVar);
    }

    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final List<x> f45450a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.a f45451b;

        /* renamed from: c  reason: collision with root package name */
        private final c f45452c;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private List<x> f45453a = Collections.emptyList();

            /* renamed from: b  reason: collision with root package name */
            private io.grpc.a f45454b = io.grpc.a.f41743c;

            /* renamed from: c  reason: collision with root package name */
            private c f45455c;

            a() {
            }

            public g a() {
                return new g(this.f45453a, this.f45454b, this.f45455c);
            }

            public a b(List<x> list) {
                this.f45453a = list;
                return this;
            }

            public a c(io.grpc.a aVar) {
                this.f45454b = aVar;
                return this;
            }

            public a d(c cVar) {
                this.f45455c = cVar;
                return this;
            }
        }

        g(List<x> list, io.grpc.a aVar, c cVar) {
            this.f45450a = Collections.unmodifiableList(new ArrayList(list));
            this.f45451b = (io.grpc.a) com.google.common.base.o.t(aVar, "attributes");
            this.f45452c = cVar;
        }

        public static a d() {
            return new a();
        }

        public List<x> a() {
            return this.f45450a;
        }

        public io.grpc.a b() {
            return this.f45451b;
        }

        public c c() {
            return this.f45452c;
        }

        public boolean equals(Object obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                return com.google.common.base.l.a(this.f45450a, gVar.f45450a) && com.google.common.base.l.a(this.f45451b, gVar.f45451b) && com.google.common.base.l.a(this.f45452c, gVar.f45452c);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f45450a, this.f45451b, this.f45452c);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("addresses", this.f45450a).d("attributes", this.f45451b).d("serviceConfig", this.f45452c).toString();
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class h {
        public abstract c a(Map<String, ?> map);
    }

    public abstract String a();

    public void b() {
    }

    public abstract void c();

    public void d(e eVar) {
        e(eVar);
    }

    public void e(f fVar) {
        if (fVar instanceof e) {
            d((e) fVar);
        } else {
            d(new a(fVar));
        }
    }

    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Status f45448a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f45449b;

        private c(Object obj) {
            this.f45449b = com.google.common.base.o.t(obj, "config");
            this.f45448a = null;
        }

        public static c a(Object obj) {
            return new c(obj);
        }

        public static c b(Status status) {
            return new c(status);
        }

        public Object c() {
            return this.f45449b;
        }

        public Status d() {
            return this.f45448a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return com.google.common.base.l.a(this.f45448a, cVar.f45448a) && com.google.common.base.l.a(this.f45449b, cVar.f45449b);
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f45448a, this.f45449b);
        }

        public String toString() {
            if (this.f45449b != null) {
                return com.google.common.base.j.c(this).d("config", this.f45449b).toString();
            }
            return com.google.common.base.j.c(this).d("error", this.f45448a).toString();
        }

        private c(Status status) {
            this.f45449b = null;
            this.f45448a = (Status) com.google.common.base.o.t(status, "status");
            com.google.common.base.o.m(!status.p(), "cannot use OK status: %s", status);
        }
    }
}
