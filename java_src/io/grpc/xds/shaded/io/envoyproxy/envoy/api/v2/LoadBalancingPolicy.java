package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class LoadBalancingPolicy extends GeneratedMessageV3 implements i {
    private static final LoadBalancingPolicy DEFAULT_INSTANCE = new LoadBalancingPolicy();
    private static final e2<LoadBalancingPolicy> PARSER = new a();
    public static final int POLICIES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Policy> policies_;

    /* loaded from: classes5.dex */
    public static final class Policy extends GeneratedMessageV3 implements c {
        public static final int CONFIG_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private Struct config_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any typedConfig_;
        private static final Policy DEFAULT_INSTANCE = new Policy();
        private static final e2<Policy> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Policy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Policy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Policy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f46096e;

            /* renamed from: f  reason: collision with root package name */
            private Struct f46097f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f46098g;

            /* renamed from: h  reason: collision with root package name */
            private Any f46099h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f46100i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.J.d(Policy.class, b.class);
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
                policy.name_ = this.f46096e;
                q2<Struct, Struct.b, u2> q2Var = this.f46098g;
                if (q2Var == null) {
                    policy.config_ = this.f46097f;
                } else {
                    policy.config_ = q2Var.b();
                }
                q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f46100i;
                if (q2Var2 == null) {
                    policy.typedConfig_ = this.f46099h;
                } else {
                    policy.typedConfig_ = q2Var2.b();
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

            @Deprecated
            public b d0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f46098g;
                if (q2Var == null) {
                    Struct struct2 = this.f46097f;
                    if (struct2 != null) {
                        this.f46097f = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f46097f = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.Policy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.Policy.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy$Policy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.Policy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy$Policy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.Policy) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.Policy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy$Policy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Policy) {
                    return h0((Policy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.I;
            }

            public b h0(Policy policy) {
                if (policy == Policy.getDefaultInstance()) {
                    return this;
                }
                if (!policy.getName().isEmpty()) {
                    this.f46096e = policy.name_;
                    R();
                }
                if (policy.hasConfig()) {
                    d0(policy.getConfig());
                }
                if (policy.hasTypedConfig()) {
                    i0(policy.getTypedConfig());
                }
                z(((GeneratedMessageV3) policy).unknownFields);
                R();
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f46100i;
                if (q2Var == null) {
                    Any any2 = this.f46099h;
                    if (any2 != null) {
                        this.f46099h = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f46099h = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
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
                this.f46096e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46096e = "";
                b0();
            }
        }

        /* synthetic */ Policy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Policy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.I;
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
            if (getName().equals(policy.getName()) && hasConfig() == policy.hasConfig()) {
                if ((!hasConfig() || getConfig().equals(policy.getConfig())) && hasTypedConfig() == policy.hasTypedConfig()) {
                    return (!hasTypedConfig() || getTypedConfig().equals(policy.getTypedConfig())) && this.unknownFields.equals(policy.unknownFields);
                }
                return false;
            }
            return false;
        }

        @Deprecated
        public Struct getConfig() {
            Struct struct = this.config_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        @Deprecated
        public u2 getConfigOrBuilder() {
            return getConfig();
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
        public e2<Policy> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.config_ != null) {
                computeStringSize += CodedOutputStream.G(2, getConfig());
            }
            if (this.typedConfig_ != null) {
                computeStringSize += CodedOutputStream.G(3, getTypedConfig());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            Any any = this.typedConfig_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            return getTypedConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Deprecated
        public boolean hasConfig() {
            return this.config_ != null;
        }

        public boolean hasTypedConfig() {
            return this.typedConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getConfig().hashCode();
            }
            if (hasTypedConfig()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.J.d(Policy.class, b.class);
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
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.config_ != null) {
                codedOutputStream.L0(2, getConfig());
            }
            if (this.typedConfig_ != null) {
                codedOutputStream.L0(3, getTypedConfig());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Policy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Policy policy) {
            return DEFAULT_INSTANCE.toBuilder().h0(policy);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
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
            this.name_ = "";
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

        public static Policy parseFrom(InputStream inputStream) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Policy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 10) {
                                    if (L == 18) {
                                        Struct struct = this.config_;
                                        Struct.b builder = struct != null ? struct.toBuilder() : null;
                                        Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                        this.config_ = struct2;
                                        if (builder != null) {
                                            builder.i0(struct2);
                                            this.config_ = builder.I();
                                        }
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        Any any = this.typedConfig_;
                                        Any.b builder2 = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.typedConfig_ = any2;
                                        if (builder2 != null) {
                                            builder2.d0(any2);
                                            this.typedConfig_ = builder2.I();
                                        }
                                    }
                                } else {
                                    this.name_ = pVar.K();
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

        public static Policy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Policy parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Policy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<LoadBalancingPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadBalancingPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadBalancingPolicy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f46101e;

        /* renamed from: f  reason: collision with root package name */
        private List<Policy> f46102f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Policy, Policy.b, c> f46103g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46101e & 1) == 0) {
                this.f46102f = new ArrayList(this.f46102f);
                this.f46101e |= 1;
            }
        }

        private l2<Policy, Policy.b, c> d0() {
            if (this.f46103g == null) {
                this.f46103g = new l2<>(this.f46102f, (this.f46101e & 1) != 0, H(), O());
                this.f46102f = null;
            }
            return this.f46103g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.H.d(LoadBalancingPolicy.class, b.class);
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
            int i9 = this.f46101e;
            l2<Policy, Policy.b, c> l2Var = this.f46103g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f46102f = Collections.unmodifiableList(this.f46102f);
                    this.f46101e &= -2;
                }
                loadBalancingPolicy.policies_ = this.f46102f;
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.LoadBalancingPolicy$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.G;
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
            if (this.f46103g == null) {
                if (!loadBalancingPolicy.policies_.isEmpty()) {
                    if (this.f46102f.isEmpty()) {
                        this.f46102f = loadBalancingPolicy.policies_;
                        this.f46101e &= -2;
                    } else {
                        a0();
                        this.f46102f.addAll(loadBalancingPolicy.policies_);
                    }
                    R();
                }
            } else if (!loadBalancingPolicy.policies_.isEmpty()) {
                if (this.f46103g.k()) {
                    this.f46103g.f();
                    this.f46103g = null;
                    this.f46102f = loadBalancingPolicy.policies_;
                    this.f46101e &= -2;
                    this.f46103g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46103g.b(loadBalancingPolicy.policies_);
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
            this.f46102f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46102f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* synthetic */ LoadBalancingPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadBalancingPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.G;
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.c.H.d(LoadBalancingPolicy.class, b.class);
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

    private LoadBalancingPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

    public static LoadBalancingPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadBalancingPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (LoadBalancingPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
