package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.ClusterSpecifierPlugin;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.Vhds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.VirtualHost;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RouteConfiguration extends GeneratedMessageV3 implements p {
    public static final int CLUSTER_SPECIFIER_PLUGINS_FIELD_NUMBER = 12;
    public static final int INTERNAL_ONLY_HEADERS_FIELD_NUMBER = 3;
    public static final int MAX_DIRECT_RESPONSE_BODY_SIZE_BYTES_FIELD_NUMBER = 11;
    public static final int MOST_SPECIFIC_HEADER_MUTATIONS_WINS_FIELD_NUMBER = 10;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int REQUEST_HEADERS_TO_ADD_FIELD_NUMBER = 6;
    public static final int REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER = 8;
    public static final int RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER = 4;
    public static final int RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER = 5;
    public static final int VALIDATE_CLUSTERS_FIELD_NUMBER = 7;
    public static final int VHDS_FIELD_NUMBER = 9;
    public static final int VIRTUAL_HOSTS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<ClusterSpecifierPlugin> clusterSpecifierPlugins_;
    private z0 internalOnlyHeaders_;
    private UInt32Value maxDirectResponseBodySizeBytes_;
    private byte memoizedIsInitialized;
    private boolean mostSpecificHeaderMutationsWins_;
    private volatile Object name_;
    private List<HeaderValueOption> requestHeadersToAdd_;
    private z0 requestHeadersToRemove_;
    private List<HeaderValueOption> responseHeadersToAdd_;
    private z0 responseHeadersToRemove_;
    private BoolValue validateClusters_;
    private Vhds vhds_;
    private List<VirtualHost> virtualHosts_;
    private static final RouteConfiguration DEFAULT_INSTANCE = new RouteConfiguration();
    private static final e2<RouteConfiguration> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RouteConfiguration> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RouteConfiguration m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RouteConfiguration(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements p {

        /* renamed from: e  reason: collision with root package name */
        private int f49348e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49349f;

        /* renamed from: g  reason: collision with root package name */
        private List<VirtualHost> f49350g;

        /* renamed from: h  reason: collision with root package name */
        private l2<VirtualHost, VirtualHost.b, y> f49351h;

        /* renamed from: i  reason: collision with root package name */
        private Vhds f49352i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Vhds, Vhds.b, w> f49353j;

        /* renamed from: k  reason: collision with root package name */
        private z0 f49354k;

        /* renamed from: l  reason: collision with root package name */
        private List<HeaderValueOption> f49355l;

        /* renamed from: m  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49356m;

        /* renamed from: n  reason: collision with root package name */
        private z0 f49357n;

        /* renamed from: o  reason: collision with root package name */
        private List<HeaderValueOption> f49358o;

        /* renamed from: p  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> f49359p;

        /* renamed from: q  reason: collision with root package name */
        private z0 f49360q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f49361r;

        /* renamed from: s  reason: collision with root package name */
        private BoolValue f49362s;

        /* renamed from: t  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49363t;

        /* renamed from: u  reason: collision with root package name */
        private UInt32Value f49364u;

        /* renamed from: v  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f49365v;

        /* renamed from: w  reason: collision with root package name */
        private List<ClusterSpecifierPlugin> f49366w;

        /* renamed from: x  reason: collision with root package name */
        private l2<ClusterSpecifierPlugin, ClusterSpecifierPlugin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a> f49367x;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49348e & 64) == 0) {
                this.f49366w = new ArrayList(this.f49366w);
                this.f49348e |= 64;
            }
        }

        private void b0() {
            if ((this.f49348e & 2) == 0) {
                this.f49354k = new y0(this.f49354k);
                this.f49348e |= 2;
            }
        }

        private void d0() {
            if ((this.f49348e & 16) == 0) {
                this.f49358o = new ArrayList(this.f49358o);
                this.f49348e |= 16;
            }
        }

        private void e0() {
            if ((this.f49348e & 32) == 0) {
                this.f49360q = new y0(this.f49360q);
                this.f49348e |= 32;
            }
        }

        private void g0() {
            if ((this.f49348e & 4) == 0) {
                this.f49355l = new ArrayList(this.f49355l);
                this.f49348e |= 4;
            }
        }

        private void h0() {
            if ((this.f49348e & 8) == 0) {
                this.f49357n = new y0(this.f49357n);
                this.f49348e |= 8;
            }
        }

        private void i0() {
            if ((this.f49348e & 1) == 0) {
                this.f49350g = new ArrayList(this.f49350g);
                this.f49348e |= 1;
            }
        }

        private l2<ClusterSpecifierPlugin, ClusterSpecifierPlugin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a> j0() {
            if (this.f49367x == null) {
                this.f49367x = new l2<>(this.f49366w, (this.f49348e & 64) != 0, H(), O());
                this.f49366w = null;
            }
            return this.f49367x;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l0() {
            if (this.f49359p == null) {
                this.f49359p = new l2<>(this.f49358o, (this.f49348e & 16) != 0, H(), O());
                this.f49358o = null;
            }
            return this.f49359p;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> m0() {
            if (this.f49356m == null) {
                this.f49356m = new l2<>(this.f49355l, (this.f49348e & 4) != 0, H(), O());
                this.f49355l = null;
            }
            return this.f49356m;
        }

        private l2<VirtualHost, VirtualHost.b, y> n0() {
            if (this.f49351h == null) {
                this.f49351h = new l2<>(this.f49350g, (this.f49348e & 1) != 0, H(), O());
                this.f49350g = null;
            }
            return this.f49351h;
        }

        private void o0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                n0();
                m0();
                l0();
                j0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: B0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return s.f49518b.d(RouteConfiguration.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RouteConfiguration build() {
            RouteConfiguration I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RouteConfiguration I() {
            RouteConfiguration routeConfiguration = new RouteConfiguration(this, (a) null);
            routeConfiguration.name_ = this.f49349f;
            l2<VirtualHost, VirtualHost.b, y> l2Var = this.f49351h;
            if (l2Var == null) {
                if ((this.f49348e & 1) != 0) {
                    this.f49350g = Collections.unmodifiableList(this.f49350g);
                    this.f49348e &= -2;
                }
                routeConfiguration.virtualHosts_ = this.f49350g;
            } else {
                routeConfiguration.virtualHosts_ = l2Var.e();
            }
            q2<Vhds, Vhds.b, w> q2Var = this.f49353j;
            if (q2Var == null) {
                routeConfiguration.vhds_ = this.f49352i;
            } else {
                routeConfiguration.vhds_ = q2Var.b();
            }
            if ((this.f49348e & 2) != 0) {
                this.f49354k = this.f49354k.V0();
                this.f49348e &= -3;
            }
            routeConfiguration.internalOnlyHeaders_ = this.f49354k;
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var2 = this.f49356m;
            if (l2Var2 == null) {
                if ((this.f49348e & 4) != 0) {
                    this.f49355l = Collections.unmodifiableList(this.f49355l);
                    this.f49348e &= -5;
                }
                routeConfiguration.responseHeadersToAdd_ = this.f49355l;
            } else {
                routeConfiguration.responseHeadersToAdd_ = l2Var2.e();
            }
            if ((this.f49348e & 8) != 0) {
                this.f49357n = this.f49357n.V0();
                this.f49348e &= -9;
            }
            routeConfiguration.responseHeadersToRemove_ = this.f49357n;
            l2<HeaderValueOption, HeaderValueOption.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> l2Var3 = this.f49359p;
            if (l2Var3 == null) {
                if ((this.f49348e & 16) != 0) {
                    this.f49358o = Collections.unmodifiableList(this.f49358o);
                    this.f49348e &= -17;
                }
                routeConfiguration.requestHeadersToAdd_ = this.f49358o;
            } else {
                routeConfiguration.requestHeadersToAdd_ = l2Var3.e();
            }
            if ((this.f49348e & 32) != 0) {
                this.f49360q = this.f49360q.V0();
                this.f49348e &= -33;
            }
            routeConfiguration.requestHeadersToRemove_ = this.f49360q;
            routeConfiguration.mostSpecificHeaderMutationsWins_ = this.f49361r;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f49363t;
            if (q2Var2 == null) {
                routeConfiguration.validateClusters_ = this.f49362s;
            } else {
                routeConfiguration.validateClusters_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f49365v;
            if (q2Var3 == null) {
                routeConfiguration.maxDirectResponseBodySizeBytes_ = this.f49364u;
            } else {
                routeConfiguration.maxDirectResponseBodySizeBytes_ = q2Var3.b();
            }
            l2<ClusterSpecifierPlugin, ClusterSpecifierPlugin.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a> l2Var4 = this.f49367x;
            if (l2Var4 == null) {
                if ((this.f49348e & 64) != 0) {
                    this.f49366w = Collections.unmodifiableList(this.f49366w);
                    this.f49348e &= -65;
                }
                routeConfiguration.clusterSpecifierPlugins_ = this.f49366w;
            } else {
                routeConfiguration.clusterSpecifierPlugins_ = l2Var4.e();
            }
            Q();
            return routeConfiguration;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return s.f49517a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: k0 */
        public RouteConfiguration getDefaultInstanceForType() {
            return RouteConfiguration.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration.access$2100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.s0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.s0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RouteConfiguration$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RouteConfiguration) {
                return s0((RouteConfiguration) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b s0(RouteConfiguration routeConfiguration) {
            if (routeConfiguration == RouteConfiguration.getDefaultInstance()) {
                return this;
            }
            if (!routeConfiguration.getName().isEmpty()) {
                this.f49349f = routeConfiguration.name_;
                R();
            }
            if (this.f49351h == null) {
                if (!routeConfiguration.virtualHosts_.isEmpty()) {
                    if (this.f49350g.isEmpty()) {
                        this.f49350g = routeConfiguration.virtualHosts_;
                        this.f49348e &= -2;
                    } else {
                        i0();
                        this.f49350g.addAll(routeConfiguration.virtualHosts_);
                    }
                    R();
                }
            } else if (!routeConfiguration.virtualHosts_.isEmpty()) {
                if (this.f49351h.k()) {
                    this.f49351h.f();
                    this.f49351h = null;
                    this.f49350g = routeConfiguration.virtualHosts_;
                    this.f49348e &= -2;
                    this.f49351h = GeneratedMessageV3.alwaysUseFieldBuilders ? n0() : null;
                } else {
                    this.f49351h.b(routeConfiguration.virtualHosts_);
                }
            }
            if (routeConfiguration.hasVhds()) {
                x0(routeConfiguration.getVhds());
            }
            if (!routeConfiguration.internalOnlyHeaders_.isEmpty()) {
                if (this.f49354k.isEmpty()) {
                    this.f49354k = routeConfiguration.internalOnlyHeaders_;
                    this.f49348e &= -3;
                } else {
                    b0();
                    this.f49354k.addAll(routeConfiguration.internalOnlyHeaders_);
                }
                R();
            }
            if (this.f49356m == null) {
                if (!routeConfiguration.responseHeadersToAdd_.isEmpty()) {
                    if (this.f49355l.isEmpty()) {
                        this.f49355l = routeConfiguration.responseHeadersToAdd_;
                        this.f49348e &= -5;
                    } else {
                        g0();
                        this.f49355l.addAll(routeConfiguration.responseHeadersToAdd_);
                    }
                    R();
                }
            } else if (!routeConfiguration.responseHeadersToAdd_.isEmpty()) {
                if (this.f49356m.k()) {
                    this.f49356m.f();
                    this.f49356m = null;
                    this.f49355l = routeConfiguration.responseHeadersToAdd_;
                    this.f49348e &= -5;
                    this.f49356m = GeneratedMessageV3.alwaysUseFieldBuilders ? m0() : null;
                } else {
                    this.f49356m.b(routeConfiguration.responseHeadersToAdd_);
                }
            }
            if (!routeConfiguration.responseHeadersToRemove_.isEmpty()) {
                if (this.f49357n.isEmpty()) {
                    this.f49357n = routeConfiguration.responseHeadersToRemove_;
                    this.f49348e &= -9;
                } else {
                    h0();
                    this.f49357n.addAll(routeConfiguration.responseHeadersToRemove_);
                }
                R();
            }
            if (this.f49359p == null) {
                if (!routeConfiguration.requestHeadersToAdd_.isEmpty()) {
                    if (this.f49358o.isEmpty()) {
                        this.f49358o = routeConfiguration.requestHeadersToAdd_;
                        this.f49348e &= -17;
                    } else {
                        d0();
                        this.f49358o.addAll(routeConfiguration.requestHeadersToAdd_);
                    }
                    R();
                }
            } else if (!routeConfiguration.requestHeadersToAdd_.isEmpty()) {
                if (this.f49359p.k()) {
                    this.f49359p.f();
                    this.f49359p = null;
                    this.f49358o = routeConfiguration.requestHeadersToAdd_;
                    this.f49348e &= -17;
                    this.f49359p = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.f49359p.b(routeConfiguration.requestHeadersToAdd_);
                }
            }
            if (!routeConfiguration.requestHeadersToRemove_.isEmpty()) {
                if (this.f49360q.isEmpty()) {
                    this.f49360q = routeConfiguration.requestHeadersToRemove_;
                    this.f49348e &= -33;
                } else {
                    e0();
                    this.f49360q.addAll(routeConfiguration.requestHeadersToRemove_);
                }
                R();
            }
            if (routeConfiguration.getMostSpecificHeaderMutationsWins()) {
                z0(routeConfiguration.getMostSpecificHeaderMutationsWins());
            }
            if (routeConfiguration.hasValidateClusters()) {
                v0(routeConfiguration.getValidateClusters());
            }
            if (routeConfiguration.hasMaxDirectResponseBodySizeBytes()) {
                t0(routeConfiguration.getMaxDirectResponseBodySizeBytes());
            }
            if (this.f49367x == null) {
                if (!routeConfiguration.clusterSpecifierPlugins_.isEmpty()) {
                    if (this.f49366w.isEmpty()) {
                        this.f49366w = routeConfiguration.clusterSpecifierPlugins_;
                        this.f49348e &= -65;
                    } else {
                        a0();
                        this.f49366w.addAll(routeConfiguration.clusterSpecifierPlugins_);
                    }
                    R();
                }
            } else if (!routeConfiguration.clusterSpecifierPlugins_.isEmpty()) {
                if (this.f49367x.k()) {
                    this.f49367x.f();
                    this.f49367x = null;
                    this.f49366w = routeConfiguration.clusterSpecifierPlugins_;
                    this.f49348e &= -65;
                    this.f49367x = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f49367x.b(routeConfiguration.clusterSpecifierPlugins_);
                }
            }
            z(((GeneratedMessageV3) routeConfiguration).unknownFields);
            R();
            return this;
        }

        public b t0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49365v;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49364u;
                if (uInt32Value2 != null) {
                    this.f49364u = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49364u = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: u0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b v0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49363t;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f49362s;
                if (boolValue2 != null) {
                    this.f49362s = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f49362s = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b x0(Vhds vhds) {
            q2<Vhds, Vhds.b, w> q2Var = this.f49353j;
            if (q2Var == null) {
                Vhds vhds2 = this.f49352i;
                if (vhds2 != null) {
                    this.f49352i = Vhds.newBuilder(vhds2).h0(vhds).I();
                } else {
                    this.f49352i = vhds;
                }
                R();
            } else {
                q2Var.e(vhds);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: y0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b z0(boolean z10) {
            this.f49361r = z10;
            R();
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f49349f = "";
            this.f49350g = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f49354k = z0Var;
            this.f49355l = Collections.emptyList();
            this.f49357n = z0Var;
            this.f49358o = Collections.emptyList();
            this.f49360q = z0Var;
            this.f49366w = Collections.emptyList();
            o0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49349f = "";
            this.f49350g = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f49354k = z0Var;
            this.f49355l = Collections.emptyList();
            this.f49357n = z0Var;
            this.f49358o = Collections.emptyList();
            this.f49360q = z0Var;
            this.f49366w = Collections.emptyList();
            o0();
        }
    }

    /* synthetic */ RouteConfiguration(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RouteConfiguration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return s.f49517a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RouteConfiguration parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RouteConfiguration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RouteConfiguration> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RouteConfiguration)) {
            return super.equals(obj);
        }
        RouteConfiguration routeConfiguration = (RouteConfiguration) obj;
        if (getName().equals(routeConfiguration.getName()) && getVirtualHostsList().equals(routeConfiguration.getVirtualHostsList()) && hasVhds() == routeConfiguration.hasVhds()) {
            if ((!hasVhds() || getVhds().equals(routeConfiguration.getVhds())) && m1625getInternalOnlyHeadersList().equals(routeConfiguration.m1625getInternalOnlyHeadersList()) && getResponseHeadersToAddList().equals(routeConfiguration.getResponseHeadersToAddList()) && m1627getResponseHeadersToRemoveList().equals(routeConfiguration.m1627getResponseHeadersToRemoveList()) && getRequestHeadersToAddList().equals(routeConfiguration.getRequestHeadersToAddList()) && m1626getRequestHeadersToRemoveList().equals(routeConfiguration.m1626getRequestHeadersToRemoveList()) && getMostSpecificHeaderMutationsWins() == routeConfiguration.getMostSpecificHeaderMutationsWins() && hasValidateClusters() == routeConfiguration.hasValidateClusters()) {
                if ((!hasValidateClusters() || getValidateClusters().equals(routeConfiguration.getValidateClusters())) && hasMaxDirectResponseBodySizeBytes() == routeConfiguration.hasMaxDirectResponseBodySizeBytes()) {
                    return (!hasMaxDirectResponseBodySizeBytes() || getMaxDirectResponseBodySizeBytes().equals(routeConfiguration.getMaxDirectResponseBodySizeBytes())) && getClusterSpecifierPluginsList().equals(routeConfiguration.getClusterSpecifierPluginsList()) && this.unknownFields.equals(routeConfiguration.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public ClusterSpecifierPlugin getClusterSpecifierPlugins(int i9) {
        return this.clusterSpecifierPlugins_.get(i9);
    }

    public int getClusterSpecifierPluginsCount() {
        return this.clusterSpecifierPlugins_.size();
    }

    public List<ClusterSpecifierPlugin> getClusterSpecifierPluginsList() {
        return this.clusterSpecifierPlugins_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a getClusterSpecifierPluginsOrBuilder(int i9) {
        return this.clusterSpecifierPlugins_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.a> getClusterSpecifierPluginsOrBuilderList() {
        return this.clusterSpecifierPlugins_;
    }

    public String getInternalOnlyHeaders(int i9) {
        return this.internalOnlyHeaders_.get(i9);
    }

    public ByteString getInternalOnlyHeadersBytes(int i9) {
        return this.internalOnlyHeaders_.j0(i9);
    }

    public int getInternalOnlyHeadersCount() {
        return this.internalOnlyHeaders_.size();
    }

    public UInt32Value getMaxDirectResponseBodySizeBytes() {
        UInt32Value uInt32Value = this.maxDirectResponseBodySizeBytes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxDirectResponseBodySizeBytesOrBuilder() {
        return getMaxDirectResponseBodySizeBytes();
    }

    public boolean getMostSpecificHeaderMutationsWins() {
        return this.mostSpecificHeaderMutationsWins_;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RouteConfiguration> getParserForType() {
        return PARSER;
    }

    public HeaderValueOption getRequestHeadersToAdd(int i9) {
        return this.requestHeadersToAdd_.get(i9);
    }

    public int getRequestHeadersToAddCount() {
        return this.requestHeadersToAdd_.size();
    }

    public List<HeaderValueOption> getRequestHeadersToAddList() {
        return this.requestHeadersToAdd_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y getRequestHeadersToAddOrBuilder(int i9) {
        return this.requestHeadersToAdd_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> getRequestHeadersToAddOrBuilderList() {
        return this.requestHeadersToAdd_;
    }

    public String getRequestHeadersToRemove(int i9) {
        return this.requestHeadersToRemove_.get(i9);
    }

    public ByteString getRequestHeadersToRemoveBytes(int i9) {
        return this.requestHeadersToRemove_.j0(i9);
    }

    public int getRequestHeadersToRemoveCount() {
        return this.requestHeadersToRemove_.size();
    }

    public HeaderValueOption getResponseHeadersToAdd(int i9) {
        return this.responseHeadersToAdd_.get(i9);
    }

    public int getResponseHeadersToAddCount() {
        return this.responseHeadersToAdd_.size();
    }

    public List<HeaderValueOption> getResponseHeadersToAddList() {
        return this.responseHeadersToAdd_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y getResponseHeadersToAddOrBuilder(int i9) {
        return this.responseHeadersToAdd_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y> getResponseHeadersToAddOrBuilderList() {
        return this.responseHeadersToAdd_;
    }

    public String getResponseHeadersToRemove(int i9) {
        return this.responseHeadersToRemove_.get(i9);
    }

    public ByteString getResponseHeadersToRemoveBytes(int i9) {
        return this.responseHeadersToRemove_.j0(i9);
    }

    public int getResponseHeadersToRemoveCount() {
        return this.responseHeadersToRemove_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.virtualHosts_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.virtualHosts_.get(i10));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.internalOnlyHeaders_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.internalOnlyHeaders_.c1(i12));
        }
        int size = computeStringSize + i11 + (m1625getInternalOnlyHeadersList().size() * 1);
        for (int i13 = 0; i13 < this.responseHeadersToAdd_.size(); i13++) {
            size += CodedOutputStream.G(4, this.responseHeadersToAdd_.get(i13));
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.responseHeadersToRemove_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.responseHeadersToRemove_.c1(i15));
        }
        int size2 = size + i14 + (m1627getResponseHeadersToRemoveList().size() * 1);
        for (int i16 = 0; i16 < this.requestHeadersToAdd_.size(); i16++) {
            size2 += CodedOutputStream.G(6, this.requestHeadersToAdd_.get(i16));
        }
        if (this.validateClusters_ != null) {
            size2 += CodedOutputStream.G(7, getValidateClusters());
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.requestHeadersToRemove_.size(); i18++) {
            i17 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersToRemove_.c1(i18));
        }
        int size3 = size2 + i17 + (m1626getRequestHeadersToRemoveList().size() * 1);
        if (this.vhds_ != null) {
            size3 += CodedOutputStream.G(9, getVhds());
        }
        boolean z10 = this.mostSpecificHeaderMutationsWins_;
        if (z10) {
            size3 += CodedOutputStream.e(10, z10);
        }
        if (this.maxDirectResponseBodySizeBytes_ != null) {
            size3 += CodedOutputStream.G(11, getMaxDirectResponseBodySizeBytes());
        }
        for (int i19 = 0; i19 < this.clusterSpecifierPlugins_.size(); i19++) {
            size3 += CodedOutputStream.G(12, this.clusterSpecifierPlugins_.get(i19));
        }
        int serializedSize = size3 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BoolValue getValidateClusters() {
        BoolValue boolValue = this.validateClusters_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getValidateClustersOrBuilder() {
        return getValidateClusters();
    }

    public Vhds getVhds() {
        Vhds vhds = this.vhds_;
        return vhds == null ? Vhds.getDefaultInstance() : vhds;
    }

    public w getVhdsOrBuilder() {
        return getVhds();
    }

    public VirtualHost getVirtualHosts(int i9) {
        return this.virtualHosts_.get(i9);
    }

    public int getVirtualHostsCount() {
        return this.virtualHosts_.size();
    }

    public List<VirtualHost> getVirtualHostsList() {
        return this.virtualHosts_;
    }

    public y getVirtualHostsOrBuilder(int i9) {
        return this.virtualHosts_.get(i9);
    }

    public List<? extends y> getVirtualHostsOrBuilderList() {
        return this.virtualHosts_;
    }

    public boolean hasMaxDirectResponseBodySizeBytes() {
        return this.maxDirectResponseBodySizeBytes_ != null;
    }

    public boolean hasValidateClusters() {
        return this.validateClusters_ != null;
    }

    public boolean hasVhds() {
        return this.vhds_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getVirtualHostsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getVirtualHostsList().hashCode();
        }
        if (hasVhds()) {
            hashCode = (((hashCode * 37) + 9) * 53) + getVhds().hashCode();
        }
        if (getInternalOnlyHeadersCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1625getInternalOnlyHeadersList().hashCode();
        }
        if (getResponseHeadersToAddCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getResponseHeadersToAddList().hashCode();
        }
        if (getResponseHeadersToRemoveCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + m1627getResponseHeadersToRemoveList().hashCode();
        }
        if (getRequestHeadersToAddCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRequestHeadersToAddList().hashCode();
        }
        if (getRequestHeadersToRemoveCount() > 0) {
            hashCode = (((hashCode * 37) + 8) * 53) + m1626getRequestHeadersToRemoveList().hashCode();
        }
        int d10 = (((hashCode * 37) + 10) * 53) + u0.d(getMostSpecificHeaderMutationsWins());
        if (hasValidateClusters()) {
            d10 = (((d10 * 37) + 7) * 53) + getValidateClusters().hashCode();
        }
        if (hasMaxDirectResponseBodySizeBytes()) {
            d10 = (((d10 * 37) + 11) * 53) + getMaxDirectResponseBodySizeBytes().hashCode();
        }
        if (getClusterSpecifierPluginsCount() > 0) {
            d10 = (((d10 * 37) + 12) * 53) + getClusterSpecifierPluginsList().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return s.f49518b.d(RouteConfiguration.class, b.class);
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
        return new RouteConfiguration();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.virtualHosts_.size(); i9++) {
            codedOutputStream.L0(2, this.virtualHosts_.get(i9));
        }
        for (int i10 = 0; i10 < this.internalOnlyHeaders_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.internalOnlyHeaders_.c1(i10));
        }
        for (int i11 = 0; i11 < this.responseHeadersToAdd_.size(); i11++) {
            codedOutputStream.L0(4, this.responseHeadersToAdd_.get(i11));
        }
        for (int i12 = 0; i12 < this.responseHeadersToRemove_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.responseHeadersToRemove_.c1(i12));
        }
        for (int i13 = 0; i13 < this.requestHeadersToAdd_.size(); i13++) {
            codedOutputStream.L0(6, this.requestHeadersToAdd_.get(i13));
        }
        if (this.validateClusters_ != null) {
            codedOutputStream.L0(7, getValidateClusters());
        }
        for (int i14 = 0; i14 < this.requestHeadersToRemove_.size(); i14++) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.requestHeadersToRemove_.c1(i14));
        }
        if (this.vhds_ != null) {
            codedOutputStream.L0(9, getVhds());
        }
        boolean z10 = this.mostSpecificHeaderMutationsWins_;
        if (z10) {
            codedOutputStream.n0(10, z10);
        }
        if (this.maxDirectResponseBodySizeBytes_ != null) {
            codedOutputStream.L0(11, getMaxDirectResponseBodySizeBytes());
        }
        for (int i15 = 0; i15 < this.clusterSpecifierPlugins_.size(); i15++) {
            codedOutputStream.L0(12, this.clusterSpecifierPlugins_.get(i15));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RouteConfiguration(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RouteConfiguration routeConfiguration) {
        return DEFAULT_INSTANCE.toBuilder().s0(routeConfiguration);
    }

    public static RouteConfiguration parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getInternalOnlyHeadersList */
    public i2 m1625getInternalOnlyHeadersList() {
        return this.internalOnlyHeaders_;
    }

    /* renamed from: getRequestHeadersToRemoveList */
    public i2 m1626getRequestHeadersToRemoveList() {
        return this.requestHeadersToRemove_;
    }

    /* renamed from: getResponseHeadersToRemoveList */
    public i2 m1627getResponseHeadersToRemoveList() {
        return this.responseHeadersToRemove_;
    }

    private RouteConfiguration(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RouteConfiguration parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RouteConfiguration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RouteConfiguration getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).s0(this);
    }

    public static RouteConfiguration parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RouteConfiguration() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.virtualHosts_ = Collections.emptyList();
        z0 z0Var = y0.f15344d;
        this.internalOnlyHeaders_ = z0Var;
        this.responseHeadersToAdd_ = Collections.emptyList();
        this.responseHeadersToRemove_ = z0Var;
        this.requestHeadersToAdd_ = Collections.emptyList();
        this.requestHeadersToRemove_ = z0Var;
        this.clusterSpecifierPlugins_ = Collections.emptyList();
    }

    public static RouteConfiguration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RouteConfiguration parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RouteConfiguration parseFrom(InputStream inputStream) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RouteConfiguration parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RouteConfiguration parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RouteConfiguration parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RouteConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private RouteConfiguration(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                this.name_ = pVar.K();
                                continue;
                            case 18:
                                if (!(z11 & true)) {
                                    this.virtualHosts_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.virtualHosts_.add((VirtualHost) pVar.B(VirtualHost.parser(), f0Var));
                                continue;
                            case 26:
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.internalOnlyHeaders_ = new y0();
                                    z11 |= true;
                                }
                                this.internalOnlyHeaders_.add(K);
                                continue;
                            case 34:
                                if (!(z11 & true)) {
                                    this.responseHeadersToAdd_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.responseHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                continue;
                            case 42:
                                String K2 = pVar.K();
                                if (!(z11 & true)) {
                                    this.responseHeadersToRemove_ = new y0();
                                    z11 |= true;
                                }
                                this.responseHeadersToRemove_.add(K2);
                                continue;
                            case 50:
                                if (!(z11 & true)) {
                                    this.requestHeadersToAdd_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.requestHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                continue;
                            case 58:
                                BoolValue boolValue = this.validateClusters_;
                                BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.validateClusters_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.validateClusters_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 66:
                                String K3 = pVar.K();
                                if (!(z11 & true)) {
                                    this.requestHeadersToRemove_ = new y0();
                                    z11 |= true;
                                }
                                this.requestHeadersToRemove_.add(K3);
                                continue;
                            case 74:
                                Vhds vhds = this.vhds_;
                                Vhds.b builder2 = vhds != null ? vhds.toBuilder() : null;
                                Vhds vhds2 = (Vhds) pVar.B(Vhds.parser(), f0Var);
                                this.vhds_ = vhds2;
                                if (builder2 != null) {
                                    builder2.h0(vhds2);
                                    this.vhds_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 80:
                                this.mostSpecificHeaderMutationsWins_ = pVar.r();
                                continue;
                            case 90:
                                UInt32Value uInt32Value = this.maxDirectResponseBodySizeBytes_;
                                UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxDirectResponseBodySizeBytes_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.g0(uInt32Value2);
                                    this.maxDirectResponseBodySizeBytes_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                if (!(z11 & true)) {
                                    this.clusterSpecifierPlugins_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.clusterSpecifierPlugins_.add((ClusterSpecifierPlugin) pVar.B(ClusterSpecifierPlugin.parser(), f0Var));
                                continue;
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
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
                if (z11 & true) {
                    this.virtualHosts_ = Collections.unmodifiableList(this.virtualHosts_);
                }
                if (z11 & true) {
                    this.internalOnlyHeaders_ = this.internalOnlyHeaders_.V0();
                }
                if (z11 & true) {
                    this.responseHeadersToAdd_ = Collections.unmodifiableList(this.responseHeadersToAdd_);
                }
                if (z11 & true) {
                    this.responseHeadersToRemove_ = this.responseHeadersToRemove_.V0();
                }
                if (z11 & true) {
                    this.requestHeadersToAdd_ = Collections.unmodifiableList(this.requestHeadersToAdd_);
                }
                if (z11 & true) {
                    this.requestHeadersToRemove_ = this.requestHeadersToRemove_.V0();
                }
                if (z11 & true) {
                    this.clusterSpecifierPlugins_ = Collections.unmodifiableList(this.clusterSpecifierPlugins_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
