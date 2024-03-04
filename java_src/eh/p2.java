package eh;

import com.google.common.collect.ImmutableList;
import com.google.protobuf.Any;
import eh.a;
import eh.h0;
import eh.j0;
import eh.s1;
import io.grpc.Status;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class p2 {

    /* loaded from: classes5.dex */
    interface b extends m {
        void f(c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class c implements l {

        /* loaded from: classes5.dex */
        static abstract class a {
            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract c a();

            protected abstract a b(int i9);

            protected abstract a c(b bVar);

            protected abstract a d(String str);

            protected abstract a e(String str);

            protected abstract a f(EnumC0404c enumC0404c);

            /* JADX INFO: Access modifiers changed from: package-private */
            public a g(int i9) {
                return f(EnumC0404c.LEAST_REQUEST).b(i9);
            }

            protected abstract a h(j0.d dVar);

            protected abstract a i(Long l10);

            protected abstract a j(long j10);

            protected abstract a k(long j10);

            protected abstract a l(List<String> list);

            /* JADX INFO: Access modifiers changed from: package-private */
            public a m(long j10, long j11) {
                return f(EnumC0404c.RING_HASH).k(j10).j(j11);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a n() {
                return f(EnumC0404c.ROUND_ROBIN);
            }

            protected abstract a o(i1 i1Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public enum b {
            EDS,
            LOGICAL_DNS,
            AGGREGATE
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: eh.p2$c$c  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public enum EnumC0404c {
            ROUND_ROBIN,
            RING_HASH,
            LEAST_REQUEST
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a f(String str, List<String> list) {
            com.google.common.base.o.t(list, "prioritizedClusterNames");
            return new h0.b().p(str).c(b.AGGREGATE).k(0L).j(0L).b(0).l(ImmutableList.copyOf((Collection) list));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a g(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
            return new h0.b().p(str).c(b.EDS).k(0L).j(0L).b(0).e(str2).h(dVar).i(l10).o(i1Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a h(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
            return new h0.b().p(str).c(b.LOGICAL_DNS).k(0L).j(0L).b(0).d(str2).h(dVar).i(l10).o(i1Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract int a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract b c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String d();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract EnumC0404c i();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract j0.d j();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Long k();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long l();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long m();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableList<String> n();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract i1 o();

        public final String toString() {
            return com.google.common.base.j.c(this).d("clusterName", b()).d("clusterType", c()).d("lbPolicy", i()).c("minRingSize", m()).c("maxRingSize", l()).b("choiceCount", a()).d("edsServiceName", e()).d("dnsHostName", d()).d("lrsServerInfo", j()).d("maxConcurrentRequests", k()).d("prioritizedClusterNames", n()).toString();
        }
    }

    /* loaded from: classes5.dex */
    interface d extends m {
        void d(e eVar);
    }

    /* loaded from: classes5.dex */
    static final class e implements l {

        /* renamed from: a  reason: collision with root package name */
        final String f39083a;

        /* renamed from: b  reason: collision with root package name */
        final Map<t1, z0> f39084b;

        /* renamed from: c  reason: collision with root package name */
        final List<x0> f39085c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(String str, Map<t1, z0> map, List<x0> list) {
            this.f39083a = (String) com.google.common.base.o.t(str, "clusterName");
            this.f39084b = Collections.unmodifiableMap(new LinkedHashMap((Map) com.google.common.base.o.t(map, "localityLbEndpoints")));
            this.f39085c = Collections.unmodifiableList(new ArrayList((Collection) com.google.common.base.o.t(list, "dropPolicies")));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return Objects.equals(this.f39083a, eVar.f39083a) && Objects.equals(this.f39084b, eVar.f39084b) && Objects.equals(this.f39085c, eVar.f39085c);
        }

        public int hashCode() {
            return Objects.hash(this.f39083a, this.f39084b, this.f39085c);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("clusterName", this.f39083a).d("localityLbEndpointsMap", this.f39084b).d("dropPolicies", this.f39085c).toString();
        }
    }

    /* loaded from: classes5.dex */
    interface f extends m {
        void e(g gVar);
    }

    /* loaded from: classes5.dex */
    static abstract class g implements l {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static g a(n1 n1Var) {
            com.google.common.base.o.t(n1Var, "httpConnectionManager");
            return new i0(n1Var, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static g b(h1 h1Var) {
            com.google.common.base.o.t(h1Var, "listener");
            return new i0(null, h1Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract n1 c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract h1 d();
    }

    /* loaded from: classes5.dex */
    interface h extends m {
        void c(i iVar);
    }

    /* loaded from: classes5.dex */
    static final class i implements l {

        /* renamed from: a  reason: collision with root package name */
        final List<l2> f39086a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public i(List<l2> list) {
            this.f39086a = Collections.unmodifiableList(new ArrayList((Collection) com.google.common.base.o.t(list, "virtualHosts")));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || i.class != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f39086a, ((i) obj).f39086a);
        }

        public int hashCode() {
            return Objects.hash(this.f39086a);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("virtualHosts", this.f39086a).toString();
        }
    }

    /* loaded from: classes5.dex */
    static final class j {

        /* renamed from: a  reason: collision with root package name */
        private final String f39087a;

        /* renamed from: b  reason: collision with root package name */
        private final a f39088b;

        /* renamed from: c  reason: collision with root package name */
        private final long f39089c;

        /* renamed from: d  reason: collision with root package name */
        private final Any f39090d;

        /* renamed from: e  reason: collision with root package name */
        private final b f39091e;

        /* loaded from: classes5.dex */
        enum a {
            UNKNOWN,
            REQUESTED,
            DOES_NOT_EXIST,
            ACKED,
            NACKED
        }

        /* loaded from: classes5.dex */
        static final class b {

            /* renamed from: a  reason: collision with root package name */
            private final String f39098a;

            /* renamed from: b  reason: collision with root package name */
            private final long f39099b;

            /* renamed from: c  reason: collision with root package name */
            private final String f39100c;

            private b(String str, long j10, String str2) {
                this.f39098a = (String) com.google.common.base.o.t(str, "failedVersion");
                this.f39099b = j10;
                this.f39100c = (String) com.google.common.base.o.t(str2, "failedDetails");
            }
        }

        private j(a aVar, String str, long j10, Any any, b bVar) {
            this.f39088b = (a) com.google.common.base.o.t(aVar, "status");
            this.f39087a = (String) com.google.common.base.o.t(str, "version");
            this.f39089c = j10;
            this.f39090d = any;
            this.f39091e = bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static j d(Any any, String str, long j10) {
            com.google.common.base.o.t(any, "rawResource");
            return new j(a.ACKED, str, j10, any, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static j e() {
            return new j(a.DOES_NOT_EXIST, "", 0L, null, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static j f(j jVar, String str, long j10, String str2) {
            com.google.common.base.o.t(jVar, "metadata");
            return new j(a.NACKED, jVar.c(), jVar.b(), jVar.a(), new b(str, j10, str2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static j g() {
            return new j(a.REQUESTED, "", 0L, null, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static j h() {
            return new j(a.UNKNOWN, "", 0L, null, null);
        }

        Any a() {
            return this.f39090d;
        }

        long b() {
            return this.f39089c;
        }

        String c() {
            return this.f39087a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface k {
        Collection<String> e(j0.d dVar, a.f fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface l {
    }

    /* loaded from: classes5.dex */
    interface m {
        void a(Status status);

        void b(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface n {
        void a(j0.d dVar, String str, List<Any> list, String str2);

        void b(Status status);

        void c(j0.d dVar, String str, List<Any> list, String str2);

        void d(j0.d dVar, String str, List<Any> list, String str2);

        void f(j0.d dVar, String str, List<Any> list, String str2);

        void g(j0.d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String n(String str) {
        com.google.common.base.o.t(str, "resourceName");
        if (str.startsWith("xdstp:")) {
            String rawQuery = URI.create(str).getRawQuery();
            com.google.common.base.t e10 = com.google.common.base.t.f(Typography.amp).e();
            if (rawQuery == null) {
                return str;
            }
            List<String> j10 = e10.j(rawQuery);
            if (j10.size() < 2) {
                return str;
            }
            ArrayList arrayList = new ArrayList(j10.size());
            for (String str2 : j10) {
                arrayList.add(str2);
            }
            Collections.sort(arrayList);
            return str.replace(rawQuery, com.google.common.base.i.g(Typography.amp).d(arrayList));
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q(String str, String str2) {
        com.google.common.base.o.t(str, "resourceName");
        if (str.startsWith("xdstp:")) {
            try {
                String path = new URI(str).getPath();
                com.google.common.base.t e10 = com.google.common.base.t.f(IOUtils.DIR_SEPARATOR_UNIX).e();
                if (path == null) {
                    return false;
                }
                List<String> j10 = e10.j(path);
                return j10.size() >= 2 && j10.get(0).equals(e10.j(str2).get(1));
            } catch (URISyntaxException unused) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String r(String str) {
        Iterable<String> i9 = com.google.common.base.t.f(IOUtils.DIR_SEPARATOR_UNIX).i(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : i9) {
            arrayList.add(x5.b.a().a(str2));
        }
        return com.google.common.base.i.g(IOUtils.DIR_SEPARATOR_UNIX).d(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s1.b h(j0.d dVar, String str, String str2) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s1.d i(j0.d dVar, String str, String str2, t1 t1Var) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(String str, b bVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(String str, d dVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(String str, f fVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(String str, h hVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0.b o() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k2 p() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(String str, b bVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(String str, d dVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(String str, f fVar) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(String str, h hVar) {
        throw new UnsupportedOperationException();
    }
}
