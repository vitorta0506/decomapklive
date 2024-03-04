package io.grpc;

import io.grpc.a;
import io.grpc.k;
import io.grpc.t0;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
public abstract class n0 {

    /* renamed from: b  reason: collision with root package name */
    public static final a.c<Map<String, ?>> f43417b = a.c.a("health-checking-config");

    /* renamed from: a  reason: collision with root package name */
    private int f43418a;

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<x> f43419a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.a f43420b;

        /* renamed from: c  reason: collision with root package name */
        private final Object[][] f43421c;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private List<x> f43422a;

            /* renamed from: b  reason: collision with root package name */
            private io.grpc.a f43423b = io.grpc.a.f41743c;

            /* renamed from: c  reason: collision with root package name */
            private Object[][] f43424c = (Object[][]) Array.newInstance(Object.class, 0, 2);

            a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public <T> a c(Object[][] objArr) {
                Object[][] objArr2 = (Object[][]) Array.newInstance(Object.class, objArr.length, 2);
                this.f43424c = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
                return this;
            }

            public b b() {
                return new b(this.f43422a, this.f43423b, this.f43424c);
            }

            public a d(x xVar) {
                this.f43422a = Collections.singletonList(xVar);
                return this;
            }

            public a e(List<x> list) {
                com.google.common.base.o.e(!list.isEmpty(), "addrs is empty");
                this.f43422a = Collections.unmodifiableList(new ArrayList(list));
                return this;
            }

