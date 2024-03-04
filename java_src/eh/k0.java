package eh;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import eh.a1;
import eh.j0;
import eh.q2;
import io.grpc.TlsChannelCredentials;
import io.grpc.internal.GrpcUtil;
import io.grpc.xds.XdsInitializationException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
class k0 extends j0 {

    /* renamed from: c  reason: collision with root package name */
    static String f38805c = System.getenv("GRPC_XDS_BOOTSTRAP");

    /* renamed from: d  reason: collision with root package name */
    static String f38806d = System.getProperty("io.grpc.xds.bootstrap");

    /* renamed from: e  reason: collision with root package name */
    static String f38807e = System.getenv("GRPC_XDS_BOOTSTRAP_CONFIG");

    /* renamed from: f  reason: collision with root package name */
    static String f38808f = System.getProperty("io.grpc.xds.bootstrapConfig");

    /* renamed from: g  reason: collision with root package name */
    static boolean f38809g;

    /* renamed from: b  reason: collision with root package name */
    private a f38811b = b.INSTANCE;

    /* renamed from: a  reason: collision with root package name */
    private final q2 f38810a = q2.f(io.grpc.g0.b("bootstrapper", null));

    /* loaded from: classes5.dex */
    interface a {
        String a(String str) throws IOException;
    }

    /* loaded from: classes5.dex */
    private enum b implements a {
        INSTANCE;

        @Override // eh.k0.a
        public String a(String str) throws IOException {
            return new String(Files.readAllBytes(Paths.get(str, new String[0])), StandardCharsets.UTF_8);
        }
    }

    static {
        f38809g = !com.google.common.base.v.b(System.getenv("GRPC_EXPERIMENTAL_XDS_FEDERATION")) && Boolean.parseBoolean(System.getenv("GRPC_EXPERIMENTAL_XDS_FEDERATION"));
    }

    private static <T> T c(T t10, String str) throws XdsInitializationException {
        if (t10 != null) {
            return t10;
        }
        throw new XdsInitializationException("Invalid bootstrap: '" + str + "' does not exist.");
    }

    private static io.grpc.e d(List<Map<String, ?>> list, String str) throws XdsInitializationException {
        for (Map<String, ?> map : list) {
            String l10 = io.grpc.internal.b1.l(map, "type");
            if (l10 != null) {
                char c10 = 65535;
                switch (l10.hashCode()) {
                    case -4877765:
                        if (l10.equals("google_default")) {
                            c10 = 0;
                            continue;
                        } else {
                            continue;
                        }
                    case 114939:
                        if (l10.equals("tls")) {
                            c10 = 1;
                            continue;
                        } else {
                            continue;
                        }
                    case 541341916:
                        if (l10.equals("insecure")) {
                            c10 = 2;
                            continue;
                        } else {
                            continue;
                        }
                }
                switch (c10) {
                    case 0:
                        return fg.b.a();
                    case 1:
                        return TlsChannelCredentials.a();
                    case 2:
                        return io.grpc.b0.a();
                }
            }
            throw new XdsInitializationException("Invalid bootstrap: server " + str + " with 'channel_creds' type unspecified");
        }
        return null;
    }

