package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Endpoint extends GeneratedMessageV3 implements d {
    public static final int ADDRESS_FIELD_NUMBER = 1;
    public static final int HEALTH_CHECK_CONFIG_FIELD_NUMBER = 2;
    public static final int HOSTNAME_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private Address address_;
    private HealthCheckConfig healthCheckConfig_;
    private volatile Object hostname_;
    private byte memoizedIsInitialized;
    private static final Endpoint DEFAULT_INSTANCE = new Endpoint();
    private static final e2<Endpoint> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class HealthCheckConfig extends GeneratedMessageV3 implements c {
        public static final int HOSTNAME_FIELD_NUMBER = 2;
        public static final int PORT_VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object hostname_;
        private byte memoizedIsInitialized;
        private int portValue_;
        private static final HealthCheckConfig DEFAULT_INSTANCE = new HealthCheckConfig();
        private static final e2<HealthCheckConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HealthCheckConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HealthCheckConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new HealthCheckConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f46822e;

            /* renamed from: f  reason: collision with root package name */
            private Object f46823f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46877d.d(HealthCheckConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HealthCheckConfig build() {
                HealthCheckConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HealthCheckConfig I() {
                HealthCheckConfig healthCheckConfig = new HealthCheckConfig(this, (a) null);
                healthCheckConfig.portValue_ = this.f46822e;
                healthCheckConfig.hostname_ = this.f46823f;
                Q();
                return healthCheckConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HealthCheckConfig getDefaultInstanceForType() {
                return HealthCheckConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint$HealthCheckConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint$HealthCheckConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint$HealthCheckConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof HealthCheckConfig) {
                    return g0((HealthCheckConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(HealthCheckConfig healthCheckConfig) {
                if (healthCheckConfig == HealthCheckConfig.getDefaultInstance()) {
                    return this;
                }
                if (healthCheckConfig.getPortValue() != 0) {
                    j0(healthCheckConfig.getPortValue());
                }
                if (!healthCheckConfig.getHostname().isEmpty()) {
                    this.f46823f = healthCheckConfig.hostname_;
                    R();
                }
                z(((GeneratedMessageV3) healthCheckConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46876c;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: i0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b j0(int i9) {
                this.f46822e = i9;
                R();
                return this;
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
                this.f46823f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46823f = "";
                b0();
            }
        }

        /* synthetic */ HealthCheckConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HealthCheckConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46876c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HealthCheckConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HealthCheckConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HealthCheckConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof HealthCheckConfig)) {
                return super.equals(obj);
            }
            HealthCheckConfig healthCheckConfig = (HealthCheckConfig) obj;
            return getPortValue() == healthCheckConfig.getPortValue() && getHostname().equals(healthCheckConfig.getHostname()) && this.unknownFields.equals(healthCheckConfig.unknownFields);
        }

        public String getHostname() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.hostname_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getHostnameBytes() {
            Object obj = this.hostname_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hostname_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HealthCheckConfig> getParserForType() {
            return PARSER;
        }

        public int getPortValue() {
            return this.portValue_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = this.portValue_;
            int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.hostname_)) {
                Y += GeneratedMessageV3.computeStringSize(2, this.hostname_);
            }
            int serializedSize = Y + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPortValue()) * 37) + 2) * 53) + getHostname().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46877d.d(HealthCheckConfig.class, b.class);
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
            return new HealthCheckConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i9 = this.portValue_;
            if (i9 != 0) {
                codedOutputStream.c1(1, i9);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.hostname_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.hostname_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HealthCheckConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HealthCheckConfig healthCheckConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(healthCheckConfig);
        }

        public static HealthCheckConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HealthCheckConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HealthCheckConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HealthCheckConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HealthCheckConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static HealthCheckConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private HealthCheckConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.hostname_ = "";
        }

        public static HealthCheckConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static HealthCheckConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static HealthCheckConfig parseFrom(InputStream inputStream) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private HealthCheckConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 8) {
                                    this.portValue_ = pVar.M();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.hostname_ = pVar.K();
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

        public static HealthCheckConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HealthCheckConfig parseFrom(p pVar) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HealthCheckConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (HealthCheckConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Endpoint> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Endpoint m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Endpoint(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private Address f46824e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> f46825f;

        /* renamed from: g  reason: collision with root package name */
        private HealthCheckConfig f46826g;

        /* renamed from: h  reason: collision with root package name */
        private q2<HealthCheckConfig, HealthCheckConfig.b, c> f46827h;

        /* renamed from: i  reason: collision with root package name */
        private Object f46828i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46875b.d(Endpoint.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Endpoint build() {
            Endpoint I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Endpoint I() {
            Endpoint endpoint = new Endpoint(this, (a) null);
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> q2Var = this.f46825f;
            if (q2Var == null) {
                endpoint.address_ = this.f46824e;
            } else {
                endpoint.address_ = q2Var.b();
            }
            q2<HealthCheckConfig, HealthCheckConfig.b, c> q2Var2 = this.f46827h;
            if (q2Var2 == null) {
                endpoint.healthCheckConfig_ = this.f46826g;
            } else {
                endpoint.healthCheckConfig_ = q2Var2.b();
            }
            endpoint.hostname_ = this.f46828i;
            Q();
            return endpoint;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Endpoint getDefaultInstanceForType() {
            return Endpoint.getDefaultInstance();
        }

        public b d0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> q2Var = this.f46825f;
            if (q2Var == null) {
                Address address2 = this.f46824e;
                if (address2 != null) {
                    this.f46824e = Address.newBuilder(address2).g0(address).I();
                } else {
                    this.f46824e = address;
                }
                R();
            } else {
                q2Var.e(address);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Endpoint) {
                return h0((Endpoint) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46874a;
        }

        public b h0(Endpoint endpoint) {
            if (endpoint == Endpoint.getDefaultInstance()) {
                return this;
            }
            if (endpoint.hasAddress()) {
                d0(endpoint.getAddress());
            }
            if (endpoint.hasHealthCheckConfig()) {
                i0(endpoint.getHealthCheckConfig());
            }
            if (!endpoint.getHostname().isEmpty()) {
                this.f46828i = endpoint.hostname_;
                R();
            }
            z(((GeneratedMessageV3) endpoint).unknownFields);
            R();
            return this;
        }

        public b i0(HealthCheckConfig healthCheckConfig) {
            q2<HealthCheckConfig, HealthCheckConfig.b, c> q2Var = this.f46827h;
            if (q2Var == null) {
                HealthCheckConfig healthCheckConfig2 = this.f46826g;
                if (healthCheckConfig2 != null) {
                    this.f46826g = HealthCheckConfig.newBuilder(healthCheckConfig2).g0(healthCheckConfig).I();
                } else {
                    this.f46826g = healthCheckConfig;
                }
                R();
            } else {
                q2Var.e(healthCheckConfig);
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
            this.f46828i = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46828i = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ Endpoint(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Endpoint getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46874a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Endpoint> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Endpoint)) {
            return super.equals(obj);
        }
        Endpoint endpoint = (Endpoint) obj;
        if (hasAddress() != endpoint.hasAddress()) {
            return false;
        }
        if ((!hasAddress() || getAddress().equals(endpoint.getAddress())) && hasHealthCheckConfig() == endpoint.hasHealthCheckConfig()) {
            return (!hasHealthCheckConfig() || getHealthCheckConfig().equals(endpoint.getHealthCheckConfig())) && getHostname().equals(endpoint.getHostname()) && this.unknownFields.equals(endpoint.unknownFields);
        }
        return false;
    }

    public Address getAddress() {
        Address address = this.address_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a getAddressOrBuilder() {
        return getAddress();
    }

    public HealthCheckConfig getHealthCheckConfig() {
        HealthCheckConfig healthCheckConfig = this.healthCheckConfig_;
        return healthCheckConfig == null ? HealthCheckConfig.getDefaultInstance() : healthCheckConfig;
    }

    public c getHealthCheckConfigOrBuilder() {
        return getHealthCheckConfig();
    }

    public String getHostname() {
        Object obj = this.hostname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.hostname_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHostnameBytes() {
        Object obj = this.hostname_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hostname_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Endpoint> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.address_ != null ? 0 + CodedOutputStream.G(1, getAddress()) : 0;
        if (this.healthCheckConfig_ != null) {
            G += CodedOutputStream.G(2, getHealthCheckConfig());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.hostname_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.hostname_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAddress() {
        return this.address_ != null;
    }

    public boolean hasHealthCheckConfig() {
        return this.healthCheckConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasAddress()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAddress().hashCode();
        }
        if (hasHealthCheckConfig()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getHealthCheckConfig().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 3) * 53) + getHostname().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.f46875b.d(Endpoint.class, b.class);
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
        return new Endpoint();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.address_ != null) {
            codedOutputStream.L0(1, getAddress());
        }
        if (this.healthCheckConfig_ != null) {
            codedOutputStream.L0(2, getHealthCheckConfig());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.hostname_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.hostname_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Endpoint(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Endpoint endpoint) {
        return DEFAULT_INSTANCE.toBuilder().h0(endpoint);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Endpoint(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Endpoint getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Endpoint parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Endpoint() {
        this.memoizedIsInitialized = (byte) -1;
        this.hostname_ = "";
    }

    public static Endpoint parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Endpoint parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Endpoint parseFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Endpoint(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                Address address = this.address_;
                                Address.c builder = address != null ? address.toBuilder() : null;
                                Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                                this.address_ = address2;
                                if (builder != null) {
                                    builder.g0(address2);
                                    this.address_ = builder.I();
                                }
                            } else if (L == 18) {
                                HealthCheckConfig healthCheckConfig = this.healthCheckConfig_;
                                HealthCheckConfig.b builder2 = healthCheckConfig != null ? healthCheckConfig.toBuilder() : null;
                                HealthCheckConfig healthCheckConfig2 = (HealthCheckConfig) pVar.B(HealthCheckConfig.parser(), f0Var);
                                this.healthCheckConfig_ = healthCheckConfig2;
                                if (builder2 != null) {
                                    builder2.g0(healthCheckConfig2);
                                    this.healthCheckConfig_ = builder2.I();
                                }
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.hostname_ = pVar.K();
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

    public static Endpoint parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(p pVar) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Endpoint parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
