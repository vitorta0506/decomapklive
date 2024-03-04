package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Vhds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.t;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.VirtualHost;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class RouteConfiguration extends GeneratedMessageV3 implements l {
    public static final int INTERNAL_ONLY_HEADERS_FIELD_NUMBER = 3;
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
    private z0 internalOnlyHeaders_;
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
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<RouteConfiguration> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RouteConfiguration m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RouteConfiguration(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l {

        /* renamed from: e  reason: collision with root package name */
        private int f46110e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46111f;

        /* renamed from: g  reason: collision with root package name */
        private List<VirtualHost> f46112g;

        /* renamed from: h  reason: collision with root package name */
        private l2<VirtualHost, VirtualHost.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.q> f46113h;

        /* renamed from: i  reason: collision with root package name */
        private Vhds f46114i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Vhds, Vhds.b, r> f46115j;

        /* renamed from: k  reason: collision with root package name */
        private z0 f46116k;

        /* renamed from: l  reason: collision with root package name */
        private List<HeaderValueOption> f46117l;

        /* renamed from: m  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, t> f46118m;

        /* renamed from: n  reason: collision with root package name */
        private z0 f46119n;

        /* renamed from: o  reason: collision with root package name */
        private List<HeaderValueOption> f46120o;

        /* renamed from: p  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, t> f46121p;

        /* renamed from: q  reason: collision with root package name */
        private z0 f46122q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f46123r;

        /* renamed from: s  reason: collision with root package name */
        private BoolValue f46124s;

        /* renamed from: t  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46125t;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46110e & 2) == 0) {
                this.f46116k = new y0(this.f46116k);
                this.f46110e |= 2;
            }
        }

        private void b0() {
            if ((this.f46110e & 16) == 0) {
                this.f46120o = new ArrayList(this.f46120o);
                this.f46110e |= 16;
            }
        }

        private void d0() {
            if ((this.f46110e & 32) == 0) {
                this.f46122q = new y0(this.f46122q);
                this.f46110e |= 32;
            }
        }

        private void e0() {
            if ((this.f46110e & 4) == 0) {
                this.f46117l = new ArrayList(this.f46117l);
                this.f46110e |= 4;
            }
        }

        private void g0() {
            if ((this.f46110e & 8) == 0) {
                this.f46119n = new y0(this.f46119n);
                this.f46110e |= 8;
            }
        }

        private void h0() {
            if ((this.f46110e & 1) == 0) {
                this.f46112g = new ArrayList(this.f46112g);
                this.f46110e |= 1;
            }
        }

        private l2<HeaderValueOption, HeaderValueOption.b, t> j0() {
            if (this.f46121p == null) {
                this.f46121p = new l2<>(this.f46120o, (this.f46110e & 16) != 0, H(), O());
                this.f46120o = null;
            }
            return this.f46121p;
        }

        private l2<HeaderValueOption, HeaderValueOption.b, t> k0() {
            if (this.f46118m == null) {
                this.f46118m = new l2<>(this.f46117l, (this.f46110e & 4) != 0, H(), O());
                this.f46117l = null;
            }
            return this.f46118m;
        }

        private l2<VirtualHost, VirtualHost.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.q> l0() {
            if (this.f46113h == null) {
                this.f46113h = new l2<>(this.f46112g, (this.f46110e & 1) != 0, H(), O());
                this.f46112g = null;
            }
            return this.f46113h;
        }

        private void m0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                l0();
                k0();
                j0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f46996b.d(RouteConfiguration.class, b.class);
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
            routeConfiguration.name_ = this.f46111f;
            l2<VirtualHost, VirtualHost.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.q> l2Var = this.f46113h;
            if (l2Var == null) {
                if ((this.f46110e & 1) != 0) {
                    this.f46112g = Collections.unmodifiableList(this.f46112g);
                    this.f46110e &= -2;
                }
                routeConfiguration.virtualHosts_ = this.f46112g;
            } else {
                routeConfiguration.virtualHosts_ = l2Var.e();
            }
            q2<Vhds, Vhds.b, r> q2Var = this.f46115j;
            if (q2Var == null) {
                routeConfiguration.vhds_ = this.f46114i;
            } else {
                routeConfiguration.vhds_ = q2Var.b();
            }
            if ((this.f46110e & 2) != 0) {
                this.f46116k = this.f46116k.V0();
                this.f46110e &= -3;
            }
            routeConfiguration.internalOnlyHeaders_ = this.f46116k;
            l2<HeaderValueOption, HeaderValueOption.b, t> l2Var2 = this.f46118m;
            if (l2Var2 == null) {
                if ((this.f46110e & 4) != 0) {
                    this.f46117l = Collections.unmodifiableList(this.f46117l);
                    this.f46110e &= -5;
                }
                routeConfiguration.responseHeadersToAdd_ = this.f46117l;
            } else {
                routeConfiguration.responseHeadersToAdd_ = l2Var2.e();
            }
            if ((this.f46110e & 8) != 0) {
                this.f46119n = this.f46119n.V0();
                this.f46110e &= -9;
            }
            routeConfiguration.responseHeadersToRemove_ = this.f46119n;
            l2<HeaderValueOption, HeaderValueOption.b, t> l2Var3 = this.f46121p;
            if (l2Var3 == null) {
                if ((this.f46110e & 16) != 0) {
                    this.f46120o = Collections.unmodifiableList(this.f46120o);
                    this.f46110e &= -17;
                }
                routeConfiguration.requestHeadersToAdd_ = this.f46120o;
            } else {
                routeConfiguration.requestHeadersToAdd_ = l2Var3.e();
            }
            if ((this.f46110e & 32) != 0) {
                this.f46122q = this.f46122q.V0();
                this.f46110e &= -33;
            }
            routeConfiguration.requestHeadersToRemove_ = this.f46122q;
            routeConfiguration.mostSpecificHeaderMutationsWins_ = this.f46123r;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f46125t;
            if (q2Var2 == null) {
                routeConfiguration.validateClusters_ = this.f46124s;
            } else {
                routeConfiguration.validateClusters_ = q2Var2.b();
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
            return m.f46995a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: i0 */
        public RouteConfiguration getDefaultInstanceForType() {
            return RouteConfiguration.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.q0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.q0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.RouteConfiguration$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RouteConfiguration) {
                return q0((RouteConfiguration) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b q0(RouteConfiguration routeConfiguration) {
            if (routeConfiguration == RouteConfiguration.getDefaultInstance()) {
                return this;
            }
            if (!routeConfiguration.getName().isEmpty()) {
                this.f46111f = routeConfiguration.name_;
                R();
            }
            if (this.f46113h == null) {
                if (!routeConfiguration.virtualHosts_.isEmpty()) {
                    if (this.f46112g.isEmpty()) {
                        this.f46112g = routeConfiguration.virtualHosts_;
                        this.f46110e &= -2;
                    } else {
                        h0();
                        this.f46112g.addAll(routeConfiguration.virtualHosts_);
                    }
                    R();
                }
            } else if (!routeConfiguration.virtualHosts_.isEmpty()) {
                if (this.f46113h.k()) {
                    this.f46113h.f();
                    this.f46113h = null;
                    this.f46112g = routeConfiguration.virtualHosts_;
                    this.f46110e &= -2;
                    this.f46113h = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.f46113h.b(routeConfiguration.virtualHosts_);
                }
            }
            if (routeConfiguration.hasVhds()) {
                t0(routeConfiguration.getVhds());
            }
            if (!routeConfiguration.internalOnlyHeaders_.isEmpty()) {
                if (this.f46116k.isEmpty()) {
                    this.f46116k = routeConfiguration.internalOnlyHeaders_;
                    this.f46110e &= -3;
                } else {
                    a0();
                    this.f46116k.addAll(routeConfiguration.internalOnlyHeaders_);
                }
                R();
            }
            if (this.f46118m == null) {
                if (!routeConfiguration.responseHeadersToAdd_.isEmpty()) {
                    if (this.f46117l.isEmpty()) {
                        this.f46117l = routeConfiguration.responseHeadersToAdd_;
                        this.f46110e &= -5;
                    } else {
                        e0();
                        this.f46117l.addAll(routeConfiguration.responseHeadersToAdd_);
                    }
                    R();
                }
            } else if (!routeConfiguration.responseHeadersToAdd_.isEmpty()) {
                if (this.f46118m.k()) {
                    this.f46118m.f();
                    this.f46118m = null;
                    this.f46117l = routeConfiguration.responseHeadersToAdd_;
                    this.f46110e &= -5;
                    this.f46118m = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.f46118m.b(routeConfiguration.responseHeadersToAdd_);
                }
            }
            if (!routeConfiguration.responseHeadersToRemove_.isEmpty()) {
                if (this.f46119n.isEmpty()) {
                    this.f46119n = routeConfiguration.responseHeadersToRemove_;
                    this.f46110e &= -9;
                } else {
                    g0();
                    this.f46119n.addAll(routeConfiguration.responseHeadersToRemove_);
                }
                R();
            }
            if (this.f46121p == null) {
                if (!routeConfiguration.requestHeadersToAdd_.isEmpty()) {
                    if (this.f46120o.isEmpty()) {
                        this.f46120o = routeConfiguration.requestHeadersToAdd_;
                        this.f46110e &= -17;
                    } else {
                        b0();
                        this.f46120o.addAll(routeConfiguration.requestHeadersToAdd_);
                    }
                    R();
                }
            } else if (!routeConfiguration.requestHeadersToAdd_.isEmpty()) {
                if (this.f46121p.k()) {
                    this.f46121p.f();
                    this.f46121p = null;
                    this.f46120o = routeConfiguration.requestHeadersToAdd_;
                    this.f46110e &= -17;
                    this.f46121p = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f46121p.b(routeConfiguration.requestHeadersToAdd_);
                }
            }
            if (!routeConfiguration.requestHeadersToRemove_.isEmpty()) {
                if (this.f46122q.isEmpty()) {
                    this.f46122q = routeConfiguration.requestHeadersToRemove_;
                    this.f46110e &= -33;
                } else {
                    d0();
                    this.f46122q.addAll(routeConfiguration.requestHeadersToRemove_);
                }
                R();
            }
            if (routeConfiguration.getMostSpecificHeaderMutationsWins()) {
                v0(routeConfiguration.getMostSpecificHeaderMutationsWins());
            }
            if (routeConfiguration.hasValidateClusters()) {
                s0(routeConfiguration.getValidateClusters());
            }
            z(((GeneratedMessageV3) routeConfiguration).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b s0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46125t;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46124s;
                if (boolValue2 != null) {
                    this.f46124s = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46124s = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b t0(Vhds vhds) {
            q2<Vhds, Vhds.b, r> q2Var = this.f46115j;
            if (q2Var == null) {
                Vhds vhds2 = this.f46114i;
                if (vhds2 != null) {
                    this.f46114i = Vhds.newBuilder(vhds2).h0(vhds).I();
                } else {
                    this.f46114i = vhds;
                }
                R();
            } else {
                q2Var.e(vhds);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b v0(boolean z10) {
            this.f46123r = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46111f = "";
            this.f46112g = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f46116k = z0Var;
            this.f46117l = Collections.emptyList();
            this.f46119n = z0Var;
            this.f46120o = Collections.emptyList();
            this.f46122q = z0Var;
            m0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46111f = "";
            this.f46112g = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.f46116k = z0Var;
            this.f46117l = Collections.emptyList();
            this.f46119n = z0Var;
            this.f46120o = Collections.emptyList();
            this.f46122q = z0Var;
            m0();
        }
    }

    /* synthetic */ RouteConfiguration(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RouteConfiguration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f46995a;
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
            if ((!hasVhds() || getVhds().equals(routeConfiguration.getVhds())) && m1583getInternalOnlyHeadersList().equals(routeConfiguration.m1583getInternalOnlyHeadersList()) && getResponseHeadersToAddList().equals(routeConfiguration.getResponseHeadersToAddList()) && m1585getResponseHeadersToRemoveList().equals(routeConfiguration.m1585getResponseHeadersToRemoveList()) && getRequestHeadersToAddList().equals(routeConfiguration.getRequestHeadersToAddList()) && m1584getRequestHeadersToRemoveList().equals(routeConfiguration.m1584getRequestHeadersToRemoveList()) && getMostSpecificHeaderMutationsWins() == routeConfiguration.getMostSpecificHeaderMutationsWins() && hasValidateClusters() == routeConfiguration.hasValidateClusters()) {
                return (!hasValidateClusters() || getValidateClusters().equals(routeConfiguration.getValidateClusters())) && this.unknownFields.equals(routeConfiguration.unknownFields);
            }
            return false;
        }
        return false;
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

    public t getRequestHeadersToAddOrBuilder(int i9) {
        return this.requestHeadersToAdd_.get(i9);
    }

    public List<? extends t> getRequestHeadersToAddOrBuilderList() {
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

    public t getResponseHeadersToAddOrBuilder(int i9) {
        return this.responseHeadersToAdd_.get(i9);
    }

    public List<? extends t> getResponseHeadersToAddOrBuilderList() {
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
        int size = computeStringSize + i11 + (m1583getInternalOnlyHeadersList().size() * 1);
        for (int i13 = 0; i13 < this.responseHeadersToAdd_.size(); i13++) {
            size += CodedOutputStream.G(4, this.responseHeadersToAdd_.get(i13));
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.responseHeadersToRemove_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.responseHeadersToRemove_.c1(i15));
        }
        int size2 = size + i14 + (m1585getResponseHeadersToRemoveList().size() * 1);
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
        int size3 = size2 + i17 + (m1584getRequestHeadersToRemoveList().size() * 1);
        if (this.vhds_ != null) {
            size3 += CodedOutputStream.G(9, getVhds());
        }
        boolean z10 = this.mostSpecificHeaderMutationsWins_;
        if (z10) {
            size3 += CodedOutputStream.e(10, z10);
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

    public r getVhdsOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.q getVirtualHostsOrBuilder(int i9) {
        return this.virtualHosts_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.q> getVirtualHostsOrBuilderList() {
        return this.virtualHosts_;
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
            hashCode = (((hashCode * 37) + 3) * 53) + m1583getInternalOnlyHeadersList().hashCode();
        }
        if (getResponseHeadersToAddCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getResponseHeadersToAddList().hashCode();
        }
        if (getResponseHeadersToRemoveCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + m1585getResponseHeadersToRemoveList().hashCode();
        }
        if (getRequestHeadersToAddCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRequestHeadersToAddList().hashCode();
        }
        if (getRequestHeadersToRemoveCount() > 0) {
            hashCode = (((hashCode * 37) + 8) * 53) + m1584getRequestHeadersToRemoveList().hashCode();
        }
        int d10 = (((hashCode * 37) + 10) * 53) + u0.d(getMostSpecificHeaderMutationsWins());
        if (hasValidateClusters()) {
            d10 = (((d10 * 37) + 7) * 53) + getValidateClusters().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m.f46996b.d(RouteConfiguration.class, b.class);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RouteConfiguration(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RouteConfiguration routeConfiguration) {
        return DEFAULT_INSTANCE.toBuilder().q0(routeConfiguration);
    }

    public static RouteConfiguration parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getInternalOnlyHeadersList */
    public i2 m1583getInternalOnlyHeadersList() {
        return this.internalOnlyHeaders_;
    }

    /* renamed from: getRequestHeadersToRemoveList */
    public i2 m1584getRequestHeadersToRemoveList() {
        return this.requestHeadersToRemove_;
    }

    /* renamed from: getResponseHeadersToRemoveList */
    public i2 m1585getResponseHeadersToRemoveList() {
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).q0(this);
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