    private static List<j0.d> e(List<?> list, q2 q2Var) throws XdsInitializationException {
        boolean z10;
        q2Var.c(q2.b.INFO, "Configured with {0} xDS servers", Integer.valueOf(list.size()));
        ImmutableList.b builder = ImmutableList.builder();
        for (Map<String, ?> map : io.grpc.internal.b1.a(list)) {
            String l10 = io.grpc.internal.b1.l(map, "server_uri");
            if (l10 != null) {
                q2.b bVar = q2.b.INFO;
                q2Var.c(bVar, "xDS server URI: {0}", l10);
                List<?> e10 = io.grpc.internal.b1.e(map, "channel_creds");
                if (e10 != null && !e10.isEmpty()) {
                    io.grpc.e d10 = d(io.grpc.internal.b1.a(e10), l10);
                    if (d10 != null) {
                        List<String> g10 = io.grpc.internal.b1.g(map, "server_features");
                        if (g10 != null) {
                            q2Var.c(bVar, "Server features: {0}", g10);
                            z10 = g10.contains("xds_v3");
                        } else {
                            z10 = false;
                        }
                        builder.a(j0.d.b(l10, d10, z10));
                    } else {
                        throw new XdsInitializationException("Server " + l10 + ": no supported channel credentials found");
                    }
                } else {
                    throw new XdsInitializationException("Invalid bootstrap: server " + l10 + " 'channel_creds' required");
                }
            } else {
                throw new XdsInitializationException("Invalid bootstrap: missing 'server_uri'");
            }
        }
        return builder.j();
    }

