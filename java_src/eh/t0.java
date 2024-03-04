package eh;

import eh.j0;
import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class t0 extends io.grpc.o0 {

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<C0414a> f39329a;

        /* renamed from: b  reason: collision with root package name */
        final e2.b f39330b;

        /* renamed from: eh.t0$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        static final class C0414a {

            /* renamed from: a  reason: collision with root package name */
            final String f39331a;

            /* renamed from: b  reason: collision with root package name */
            final EnumC0415a f39332b;

            /* renamed from: c  reason: collision with root package name */
            final j0.d f39333c;

            /* renamed from: d  reason: collision with root package name */
            final Long f39334d;

            /* renamed from: e  reason: collision with root package name */
            final i1 f39335e;

            /* renamed from: f  reason: collision with root package name */
            final String f39336f;

            /* renamed from: g  reason: collision with root package name */
            final String f39337g;

            /* renamed from: eh.t0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            enum EnumC0415a {
                EDS,
                LOGICAL_DNS
            }

            private C0414a(String str, EnumC0415a enumC0415a, String str2, String str3, j0.d dVar, Long l10, i1 i1Var) {
                this.f39331a = (String) com.google.common.base.o.t(str, "cluster");
                this.f39332b = (EnumC0415a) com.google.common.base.o.t(enumC0415a, "type");
                this.f39336f = str2;
                this.f39337g = str3;
                this.f39333c = dVar;
                this.f39334d = l10;
                this.f39335e = i1Var;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static C0414a a(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
                return new C0414a(str, EnumC0415a.EDS, str2, null, dVar, l10, i1Var);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static C0414a b(String str, String str2, j0.d dVar, Long l10, i1 i1Var) {
                return new C0414a(str, EnumC0415a.LOGICAL_DNS, null, str2, dVar, l10, i1Var);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0414a.class != obj.getClass()) {
                    return false;
                }
                C0414a c0414a = (C0414a) obj;
                return this.f39331a.equals(c0414a.f39331a) && this.f39332b == c0414a.f39332b && Objects.equals(this.f39336f, c0414a.f39336f) && Objects.equals(this.f39337g, c0414a.f39337g) && Objects.equals(this.f39333c, c0414a.f39333c) && Objects.equals(this.f39334d, c0414a.f39334d) && Objects.equals(this.f39335e, c0414a.f39335e);
            }

            public int hashCode() {
                return Objects.hash(this.f39331a, this.f39332b, this.f39333c, this.f39334d, this.f39335e, this.f39336f, this.f39337g);
            }

            public String toString() {
                return com.google.common.base.j.c(this).d("cluster", this.f39331a).d("type", this.f39332b).d("edsServiceName", this.f39336f).d("dnsHostName", this.f39337g).d("lrsServerInfo", this.f39333c).d("maxConcurrentRequests", this.f39334d).toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(List<C0414a> list, e2.b bVar) {
            this.f39329a = (List) com.google.common.base.o.t(list, "discoveryMechanisms");
            this.f39330b = (e2.b) com.google.common.base.o.t(bVar, "lbPolicy");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f39329a.equals(aVar.f39329a) && this.f39330b.equals(aVar.f39330b);
        }

        public int hashCode() {
            return Objects.hash(this.f39329a, this.f39330b);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("discoveryMechanisms", this.f39329a).d("lbPolicy", this.f39330b).toString();
        }
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new s0(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "cluster_resolver_experimental";
    }

    @Override // io.grpc.o0
    public int c() {
        return 5;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        throw new UnsupportedOperationException("not supported as top-level LB policy");
    }
}
