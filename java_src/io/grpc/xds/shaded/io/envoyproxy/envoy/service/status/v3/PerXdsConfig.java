package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClustersConfigDump;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.EndpointsConfigDump;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ListenersConfigDump;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.RoutesConfigDump;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ScopedRoutesConfigDump;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.d;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.e;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.f;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class PerXdsConfig extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c {
    public static final int CLIENT_STATUS_FIELD_NUMBER = 7;
    public static final int CLUSTER_CONFIG_FIELD_NUMBER = 3;
    public static final int ENDPOINT_CONFIG_FIELD_NUMBER = 6;
    public static final int LISTENER_CONFIG_FIELD_NUMBER = 2;
    public static final int ROUTE_CONFIG_FIELD_NUMBER = 4;
    public static final int SCOPED_ROUTE_CONFIG_FIELD_NUMBER = 5;
    public static final int STATUS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int clientStatus_;
    private byte memoizedIsInitialized;
    private int perXdsConfigCase_;
    private Object perXdsConfig_;
    private int status_;
    private static final PerXdsConfig DEFAULT_INSTANCE = new PerXdsConfig();
    private static final e2<PerXdsConfig> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum PerXdsConfigCase implements u0.c {
        LISTENER_CONFIG(2),
        CLUSTER_CONFIG(3),
        ROUTE_CONFIG(4),
        SCOPED_ROUTE_CONFIG(5),
        ENDPOINT_CONFIG(6),
        PERXDSCONFIG_NOT_SET(0);
        
        private final int value;

        PerXdsConfigCase(int i9) {
            this.value = i9;
        }

        public static PerXdsConfigCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                if (i9 != 6) {
                                    return null;
                                }
                                return ENDPOINT_CONFIG;
                            }
                            return SCOPED_ROUTE_CONFIG;
                        }
                        return ROUTE_CONFIG;
                    }
                    return CLUSTER_CONFIG;
                }
                return LISTENER_CONFIG;
            }
            return PERXDSCONFIG_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PerXdsConfigCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<PerXdsConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PerXdsConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PerXdsConfig(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50196a;

        static {
            int[] iArr = new int[PerXdsConfigCase.values().length];
            f50196a = iArr;
            try {
                iArr[PerXdsConfigCase.LISTENER_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50196a[PerXdsConfigCase.CLUSTER_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50196a[PerXdsConfigCase.ROUTE_CONFIG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f50196a[PerXdsConfigCase.SCOPED_ROUTE_CONFIG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f50196a[PerXdsConfigCase.ENDPOINT_CONFIG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f50196a[PerXdsConfigCase.PERXDSCONFIG_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f50197e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50198f;

        /* renamed from: g  reason: collision with root package name */
        private int f50199g;

        /* renamed from: h  reason: collision with root package name */
        private int f50200h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ListenersConfigDump, ListenersConfigDump.b, d> f50201i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ClustersConfigDump, ClustersConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a> f50202j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RoutesConfigDump, RoutesConfigDump.b, e> f50203k;

        /* renamed from: l  reason: collision with root package name */
        private q2<ScopedRoutesConfigDump, ScopedRoutesConfigDump.b, f> f50204l;

        /* renamed from: m  reason: collision with root package name */
        private q2<EndpointsConfigDump, EndpointsConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c> f50205m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50209d.d(PerXdsConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PerXdsConfig build() {
            PerXdsConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PerXdsConfig I() {
            PerXdsConfig perXdsConfig = new PerXdsConfig(this, (a) null);
            perXdsConfig.status_ = this.f50199g;
            perXdsConfig.clientStatus_ = this.f50200h;
            if (this.f50197e == 2) {
                q2<ListenersConfigDump, ListenersConfigDump.b, d> q2Var = this.f50201i;
                if (q2Var == null) {
                    perXdsConfig.perXdsConfig_ = this.f50198f;
                } else {
                    perXdsConfig.perXdsConfig_ = q2Var.b();
                }
            }
            if (this.f50197e == 3) {
                q2<ClustersConfigDump, ClustersConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a> q2Var2 = this.f50202j;
                if (q2Var2 == null) {
                    perXdsConfig.perXdsConfig_ = this.f50198f;
                } else {
                    perXdsConfig.perXdsConfig_ = q2Var2.b();
                }
            }
            if (this.f50197e == 4) {
                q2<RoutesConfigDump, RoutesConfigDump.b, e> q2Var3 = this.f50203k;
                if (q2Var3 == null) {
                    perXdsConfig.perXdsConfig_ = this.f50198f;
                } else {
                    perXdsConfig.perXdsConfig_ = q2Var3.b();
                }
            }
            if (this.f50197e == 5) {
                q2<ScopedRoutesConfigDump, ScopedRoutesConfigDump.b, f> q2Var4 = this.f50204l;
                if (q2Var4 == null) {
                    perXdsConfig.perXdsConfig_ = this.f50198f;
                } else {
                    perXdsConfig.perXdsConfig_ = q2Var4.b();
                }
            }
            if (this.f50197e == 6) {
                q2<EndpointsConfigDump, EndpointsConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c> q2Var5 = this.f50205m;
                if (q2Var5 == null) {
                    perXdsConfig.perXdsConfig_ = this.f50198f;
                } else {
                    perXdsConfig.perXdsConfig_ = q2Var5.b();
                }
            }
            perXdsConfig.perXdsConfigCase_ = this.f50197e;
            Q();
            return perXdsConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public PerXdsConfig getDefaultInstanceForType() {
            return PerXdsConfig.getDefaultInstance();
        }

        public c d0(ClustersConfigDump clustersConfigDump) {
            q2<ClustersConfigDump, ClustersConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a> q2Var = this.f50202j;
            if (q2Var == null) {
                if (this.f50197e == 3 && this.f50198f != ClustersConfigDump.getDefaultInstance()) {
                    this.f50198f = ClustersConfigDump.newBuilder((ClustersConfigDump) this.f50198f).m0(clustersConfigDump).I();
                } else {
                    this.f50198f = clustersConfigDump;
                }
                R();
            } else {
                if (this.f50197e == 3) {
                    q2Var.e(clustersConfigDump);
                }
                this.f50202j.g(clustersConfigDump);
            }
            this.f50197e = 3;
            return this;
        }

        public c e0(EndpointsConfigDump endpointsConfigDump) {
            q2<EndpointsConfigDump, EndpointsConfigDump.b, io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c> q2Var = this.f50205m;
            if (q2Var == null) {
                if (this.f50197e == 6 && this.f50198f != EndpointsConfigDump.getDefaultInstance()) {
                    this.f50198f = EndpointsConfigDump.newBuilder((EndpointsConfigDump) this.f50198f).k0(endpointsConfigDump).I();
                } else {
                    this.f50198f = endpointsConfigDump;
                }
                R();
            } else {
                if (this.f50197e == 6) {
                    q2Var.e(endpointsConfigDump);
                }
                this.f50205m.g(endpointsConfigDump);
            }
            this.f50197e = 6;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.PerXdsConfig$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50208c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof PerXdsConfig) {
                return i0((PerXdsConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(PerXdsConfig perXdsConfig) {
            if (perXdsConfig == PerXdsConfig.getDefaultInstance()) {
                return this;
            }
            if (perXdsConfig.status_ != 0) {
                q0(perXdsConfig.getStatusValue());
            }
            if (perXdsConfig.clientStatus_ != 0) {
                n0(perXdsConfig.getClientStatusValue());
            }
            int i9 = b.f50196a[perXdsConfig.getPerXdsConfigCase().ordinal()];
            if (i9 == 1) {
                j0(perXdsConfig.getListenerConfig());
            } else if (i9 == 2) {
                d0(perXdsConfig.getClusterConfig());
            } else if (i9 == 3) {
                k0(perXdsConfig.getRouteConfig());
            } else if (i9 == 4) {
                l0(perXdsConfig.getScopedRouteConfig());
            } else if (i9 == 5) {
                e0(perXdsConfig.getEndpointConfig());
            }
            z(((GeneratedMessageV3) perXdsConfig).unknownFields);
            R();
            return this;
        }

        public c j0(ListenersConfigDump listenersConfigDump) {
            q2<ListenersConfigDump, ListenersConfigDump.b, d> q2Var = this.f50201i;
            if (q2Var == null) {
                if (this.f50197e == 2 && this.f50198f != ListenersConfigDump.getDefaultInstance()) {
                    this.f50198f = ListenersConfigDump.newBuilder((ListenersConfigDump) this.f50198f).k0(listenersConfigDump).I();
                } else {
                    this.f50198f = listenersConfigDump;
                }
                R();
            } else {
                if (this.f50197e == 2) {
                    q2Var.e(listenersConfigDump);
                }
                this.f50201i.g(listenersConfigDump);
            }
            this.f50197e = 2;
            return this;
        }

        public c k0(RoutesConfigDump routesConfigDump) {
            q2<RoutesConfigDump, RoutesConfigDump.b, e> q2Var = this.f50203k;
            if (q2Var == null) {
                if (this.f50197e == 4 && this.f50198f != RoutesConfigDump.getDefaultInstance()) {
                    this.f50198f = RoutesConfigDump.newBuilder((RoutesConfigDump) this.f50198f).k0(routesConfigDump).I();
                } else {
                    this.f50198f = routesConfigDump;
                }
                R();
            } else {
                if (this.f50197e == 4) {
                    q2Var.e(routesConfigDump);
                }
                this.f50203k.g(routesConfigDump);
            }
            this.f50197e = 4;
            return this;
        }

        public c l0(ScopedRoutesConfigDump scopedRoutesConfigDump) {
            q2<ScopedRoutesConfigDump, ScopedRoutesConfigDump.b, f> q2Var = this.f50204l;
            if (q2Var == null) {
                if (this.f50197e == 5 && this.f50198f != ScopedRoutesConfigDump.getDefaultInstance()) {
                    this.f50198f = ScopedRoutesConfigDump.newBuilder((ScopedRoutesConfigDump) this.f50198f).k0(scopedRoutesConfigDump).I();
                } else {
                    this.f50198f = scopedRoutesConfigDump;
                }
                R();
            } else {
                if (this.f50197e == 5) {
                    q2Var.e(scopedRoutesConfigDump);
                }
                this.f50204l.g(scopedRoutesConfigDump);
            }
            this.f50197e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Deprecated
        public c n0(int i9) {
            this.f50200h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c q0(int i9) {
            this.f50199g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50197e = 0;
            this.f50199g = 0;
            this.f50200h = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50197e = 0;
            this.f50199g = 0;
            this.f50200h = 0;
            b0();
        }
    }

    /* synthetic */ PerXdsConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PerXdsConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50208c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PerXdsConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PerXdsConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PerXdsConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PerXdsConfig)) {
            return super.equals(obj);
        }
        PerXdsConfig perXdsConfig = (PerXdsConfig) obj;
        if (this.status_ == perXdsConfig.status_ && this.clientStatus_ == perXdsConfig.clientStatus_ && getPerXdsConfigCase().equals(perXdsConfig.getPerXdsConfigCase())) {
            int i9 = this.perXdsConfigCase_;
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 != 5) {
                            if (i9 == 6 && !getEndpointConfig().equals(perXdsConfig.getEndpointConfig())) {
                                return false;
                            }
                        } else if (!getScopedRouteConfig().equals(perXdsConfig.getScopedRouteConfig())) {
                            return false;
                        }
                    } else if (!getRouteConfig().equals(perXdsConfig.getRouteConfig())) {
                        return false;
                    }
                } else if (!getClusterConfig().equals(perXdsConfig.getClusterConfig())) {
                    return false;
                }
            } else if (!getListenerConfig().equals(perXdsConfig.getListenerConfig())) {
                return false;
            }
            return this.unknownFields.equals(perXdsConfig.unknownFields);
        }
        return false;
    }

    @Deprecated
    public ClientConfigStatus getClientStatus() {
        ClientConfigStatus valueOf = ClientConfigStatus.valueOf(this.clientStatus_);
        return valueOf == null ? ClientConfigStatus.UNRECOGNIZED : valueOf;
    }

    @Deprecated
    public int getClientStatusValue() {
        return this.clientStatus_;
    }

    public ClustersConfigDump getClusterConfig() {
        if (this.perXdsConfigCase_ == 3) {
            return (ClustersConfigDump) this.perXdsConfig_;
        }
        return ClustersConfigDump.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.a getClusterConfigOrBuilder() {
        if (this.perXdsConfigCase_ == 3) {
            return (ClustersConfigDump) this.perXdsConfig_;
        }
        return ClustersConfigDump.getDefaultInstance();
    }

    public EndpointsConfigDump getEndpointConfig() {
        if (this.perXdsConfigCase_ == 6) {
            return (EndpointsConfigDump) this.perXdsConfig_;
        }
        return EndpointsConfigDump.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.c getEndpointConfigOrBuilder() {
        if (this.perXdsConfigCase_ == 6) {
            return (EndpointsConfigDump) this.perXdsConfig_;
        }
        return EndpointsConfigDump.getDefaultInstance();
    }

    public ListenersConfigDump getListenerConfig() {
        if (this.perXdsConfigCase_ == 2) {
            return (ListenersConfigDump) this.perXdsConfig_;
        }
        return ListenersConfigDump.getDefaultInstance();
    }

    public d getListenerConfigOrBuilder() {
        if (this.perXdsConfigCase_ == 2) {
            return (ListenersConfigDump) this.perXdsConfig_;
        }
        return ListenersConfigDump.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PerXdsConfig> getParserForType() {
        return PARSER;
    }

    public PerXdsConfigCase getPerXdsConfigCase() {
        return PerXdsConfigCase.forNumber(this.perXdsConfigCase_);
    }

    public RoutesConfigDump getRouteConfig() {
        if (this.perXdsConfigCase_ == 4) {
            return (RoutesConfigDump) this.perXdsConfig_;
        }
        return RoutesConfigDump.getDefaultInstance();
    }

    public e getRouteConfigOrBuilder() {
        if (this.perXdsConfigCase_ == 4) {
            return (RoutesConfigDump) this.perXdsConfig_;
        }
        return RoutesConfigDump.getDefaultInstance();
    }

    public ScopedRoutesConfigDump getScopedRouteConfig() {
        if (this.perXdsConfigCase_ == 5) {
            return (ScopedRoutesConfigDump) this.perXdsConfig_;
        }
        return ScopedRoutesConfigDump.getDefaultInstance();
    }

    public f getScopedRouteConfigOrBuilder() {
        if (this.perXdsConfigCase_ == 5) {
            return (ScopedRoutesConfigDump) this.perXdsConfig_;
        }
        return ScopedRoutesConfigDump.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.status_ != ConfigStatus.UNKNOWN.getNumber() ? 0 + CodedOutputStream.l(1, this.status_) : 0;
        if (this.perXdsConfigCase_ == 2) {
            l10 += CodedOutputStream.G(2, (ListenersConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 3) {
            l10 += CodedOutputStream.G(3, (ClustersConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 4) {
            l10 += CodedOutputStream.G(4, (RoutesConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 5) {
            l10 += CodedOutputStream.G(5, (ScopedRoutesConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 6) {
            l10 += CodedOutputStream.G(6, (EndpointsConfigDump) this.perXdsConfig_);
        }
        if (this.clientStatus_ != ClientConfigStatus.CLIENT_UNKNOWN.getNumber()) {
            l10 += CodedOutputStream.l(7, this.clientStatus_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ConfigStatus getStatus() {
        ConfigStatus valueOf = ConfigStatus.valueOf(this.status_);
        return valueOf == null ? ConfigStatus.UNRECOGNIZED : valueOf;
    }

    public int getStatusValue() {
        return this.status_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClusterConfig() {
        return this.perXdsConfigCase_ == 3;
    }

    public boolean hasEndpointConfig() {
        return this.perXdsConfigCase_ == 6;
    }

    public boolean hasListenerConfig() {
        return this.perXdsConfigCase_ == 2;
    }

    public boolean hasRouteConfig() {
        return this.perXdsConfigCase_ == 4;
    }

    public boolean hasScopedRouteConfig() {
        return this.perXdsConfigCase_ == 5;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.status_) * 37) + 7) * 53) + this.clientStatus_;
        int i11 = this.perXdsConfigCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getListenerConfig().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getClusterConfig().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getRouteConfig().hashCode();
        } else if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getScopedRouteConfig().hashCode();
        } else {
            if (i11 == 6) {
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getEndpointConfig().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.b.f50209d.d(PerXdsConfig.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new PerXdsConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.status_ != ConfigStatus.UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.status_);
        }
        if (this.perXdsConfigCase_ == 2) {
            codedOutputStream.L0(2, (ListenersConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 3) {
            codedOutputStream.L0(3, (ClustersConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 4) {
            codedOutputStream.L0(4, (RoutesConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 5) {
            codedOutputStream.L0(5, (ScopedRoutesConfigDump) this.perXdsConfig_);
        }
        if (this.perXdsConfigCase_ == 6) {
            codedOutputStream.L0(6, (EndpointsConfigDump) this.perXdsConfig_);
        }
        if (this.clientStatus_ != ClientConfigStatus.CLIENT_UNKNOWN.getNumber()) {
            codedOutputStream.v0(7, this.clientStatus_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PerXdsConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(PerXdsConfig perXdsConfig) {
        return DEFAULT_INSTANCE.toBuilder().i0(perXdsConfig);
    }

    public static PerXdsConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PerXdsConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.perXdsConfigCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PerXdsConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PerXdsConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PerXdsConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static PerXdsConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static PerXdsConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private PerXdsConfig() {
        this.perXdsConfigCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.status_ = 0;
        this.clientStatus_ = 0;
    }

    public static PerXdsConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PerXdsConfig parseFrom(InputStream inputStream) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static PerXdsConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private PerXdsConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (L == 18) {
                                    ListenersConfigDump.b builder = this.perXdsConfigCase_ == 2 ? ((ListenersConfigDump) this.perXdsConfig_).toBuilder() : null;
                                    o1 B = pVar.B(ListenersConfigDump.parser(), f0Var);
                                    this.perXdsConfig_ = B;
                                    if (builder != null) {
                                        builder.k0((ListenersConfigDump) B);
                                        this.perXdsConfig_ = builder.I();
                                    }
                                    this.perXdsConfigCase_ = 2;
                                } else if (L == 26) {
                                    ClustersConfigDump.b builder2 = this.perXdsConfigCase_ == 3 ? ((ClustersConfigDump) this.perXdsConfig_).toBuilder() : null;
                                    o1 B2 = pVar.B(ClustersConfigDump.parser(), f0Var);
                                    this.perXdsConfig_ = B2;
                                    if (builder2 != null) {
                                        builder2.m0((ClustersConfigDump) B2);
                                        this.perXdsConfig_ = builder2.I();
                                    }
                                    this.perXdsConfigCase_ = 3;
                                } else if (L == 34) {
                                    RoutesConfigDump.b builder3 = this.perXdsConfigCase_ == 4 ? ((RoutesConfigDump) this.perXdsConfig_).toBuilder() : null;
                                    o1 B3 = pVar.B(RoutesConfigDump.parser(), f0Var);
                                    this.perXdsConfig_ = B3;
                                    if (builder3 != null) {
                                        builder3.k0((RoutesConfigDump) B3);
                                        this.perXdsConfig_ = builder3.I();
                                    }
                                    this.perXdsConfigCase_ = 4;
                                } else if (L == 42) {
                                    ScopedRoutesConfigDump.b builder4 = this.perXdsConfigCase_ == 5 ? ((ScopedRoutesConfigDump) this.perXdsConfig_).toBuilder() : null;
                                    o1 B4 = pVar.B(ScopedRoutesConfigDump.parser(), f0Var);
                                    this.perXdsConfig_ = B4;
                                    if (builder4 != null) {
                                        builder4.k0((ScopedRoutesConfigDump) B4);
                                        this.perXdsConfig_ = builder4.I();
                                    }
                                    this.perXdsConfigCase_ = 5;
                                } else if (L == 50) {
                                    EndpointsConfigDump.b builder5 = this.perXdsConfigCase_ == 6 ? ((EndpointsConfigDump) this.perXdsConfig_).toBuilder() : null;
                                    o1 B5 = pVar.B(EndpointsConfigDump.parser(), f0Var);
                                    this.perXdsConfig_ = B5;
                                    if (builder5 != null) {
                                        builder5.k0((EndpointsConfigDump) B5);
                                        this.perXdsConfig_ = builder5.I();
                                    }
                                    this.perXdsConfigCase_ = 6;
                                } else if (L != 56) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.clientStatus_ = pVar.u();
                                }
                            } else {
                                this.status_ = pVar.u();
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static PerXdsConfig parseFrom(p pVar) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PerXdsConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (PerXdsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