    @Override // eh.j0
    public j0.b a() throws XdsInitializationException {
        String str;
        String str2 = f38805c;
        if (str2 == null) {
            str2 = f38806d;
        }
        if (str2 != null) {
            this.f38810a.c(q2.b.INFO, "Reading bootstrap file from {0}", str2);
            try {
                str = this.f38811b.a(str2);
            } catch (IOException e10) {
                throw new XdsInitializationException("Fail to read bootstrap file", e10);
            }
        } else {
            str = f38807e;
            if (str == null) {
                str = f38808f;
            }
        }
        if (str != null) {
            q2 q2Var = this.f38810a;
            q2.b bVar = q2.b.INFO;
            q2Var.b(bVar, "Reading bootstrap from " + str2);
            try {
                Map<String, ?> map = (Map) io.grpc.internal.a1.a(str);
                this.f38810a.c(q2.b.DEBUG, "Bootstrap configuration:\n{0}", map);
                return b(map);
            } catch (IOException e11) {
                throw new XdsInitializationException("Failed to parse JSON", e11);
            }
        }
        throw new XdsInitializationException("Cannot find bootstrap configuration\nEnvironment variables searched:\n- GRPC_XDS_BOOTSTRAP\n- GRPC_XDS_BOOTSTRAP_CONFIG\n\nJava System Properties searched:\n- io.grpc.xds.bootstrap\n- io.grpc.xds.bootstrapConfig\n\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.j0
    public j0.b b(Map<String, ?> map) throws XdsInitializationException {
        List<j0.d> list;
        j0.b.a b10 = j0.b.b();
        List<?> e10 = io.grpc.internal.b1.e(map, "xds_servers");
        if (e10 != null) {
            List<j0.d> e11 = e(e10, this.f38810a);
            b10.g(e11);
            a1.c.a a10 = a1.c.a();
            Map<String, ?> k10 = io.grpc.internal.b1.k(map, "node");
            int i9 = 2;
            if (k10 != null) {
                String l10 = io.grpc.internal.b1.l(k10, "id");
                if (l10 != null) {
                    this.f38810a.c(q2.b.INFO, "Node id: {0}", l10);
                    a10.n(l10);
                }
                String l11 = io.grpc.internal.b1.l(k10, "cluster");
                if (l11 != null) {
                    this.f38810a.c(q2.b.INFO, "Node cluster: {0}", l11);
                    a10.m(l11);
                }
                Map<String, ?> k11 = io.grpc.internal.b1.k(k10, "metadata");
                if (k11 != null) {
                    a10.p(k11);
                }
                Map<String, ?> k12 = io.grpc.internal.b1.k(k10, "locality");
                if (k12 != null) {
                    String l12 = k12.containsKey("region") ? io.grpc.internal.b1.l(k12, "region") : "";
                    String l13 = k12.containsKey("zone") ? io.grpc.internal.b1.l(k12, "zone") : "";
                    String l14 = k12.containsKey("sub_zone") ? io.grpc.internal.b1.l(k12, "sub_zone") : "";
                    this.f38810a.c(q2.b.INFO, "Locality region: {0}, zone: {0}, subZone: {0}", l12, l13, l14);
                    a10.o(t1.a(l12, l13, l14));
                }
            }
            GrpcUtil.h h10 = GrpcUtil.h();
            q2 q2Var = this.f38810a;
            q2.b bVar = q2.b.INFO;
            q2Var.c(bVar, "Build version: {0}", h10);
            a10.l(h10.toString());
            a10.q(h10.b());
            a10.r(h10.a());
            a10.j("envoy.lb.does_not_support_overprovisioning");
            b10.e(a10.k());
            Map<String, ?> k13 = io.grpc.internal.b1.k(map, "certificate_providers");
            if (k13 != null) {
                this.f38810a.c(bVar, "Configured with {0} cert providers", Integer.valueOf(k13.size()));
                HashMap hashMap = new HashMap(k13.size());
                for (String str : k13.keySet()) {
                    Map<String, ?> k14 = io.grpc.internal.b1.k(k13, str);
                    String str2 = (String) c(io.grpc.internal.b1.l(k14, "plugin_name"), "plugin_name");
                    q2 q2Var2 = this.f38810a;
                    q2.b bVar2 = q2.b.INFO;
                    List<j0.d> list2 = e11;
                    Object[] objArr = new Object[i9];
                    objArr[0] = str;
                    objArr[1] = str2;
                    q2Var2.c(bVar2, "cert provider: {0}, plugin name: {1}", objArr);
                    hashMap.put(str, j0.c.b(str2, (Map) c(io.grpc.internal.b1.k(k14, "config"), "config")));
                    e11 = list2;
                    i9 = 2;
                }
                list = e11;
                b10.c(hashMap);
            } else {
                list = e11;
            }
            String l15 = io.grpc.internal.b1.l(map, "server_listener_resource_name_template");
            q2 q2Var3 = this.f38810a;
            q2.b bVar3 = q2.b.INFO;
            q2Var3.c(bVar3, "server_listener_resource_name_template: {0}", l15);
            b10.f(l15);
            if (!f38809g) {
                return b10.b();
            }
            String l16 = io.grpc.internal.b1.l(map, "client_default_listener_resource_name_template");
            this.f38810a.c(bVar3, "client_default_listener_resource_name_template: {0}", l16);
            if (l16 != null) {
                b10.d(l16);
            }
            Map<String, ?> k15 = io.grpc.internal.b1.k(map, "authorities");
            ImmutableMap.b builder = ImmutableMap.builder();
            if (k15 != null) {
                this.f38810a.c(bVar3, "Configured with {0} xDS server authorities", Integer.valueOf(k15.size()));
                for (String str3 : k15.keySet()) {
                    q2 q2Var4 = this.f38810a;
                    q2.b bVar4 = q2.b.INFO;
                    q2Var4.c(bVar4, "xDS server authority: {0}", str3);
                    Map<String, ?> k16 = io.grpc.internal.b1.k(k15, str3);
                    String l17 = io.grpc.internal.b1.l(k16, "client_listener_resource_name_template");
                    this.f38810a.c(bVar4, "client_listener_resource_name_template: {0}", l17);
                    String str4 = "xdstp://" + str3 + FileUtils.RES_PREFIX_STORAGE;
                    if (l17 == null) {
                        l17 = str4 + "envoy.config.listener.v3.Listener/%s";
                    } else if (!l17.startsWith(str4)) {
                        throw new XdsInitializationException("client_listener_resource_name_template: '" + l17 + "' does not start with " + str4);
                    }
                    List<?> e12 = io.grpc.internal.b1.e(k16, "xds_servers");
                    builder.h(str3, j0.a.b(l17, (e12 == null || e12.isEmpty()) ? list : e(e12, this.f38810a)));
                }
                b10.a(builder.a());
            }
            return b10.b();
        }
        throw new XdsInitializationException("Invalid bootstrap: 'xds_servers' does not exist.");
    }
}
