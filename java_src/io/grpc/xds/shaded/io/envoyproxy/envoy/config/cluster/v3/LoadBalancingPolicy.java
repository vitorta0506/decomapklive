package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LoadBalancingPolicy extends GeneratedMessageV3 implements g {
    private static final LoadBalancingPolicy DEFAULT_INSTANCE = new LoadBalancingPolicy();
    private static final e2<LoadBalancingPolicy> PARSER = new a();
    public static final int POLICIES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Policy> policies_;

    /* loaded from: classes6.dex */
    public static final class Policy extends GeneratedMessageV3 implements c {
        private static final Policy DEFAULT_INSTANCE = new Policy();
        private static final e2<Policy> PARSER = new a();
        public static final int TYPED_EXTENSION_CONFIG_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private TypedExtensionConfig typedExtensionConfig_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Policy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Policy m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Policy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private TypedExtensionConfig f47691e;

            /* renamed from: f  reason: collision with root package name */
            private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f47692f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return d.N.d(Policy.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Policy build() {
                Policy I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Policy I() {
                Policy policy = new Policy(this, (a) null);
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47692f;
                if (q2Var == null) {
                    policy.typedExtensionConfig_ = this.f47691e;
                } else {
                    policy.typedExtensionConfig_ = q2Var.b();
                }
                Q();
                return policy;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Policy getDefaultInstanceForType() {
                return Policy.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.Policy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.Policy.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy$Policy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.Policy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.g0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy$Policy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.Policy) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.g0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.Policy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy$Policy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Policy) {
                    return g0((Policy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Policy policy) {
                if (policy == Policy.getDefaultInstance()) {
                    return this;
                }
                if (policy.hasTypedExtensionConfig()) {
                    h0(policy.getTypedExtensionConfig());
                }
                z(((GeneratedMessageV3) policy).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return d.M;
            }

            public b h0(TypedExtensionConfig typedExtensionConfig) {
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47692f;
                if (q2Var == null) {
                    TypedExtensionConfig typedExtensionConfig2 = this.f47691e;
                    if (typedExtensionConfig2 != null) {
                        this.f47691e = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                    } else {
                        this.f47691e = typedExtensionConfig;
                    }
                    R();
                } else {
                    q2Var.e(typedExtensionConfig);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ Policy(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Policy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return d.M;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Policy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Policy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Policy> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Policy)) {
                return super.equals(obj);
            }
            Policy policy = (Policy) obj;
            if (hasTypedExtensionConfig() != policy.hasTypedExtensionConfig()) {
                return false;
            }
            return (!hasTypedExtensionConfig() || getTypedExtensionConfig().equals(policy.getTypedExtensionConfig())) && this.unknownFields.equals(policy.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Policy> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.typedExtensionConfig_ != null ? 0 + CodedOutputStream.G(4, getTypedExtensionConfig()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        public TypedExtensionConfig getTypedExtensionConfig() {
            TypedExtensionConfig typedExtensionConfig = this.typedExtensionConfig_;
            return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
        }

        public i1 getTypedExtensionConfigOrBuilder() {
            return getTypedExtensionConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTypedExtensionConfig() {
            return this.typedExtensionConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasTypedExtensionConfig()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getTypedExtensionConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return d.N.d(Policy.class, b.class);
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
            return new Policy();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.typedExtensionConfig_ != null) {
                codedOutputStream.L0(4, getTypedExtensionConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Policy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Policy policy) {
            return DEFAULT_INSTANCE.toBuilder().g0(policy);
        }

        public static Policy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Policy(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Policy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Policy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Policy getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Policy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Policy() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Policy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Policy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Policy(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    TypedExtensionConfig typedExtensionConfig = this.typedExtensionConfig_;
                                    TypedExtensionConfig.b builder = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                    TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                    this.typedExtensionConfig_ = typedExtensionConfig2;
                                    if (builder != null) {
                                        builder.g0(typedExtensionConfig2);
                                        this.typedExtensionConfig_ = builder.I();
                                    }
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

        public static Policy parseFrom(InputStream inputStream) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Policy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Policy parseFrom(p pVar) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Policy parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<LoadBalancingPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadBalancingPolicy m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadBalancingPolicy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f47693e;

        /* renamed from: f  reason: collision with root package name */
        private List<Policy> f47694f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Policy, Policy.b, c> f47695g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47693e & 1) == 0) {
                this.f47694f = new ArrayList(this.f47694f);
                this.f47693e |= 1;
            }
        }

        private l2<Policy, Policy.b, c> d0() {
            if (this.f47695g == null) {
                this.f47695g = new l2<>(this.f47694f, (this.f47693e & 1) != 0, H(), O());
                this.f47694f = null;
            }
            return this.f47695g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.L.d(LoadBalancingPolicy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LoadBalancingPolicy build() {
            LoadBalancingPolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LoadBalancingPolicy I() {
            LoadBalancingPolicy loadBalancingPolicy = new LoadBalancingPolicy(this, (a) null);
            int i9 = this.f47693e;
            l2<Policy, Policy.b, c> l2Var = this.f47695g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47694f = Collections.unmodifiableList(this.f47694f);
                    this.f47693e &= -2;
                }
                loadBalancingPolicy.policies_ = this.f47694f;
            } else {
                loadBalancingPolicy.policies_ = l2Var.e();
            }
            Q();
            return loadBalancingPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LoadBalancingPolicy getDefaultInstanceForType() {
            return LoadBalancingPolicy.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.LoadBalancingPolicy$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.K;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LoadBalancingPolicy) {
                return i0((LoadBalancingPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(LoadBalancingPolicy loadBalancingPolicy) {
            if (loadBalancingPolicy == LoadBalancingPolicy.getDefaultInstance()) {
                return this;
            }
            if (this.f47695g == null) {
                if (!loadBalancingPolicy.policies_.isEmpty()) {
                    if (this.f47694f.isEmpty()) {
                        this.f47694f = loadBalancingPolicy.policies_;
                        this.f47693e &= -2;
                    } else {
                        a0();
                        this.f47694f.addAll(loadBalancingPolicy.policies_);
                    }
                    R();
                }
            } else if (!loadBalancingPolicy.policies_.isEmpty()) {
                if (this.f47695g.k()) {
                    this.f47695g.f();
                    this.f47695g = null;
                    this.f47694f = loadBalancingPolicy.policies_;
                    this.f47693e &= -2;
                    this.f47695g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47695g.b(loadBalancingPolicy.policies_);
                }
            }
            z(((GeneratedMessageV3) loadBalancingPolicy).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47694f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47694f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ LoadBalancingPolicy(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadBalancingPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.K;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoadBalancingPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LoadBalancingPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LoadBalancingPolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoadBalancingPolicy)) {
            return super.equals(obj);
        }
        LoadBalancingPolicy loadBalancingPolicy = (LoadBalancingPolicy) obj;
        return getPoliciesList().equals(loadBalancingPolicy.getPoliciesList()) && this.unknownFields.equals(loadBalancingPolicy.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LoadBalancingPolicy> getParserForType() {
        return PARSER;
    }

    public Policy getPolicies(int i9) {
        return this.policies_.get(i9);
    }

    public int getPoliciesCount() {
        return this.policies_.size();
    }

    public List<Policy> getPoliciesList() {
        return this.policies_;
    }

    public c getPoliciesOrBuilder(int i9) {
        return this.policies_.get(i9);
    }

    public List<? extends c> getPoliciesOrBuilderList() {
        return this.policies_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.policies_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.policies_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getPoliciesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPoliciesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.L.d(LoadBalancingPolicy.class, b.class);
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
        return new LoadBalancingPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.policies_.size(); i9++) {
            codedOutputStream.L0(1, this.policies_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LoadBalancingPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LoadBalancingPolicy loadBalancingPolicy) {
        return DEFAULT_INSTANCE.toBuilder().i0(loadBalancingPolicy);
    }

    public static LoadBalancingPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LoadBalancingPolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadBalancingPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalancingPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LoadBalancingPolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static LoadBalancingPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LoadBalancingPolicy() {
        this.memoizedIsInitialized = (byte) -1;
        this.policies_ = Collections.emptyList();
    }

    public static LoadBalancingPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LoadBalancingPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LoadBalancingPolicy parseFrom(InputStream inputStream) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LoadBalancingPolicy(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.policies_ = new ArrayList();
                                z11 |= true;
                            }
                            this.policies_.add((Policy) pVar.B(Policy.parser(), f0Var));
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
                    this.policies_ = Collections.unmodifiableList(this.policies_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LoadBalancingPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadBalancingPolicy parseFrom(p pVar) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadBalancingPolicy parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
