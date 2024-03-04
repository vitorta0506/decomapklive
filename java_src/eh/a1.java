package eh;

import com.facebook.appevents.integrity.IntegrityManager;
import com.google.protobuf.ListValue;
import com.google.protobuf.NullValue;
import com.google.protobuf.Struct;
import com.google.protobuf.Value;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
final class a1 {

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f38644a;

        /* renamed from: b  reason: collision with root package name */
        private final int f38645b;

        Address a() {
            return Address.newBuilder().m0(SocketAddress.newBuilder().i0(this.f38644a).l0(this.f38645b)).build();
        }

        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address b() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address.newBuilder().l0(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketAddress.newBuilder().i0(this.f38644a).l0(this.f38645b)).build();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f38645b == bVar.f38645b && Objects.equals(this.f38644a, bVar.f38644a);
        }

        public int hashCode() {
            return Objects.hash(this.f38644a, Integer.valueOf(this.f38645b));
        }

        public String toString() {
            return com.google.common.base.j.c(this).d(IntegrityManager.INTEGRITY_TYPE_ADDRESS, this.f38644a).b("port", this.f38645b).toString();
        }
    }

    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f38646a;

        /* renamed from: b  reason: collision with root package name */
        private final String f38647b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<String, ?> f38648c;

        /* renamed from: d  reason: collision with root package name */
        private final t1 f38649d;

        /* renamed from: e  reason: collision with root package name */
        private final List<b> f38650e;

        /* renamed from: f  reason: collision with root package name */
        private final String f38651f;

        /* renamed from: g  reason: collision with root package name */
        private final String f38652g;

        /* renamed from: h  reason: collision with root package name */
        private final String f38653h;

        /* renamed from: i  reason: collision with root package name */
        private final List<String> f38654i;

        /* loaded from: classes5.dex */
        static final class a {

            /* renamed from: a  reason: collision with root package name */
            private String f38655a;

            /* renamed from: b  reason: collision with root package name */
            private String f38656b;

            /* renamed from: c  reason: collision with root package name */
            private Map<String, ?> f38657c;

            /* renamed from: d  reason: collision with root package name */
            private t1 f38658d;

            /* renamed from: e  reason: collision with root package name */
            private final List<b> f38659e;

            /* renamed from: f  reason: collision with root package name */
            private String f38660f;

            /* renamed from: g  reason: collision with root package name */
            private String f38661g;

            /* renamed from: h  reason: collision with root package name */
            private String f38662h;

            /* renamed from: i  reason: collision with root package name */
            private final List<String> f38663i;

            /* JADX INFO: Access modifiers changed from: package-private */
            public a j(String str) {
                this.f38663i.add((String) com.google.common.base.o.t(str, "clientFeature"));
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public c k() {
                return new c(this.f38655a, this.f38656b, this.f38657c, this.f38658d, this.f38659e, this.f38660f, this.f38661g, this.f38662h, this.f38663i);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a l(String str) {
                this.f38660f = (String) com.google.common.base.o.t(str, "buildVersion");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a m(String str) {
                this.f38656b = (String) com.google.common.base.o.t(str, "cluster");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a n(String str) {
                this.f38655a = (String) com.google.common.base.o.t(str, "id");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a o(t1 t1Var) {
                this.f38658d = (t1) com.google.common.base.o.t(t1Var, "locality");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a p(Map<String, ?> map) {
                this.f38657c = (Map) com.google.common.base.o.t(map, "metadata");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a q(String str) {
                this.f38661g = (String) com.google.common.base.o.t(str, "userAgentName");
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a r(String str) {
                this.f38662h = (String) com.google.common.base.o.t(str, "userAgentVersion");
                return this;
            }

            private a() {
                this.f38655a = "";
                this.f38656b = "";
                this.f38659e = new ArrayList();
                this.f38660f = "";
                this.f38661g = "";
                this.f38663i = new ArrayList();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a a() {
            return new a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b() {
            a aVar = new a();
            aVar.f38655a = this.f38646a;
            aVar.f38656b = this.f38647b;
            aVar.f38657c = this.f38648c;
            aVar.f38658d = this.f38649d;
            aVar.f38660f = this.f38651f;
            aVar.f38659e.addAll(this.f38650e);
            aVar.f38661g = this.f38652g;
            aVar.f38662h = this.f38653h;
            aVar.f38663i.addAll(this.f38654i);
            return aVar;
        }

        public Node c() {
            Node.c newBuilder = Node.newBuilder();
            newBuilder.y0(this.f38646a);
            newBuilder.v0(this.f38647b);
            if (this.f38648c != null) {
                Struct.b newBuilder2 = Struct.newBuilder();
                for (Map.Entry<String, ?> entry : this.f38648c.entrySet()) {
                    newBuilder2.k0(entry.getKey(), a1.b(entry.getValue()));
                }
                newBuilder.B0(newBuilder2);
            }
            if (this.f38649d != null) {
                newBuilder.z0(Locality.newBuilder().j0(this.f38649d.b()).m0(this.f38649d.d()).k0(this.f38649d.c()));
            }
            for (b bVar : this.f38650e) {
                newBuilder.X(bVar.a());
            }
            newBuilder.H0(this.f38652g);
            String str = this.f38653h;
            if (str != null) {
                newBuilder.I0(str);
            }
            newBuilder.W(this.f38654i);
            return newBuilder.build();
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node d() {
            Node.c newBuilder = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node.newBuilder();
            newBuilder.x0(this.f38646a);
            newBuilder.u0(this.f38647b);
            if (this.f38648c != null) {
                Struct.b newBuilder2 = Struct.newBuilder();
                for (Map.Entry<String, ?> entry : this.f38648c.entrySet()) {
                    newBuilder2.k0(entry.getKey(), a1.b(entry.getValue()));
                }
                newBuilder.z0(newBuilder2);
            }
            if (this.f38649d != null) {
                newBuilder.y0(io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Locality.newBuilder().j0(this.f38649d.b()).m0(this.f38649d.d()).k0(this.f38649d.c()));
            }
            for (b bVar : this.f38650e) {
                newBuilder.X(bVar.b());
            }
            newBuilder.t0(this.f38651f);
            newBuilder.D0(this.f38652g);
            String str = this.f38653h;
            if (str != null) {
                newBuilder.H0(str);
            }
            newBuilder.W(this.f38654i);
            return newBuilder.build();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return Objects.equals(this.f38646a, cVar.f38646a) && Objects.equals(this.f38647b, cVar.f38647b) && Objects.equals(this.f38648c, cVar.f38648c) && Objects.equals(this.f38649d, cVar.f38649d) && Objects.equals(this.f38650e, cVar.f38650e) && Objects.equals(this.f38651f, cVar.f38651f) && Objects.equals(this.f38652g, cVar.f38652g) && Objects.equals(this.f38653h, cVar.f38653h) && Objects.equals(this.f38654i, cVar.f38654i);
        }

        public int hashCode() {
            return Objects.hash(this.f38646a, this.f38647b, this.f38648c, this.f38649d, this.f38650e, this.f38651f, this.f38652g, this.f38653h, this.f38654i);
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("id", this.f38646a).d("cluster", this.f38647b).d("metadata", this.f38648c).d("locality", this.f38649d).d("listeningAddresses", this.f38650e).d("buildVersion", this.f38651f).d("userAgentName", this.f38652g).d("userAgentVersion", this.f38653h).d("clientFeatures", this.f38654i).toString();
        }

        private c(String str, String str2, Map<String, ?> map, t1 t1Var, List<b> list, String str3, String str4, String str5, List<String> list2) {
            this.f38646a = (String) com.google.common.base.o.t(str, "id");
            this.f38647b = (String) com.google.common.base.o.t(str2, "cluster");
            this.f38648c = map;
            this.f38649d = t1Var;
            this.f38650e = Collections.unmodifiableList((List) com.google.common.base.o.t(list, "listeningAddresses"));
            this.f38651f = (String) com.google.common.base.o.t(str3, "buildVersion");
            this.f38652g = (String) com.google.common.base.o.t(str4, "userAgentName");
            this.f38653h = str5;
            this.f38654i = Collections.unmodifiableList((List) com.google.common.base.o.t(list2, "clientFeatures"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Value b(Object obj) {
        Value.c newBuilder = Value.newBuilder();
        if (obj == null) {
            newBuilder.n0(NullValue.NULL_VALUE);
        } else if (obj instanceof Double) {
            newBuilder.q0(((Double) obj).doubleValue());
        } else if (obj instanceof String) {
            newBuilder.r0((String) obj);
        } else if (obj instanceof Boolean) {
            newBuilder.k0(((Boolean) obj).booleanValue());
        } else if (obj instanceof Map) {
            Struct.b newBuilder2 = Struct.newBuilder();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                newBuilder2.k0((String) entry.getKey(), b(entry.getValue()));
            }
            newBuilder.s0(newBuilder2);
        } else if (obj instanceof List) {
            ListValue.b newBuilder3 = ListValue.newBuilder();
            for (Object obj2 : (List) obj) {
                newBuilder3.X(b(obj2));
            }
            newBuilder.m0(newBuilder3);
        }
        return newBuilder.build();
    }
}