            public a f(io.grpc.a aVar) {
                this.f43423b = (io.grpc.a) com.google.common.base.o.t(aVar, "attrs");
                return this;
            }
        }

        public static a c() {
            return new a();
        }

        public List<x> a() {
            return this.f43419a;
        }

        public io.grpc.a b() {
            return this.f43420b;
        }

        public a d() {
            return c().e(this.f43419a).f(this.f43420b).c(this.f43421c);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("addrs", this.f43419a).d("attrs", this.f43420b).d("customOptions", Arrays.deepToString(this.f43421c)).toString();
        }

        private b(List<x> list, io.grpc.a aVar, Object[][] objArr) {
            this.f43419a = (List) com.google.common.base.o.t(list, "addresses are not set");
            this.f43420b = (io.grpc.a) com.google.common.base.o.t(aVar, "attrs");
            this.f43421c = (Object[][]) com.google.common.base.o.t(objArr, "customOptions");
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class c {
        public abstract n0 a(d dVar);
    }

    /* loaded from: classes5.dex */
    public static abstract class d {
        public q0 a(List<x> list, String str) {
            throw new UnsupportedOperationException();
        }

        public h b(b bVar) {
            throw new UnsupportedOperationException();
        }

        public abstract String c();

        public ChannelLogger d() {
            throw new UnsupportedOperationException();
        }

        public t0.b e() {
            throw new UnsupportedOperationException();
        }

        public v0 f() {
            throw new UnsupportedOperationException();
        }

        public ScheduledExecutorService g() {
            throw new UnsupportedOperationException();
        }

        public d1 h() {
            throw new UnsupportedOperationException();
        }

        public void i() {
        }

        public void j() {
            throw new UnsupportedOperationException();
        }

        public abstract void k(ConnectivityState connectivityState, i iVar);

        public void l(q0 q0Var, List<x> list) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: e  reason: collision with root package name */
        private static final e f43425e = new e(null, null, Status.f41704f, false);

        /* renamed from: a  reason: collision with root package name */
        private final h f43426a;

        /* renamed from: b  reason: collision with root package name */
        private final k.a f43427b;

        /* renamed from: c  reason: collision with root package name */
        private final Status f43428c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f43429d;

        private e(h hVar, k.a aVar, Status status, boolean z10) {
            this.f43426a = hVar;
            this.f43427b = aVar;
            this.f43428c = (Status) com.google.common.base.o.t(status, "status");
            this.f43429d = z10;
        }

        public static e e(Status status) {
            com.google.common.base.o.e(!status.p(), "drop status shouldn't be OK");
            return new e(null, null, status, true);
        }

        public static e f(Status status) {
            com.google.common.base.o.e(!status.p(), "error status shouldn't be OK");
            return new e(null, null, status, false);
        }

        public static e g() {
            return f43425e;
        }

        public static e h(h hVar) {
            return i(hVar, null);
        }

        public static e i(h hVar, k.a aVar) {
            return new e((h) com.google.common.base.o.t(hVar, "subchannel"), aVar, Status.f41704f, false);
        }

        public Status a() {
            return this.f43428c;
        }

        public k.a b() {
            return this.f43427b;
        }

        public h c() {
            return this.f43426a;
        }

        public boolean d() {
            return this.f43429d;
        }

        public boolean equals(Object obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return com.google.common.base.l.a(this.f43426a, eVar.f43426a) && com.google.common.base.l.a(this.f43428c, eVar.f43428c) && com.google.common.base.l.a(this.f43427b, eVar.f43427b) && this.f43429d == eVar.f43429d;
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f43426a, this.f43428c, this.f43427b, Boolean.valueOf(this.f43429d));
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("subchannel", this.f43426a).d("streamTracerFactory", this.f43427b).d("status", this.f43428c).e("drop", this.f43429d).toString();
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class f {
        public abstract io.grpc.c a();

        public abstract s0 b();

        public abstract MethodDescriptor<?, ?> c();
    }

    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final List<x> f43430a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.a f43431b;

        /* renamed from: c  reason: collision with root package name */
        private final Object f43432c;

        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private List<x> f43433a;

            /* renamed from: b  reason: collision with root package name */
            private io.grpc.a f43434b = io.grpc.a.f41743c;

            /* renamed from: c  reason: collision with root package name */
            private Object f43435c;

            a() {
            }

            public g a() {
                return new g(this.f43433a, this.f43434b, this.f43435c);
            }

            public a b(List<x> list) {
                this.f43433a = list;
                return this;
            }

            public a c(io.grpc.a aVar) {
                this.f43434b = aVar;
                return this;
            }

            public a d(Object obj) {
                this.f43435c = obj;
                return this;
            }
        }

        public static a d() {
            return new a();
        }

        public List<x> a() {
            return this.f43430a;
        }

        public io.grpc.a b() {
            return this.f43431b;
        }

        public Object c() {
            return this.f43432c;
        }

        public a e() {
            return d().b(this.f43430a).c(this.f43431b).d(this.f43432c);
        }

        public boolean equals(Object obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                return com.google.common.base.l.a(this.f43430a, gVar.f43430a) && com.google.common.base.l.a(this.f43431b, gVar.f43431b) && com.google.common.base.l.a(this.f43432c, gVar.f43432c);
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f43430a, this.f43431b, this.f43432c);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("addresses", this.f43430a).d("attributes", this.f43431b).d("loadBalancingPolicyConfig", this.f43432c).toString();
        }

        private g(List<x> list, io.grpc.a aVar, Object obj) {
            this.f43430a = Collections.unmodifiableList(new ArrayList((Collection) com.google.common.base.o.t(list, "addresses")));
            this.f43431b = (io.grpc.a) com.google.common.base.o.t(aVar, "attributes");
            this.f43432c = obj;
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class h {
        public io.grpc.d a() {
            throw new UnsupportedOperationException();
        }

        public final x b() {
            List<x> c10 = c();
            com.google.common.base.o.D(c10.size() == 1, "%s does not have exactly one group", c10);
            return c10.get(0);
        }

        public List<x> c() {
            throw new UnsupportedOperationException();
        }

        public abstract io.grpc.a d();

        public ChannelLogger e() {
            throw new UnsupportedOperationException();
        }

        public Object f() {
            throw new UnsupportedOperationException();
        }

        public abstract void g();

        public abstract void h();

        public void i(j jVar) {
            throw new UnsupportedOperationException("Not implemented");
        }

        public void j(List<x> list) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class i {
        public abstract e a(f fVar);
    }

    /* loaded from: classes5.dex */
    public interface j {
        void a(q qVar);
    }

    public boolean a() {
        return false;
    }

    public abstract void b(Status status);

    @Deprecated
    public void c(List<x> list, io.grpc.a aVar) {
        int i9 = this.f43418a;
        this.f43418a = i9 + 1;
        if (i9 == 0) {
            d(g.d().b(list).c(aVar).a());
        }
        this.f43418a = 0;
    }

    public void d(g gVar) {
        int i9 = this.f43418a;
        this.f43418a = i9 + 1;
        if (i9 == 0) {
            c(gVar.a(), gVar.b());
        }
        this.f43418a = 0;
    }

    public abstract void e();
}
