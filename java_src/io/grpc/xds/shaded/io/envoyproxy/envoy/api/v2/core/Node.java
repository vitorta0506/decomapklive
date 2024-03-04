package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.b;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BuildVersion;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Extension;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Locality;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Node extends GeneratedMessageV3 implements e0 {
    public static final int BUILD_VERSION_FIELD_NUMBER = 5;
    public static final int CLIENT_FEATURES_FIELD_NUMBER = 10;
    public static final int CLUSTER_FIELD_NUMBER = 2;
    public static final int EXTENSIONS_FIELD_NUMBER = 9;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int LISTENING_ADDRESSES_FIELD_NUMBER = 11;
    public static final int LOCALITY_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 3;
    public static final int USER_AGENT_BUILD_VERSION_FIELD_NUMBER = 8;
    public static final int USER_AGENT_NAME_FIELD_NUMBER = 6;
    public static final int USER_AGENT_VERSION_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private volatile Object buildVersion_;
    private z0 clientFeatures_;
    private volatile Object cluster_;
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
        static final /* synthetic */ int[] f46601a;

        static {
            int[] iArr = new int[UserAgentVersionTypeCase.values().length];
            f46601a = iArr;
            try {
                iArr[UserAgentVersionTypeCase.USER_AGENT_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46601a[UserAgentVersionTypeCase.USER_AGENT_BUILD_VERSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46601a[UserAgentVersionTypeCase.USERAGENTVERSIONTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements e0 {

        /* renamed from: e  reason: collision with root package name */
        private int f46602e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46603f;

        /* renamed from: g  reason: collision with root package name */
        private int f46604g;

        /* renamed from: h  reason: collision with root package name */
        private Object f46605h;

        /* renamed from: i  reason: collision with root package name */
        private Object f46606i;

        /* renamed from: j  reason: collision with root package name */
        private Struct f46607j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f46608k;

        /* renamed from: l  reason: collision with root package name */
        private Locality f46609l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Locality, Locality.b, c0> f46610m;

        /* renamed from: n  reason: collision with root package name */
        private Object f46611n;

        /* renamed from: o  reason: collision with root package name */
        private Object f46612o;

        /* renamed from: p  reason: collision with root package name */
        private q2<BuildVersion, BuildVersion.b, i> f46613p;

        /* renamed from: q  reason: collision with root package name */
        private List<Extension> f46614q;

        /* renamed from: r  reason: collision with root package name */
        private l2<Extension, Extension.b, q> f46615r;

        /* renamed from: s  reason: collision with root package name */
        private z0 f46616s;

        /* renamed from: t  reason: collision with root package name */
        private List<Address> f46617t;

        /* renamed from: u  reason: collision with root package name */
        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> f46618u;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void d0() {
            if ((this.f46604g & 2) == 0) {
                this.f46616s = new y0(this.f46616s);
                this.f46604g |= 2;
            }
        }

        private void e0() {
            if ((this.f46604g & 1) == 0) {
                this.f46614q = new ArrayList(this.f46614q);
                this.f46604g |= 1;
            }
        }

        private void g0() {
            if ((this.f46604g & 4) == 0) {
                this.f46617t = new ArrayList(this.f46617t);
                this.f46604g |= 4;
            }
        }

        private l2<Extension, Extension.b, q> i0() {
            if (this.f46615r == null) {
                this.f46615r = new l2<>(this.f46614q, (this.f46604g & 1) != 0, H(), O());
                this.f46614q = null;
            }
            return this.f46615r;
        }

        private l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> j0() {
            if (this.f46618u == null) {
                this.f46618u = new l2<>(this.f46617t, (this.f46604g & 4) != 0, H(), O());
                this.f46617t = null;
            }
            return this.f46618u;
        }

        private void k0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                j0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: B0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c D0(String str) {
            Objects.requireNonNull(str);
            this.f46612o = str;
            R();
            return this;
        }

        public c H0(String str) {
            Objects.requireNonNull(str);
            this.f46602e = 7;
            this.f46603f = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f46699h.d(Node.class, c.class);
        }

        public c W(Iterable<String> iterable) {
            d0();
            b.a.a(iterable, this.f46616s);
            R();
            return this;
        }

        public c X(Address address) {
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> l2Var = this.f46618u;
            if (l2Var == null) {
                Objects.requireNonNull(address);
                g0();
                this.f46617t.add(address);
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
            node.id_ = this.f46605h;
            node.cluster_ = this.f46606i;
            q2<Struct, Struct.b, u2> q2Var = this.f46608k;
            if (q2Var == null) {
                node.metadata_ = this.f46607j;
            } else {
                node.metadata_ = q2Var.b();
            }
            q2<Locality, Locality.b, c0> q2Var2 = this.f46610m;
            if (q2Var2 == null) {
                node.locality_ = this.f46609l;
            } else {
                node.locality_ = q2Var2.b();
            }
            node.buildVersion_ = this.f46611n;
            node.userAgentName_ = this.f46612o;
            if (this.f46602e == 7) {
                node.userAgentVersionType_ = this.f46603f;
            }
            if (this.f46602e == 8) {
                q2<BuildVersion, BuildVersion.b, i> q2Var3 = this.f46613p;
                if (q2Var3 == null) {
                    node.userAgentVersionType_ = this.f46603f;
                } else {
                    node.userAgentVersionType_ = q2Var3.b();
                }
            }
            l2<Extension, Extension.b, q> l2Var = this.f46615r;
            if (l2Var == null) {
                if ((this.f46604g & 1) != 0) {
                    this.f46614q = Collections.unmodifiableList(this.f46614q);
                    this.f46604g &= -2;
                }
                node.extensions_ = this.f46614q;
            } else {
                node.extensions_ = l2Var.e();
            }
            if ((this.f46604g & 2) != 0) {
                this.f46616s = this.f46616s.V0();
                this.f46604g &= -3;
            }
            node.clientFeatures_ = this.f46616s;
            l2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> l2Var2 = this.f46618u;
            if (l2Var2 == null) {
                if ((this.f46604g & 4) != 0) {
                    this.f46617t = Collections.unmodifiableList(this.f46617t);
                    this.f46604g &= -5;
                }
                node.listeningAddresses_ = this.f46617t;
            } else {
                node.listeningAddresses_ = l2Var2.e();
            }
            node.userAgentVersionTypeCase_ = this.f46602e;
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
            return g.f46698g;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public Node getDefaultInstanceForType() {
            return Node.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.n0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.n0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Node$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Node) {
                return n0((Node) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c n0(Node node) {
            if (node == Node.getDefaultInstance()) {
                return this;
            }
            if (!node.getId().isEmpty()) {
                this.f46605h = node.id_;
                R();
            }
            if (!node.getCluster().isEmpty()) {
                this.f46606i = node.cluster_;
                R();
            }
            if (node.hasMetadata()) {
                q0(node.getMetadata());
            }
            if (node.hasLocality()) {
                o0(node.getLocality());
            }
            if (!node.getBuildVersion().isEmpty()) {
                this.f46611n = node.buildVersion_;
                R();
            }
            if (!node.getUserAgentName().isEmpty()) {
                this.f46612o = node.userAgentName_;
                R();
            }
            if (this.f46615r == null) {
                if (!node.extensions_.isEmpty()) {
                    if (this.f46614q.isEmpty()) {
                        this.f46614q = node.extensions_;
                        this.f46604g &= -2;
                    } else {
                        e0();
                        this.f46614q.addAll(node.extensions_);
                    }
                    R();
                }
            } else if (!node.extensions_.isEmpty()) {
                if (this.f46615r.k()) {
                    this.f46615r.f();
                    this.f46615r = null;
                    this.f46614q = node.extensions_;
                    this.f46604g &= -2;
                    this.f46615r = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f46615r.b(node.extensions_);
                }
            }
            if (!node.clientFeatures_.isEmpty()) {
                if (this.f46616s.isEmpty()) {
                    this.f46616s = node.clientFeatures_;
                    this.f46604g &= -3;
                } else {
                    d0();
                    this.f46616s.addAll(node.clientFeatures_);
                }
                R();
            }
            if (this.f46618u == null) {
                if (!node.listeningAddresses_.isEmpty()) {
                    if (this.f46617t.isEmpty()) {
                        this.f46617t = node.listeningAddresses_;
                        this.f46604g &= -5;
                    } else {
                        g0();
                        this.f46617t.addAll(node.listeningAddresses_);
                    }
                    R();
                }
            } else if (!node.listeningAddresses_.isEmpty()) {
                if (this.f46618u.k()) {
                    this.f46618u.f();
                    this.f46618u = null;
                    this.f46617t = node.listeningAddresses_;
                    this.f46604g &= -5;
                    this.f46618u = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f46618u.b(node.listeningAddresses_);
                }
            }
            int i9 = b.f46601a[node.getUserAgentVersionTypeCase().ordinal()];
            if (i9 == 1) {
                this.f46602e = 7;
                this.f46603f = node.userAgentVersionType_;
                R();
            } else if (i9 == 2) {
                s0(node.getUserAgentBuildVersion());
            }
            z(((GeneratedMessageV3) node).unknownFields);
            R();
            return this;
        }

        public c o0(Locality locality) {
            q2<Locality, Locality.b, c0> q2Var = this.f46610m;
            if (q2Var == null) {
                Locality locality2 = this.f46609l;
                if (locality2 != null) {
                    this.f46609l = Locality.newBuilder(locality2).g0(locality).I();
                } else {
                    this.f46609l = locality;
                }
                R();
            } else {
                q2Var.e(locality);
            }
            return this;
        }

        public c q0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f46608k;
            if (q2Var == null) {
                Struct struct2 = this.f46607j;
                if (struct2 != null) {
                    this.f46607j = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f46607j = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c s0(BuildVersion buildVersion) {
            q2<BuildVersion, BuildVersion.b, i> q2Var = this.f46613p;
            if (q2Var == null) {
                if (this.f46602e == 8 && this.f46603f != BuildVersion.getDefaultInstance()) {
                    this.f46603f = BuildVersion.newBuilder((BuildVersion) this.f46603f).g0(buildVersion).I();
                } else {
                    this.f46603f = buildVersion;
                }
                R();
            } else {
                if (this.f46602e == 8) {
                    q2Var.e(buildVersion);
                }
                this.f46613p.g(buildVersion);
            }
            this.f46602e = 8;
            return this;
        }

        @Deprecated
        public c t0(String str) {
            Objects.requireNonNull(str);
            this.f46611n = str;
            R();
            return this;
        }

        public c u0(String str) {
            Objects.requireNonNull(str);
            this.f46606i = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c x0(String str) {
            Objects.requireNonNull(str);
            this.f46605h = str;
            R();
            return this;
        }

        public c y0(Locality.b bVar) {
            q2<Locality, Locality.b, c0> q2Var = this.f46610m;
            if (q2Var == null) {
                this.f46609l = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            return this;
        }

        public c z0(Struct.b bVar) {
            q2<Struct, Struct.b, u2> q2Var = this.f46608k;
            if (q2Var == null) {
                this.f46607j = bVar.build();
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
            this.f46602e = 0;
            this.f46605h = "";
            this.f46606i = "";
            this.f46611n = "";
            this.f46612o = "";
            this.f46614q = Collections.emptyList();
            this.f46616s = y0.f15344d;
            this.f46617t = Collections.emptyList();
            k0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46602e = 0;
            this.f46605h = "";
            this.f46606i = "";
            this.f46611n = "";
            this.f46612o = "";
            this.f46614q = Collections.emptyList();
            this.f46616s = y0.f15344d;
            this.f46617t = Collections.emptyList();
            k0();
        }
    }

    /* synthetic */ Node(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Node getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f46698g;
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
            if ((!hasMetadata() || getMetadata().equals(node.getMetadata())) && hasLocality() == node.hasLocality()) {
                if ((!hasLocality() || getLocality().equals(node.getLocality())) && getBuildVersion().equals(node.getBuildVersion()) && getUserAgentName().equals(node.getUserAgentName()) && getExtensionsList().equals(node.getExtensionsList()) && m1595getClientFeaturesList().equals(node.m1595getClientFeaturesList()) && getListeningAddressesList().equals(node.getListeningAddressesList()) && getUserAgentVersionTypeCase().equals(node.getUserAgentVersionTypeCase())) {
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

    @Deprecated
    public String getBuildVersion() {
        Object obj = this.buildVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.buildVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Deprecated
    public ByteString getBuildVersionBytes() {
        Object obj = this.buildVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.buildVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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

    public Extension getExtensions(int i9) {
        return this.extensions_.get(i9);
    }

    public int getExtensionsCount() {
        return this.extensions_.size();
    }

    public List<Extension> getExtensionsList() {
        return this.extensions_;
    }

    public q getExtensionsOrBuilder(int i9) {
        return this.extensions_.get(i9);
    }

    public List<? extends q> getExtensionsOrBuilderList() {
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

    public Address getListeningAddresses(int i9) {
        return this.listeningAddresses_.get(i9);
    }

    public int getListeningAddressesCount() {
        return this.listeningAddresses_.size();
    }

    public List<Address> getListeningAddressesList() {
        return this.listeningAddresses_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a getListeningAddressesOrBuilder(int i9) {
        return this.listeningAddresses_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> getListeningAddressesOrBuilderList() {
        return this.listeningAddresses_;
    }

    public Locality getLocality() {
        Locality locality = this.locality_;
        return locality == null ? Locality.getDefaultInstance() : locality;
    }

    public c0 getLocalityOrBuilder() {
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
        if (!GeneratedMessageV3.isStringEmpty(this.buildVersion_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.buildVersion_);
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
        int size = computeStringSize + i11 + (m1595getClientFeaturesList().size() * 1);
        for (int i13 = 0; i13 < this.listeningAddresses_.size(); i13++) {
            size += CodedOutputStream.G(11, this.listeningAddresses_.get(i13));
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
        if (hasLocality()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getLocality().hashCode();
        }
        int hashCode3 = (((((((hashCode2 * 37) + 5) * 53) + getBuildVersion().hashCode()) * 37) + 6) * 53) + getUserAgentName().hashCode();
        if (getExtensionsCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 9) * 53) + getExtensionsList().hashCode();
        }
        if (getClientFeaturesCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 10) * 53) + m1595getClientFeaturesList().hashCode();
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
        return g.f46699h.d(Node.class, c.class);
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
        if (!GeneratedMessageV3.isStringEmpty(this.buildVersion_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.buildVersion_);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Node(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Node node) {
        return DEFAULT_INSTANCE.toBuilder().n0(node);
    }

    public static Node parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getClientFeaturesList */
    public i2 m1595getClientFeaturesList() {
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).n0(this);
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
        this.buildVersion_ = "";
        this.userAgentName_ = "";
        this.extensions_ = Collections.emptyList();
        this.clientFeatures_ = y0.f15344d;
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
                        case 42:
                            this.buildVersion_ = pVar.K();
                            continue;
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
                                this.clientFeatures_ = new y0();
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
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
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
