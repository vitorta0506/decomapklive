package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.t;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class WeightedCluster extends GeneratedMessageV3 implements r {
    public static final int CLUSTERS_FIELD_NUMBER = 1;
    private static final WeightedCluster DEFAULT_INSTANCE = new WeightedCluster();
    private static final e2<WeightedCluster> PARSER = new a();
    public static final int RUNTIME_KEY_PREFIX_FIELD_NUMBER = 2;
    public static final int TOTAL_WEIGHT_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private List<ClusterWeight> clusters_;
    private byte memoizedIsInitialized;
    private volatile Object runtimeKeyPrefix_;
    private UInt32Value totalWeight_;

    /* loaded from: classes6.dex */
    public static final class ClusterWeight extends GeneratedMessageV3 implements c {
        public static final int METADATA_MATCH_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int PER_FILTER_CONFIG_FIELD_NUMBER = 8;
        public static final int REQUEST_HEADERS_TO_ADD_FIELD_NUMBER = 4;
        public static final int REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER = 9;
        public static final int RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER = 5;
        public static final int RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER = 6;
        public static final int TYPED_PER_FILTER_CONFIG_FIELD_NUMBER = 10;
        public static final int WEIGHT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private Metadata metadataMatch_;
        private volatile Object name_;
        private g1<String, Struct> perFilterConfig_;
        private List<HeaderValueOption> requestHeadersToAdd_;
        private z0 requestHeadersToRemove_;
        private List<HeaderValueOption> responseHeadersToAdd_;
        private z0 responseHeadersToRemove_;
        private g1<String, Any> typedPerFilterConfig_;
        private UInt32Value weight_;
        private static final ClusterWeight DEFAULT_INSTANCE = new ClusterWeight();
        private static final e2<ClusterWeight> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<ClusterWeight> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ClusterWeight m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ClusterWeight(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f47261e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47262f;

            /* renamed from: g  reason: collision with root package name */
            private UInt32Value f47263g;

            /* renamed from: h  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f47264h;

            /* renamed from: i  reason: collision with root package name */
            private Metadata f47265i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Metadata, Metadata.b, d0> f47266j;

            /* renamed from: k  reason: collision with root package name */
            private List<HeaderValueOption> f47267k;

            /* renamed from: l  reason: collision with root package name */
            private l2<HeaderValueOption, HeaderValueOption.b, t> f47268l;

            /* renamed from: m  reason: collision with root package name */
            private z0 f47269m;

            /* renamed from: n  reason: collision with root package name */
            private List<HeaderValueOption> f47270n;

            /* renamed from: o  reason: collision with root package name */
            private l2<HeaderValueOption, HeaderValueOption.b, t> f47271o;

            /* renamed from: p  reason: collision with root package name */
            private z0 f47272p;

            /* renamed from: q  reason: collision with root package name */
            private g1<String, Struct> f47273q;

            /* renamed from: r  reason: collision with root package name */
            private g1<String, Any> f47274r;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47261e & 1) == 0) {
                    this.f47267k = new ArrayList(this.f47267k);
                    this.f47261e |= 1;
                }
            }

            private void b0() {
                if ((this.f47261e & 2) == 0) {
                    this.f47269m = new y0(this.f47269m);
                    this.f47261e |= 2;
                }
            }

            private void d0() {
                if ((this.f47261e & 4) == 0) {
                    this.f47270n = new ArrayList(this.f47270n);
                    this.f47261e |= 4;
                }
            }

            private void e0() {
                if ((this.f47261e & 8) == 0) {
                    this.f47272p = new y0(this.f47272p);
                    this.f47261e |= 8;
                }
            }

            private l2<HeaderValueOption, HeaderValueOption.b, t> h0() {
                if (this.f47268l == null) {
                    this.f47268l = new l2<>(this.f47267k, (this.f47261e & 1) != 0, H(), O());
                    this.f47267k = null;
                }
                return this.f47268l;
            }

            private l2<HeaderValueOption, HeaderValueOption.b, t> i0() {
                if (this.f47271o == null) {
                    this.f47271o = new l2<>(this.f47270n, (this.f47261e & 4) != 0, H(), O());
                    this.f47270n = null;
                }
                return this.f47271o;
            }

            private g1<String, Struct> j0() {
                R();
                if (this.f47273q == null) {
                    this.f47273q = g1.p(c.f47275a);
                }
                if (!this.f47273q.m()) {
                    this.f47273q = this.f47273q.f();
                }
                return this.f47273q;
            }

            private g1<String, Any> k0() {
                R();
                if (this.f47274r == null) {
                    this.f47274r = g1.p(d.f47276a);
                }
                if (!this.f47274r.m()) {
                    this.f47274r = this.f47274r.f();
                }
                return this.f47274r;
            }

            private g1<String, Struct> l0() {
                g1<String, Struct> g1Var = this.f47273q;
                return g1Var == null ? g1.g(c.f47275a) : g1Var;
            }

            private g1<String, Any> m0() {
                g1<String, Any> g1Var = this.f47274r;
                return g1Var == null ? g1.g(d.f47276a) : g1Var;
            }

            private void n0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    h0();
                    i0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f47317r.d(ClusterWeight.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 != 8) {
                    if (i9 == 10) {
                        return m0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }
                return l0();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 != 8) {
                    if (i9 == 10) {
                        return k0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }
                return j0();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ClusterWeight build() {
                ClusterWeight I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ClusterWeight I() {
                ClusterWeight clusterWeight = new ClusterWeight(this, (a) null);
                clusterWeight.name_ = this.f47262f;
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47264h;
                if (q2Var == null) {
                    clusterWeight.weight_ = this.f47263g;
                } else {
                    clusterWeight.weight_ = q2Var.b();
                }
                q2<Metadata, Metadata.b, d0> q2Var2 = this.f47266j;
                if (q2Var2 == null) {
                    clusterWeight.metadataMatch_ = this.f47265i;
                } else {
                    clusterWeight.metadataMatch_ = q2Var2.b();
                }
                l2<HeaderValueOption, HeaderValueOption.b, t> l2Var = this.f47268l;
                if (l2Var == null) {
                    if ((this.f47261e & 1) != 0) {
                        this.f47267k = Collections.unmodifiableList(this.f47267k);
                        this.f47261e &= -2;
                    }
                    clusterWeight.requestHeadersToAdd_ = this.f47267k;
                } else {
                    clusterWeight.requestHeadersToAdd_ = l2Var.e();
                }
                if ((this.f47261e & 2) != 0) {
                    this.f47269m = this.f47269m.V0();
                    this.f47261e &= -3;
                }
                clusterWeight.requestHeadersToRemove_ = this.f47269m;
                l2<HeaderValueOption, HeaderValueOption.b, t> l2Var2 = this.f47271o;
                if (l2Var2 == null) {
                    if ((this.f47261e & 4) != 0) {
                        this.f47270n = Collections.unmodifiableList(this.f47270n);
                        this.f47261e &= -5;
                    }
                    clusterWeight.responseHeadersToAdd_ = this.f47270n;
                } else {
                    clusterWeight.responseHeadersToAdd_ = l2Var2.e();
                }
                if ((this.f47261e & 8) != 0) {
                    this.f47272p = this.f47272p.V0();
                    this.f47261e &= -9;
                }
                clusterWeight.responseHeadersToRemove_ = this.f47272p;
                clusterWeight.perFilterConfig_ = l0();
                clusterWeight.perFilterConfig_.n();
                clusterWeight.typedPerFilterConfig_ = m0();
                clusterWeight.typedPerFilterConfig_.n();
                Q();
                return clusterWeight;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: g0 */
            public ClusterWeight getDefaultInstanceForType() {
                return ClusterWeight.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f47315q;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: o0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.ClusterWeight.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.ClusterWeight.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster$ClusterWeight r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.ClusterWeight) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.r0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster$ClusterWeight r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.ClusterWeight) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.r0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.ClusterWeight.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster$ClusterWeight$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: q0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ClusterWeight) {
                    return r0((ClusterWeight) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b r0(ClusterWeight clusterWeight) {
                if (clusterWeight == ClusterWeight.getDefaultInstance()) {
                    return this;
                }
                if (!clusterWeight.getName().isEmpty()) {
                    this.f47262f = clusterWeight.name_;
                    R();
                }
                if (clusterWeight.hasWeight()) {
                    u0(clusterWeight.getWeight());
                }
                if (clusterWeight.hasMetadataMatch()) {
                    s0(clusterWeight.getMetadataMatch());
                }
                if (this.f47268l == null) {
                    if (!clusterWeight.requestHeadersToAdd_.isEmpty()) {
                        if (this.f47267k.isEmpty()) {
                            this.f47267k = clusterWeight.requestHeadersToAdd_;
                            this.f47261e &= -2;
                        } else {
                            a0();
                            this.f47267k.addAll(clusterWeight.requestHeadersToAdd_);
                        }
                        R();
                    }
                } else if (!clusterWeight.requestHeadersToAdd_.isEmpty()) {
                    if (this.f47268l.k()) {
                        this.f47268l.f();
                        this.f47268l = null;
                        this.f47267k = clusterWeight.requestHeadersToAdd_;
                        this.f47261e &= -2;
                        this.f47268l = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                    } else {
                        this.f47268l.b(clusterWeight.requestHeadersToAdd_);
                    }
                }
                if (!clusterWeight.requestHeadersToRemove_.isEmpty()) {
                    if (this.f47269m.isEmpty()) {
                        this.f47269m = clusterWeight.requestHeadersToRemove_;
                        this.f47261e &= -3;
                    } else {
                        b0();
                        this.f47269m.addAll(clusterWeight.requestHeadersToRemove_);
                    }
                    R();
                }
                if (this.f47271o == null) {
                    if (!clusterWeight.responseHeadersToAdd_.isEmpty()) {
                        if (this.f47270n.isEmpty()) {
                            this.f47270n = clusterWeight.responseHeadersToAdd_;
                            this.f47261e &= -5;
                        } else {
                            d0();
                            this.f47270n.addAll(clusterWeight.responseHeadersToAdd_);
                        }
                        R();
                    }
                } else if (!clusterWeight.responseHeadersToAdd_.isEmpty()) {
                    if (this.f47271o.k()) {
                        this.f47271o.f();
                        this.f47271o = null;
                        this.f47270n = clusterWeight.responseHeadersToAdd_;
                        this.f47261e &= -5;
                        this.f47271o = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                    } else {
                        this.f47271o.b(clusterWeight.responseHeadersToAdd_);
                    }
                }
                if (!clusterWeight.responseHeadersToRemove_.isEmpty()) {
                    if (this.f47272p.isEmpty()) {
                        this.f47272p = clusterWeight.responseHeadersToRemove_;
                        this.f47261e &= -9;
                    } else {
                        e0();
                        this.f47272p.addAll(clusterWeight.responseHeadersToRemove_);
                    }
                    R();
                }
                j0().o(clusterWeight.internalGetPerFilterConfig());
                k0().o(clusterWeight.internalGetTypedPerFilterConfig());
                z(((GeneratedMessageV3) clusterWeight).unknownFields);
                R();
                return this;
            }

            public b s0(Metadata metadata) {
                q2<Metadata, Metadata.b, d0> q2Var = this.f47266j;
                if (q2Var == null) {
                    Metadata metadata2 = this.f47265i;
                    if (metadata2 != null) {
                        this.f47265i = Metadata.newBuilder(metadata2).i0(metadata).I();
                    } else {
                        this.f47265i = metadata;
                    }
                    R();
                } else {
                    q2Var.e(metadata);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: t0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b u0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47264h;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f47263g;
                    if (uInt32Value2 != null) {
                        this.f47263g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f47263g = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: v0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f47262f = "";
                this.f47267k = Collections.emptyList();
                z0 z0Var = y0.f15344d;
                this.f47269m = z0Var;
                this.f47270n = Collections.emptyList();
                this.f47272p = z0Var;
                n0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47262f = "";
                this.f47267k = Collections.emptyList();
                z0 z0Var = y0.f15344d;
                this.f47269m = z0Var;
                this.f47270n = Collections.emptyList();
                this.f47272p = z0Var;
                n0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static final class c {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, Struct> f47275a = e1.k(l.f47319s, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Struct.getDefaultInstance());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static final class d {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, Any> f47276a = e1.k(l.f47323u, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Any.getDefaultInstance());
        }

        /* synthetic */ ClusterWeight(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ClusterWeight getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f47315q;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, Struct> internalGetPerFilterConfig() {
            g1<String, Struct> g1Var = this.perFilterConfig_;
            return g1Var == null ? g1.g(c.f47275a) : g1Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, Any> internalGetTypedPerFilterConfig() {
            g1<String, Any> g1Var = this.typedPerFilterConfig_;
            return g1Var == null ? g1.g(d.f47276a) : g1Var;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ClusterWeight parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ClusterWeight parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ClusterWeight> parser() {
            return PARSER;
        }

        @Deprecated
        public boolean containsPerFilterConfig(String str) {
            Objects.requireNonNull(str, "map key");
            return internalGetPerFilterConfig().i().containsKey(str);
        }

        public boolean containsTypedPerFilterConfig(String str) {
            Objects.requireNonNull(str, "map key");
            return internalGetTypedPerFilterConfig().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ClusterWeight)) {
                return super.equals(obj);
            }
            ClusterWeight clusterWeight = (ClusterWeight) obj;
            if (getName().equals(clusterWeight.getName()) && hasWeight() == clusterWeight.hasWeight()) {
                if ((!hasWeight() || getWeight().equals(clusterWeight.getWeight())) && hasMetadataMatch() == clusterWeight.hasMetadataMatch()) {
                    return (!hasMetadataMatch() || getMetadataMatch().equals(clusterWeight.getMetadataMatch())) && getRequestHeadersToAddList().equals(clusterWeight.getRequestHeadersToAddList()) && m1605getRequestHeadersToRemoveList().equals(clusterWeight.m1605getRequestHeadersToRemoveList()) && getResponseHeadersToAddList().equals(clusterWeight.getResponseHeadersToAddList()) && m1606getResponseHeadersToRemoveList().equals(clusterWeight.m1606getResponseHeadersToRemoveList()) && internalGetPerFilterConfig().equals(clusterWeight.internalGetPerFilterConfig()) && internalGetTypedPerFilterConfig().equals(clusterWeight.internalGetTypedPerFilterConfig()) && this.unknownFields.equals(clusterWeight.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Metadata getMetadataMatch() {
            Metadata metadata = this.metadataMatch_;
            return metadata == null ? Metadata.getDefaultInstance() : metadata;
        }

        public d0 getMetadataMatchOrBuilder() {
            return getMetadataMatch();
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
        public e2<ClusterWeight> getParserForType() {
            return PARSER;
        }

        @Deprecated
        public Map<String, Struct> getPerFilterConfig() {
            return getPerFilterConfigMap();
        }

        @Deprecated
        public int getPerFilterConfigCount() {
            return internalGetPerFilterConfig().i().size();
        }

        @Deprecated
        public Map<String, Struct> getPerFilterConfigMap() {
            return internalGetPerFilterConfig().i();
        }

        @Deprecated
        public Struct getPerFilterConfigOrDefault(String str, Struct struct) {
            Objects.requireNonNull(str, "map key");
            Map<String, Struct> i9 = internalGetPerFilterConfig().i();
            return i9.containsKey(str) ? i9.get(str) : struct;
        }

        @Deprecated
        public Struct getPerFilterConfigOrThrow(String str) {
            Objects.requireNonNull(str, "map key");
            Map<String, Struct> i9 = internalGetPerFilterConfig().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
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
            if (this.weight_ != null) {
                computeStringSize += CodedOutputStream.G(2, getWeight());
            }
            if (this.metadataMatch_ != null) {
                computeStringSize += CodedOutputStream.G(3, getMetadataMatch());
            }
            for (int i10 = 0; i10 < this.requestHeadersToAdd_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(4, this.requestHeadersToAdd_.get(i10));
            }
            for (int i11 = 0; i11 < this.responseHeadersToAdd_.size(); i11++) {
                computeStringSize += CodedOutputStream.G(5, this.responseHeadersToAdd_.get(i11));
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.responseHeadersToRemove_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.responseHeadersToRemove_.c1(i13));
            }
            int size = computeStringSize + i12 + (m1606getResponseHeadersToRemoveList().size() * 1);
            for (Map.Entry<String, Struct> entry : internalGetPerFilterConfig().i().entrySet()) {
                size += CodedOutputStream.G(8, c.f47275a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            int i14 = 0;
            for (int i15 = 0; i15 < this.requestHeadersToRemove_.size(); i15++) {
                i14 += GeneratedMessageV3.computeStringSizeNoTag(this.requestHeadersToRemove_.c1(i15));
            }
            int size2 = size + i14 + (m1605getRequestHeadersToRemoveList().size() * 1);
            for (Map.Entry<String, Any> entry2 : internalGetTypedPerFilterConfig().i().entrySet()) {
                size2 += CodedOutputStream.G(10, d.f47276a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
            }
            int serializedSize = size2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Deprecated
        public Map<String, Any> getTypedPerFilterConfig() {
            return getTypedPerFilterConfigMap();
        }

        public int getTypedPerFilterConfigCount() {
            return internalGetTypedPerFilterConfig().i().size();
        }

        public Map<String, Any> getTypedPerFilterConfigMap() {
            return internalGetTypedPerFilterConfig().i();
        }

        public Any getTypedPerFilterConfigOrDefault(String str, Any any) {
            Objects.requireNonNull(str, "map key");
            Map<String, Any> i9 = internalGetTypedPerFilterConfig().i();
            return i9.containsKey(str) ? i9.get(str) : any;
        }

        public Any getTypedPerFilterConfigOrThrow(String str) {
            Objects.requireNonNull(str, "map key");
            Map<String, Any> i9 = internalGetTypedPerFilterConfig().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public UInt32Value getWeight() {
            UInt32Value uInt32Value = this.weight_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getWeightOrBuilder() {
            return getWeight();
        }

        public boolean hasMetadataMatch() {
            return this.metadataMatch_ != null;
        }

        public boolean hasWeight() {
            return this.weight_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasWeight()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getWeight().hashCode();
            }
            if (hasMetadataMatch()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getMetadataMatch().hashCode();
            }
            if (getRequestHeadersToAddCount() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + getRequestHeadersToAddList().hashCode();
            }
            if (getRequestHeadersToRemoveCount() > 0) {
                hashCode = (((hashCode * 37) + 9) * 53) + m1605getRequestHeadersToRemoveList().hashCode();
            }
            if (getResponseHeadersToAddCount() > 0) {
                hashCode = (((hashCode * 37) + 5) * 53) + getResponseHeadersToAddList().hashCode();
            }
            if (getResponseHeadersToRemoveCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + m1606getResponseHeadersToRemoveList().hashCode();
            }
            if (!internalGetPerFilterConfig().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 8) * 53) + internalGetPerFilterConfig().hashCode();
            }
            if (!internalGetTypedPerFilterConfig().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 10) * 53) + internalGetTypedPerFilterConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f47317r.d(ClusterWeight.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 != 8) {
                if (i9 == 10) {
                    return internalGetTypedPerFilterConfig();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return internalGetPerFilterConfig();
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
            return new ClusterWeight();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.weight_ != null) {
                codedOutputStream.L0(2, getWeight());
            }
            if (this.metadataMatch_ != null) {
                codedOutputStream.L0(3, getMetadataMatch());
            }
            for (int i9 = 0; i9 < this.requestHeadersToAdd_.size(); i9++) {
                codedOutputStream.L0(4, this.requestHeadersToAdd_.get(i9));
            }
            for (int i10 = 0; i10 < this.responseHeadersToAdd_.size(); i10++) {
                codedOutputStream.L0(5, this.responseHeadersToAdd_.get(i10));
            }
            for (int i11 = 0; i11 < this.responseHeadersToRemove_.size(); i11++) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.responseHeadersToRemove_.c1(i11));
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetPerFilterConfig(), c.f47275a, 8);
            for (int i12 = 0; i12 < this.requestHeadersToRemove_.size(); i12++) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.requestHeadersToRemove_.c1(i12));
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetTypedPerFilterConfig(), d.f47276a, 10);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ClusterWeight(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ClusterWeight clusterWeight) {
            return DEFAULT_INSTANCE.toBuilder().r0(clusterWeight);
        }

        public static ClusterWeight parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getRequestHeadersToRemoveList */
        public i2 m1605getRequestHeadersToRemoveList() {
            return this.requestHeadersToRemove_;
        }

        /* renamed from: getResponseHeadersToRemoveList */
        public i2 m1606getResponseHeadersToRemoveList() {
            return this.responseHeadersToRemove_;
        }

        private ClusterWeight(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ClusterWeight parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ClusterWeight parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ClusterWeight getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).r0(this);
        }

        public static ClusterWeight parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ClusterWeight() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.requestHeadersToAdd_ = Collections.emptyList();
            z0 z0Var = y0.f15344d;
            this.requestHeadersToRemove_ = z0Var;
            this.responseHeadersToAdd_ = Collections.emptyList();
            this.responseHeadersToRemove_ = z0Var;
        }

        public static ClusterWeight parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ClusterWeight parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ClusterWeight parseFrom(InputStream inputStream) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ClusterWeight parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ClusterWeight parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        private ClusterWeight(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 10) {
                                if (L == 18) {
                                    UInt32Value uInt32Value = this.weight_;
                                    UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.weight_ = uInt32Value2;
                                    if (builder != null) {
                                        builder.g0(uInt32Value2);
                                        this.weight_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    Metadata metadata = this.metadataMatch_;
                                    Metadata.b builder2 = metadata != null ? metadata.toBuilder() : null;
                                    Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                                    this.metadataMatch_ = metadata2;
                                    if (builder2 != null) {
                                        builder2.i0(metadata2);
                                        this.metadataMatch_ = builder2.I();
                                    }
                                } else if (L == 34) {
                                    if (!(z11 & true)) {
                                        this.requestHeadersToAdd_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.requestHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                } else if (L == 42) {
                                    if (!(z11 & true)) {
                                        this.responseHeadersToAdd_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.responseHeadersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
                                } else if (L == 50) {
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.responseHeadersToRemove_ = new y0();
                                        z11 |= true;
                                    }
                                    this.responseHeadersToRemove_.add(K);
                                } else if (L == 66) {
                                    if (!(z11 & true)) {
                                        this.perFilterConfig_ = g1.p(c.f47275a);
                                        z11 |= true;
                                    }
                                    e1 e1Var = (e1) pVar.B(c.f47275a.getParserForType(), f0Var);
                                    this.perFilterConfig_.l().put((String) e1Var.f(), (Struct) e1Var.h());
                                } else if (L == 74) {
                                    String K2 = pVar.K();
                                    if (!(z11 & true)) {
                                        this.requestHeadersToRemove_ = new y0();
                                        z11 |= true;
                                    }
                                    this.requestHeadersToRemove_.add(K2);
                                } else if (L != 82) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.typedPerFilterConfig_ = g1.p(d.f47276a);
                                        z11 |= true;
                                    }
                                    e1 e1Var2 = (e1) pVar.B(d.f47276a.getParserForType(), f0Var);
                                    this.typedPerFilterConfig_.l().put((String) e1Var2.f(), (Any) e1Var2.h());
                                }
                            } else {
                                this.name_ = pVar.K();
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
                        this.requestHeadersToAdd_ = Collections.unmodifiableList(this.requestHeadersToAdd_);
                    }
                    if (z11 & true) {
                        this.responseHeadersToAdd_ = Collections.unmodifiableList(this.responseHeadersToAdd_);
                    }
                    if (z11 & true) {
                        this.responseHeadersToRemove_ = this.responseHeadersToRemove_.V0();
                    }
                    if (z11 & true) {
                        this.requestHeadersToRemove_ = this.requestHeadersToRemove_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ClusterWeight parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (ClusterWeight) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<WeightedCluster> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public WeightedCluster m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new WeightedCluster(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r {

        /* renamed from: e  reason: collision with root package name */
        private int f47277e;

        /* renamed from: f  reason: collision with root package name */
        private List<ClusterWeight> f47278f;

        /* renamed from: g  reason: collision with root package name */
        private l2<ClusterWeight, ClusterWeight.b, c> f47279g;

        /* renamed from: h  reason: collision with root package name */
        private UInt32Value f47280h;

        /* renamed from: i  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47281i;

        /* renamed from: j  reason: collision with root package name */
        private Object f47282j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47277e & 1) == 0) {
                this.f47278f = new ArrayList(this.f47278f);
                this.f47277e |= 1;
            }
        }

        private l2<ClusterWeight, ClusterWeight.b, c> b0() {
            if (this.f47279g == null) {
                this.f47279g = new l2<>(this.f47278f, (this.f47277e & 1) != 0, H(), O());
                this.f47278f = null;
            }
            return this.f47279g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47313p.d(WeightedCluster.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public WeightedCluster build() {
            WeightedCluster I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public WeightedCluster I() {
            WeightedCluster weightedCluster = new WeightedCluster(this, (a) null);
            int i9 = this.f47277e;
            l2<ClusterWeight, ClusterWeight.b, c> l2Var = this.f47279g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47278f = Collections.unmodifiableList(this.f47278f);
                    this.f47277e &= -2;
                }
                weightedCluster.clusters_ = this.f47278f;
            } else {
                weightedCluster.clusters_ = l2Var.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47281i;
            if (q2Var == null) {
                weightedCluster.totalWeight_ = this.f47280h;
            } else {
                weightedCluster.totalWeight_ = q2Var.b();
            }
            weightedCluster.runtimeKeyPrefix_ = this.f47282j;
            Q();
            return weightedCluster;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public WeightedCluster getDefaultInstanceForType() {
            return WeightedCluster.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.access$3200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.WeightedCluster$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47311o;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof WeightedCluster) {
                return i0((WeightedCluster) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(WeightedCluster weightedCluster) {
            if (weightedCluster == WeightedCluster.getDefaultInstance()) {
                return this;
            }
            if (this.f47279g == null) {
                if (!weightedCluster.clusters_.isEmpty()) {
                    if (this.f47278f.isEmpty()) {
                        this.f47278f = weightedCluster.clusters_;
                        this.f47277e &= -2;
                    } else {
                        a0();
                        this.f47278f.addAll(weightedCluster.clusters_);
                    }
                    R();
                }
            } else if (!weightedCluster.clusters_.isEmpty()) {
                if (this.f47279g.k()) {
                    this.f47279g.f();
                    this.f47279g = null;
                    this.f47278f = weightedCluster.clusters_;
                    this.f47277e &= -2;
                    this.f47279g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f47279g.b(weightedCluster.clusters_);
                }
            }
            if (weightedCluster.hasTotalWeight()) {
                j0(weightedCluster.getTotalWeight());
            }
            if (!weightedCluster.getRuntimeKeyPrefix().isEmpty()) {
                this.f47282j = weightedCluster.runtimeKeyPrefix_;
                R();
            }
            z(((GeneratedMessageV3) weightedCluster).unknownFields);
            R();
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47281i;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47280h;
                if (uInt32Value2 != null) {
                    this.f47280h = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47280h = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47278f = Collections.emptyList();
            this.f47282j = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47278f = Collections.emptyList();
            this.f47282j = "";
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ WeightedCluster(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static WeightedCluster getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47311o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static WeightedCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static WeightedCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<WeightedCluster> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WeightedCluster)) {
            return super.equals(obj);
        }
        WeightedCluster weightedCluster = (WeightedCluster) obj;
        if (getClustersList().equals(weightedCluster.getClustersList()) && hasTotalWeight() == weightedCluster.hasTotalWeight()) {
            return (!hasTotalWeight() || getTotalWeight().equals(weightedCluster.getTotalWeight())) && getRuntimeKeyPrefix().equals(weightedCluster.getRuntimeKeyPrefix()) && this.unknownFields.equals(weightedCluster.unknownFields);
        }
        return false;
    }

    public ClusterWeight getClusters(int i9) {
        return this.clusters_.get(i9);
    }

    public int getClustersCount() {
        return this.clusters_.size();
    }

    public List<ClusterWeight> getClustersList() {
        return this.clusters_;
    }

    public c getClustersOrBuilder(int i9) {
        return this.clusters_.get(i9);
    }

    public List<? extends c> getClustersOrBuilderList() {
        return this.clusters_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<WeightedCluster> getParserForType() {
        return PARSER;
    }

    public String getRuntimeKeyPrefix() {
        Object obj = this.runtimeKeyPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.runtimeKeyPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRuntimeKeyPrefixBytes() {
        Object obj = this.runtimeKeyPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.runtimeKeyPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.clusters_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.clusters_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKeyPrefix_)) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.runtimeKeyPrefix_);
        }
        if (this.totalWeight_ != null) {
            i10 += CodedOutputStream.G(3, getTotalWeight());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public UInt32Value getTotalWeight() {
        UInt32Value uInt32Value = this.totalWeight_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getTotalWeightOrBuilder() {
        return getTotalWeight();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasTotalWeight() {
        return this.totalWeight_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getClustersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getClustersList().hashCode();
        }
        if (hasTotalWeight()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getTotalWeight().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getRuntimeKeyPrefix().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47313p.d(WeightedCluster.class, b.class);
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
        return new WeightedCluster();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.clusters_.size(); i9++) {
            codedOutputStream.L0(1, this.clusters_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKeyPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.runtimeKeyPrefix_);
        }
        if (this.totalWeight_ != null) {
            codedOutputStream.L0(3, getTotalWeight());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ WeightedCluster(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(WeightedCluster weightedCluster) {
        return DEFAULT_INSTANCE.toBuilder().i0(weightedCluster);
    }

    public static WeightedCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private WeightedCluster(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static WeightedCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static WeightedCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public WeightedCluster getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static WeightedCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private WeightedCluster() {
        this.memoizedIsInitialized = (byte) -1;
        this.clusters_ = Collections.emptyList();
        this.runtimeKeyPrefix_ = "";
    }

    public static WeightedCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static WeightedCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static WeightedCluster parseFrom(InputStream inputStream) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private WeightedCluster(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            if (!(z11 & true)) {
                                this.clusters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.clusters_.add((ClusterWeight) pVar.B(ClusterWeight.parser(), f0Var));
                        } else if (L == 18) {
                            this.runtimeKeyPrefix_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value = this.totalWeight_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.totalWeight_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.totalWeight_ = builder.I();
                            }
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
                    this.clusters_ = Collections.unmodifiableList(this.clusters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static WeightedCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static WeightedCluster parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static WeightedCluster parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (WeightedCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
