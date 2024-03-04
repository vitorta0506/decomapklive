package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.b;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import io.grpc.xds.shaded.com.github.xds.core.v3.ContextParams;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.BuildVersion;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Extension;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Locality;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Node extends GeneratedMessageV3 implements l0 {
    public static final int CLIENT_FEATURES_FIELD_NUMBER = 10;
    public static final int CLUSTER_FIELD_NUMBER = 2;
    public static final int DYNAMIC_PARAMETERS_FIELD_NUMBER = 12;
    public static final int EXTENSIONS_FIELD_NUMBER = 9;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int LISTENING_ADDRESSES_FIELD_NUMBER = 11;
    public static final int LOCALITY_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 3;
    public static final int USER_AGENT_BUILD_VERSION_FIELD_NUMBER = 8;
    public static final int USER_AGENT_NAME_FIELD_NUMBER = 6;
    public static final int USER_AGENT_VERSION_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private com.google.protobuf.z0 clientFeatures_;
    private volatile Object cluster_;
    private com.google.protobuf.g1<String, ContextParams> dynamicParameters_;
    private List<Extension> extensions_;
    private volatile Object id_;
    private List<Address> listeningAddresses_;
    private Locality locality_;
    private byte memoizedIsInitialized;
    private Struct metadata_;
    private volatile Object userAgentName_;
    private int userAgentVersionTypeCase_;
    private Object userAgentVersionType_;
    private static final Node DEFAULT_INSTANCE = new Node();
    private static final e2<Node> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum UserAgentVersionTypeCase implements u0.c {
        USER_AGENT_VERSION(7),
        USER_AGENT_BUILD_VERSION(8),
        USERAGENTVERSIONTYPE_NOT_SET(0);
        
        private final int value;

        UserAgentVersionTypeCase(int i9) {
            this.value = i9;
        }

        public static UserAgentVersionTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 8) {
                        return null;
                    }
                    return USER_AGENT_BUILD_VERSION;
                }
                return USER_AGENT_VERSION;
            }
            return USERAGENTVERSIONTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static UserAgentVersionTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Node> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Node m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Node(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48066a;

        static {
            int[] iArr = new int[UserAgentVersionTypeCase.values().length];
            f48066a = iArr;
            try {
                iArr[UserAgentVersionTypeCase.USER_AGENT_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48066a[UserAgentVersionTypeCase.USER_AGENT_BUILD_VERSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48066a[UserAgentVersionTypeCase.USERAGENTVERSIONTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements l0 {

        /* renamed from: e  reason: collision with root package name */
        private int f48067e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48068f;

        /* renamed from: g  reason: collision with root package name */
        private int f48069g;

        /* renamed from: h  reason: collision with root package name */
        private Object f48070h;

        /* renamed from: i  reason: collision with root package name */
        private Object f48071i;

        /* renamed from: j  reason: collision with root package name */
        private Struct f48072j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f48073k;

        /* renamed from: l  reason: collision with root package name */
        private com.google.protobuf.g1<String, ContextParams> f48074l;

        /* renamed from: m  reason: collision with root package name */
        private Locality f48075m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Locality, Locality.b, j0> f48076n;

        /* renamed from: o  reason: collision with root package name */
        private Object f48077o;

        /* renamed from: p  reason: collision with root package name */
        private q2<BuildVersion, BuildVersion.b, i> f48078p;

        /* renamed from: q  reason: collision with root package name */
        private List<Extension> f48079q;

        /* renamed from: r  reason: collision with root package name */
        private l2<Extension, Extension.b, u> f48080r;

        /* renamed from: s  reason: collision with root package name */
        private com.google.protobuf.z0 f48081s;

        /* renamed from: t  reason: collision with root package name */
        private List<Address> f48082t;

        /* renamed from: u  reason: collision with root package name */
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f48083u;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void d0() {
            if ((this.f48069g & 4) == 0) {
                this.f48081s = new com.google.protobuf.y0(this.f48081s);
                this.f48069g |= 4;
            }
        }

        private void e0() {
            if ((this.f48069g & 2) == 0) {
                this.f48079q = new ArrayList(this.f48079q);
                this.f48069g |= 2;
            }
        }

        private void g0() {
            if ((this.f48069g & 8) == 0) {
                this.f48082t = new ArrayList(this.f48082t);
                this.f48069g |= 8;
            }
        }

        private l2<Extension, Extension.b, u> i0() {
            if (this.f48080r == null) {
                this.f48080r = new l2<>(this.f48079q, (this.f48069g & 2) != 0, H(), O());
                this.f48079q = null;
            }
            return this.f48080r;
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> j0() {
            if (this.f48083u == null) {
                this.f48083u = new l2<>(this.f48082t, (this.f48069g & 8) != 0, H(), O());
                this.f48082t = null;
            }
            return this.f48083u;
        }

        private com.google.protobuf.g1<String, ContextParams> k0() {
            com.google.protobuf.g1<String, ContextParams> g1Var = this.f48074l;
            return g1Var == null ? com.google.protobuf.g1.g(d.f48084a) : g1Var;
        }

        private com.google.protobuf.g1<String, ContextParams> l0() {
            R();
            if (this.f48074l == null) {
                this.f48074l = com.google.protobuf.g1.p(d.f48084a);
            }
            if (!this.f48074l.m()) {
                this.f48074l = this.f48074l.f();
            }
            return this.f48074l;
        }

        private void m0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                j0();
            }
        }

        public c B0(Struct.b bVar) {
            q2<Struct, Struct.b, u2> q2Var = this.f48073k;
            if (q2Var == null) {
                this.f48072j = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: D0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c H0(String str) {
            Objects.requireNonNull(str);
            this.f48077o = str;
            R();
            return this;
        }

        public c I0(String str) {
            Objects.requireNonNull(str);
            this.f48067e = 7;
            this.f48068f = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f48217h.d(Node.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 == 12) {
                return k0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 == 12) {
                return l0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public c W(Iterable<String> iterable) {
            d0();
            b.a.a(iterable, this.f48081s);
            R();
            return this;
        }

        @Deprecated
        public c X(Address address) {
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> l2Var = this.f48083u;
            if (l2Var == null) {
                Objects.requireNonNull(address);
                g0();
                this.f48082t.add(address);
                R();
            } else {
                l2Var.d(address);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: Y */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public Node build() {
            Node I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: a0 */
        public Node I() {
            Node node = new Node(this, (a) null);
            node.id_ = this.f48070h;
            node.cluster_ = this.f48071i;
            q2<Struct, Struct.b, u2> q2Var = this.f48073k;
            if (q2Var == null) {
                node.metadata_ = this.f48072j;
            } else {
                node.metadata_ = q2Var.b();
            }
            node.dynamicParameters_ = k0();
            node.dynamicParameters_.n();
            q2<Locality, Locality.b, j0> q2Var2 = this.f48076n;
            if (q2Var2 == null) {
                node.locality_ = this.f48075m;
            } else {
                node.locality_ = q2Var2.b();
            }
            node.userAgentName_ = this.f48077o;
            if (this.f48067e == 7) {
                node.userAgentVersionType_ = this.f48068f;
            }
            if (this.f48067e == 8) {
                q2<BuildVersion, BuildVersion.b, i> q2Var3 = this.f48078p;
                if (q2Var3 == null) {
                    node.userAgentVersionType_ = this.f48068f;
                } else {
                    node.userAgentVersionType_ = q2Var3.b();
                }
            }
            l2<Extension, Extension.b, u> l2Var = this.f48080r;
            if (l2Var == null) {
                if ((this.f48069g & 2) != 0) {
                    this.f48079q = Collections.unmodifiableList(this.f48079q);
                    this.f48069g &= -3;
                }
                node.extensions_ = this.f48079q;
            } else {
                node.extensions_ = l2Var.e();
            }
            if ((this.f48069g & 4) != 0) {
                this.f48081s = this.f48081s.V0();
                this.f48069g &= -5;
            }
            node.clientFeatures_ = this.f48081s;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> l2Var2 = this.f48083u;
            if (l2Var2 == null) {
                if ((this.f48069g & 8) != 0) {
                    this.f48082t = Collections.unmodifiableList(this.f48082t);
                    this.f48069g &= -9;
                }
                node.listeningAddresses_ = this.f48082t;
            } else {
                node.listeningAddresses_ = l2Var2.e();
            }
            node.userAgentVersionTypeCase_ = this.f48067e;
            Q();
            return node;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: b0 */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f48216g;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public Node getDefaultInstanceForType() {
            return Node.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Node$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Node) {
                return q0((Node) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c q0(Node node) {
            if (node == Node.getDefaultInstance()) {
                return this;
            }
            if (!node.getId().isEmpty()) {
                this.f48070h = node.id_;
                R();
            }
            if (!node.getCluster().isEmpty()) {
                this.f48071i = node.cluster_;
                R();
            }
            if (node.hasMetadata()) {
                s0(node.getMetadata());
            }
            l0().o(node.internalGetDynamicParameters());
            if (node.hasLocality()) {
                r0(node.getLocality());
            }
            if (!node.getUserAgentName().isEmpty()) {
                this.f48077o = node.userAgentName_;
                R();
            }
            if (this.f48080r == null) {
                if (!node.extensions_.isEmpty()) {
                    if (this.f48079q.isEmpty()) {
                        this.f48079q = node.extensions_;
                        this.f48069g &= -3;
                    } else {
                        e0();
                        this.f48079q.addAll(node.extensions_);
                    }
                    R();
                }
            } else if (!node.extensions_.isEmpty()) {
                if (this.f48080r.k()) {
                    this.f48080r.f();
                    this.f48080r = null;
                    this.f48079q = node.extensions_;
                    this.f48069g &= -3;
                    this.f48080r = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f48080r.b(node.extensions_);
                }
            }
            if (!node.clientFeatures_.isEmpty()) {
                if (this.f48081s.isEmpty()) {
                    this.f48081s = node.clientFeatures_;
                    this.f48069g &= -5;
                } else {
                    d0();
                    this.f48081s.addAll(node.clientFeatures_);
                }
                R();
            }
            if (this.f48083u == null) {
                if (!node.listeningAddresses_.isEmpty()) {
                    if (this.f48082t.isEmpty()) {
                        this.f48082t = node.listeningAddresses_;
                        this.f48069g &= -9;
                    } else {
                        g0();
                        this.f48082t.addAll(node.listeningAddresses_);
                    }
                    R();
                }
            } else if (!node.listeningAddresses_.isEmpty()) {
                if (this.f48083u.k()) {
                    this.f48083u.f();
                    this.f48083u = null;
                    this.f48082t = node.listeningAddresses_;
                    this.f48069g &= -9;
                    this.f48083u = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f48083u.b(node.listeningAddresses_);
                }
            }
            int i9 = b.f48066a[node.getUserAgentVersionTypeCase().ordinal()];
            if (i9 == 1) {
                this.f48067e = 7;
                this.f48068f = node.userAgentVersionType_;
                R();
            } else if (i9 == 2) {
                u0(node.getUserAgentBuildVersion());
            }
            z(((GeneratedMessageV3) node).unknownFields);
            R();
            return this;
        }

        public c r0(Locality locality) {
            q2<Locality, Locality.b, j0> q2Var = this.f48076n;
            if (q2Var == null) {
                Locality locality2 = this.f48075m;
                if (locality2 != null) {
                    this.f48075m = Locality.newBuilder(locality2).g0(locality).I();
                } else {
                    this.f48075m = locality;
                }
                R();
            } else {
                q2Var.e(locality);
            }
            return this;
        }

        public c s0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f48073k;
            if (q2Var == null) {
                Struct struct2 = this.f48072j;
                if (struct2 != null) {
                    this.f48072j = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f48072j = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c u0(BuildVersion buildVersion) {
            q2<BuildVersion, BuildVersion.b, i> q2Var = this.f48078p;
            if (q2Var == null) {
                if (this.f48067e == 8 && this.f48068f != BuildVersion.getDefaultInstance()) {
                    this.f48068f = BuildVersion.newBuilder((BuildVersion) this.f48068f).g0(buildVersion).I();
                } else {
                    this.f48068f = buildVersion;
                }
                R();
            } else {
                if (this.f48067e == 8) {
                    q2Var.e(buildVersion);
                }
                this.f48078p.g(buildVersion);
            }
            this.f48067e = 8;
            return this;
        }

        public c v0(String str) {
            Objects.requireNonNull(str);
            this.f48071i = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c y0(String str) {
            Objects.requireNonNull(str);
            this.f48070h = str;
            R();
            return this;
        }

        public c z0(Locality.b bVar) {
            q2<Locality, Locality.b, j0> q2Var = this.f48076n;
            if (q2Var == null) {
                this.f48075m = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48067e = 0;
            this.f48070h = "";
            this.f48071i = "";
            this.f48077o = "";
            this.f48079q = Collections.emptyList();
            this.f48081s = com.google.protobuf.y0.f15344d;
            this.f48082t = Collections.emptyList();
            m0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48067e = 0;
            this.f48070h = "";
            this.f48071i = "";
            this.f48077o = "";
            this.f48079q = Collections.emptyList();
            this.f48081s = com.google.protobuf.y0.f15344d;
            this.f48082t = Collections.emptyList();
            m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, ContextParams> f48084a = com.google.protobuf.e1.k(g.f48218i, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, ContextParams.getDefaultInstance());
    }

    /* synthetic */ Node(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Node getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f48216g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, ContextParams> internalGetDynamicParameters() {
        com.google.protobuf.g1<String, ContextParams> g1Var = this.dynamicParameters_;
        return g1Var == null ? com.google.protobuf.g1.g(d.f48084a) : g1Var;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Node parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Node) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Node parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Node> parser() {
        return PARSER;
    }

    public boolean containsDynamicParameters(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetDynamicParameters().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Node)) {
            return super.equals(obj);
        }
        Node node = (Node) obj;
        if (getId().equals(node.getId()) && getCluster().equals(node.getCluster()) && hasMetadata() == node.hasMetadata()) {
            if ((!hasMetadata() || getMetadata().equals(node.getMetadata())) && internalGetDynamicParameters().equals(node.internalGetDynamicParameters()) && hasLocality() == node.hasLocality()) {
                if ((!hasLocality() || getLocality().equals(node.getLocality())) && getUserAgentName().equals(node.getUserAgentName()) && getExtensionsList().equals(node.getExtensionsList()) && m1616getClientFeaturesList().equals(node.m1616getClientFeaturesList()) && getListeningAddressesList().equals(node.getListeningAddressesList()) && getUserAgentVersionTypeCase().equals(node.getUserAgentVersionTypeCase())) {
                    int i9 = this.userAgentVersionTypeCase_;
                    if (i9 != 7) {
                        if (i9 == 8 && !getUserAgentBuildVersion().equals(node.getUserAgentBuildVersion())) {
                            return false;
                        }
                    } else if (!getUserAgentVersion().equals(node.getUserAgentVersion())) {
                        return false;
                    }
                    return this.unknownFields.equals(node.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String getClientFeatures(int i9) {
        return this.clientFeatures_.get(i9);
    }

    public ByteString getClientFeaturesBytes(int i9) {
        return this.clientFeatures_.j0(i9);
    }

    public int getClientFeaturesCount() {
        return this.clientFeatures_.size();
    }

    public String getCluster() {
        Object obj = this.cluster_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cluster_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getClusterBytes() {
        Object obj = this.cluster_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cluster_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Deprecated
    public Map<String, ContextParams> getDynamicParameters() {
        return getDynamicParametersMap();
    }

    public int getDynamicParametersCount() {
        return internalGetDynamicParameters().i().size();
    }

    public Map<String, ContextParams> getDynamicParametersMap() {
        return internalGetDynamicParameters().i();
    }

    public ContextParams getDynamicParametersOrDefault(String str, ContextParams contextParams) {
        Objects.requireNonNull(str, "map key");
        Map<String, ContextParams> i9 = internalGetDynamicParameters().i();
        return i9.containsKey(str) ? i9.get(str) : contextParams;
    }

    public ContextParams getDynamicParametersOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, ContextParams> i9 = internalGetDynamicParameters().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public Extension getExtensions(int i9) {
        return this.extensions_.get(i9);
    }

    public int getExtensionsCount() {
        return this.extensions_.size();
    }

    public List<Extension> getExtensionsList() {
        return this.extensions_;
    }

    public u getExtensionsOrBuilder(int i9) {
        return this.extensions_.get(i9);
    }

    public List<? extends u> getExtensionsOrBuilderList() {
        return this.extensions_;
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Deprecated
    public Address getListeningAddresses(int i9) {
        return this.listeningAddresses_.get(i9);
    }

    @Deprecated
    public int getListeningAddressesCount() {
        return this.listeningAddresses_.size();
    }

    @Deprecated
    public List<Address> getListeningAddressesList() {
        return this.listeningAddresses_;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getListeningAddressesOrBuilder(int i9) {
        return this.listeningAddresses_.get(i9);
    }

    @Deprecated
    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> getListeningAddressesOrBuilderList() {
        return this.listeningAddresses_;
    }

    public Locality getLocality() {
        Locality locality = this.locality_;
        return locality == null ? Locality.getDefaultInstance() : locality;
    }

    public j0 getLocalityOrBuilder() {
        return getLocality();
    }

    public Struct getMetadata() {
        Struct struct = this.metadata_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getMetadataOrBuilder() {
        return getMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Node> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.id_) ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.cluster_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.cluster_);
        }
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(3, getMetadata());
        }
        if (this.locality_ != null) {
            computeStringSize += CodedOutputStream.G(4, getLocality());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.userAgentName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.userAgentName_);
        }
        if (this.userAgentVersionTypeCase_ == 7) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.userAgentVersionType_);
        }
        if (this.userAgentVersionTypeCase_ == 8) {
            computeStringSize += CodedOutputStream.G(8, (BuildVersion) this.userAgentVersionType_);
        }
        for (int i10 = 0; i10 < this.extensions_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(9, this.extensions_.get(i10));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.clientFeatures_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.clientFeatures_.c1(i12));
        }
        int size = computeStringSize + i11 + (m1616getClientFeaturesList().size() * 1);
        for (int i13 = 0; i13 < this.listeningAddresses_.size(); i13++) {
            size += CodedOutputStream.G(11, this.listeningAddresses_.get(i13));
        }
        for (Map.Entry<String, ContextParams> entry : internalGetDynamicParameters().i().entrySet()) {
            size += CodedOutputStream.G(12, d.f48084a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BuildVersion getUserAgentBuildVersion() {
        if (this.userAgentVersionTypeCase_ == 8) {
            return (BuildVersion) this.userAgentVersionType_;
        }
        return BuildVersion.getDefaultInstance();
    }

    public i getUserAgentBuildVersionOrBuilder() {
        if (this.userAgentVersionTypeCase_ == 8) {
            return (BuildVersion) this.userAgentVersionType_;
        }
        return BuildVersion.getDefaultInstance();
    }

    public String getUserAgentName() {
        Object obj = this.userAgentName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.userAgentName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUserAgentNameBytes() {
        Object obj = this.userAgentName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userAgentName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getUserAgentVersion() {
        String str = this.userAgentVersionTypeCase_ == 7 ? this.userAgentVersionType_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.userAgentVersionTypeCase_ == 7) {
            this.userAgentVersionType_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getUserAgentVersionBytes() {
        String str = this.userAgentVersionTypeCase_ == 7 ? this.userAgentVersionType_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.userAgentVersionTypeCase_ == 7) {
                this.userAgentVersionType_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public UserAgentVersionTypeCase getUserAgentVersionTypeCase() {
        return UserAgentVersionTypeCase.forNumber(this.userAgentVersionTypeCase_);
    }

    public boolean hasLocality() {
        return this.locality_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasUserAgentBuildVersion() {
        return this.userAgentVersionTypeCase_ == 8;
    }

    public boolean hasUserAgentVersion() {
        return this.userAgentVersionTypeCase_ == 7;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getCluster().hashCode();
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getMetadata().hashCode();
        }
        if (!internalGetDynamicParameters().i().isEmpty()) {
            hashCode2 = (((hashCode2 * 37) + 12) * 53) + internalGetDynamicParameters().hashCode();
        }
        if (hasLocality()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getLocality().hashCode();
        }
        int hashCode3 = (((hashCode2 * 37) + 6) * 53) + getUserAgentName().hashCode();
        if (getExtensionsCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 9) * 53) + getExtensionsList().hashCode();
        }
        if (getClientFeaturesCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 10) * 53) + m1616getClientFeaturesList().hashCode();
        }
        if (getListeningAddressesCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 11) * 53) + getListeningAddressesList().hashCode();
        }
        int i11 = this.userAgentVersionTypeCase_;
        if (i11 == 7) {
            i9 = ((hashCode3 * 37) + 7) * 53;
            hashCode = getUserAgentVersion().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((hashCode3 * 37) + 8) * 53;
                hashCode = getUserAgentBuildVersion().hashCode();
            }
            int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }
        hashCode3 = i9 + hashCode;
        int hashCode42 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode42;
        return hashCode42;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f48217h.d(Node.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 == 12) {
            return internalGetDynamicParameters();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new Node();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.cluster_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.cluster_);
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(3, getMetadata());
        }
        if (this.locality_ != null) {
            codedOutputStream.L0(4, getLocality());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.userAgentName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.userAgentName_);
        }
        if (this.userAgentVersionTypeCase_ == 7) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.userAgentVersionType_);
        }
        if (this.userAgentVersionTypeCase_ == 8) {
            codedOutputStream.L0(8, (BuildVersion) this.userAgentVersionType_);
        }
        for (int i9 = 0; i9 < this.extensions_.size(); i9++) {
            codedOutputStream.L0(9, this.extensions_.get(i9));
        }
        for (int i10 = 0; i10 < this.clientFeatures_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.clientFeatures_.c1(i10));
        }
        for (int i11 = 0; i11 < this.listeningAddresses_.size(); i11++) {
            codedOutputStream.L0(11, this.listeningAddresses_.get(i11));
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetDynamicParameters(), d.f48084a, 12);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Node(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Node node) {
        return DEFAULT_INSTANCE.toBuilder().q0(node);
    }

    public static Node parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getClientFeaturesList */
    public i2 m1616getClientFeaturesList() {
        return this.clientFeatures_;
    }

    private Node(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.userAgentVersionTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Node parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Node parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Node getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).q0(this);
    }

    public static Node parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Node parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Node() {
        this.userAgentVersionTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.id_ = "";
        this.cluster_ = "";
        this.userAgentName_ = "";
        this.extensions_ = Collections.emptyList();
        this.clientFeatures_ = com.google.protobuf.y0.f15344d;
        this.listeningAddresses_ = Collections.emptyList();
    }

    public static Node parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Node parseFrom(InputStream inputStream) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Node parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Node parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Node parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Node(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.id_ = pVar.K();
                                continue;
                            case 18:
                                this.cluster_ = pVar.K();
                                continue;
                            case 26:
                                Struct struct = this.metadata_;
                                Struct.b builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                this.metadata_ = struct2;
                                if (builder != null) {
                                    builder.i0(struct2);
                                    this.metadata_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 34:
                                Locality locality = this.locality_;
                                Locality.b builder2 = locality != null ? locality.toBuilder() : null;
                                Locality locality2 = (Locality) pVar.B(Locality.parser(), f0Var);
                                this.locality_ = locality2;
                                if (builder2 != null) {
                                    builder2.g0(locality2);
                                    this.locality_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 50:
                                this.userAgentName_ = pVar.K();
                                continue;
                            case 58:
                                String K = pVar.K();
                                this.userAgentVersionTypeCase_ = 7;
                                this.userAgentVersionType_ = K;
                                continue;
                            case 66:
                                BuildVersion.b builder3 = this.userAgentVersionTypeCase_ == 8 ? ((BuildVersion) this.userAgentVersionType_).toBuilder() : null;
                                o1 B = pVar.B(BuildVersion.parser(), f0Var);
                                this.userAgentVersionType_ = B;
                                if (builder3 != null) {
                                    builder3.g0((BuildVersion) B);
                                    this.userAgentVersionType_ = builder3.I();
                                }
                                this.userAgentVersionTypeCase_ = 8;
                                continue;
                            case 74:
                                if (!(z11 & true)) {
                                    this.extensions_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.extensions_.add((Extension) pVar.B(Extension.parser(), f0Var));
                                continue;
                            case 82:
                                String K2 = pVar.K();
                                if (!(z11 & true)) {
                                    this.clientFeatures_ = new com.google.protobuf.y0();
                                    z11 |= true;
                                }
                                this.clientFeatures_.add(K2);
                                continue;
                            case 90:
                                if (!(z11 & true)) {
                                    this.listeningAddresses_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.listeningAddresses_.add((Address) pVar.B(Address.parser(), f0Var));
                                continue;
                            case 98:
                                if (!(z11 & true)) {
                                    this.dynamicParameters_ = com.google.protobuf.g1.p(d.f48084a);
                                    z11 |= true;
                                }
                                com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(d.f48084a.getParserForType(), f0Var);
                                this.dynamicParameters_.l().put((String) e1Var.f(), (ContextParams) e1Var.h());
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
                    this.extensions_ = Collections.unmodifiableList(this.extensions_);
                }
                if (z11 & true) {
                    this.clientFeatures_ = this.clientFeatures_.V0();
                }
                if (z11 & true) {
                    this.listeningAddresses_ = Collections.unmodifiableList(this.listeningAddresses_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
