package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstance;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsCertificate;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsParameters;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class CommonTlsContext extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.d {
    public static final int ALPN_PROTOCOLS_FIELD_NUMBER = 4;
    public static final int COMBINED_VALIDATION_CONTEXT_FIELD_NUMBER = 8;
    public static final int CUSTOM_HANDSHAKER_FIELD_NUMBER = 13;
    private static final CommonTlsContext DEFAULT_INSTANCE = new CommonTlsContext();
    private static final e2<CommonTlsContext> PARSER = new a();
    public static final int TLS_CERTIFICATES_FIELD_NUMBER = 2;
    public static final int TLS_CERTIFICATE_CERTIFICATE_PROVIDER_FIELD_NUMBER = 9;
    public static final int TLS_CERTIFICATE_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER = 11;
    public static final int TLS_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER = 14;
    public static final int TLS_CERTIFICATE_SDS_SECRET_CONFIGS_FIELD_NUMBER = 6;
    public static final int TLS_PARAMS_FIELD_NUMBER = 1;
    public static final int VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_FIELD_NUMBER = 10;
    public static final int VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER = 12;
    public static final int VALIDATION_CONTEXT_FIELD_NUMBER = 3;
    public static final int VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private z0 alpnProtocols_;
    private TypedExtensionConfig customHandshaker_;
    private byte memoizedIsInitialized;
    private CertificateProviderInstance tlsCertificateCertificateProviderInstance_;
    private CertificateProvider tlsCertificateCertificateProvider_;
    private CertificateProviderPluginInstance tlsCertificateProviderInstance_;
    private List<SdsSecretConfig> tlsCertificateSdsSecretConfigs_;
    private List<TlsCertificate> tlsCertificates_;
    private TlsParameters tlsParams_;
    private int validationContextTypeCase_;
    private Object validationContextType_;

    /* loaded from: classes6.dex */
    public static final class CertificateProvider extends GeneratedMessageV3 implements e {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int configCase_;
        private Object config_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final CertificateProvider DEFAULT_INSTANCE = new CertificateProvider();
        private static final e2<CertificateProvider> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ConfigCase implements u0.c {
            TYPED_CONFIG(2),
            CONFIG_NOT_SET(0);
            
            private final int value;

            ConfigCase(int i9) {
                this.value = i9;
            }

            public static ConfigCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        return null;
                    }
                    return TYPED_CONFIG;
                }
                return CONFIG_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConfigCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CertificateProvider> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CertificateProvider m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CertificateProvider(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f49924e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49925f;

            /* renamed from: g  reason: collision with root package name */
            private Object f49926g;

            /* renamed from: h  reason: collision with root package name */
            private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f49927h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f50050h.d(CertificateProvider.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CertificateProvider build() {
                CertificateProvider I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CertificateProvider I() {
                CertificateProvider certificateProvider = new CertificateProvider(this, (a) null);
                certificateProvider.name_ = this.f49926g;
                if (this.f49924e == 2) {
                    q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49927h;
                    if (q2Var == null) {
                        certificateProvider.config_ = this.f49925f;
                    } else {
                        certificateProvider.config_ = q2Var.b();
                    }
                }
                certificateProvider.configCase_ = this.f49924e;
                Q();
                return certificateProvider;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CertificateProvider getDefaultInstanceForType() {
                return CertificateProvider.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProvider r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProvider r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProvider$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CertificateProvider) {
                    return g0((CertificateProvider) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(CertificateProvider certificateProvider) {
                if (certificateProvider == CertificateProvider.getDefaultInstance()) {
                    return this;
                }
                if (!certificateProvider.getName().isEmpty()) {
                    this.f49926g = certificateProvider.name_;
                    R();
                }
                if (b.f49938a[certificateProvider.getConfigCase().ordinal()] == 1) {
                    h0(certificateProvider.getTypedConfig());
                }
                z(((GeneratedMessageV3) certificateProvider).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f50049g;
            }

            public b h0(TypedExtensionConfig typedExtensionConfig) {
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49927h;
                if (q2Var == null) {
                    if (this.f49924e == 2 && this.f49925f != TypedExtensionConfig.getDefaultInstance()) {
                        this.f49925f = TypedExtensionConfig.newBuilder((TypedExtensionConfig) this.f49925f).g0(typedExtensionConfig).I();
                    } else {
                        this.f49925f = typedExtensionConfig;
                    }
                    R();
                } else {
                    if (this.f49924e == 2) {
                        q2Var.e(typedExtensionConfig);
                    }
                    this.f49927h.g(typedExtensionConfig);
                }
                this.f49924e = 2;
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
                this.f49924e = 0;
                this.f49926g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49924e = 0;
                this.f49926g = "";
                b0();
            }
        }

        /* synthetic */ CertificateProvider(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CertificateProvider getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f50049g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CertificateProvider parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CertificateProvider parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CertificateProvider> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CertificateProvider)) {
                return super.equals(obj);
            }
            CertificateProvider certificateProvider = (CertificateProvider) obj;
            if (getName().equals(certificateProvider.getName()) && getConfigCase().equals(certificateProvider.getConfigCase())) {
                return (this.configCase_ != 2 || getTypedConfig().equals(certificateProvider.getTypedConfig())) && this.unknownFields.equals(certificateProvider.unknownFields);
            }
            return false;
        }

        public ConfigCase getConfigCase() {
            return ConfigCase.forNumber(this.configCase_);
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
        public e2<CertificateProvider> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.configCase_ == 2) {
                computeStringSize += CodedOutputStream.G(2, (TypedExtensionConfig) this.config_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TypedExtensionConfig getTypedConfig() {
            if (this.configCase_ == 2) {
                return (TypedExtensionConfig) this.config_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        public i1 getTypedConfigOrBuilder() {
            if (this.configCase_ == 2) {
                return (TypedExtensionConfig) this.config_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTypedConfig() {
            return this.configCase_ == 2;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (this.configCase_ == 2) {
                hashCode = (((hashCode * 37) + 2) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f50050h.d(CertificateProvider.class, b.class);
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
            return new CertificateProvider();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.configCase_ == 2) {
                codedOutputStream.L0(2, (TypedExtensionConfig) this.config_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CertificateProvider(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CertificateProvider certificateProvider) {
            return DEFAULT_INSTANCE.toBuilder().g0(certificateProvider);
        }

        public static CertificateProvider parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CertificateProvider(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.configCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CertificateProvider parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CertificateProvider parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CertificateProvider getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static CertificateProvider parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static CertificateProvider parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private CertificateProvider() {
            this.configCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static CertificateProvider parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CertificateProvider parseFrom(InputStream inputStream) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CertificateProvider parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private CertificateProvider(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.name_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    TypedExtensionConfig.b builder = this.configCase_ == 2 ? ((TypedExtensionConfig) this.config_).toBuilder() : null;
                                    o1 B = pVar.B(TypedExtensionConfig.parser(), f0Var);
                                    this.config_ = B;
                                    if (builder != null) {
                                        builder.g0((TypedExtensionConfig) B);
                                        this.config_ = builder.I();
                                    }
                                    this.configCase_ = 2;
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CertificateProvider parseFrom(p pVar) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CertificateProvider parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CertificateProvider) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class CertificateProviderInstance extends GeneratedMessageV3 implements d {
        public static final int CERTIFICATE_NAME_FIELD_NUMBER = 2;
        public static final int INSTANCE_NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object certificateName_;
        private volatile Object instanceName_;
        private byte memoizedIsInitialized;
        private static final CertificateProviderInstance DEFAULT_INSTANCE = new CertificateProviderInstance();
        private static final e2<CertificateProviderInstance> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CertificateProviderInstance> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CertificateProviderInstance m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CertificateProviderInstance(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f49928e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49929f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f50052j.d(CertificateProviderInstance.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CertificateProviderInstance build() {
                CertificateProviderInstance I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CertificateProviderInstance I() {
                CertificateProviderInstance certificateProviderInstance = new CertificateProviderInstance(this, (a) null);
                certificateProviderInstance.instanceName_ = this.f49928e;
                certificateProviderInstance.certificateName_ = this.f49929f;
                Q();
                return certificateProviderInstance;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CertificateProviderInstance getDefaultInstanceForType() {
                return CertificateProviderInstance.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProviderInstance r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProviderInstance r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CertificateProviderInstance$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CertificateProviderInstance) {
                    return g0((CertificateProviderInstance) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(CertificateProviderInstance certificateProviderInstance) {
                if (certificateProviderInstance == CertificateProviderInstance.getDefaultInstance()) {
                    return this;
                }
                if (!certificateProviderInstance.getInstanceName().isEmpty()) {
                    this.f49928e = certificateProviderInstance.instanceName_;
                    R();
                }
                if (!certificateProviderInstance.getCertificateName().isEmpty()) {
                    this.f49929f = certificateProviderInstance.certificateName_;
                    R();
                }
                z(((GeneratedMessageV3) certificateProviderInstance).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f50051i;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f49928e = "";
                this.f49929f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49928e = "";
                this.f49929f = "";
                b0();
            }
        }

        /* synthetic */ CertificateProviderInstance(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CertificateProviderInstance getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f50051i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CertificateProviderInstance parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CertificateProviderInstance parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CertificateProviderInstance> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CertificateProviderInstance)) {
                return super.equals(obj);
            }
            CertificateProviderInstance certificateProviderInstance = (CertificateProviderInstance) obj;
            return getInstanceName().equals(certificateProviderInstance.getInstanceName()) && getCertificateName().equals(certificateProviderInstance.getCertificateName()) && this.unknownFields.equals(certificateProviderInstance.unknownFields);
        }

        public String getCertificateName() {
            Object obj = this.certificateName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.certificateName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getCertificateNameBytes() {
            Object obj = this.certificateName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.certificateName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getInstanceName() {
            Object obj = this.instanceName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.instanceName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getInstanceNameBytes() {
            Object obj = this.instanceName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.instanceName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CertificateProviderInstance> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.instanceName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.instanceName_);
            if (!GeneratedMessageV3.isStringEmpty(this.certificateName_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.certificateName_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getInstanceName().hashCode()) * 37) + 2) * 53) + getCertificateName().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f50052j.d(CertificateProviderInstance.class, b.class);
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
            return new CertificateProviderInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.instanceName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.instanceName_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.certificateName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.certificateName_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CertificateProviderInstance(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CertificateProviderInstance certificateProviderInstance) {
            return DEFAULT_INSTANCE.toBuilder().g0(certificateProviderInstance);
        }

        public static CertificateProviderInstance parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CertificateProviderInstance(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CertificateProviderInstance parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CertificateProviderInstance parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CertificateProviderInstance getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static CertificateProviderInstance parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CertificateProviderInstance() {
            this.memoizedIsInitialized = (byte) -1;
            this.instanceName_ = "";
            this.certificateName_ = "";
        }

        public static CertificateProviderInstance parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static CertificateProviderInstance parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CertificateProviderInstance parseFrom(InputStream inputStream) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CertificateProviderInstance(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.instanceName_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.certificateName_ = pVar.K();
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

        public static CertificateProviderInstance parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CertificateProviderInstance parseFrom(p pVar) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CertificateProviderInstance parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CertificateProviderInstance) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class CombinedCertificateValidationContext extends GeneratedMessageV3 implements f {
        public static final int DEFAULT_VALIDATION_CONTEXT_FIELD_NUMBER = 1;
        public static final int VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_FIELD_NUMBER = 3;
        public static final int VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER = 4;
        public static final int VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private CertificateValidationContext defaultValidationContext_;
        private byte memoizedIsInitialized;
        private CertificateProviderInstance validationContextCertificateProviderInstance_;
        private CertificateProvider validationContextCertificateProvider_;
        private SdsSecretConfig validationContextSdsSecretConfig_;
        private static final CombinedCertificateValidationContext DEFAULT_INSTANCE = new CombinedCertificateValidationContext();
        private static final e2<CombinedCertificateValidationContext> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<CombinedCertificateValidationContext> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CombinedCertificateValidationContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CombinedCertificateValidationContext(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private CertificateValidationContext f49930e;

            /* renamed from: f  reason: collision with root package name */
            private q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> f49931f;

            /* renamed from: g  reason: collision with root package name */
            private SdsSecretConfig f49932g;

            /* renamed from: h  reason: collision with root package name */
            private q2<SdsSecretConfig, SdsSecretConfig.b, g> f49933h;

            /* renamed from: i  reason: collision with root package name */
            private CertificateProvider f49934i;

            /* renamed from: j  reason: collision with root package name */
            private q2<CertificateProvider, CertificateProvider.b, e> f49935j;

            /* renamed from: k  reason: collision with root package name */
            private CertificateProviderInstance f49936k;

            /* renamed from: l  reason: collision with root package name */
            private q2<CertificateProviderInstance, CertificateProviderInstance.b, d> f49937l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f50054l.d(CombinedCertificateValidationContext.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CombinedCertificateValidationContext build() {
                CombinedCertificateValidationContext I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CombinedCertificateValidationContext I() {
                CombinedCertificateValidationContext combinedCertificateValidationContext = new CombinedCertificateValidationContext(this, (a) null);
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var = this.f49931f;
                if (q2Var == null) {
                    combinedCertificateValidationContext.defaultValidationContext_ = this.f49930e;
                } else {
                    combinedCertificateValidationContext.defaultValidationContext_ = q2Var.b();
                }
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var2 = this.f49933h;
                if (q2Var2 == null) {
                    combinedCertificateValidationContext.validationContextSdsSecretConfig_ = this.f49932g;
                } else {
                    combinedCertificateValidationContext.validationContextSdsSecretConfig_ = q2Var2.b();
                }
                q2<CertificateProvider, CertificateProvider.b, e> q2Var3 = this.f49935j;
                if (q2Var3 == null) {
                    combinedCertificateValidationContext.validationContextCertificateProvider_ = this.f49934i;
                } else {
                    combinedCertificateValidationContext.validationContextCertificateProvider_ = q2Var3.b();
                }
                q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var4 = this.f49937l;
                if (q2Var4 == null) {
                    combinedCertificateValidationContext.validationContextCertificateProviderInstance_ = this.f49936k;
                } else {
                    combinedCertificateValidationContext.validationContextCertificateProviderInstance_ = q2Var4.b();
                }
                Q();
                return combinedCertificateValidationContext;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public CombinedCertificateValidationContext getDefaultInstanceForType() {
                return CombinedCertificateValidationContext.getDefaultInstance();
            }

            public b d0(CertificateValidationContext certificateValidationContext) {
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var = this.f49931f;
                if (q2Var == null) {
                    CertificateValidationContext certificateValidationContext2 = this.f49930e;
                    if (certificateValidationContext2 != null) {
                        this.f49930e = CertificateValidationContext.newBuilder(certificateValidationContext2).n0(certificateValidationContext).I();
                    } else {
                        this.f49930e = certificateValidationContext;
                    }
                    R();
                } else {
                    q2Var.e(certificateValidationContext);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CombinedCertificateValidationContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CombinedCertificateValidationContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$CombinedCertificateValidationContext$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CombinedCertificateValidationContext) {
                    return h0((CombinedCertificateValidationContext) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f50053k;
            }

            public b h0(CombinedCertificateValidationContext combinedCertificateValidationContext) {
                if (combinedCertificateValidationContext == CombinedCertificateValidationContext.getDefaultInstance()) {
                    return this;
                }
                if (combinedCertificateValidationContext.hasDefaultValidationContext()) {
                    d0(combinedCertificateValidationContext.getDefaultValidationContext());
                }
                if (combinedCertificateValidationContext.hasValidationContextSdsSecretConfig()) {
                    l0(combinedCertificateValidationContext.getValidationContextSdsSecretConfig());
                }
                if (combinedCertificateValidationContext.hasValidationContextCertificateProvider()) {
                    j0(combinedCertificateValidationContext.getValidationContextCertificateProvider());
                }
                if (combinedCertificateValidationContext.hasValidationContextCertificateProviderInstance()) {
                    k0(combinedCertificateValidationContext.getValidationContextCertificateProviderInstance());
                }
                z(((GeneratedMessageV3) combinedCertificateValidationContext).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Deprecated
            public b j0(CertificateProvider certificateProvider) {
                q2<CertificateProvider, CertificateProvider.b, e> q2Var = this.f49935j;
                if (q2Var == null) {
                    CertificateProvider certificateProvider2 = this.f49934i;
                    if (certificateProvider2 != null) {
                        this.f49934i = CertificateProvider.newBuilder(certificateProvider2).g0(certificateProvider).I();
                    } else {
                        this.f49934i = certificateProvider;
                    }
                    R();
                } else {
                    q2Var.e(certificateProvider);
                }
                return this;
            }

            @Deprecated
            public b k0(CertificateProviderInstance certificateProviderInstance) {
                q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var = this.f49937l;
                if (q2Var == null) {
                    CertificateProviderInstance certificateProviderInstance2 = this.f49936k;
                    if (certificateProviderInstance2 != null) {
                        this.f49936k = CertificateProviderInstance.newBuilder(certificateProviderInstance2).g0(certificateProviderInstance).I();
                    } else {
                        this.f49936k = certificateProviderInstance;
                    }
                    R();
                } else {
                    q2Var.e(certificateProviderInstance);
                }
                return this;
            }

            public b l0(SdsSecretConfig sdsSecretConfig) {
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var = this.f49933h;
                if (q2Var == null) {
                    SdsSecretConfig sdsSecretConfig2 = this.f49932g;
                    if (sdsSecretConfig2 != null) {
                        this.f49932g = SdsSecretConfig.newBuilder(sdsSecretConfig2).g0(sdsSecretConfig).I();
                    } else {
                        this.f49932g = sdsSecretConfig;
                    }
                    R();
                } else {
                    q2Var.e(sdsSecretConfig);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
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

        /* synthetic */ CombinedCertificateValidationContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CombinedCertificateValidationContext getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f50053k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CombinedCertificateValidationContext parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CombinedCertificateValidationContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CombinedCertificateValidationContext> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CombinedCertificateValidationContext)) {
                return super.equals(obj);
            }
            CombinedCertificateValidationContext combinedCertificateValidationContext = (CombinedCertificateValidationContext) obj;
            if (hasDefaultValidationContext() != combinedCertificateValidationContext.hasDefaultValidationContext()) {
                return false;
            }
            if ((!hasDefaultValidationContext() || getDefaultValidationContext().equals(combinedCertificateValidationContext.getDefaultValidationContext())) && hasValidationContextSdsSecretConfig() == combinedCertificateValidationContext.hasValidationContextSdsSecretConfig()) {
                if ((!hasValidationContextSdsSecretConfig() || getValidationContextSdsSecretConfig().equals(combinedCertificateValidationContext.getValidationContextSdsSecretConfig())) && hasValidationContextCertificateProvider() == combinedCertificateValidationContext.hasValidationContextCertificateProvider()) {
                    if ((!hasValidationContextCertificateProvider() || getValidationContextCertificateProvider().equals(combinedCertificateValidationContext.getValidationContextCertificateProvider())) && hasValidationContextCertificateProviderInstance() == combinedCertificateValidationContext.hasValidationContextCertificateProviderInstance()) {
                        return (!hasValidationContextCertificateProviderInstance() || getValidationContextCertificateProviderInstance().equals(combinedCertificateValidationContext.getValidationContextCertificateProviderInstance())) && this.unknownFields.equals(combinedCertificateValidationContext.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public CertificateValidationContext getDefaultValidationContext() {
            CertificateValidationContext certificateValidationContext = this.defaultValidationContext_;
            return certificateValidationContext == null ? CertificateValidationContext.getDefaultInstance() : certificateValidationContext;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b getDefaultValidationContextOrBuilder() {
            return getDefaultValidationContext();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CombinedCertificateValidationContext> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.defaultValidationContext_ != null ? 0 + CodedOutputStream.G(1, getDefaultValidationContext()) : 0;
            if (this.validationContextSdsSecretConfig_ != null) {
                G += CodedOutputStream.G(2, getValidationContextSdsSecretConfig());
            }
            if (this.validationContextCertificateProvider_ != null) {
                G += CodedOutputStream.G(3, getValidationContextCertificateProvider());
            }
            if (this.validationContextCertificateProviderInstance_ != null) {
                G += CodedOutputStream.G(4, getValidationContextCertificateProviderInstance());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Deprecated
        public CertificateProvider getValidationContextCertificateProvider() {
            CertificateProvider certificateProvider = this.validationContextCertificateProvider_;
            return certificateProvider == null ? CertificateProvider.getDefaultInstance() : certificateProvider;
        }

        @Deprecated
        public CertificateProviderInstance getValidationContextCertificateProviderInstance() {
            CertificateProviderInstance certificateProviderInstance = this.validationContextCertificateProviderInstance_;
            return certificateProviderInstance == null ? CertificateProviderInstance.getDefaultInstance() : certificateProviderInstance;
        }

        @Deprecated
        public d getValidationContextCertificateProviderInstanceOrBuilder() {
            return getValidationContextCertificateProviderInstance();
        }

        @Deprecated
        public e getValidationContextCertificateProviderOrBuilder() {
            return getValidationContextCertificateProvider();
        }

        public SdsSecretConfig getValidationContextSdsSecretConfig() {
            SdsSecretConfig sdsSecretConfig = this.validationContextSdsSecretConfig_;
            return sdsSecretConfig == null ? SdsSecretConfig.getDefaultInstance() : sdsSecretConfig;
        }

        public g getValidationContextSdsSecretConfigOrBuilder() {
            return getValidationContextSdsSecretConfig();
        }

        public boolean hasDefaultValidationContext() {
            return this.defaultValidationContext_ != null;
        }

        @Deprecated
        public boolean hasValidationContextCertificateProvider() {
            return this.validationContextCertificateProvider_ != null;
        }

        @Deprecated
        public boolean hasValidationContextCertificateProviderInstance() {
            return this.validationContextCertificateProviderInstance_ != null;
        }

        public boolean hasValidationContextSdsSecretConfig() {
            return this.validationContextSdsSecretConfig_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasDefaultValidationContext()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getDefaultValidationContext().hashCode();
            }
            if (hasValidationContextSdsSecretConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValidationContextSdsSecretConfig().hashCode();
            }
            if (hasValidationContextCertificateProvider()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getValidationContextCertificateProvider().hashCode();
            }
            if (hasValidationContextCertificateProviderInstance()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getValidationContextCertificateProviderInstance().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f50054l.d(CombinedCertificateValidationContext.class, b.class);
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
            return new CombinedCertificateValidationContext();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.defaultValidationContext_ != null) {
                codedOutputStream.L0(1, getDefaultValidationContext());
            }
            if (this.validationContextSdsSecretConfig_ != null) {
                codedOutputStream.L0(2, getValidationContextSdsSecretConfig());
            }
            if (this.validationContextCertificateProvider_ != null) {
                codedOutputStream.L0(3, getValidationContextCertificateProvider());
            }
            if (this.validationContextCertificateProviderInstance_ != null) {
                codedOutputStream.L0(4, getValidationContextCertificateProviderInstance());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CombinedCertificateValidationContext(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CombinedCertificateValidationContext combinedCertificateValidationContext) {
            return DEFAULT_INSTANCE.toBuilder().h0(combinedCertificateValidationContext);
        }

        public static CombinedCertificateValidationContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CombinedCertificateValidationContext(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CombinedCertificateValidationContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CombinedCertificateValidationContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CombinedCertificateValidationContext getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static CombinedCertificateValidationContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CombinedCertificateValidationContext() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CombinedCertificateValidationContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static CombinedCertificateValidationContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private CombinedCertificateValidationContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    CertificateValidationContext certificateValidationContext = this.defaultValidationContext_;
                                    CertificateValidationContext.b builder = certificateValidationContext != null ? certificateValidationContext.toBuilder() : null;
                                    CertificateValidationContext certificateValidationContext2 = (CertificateValidationContext) pVar.B(CertificateValidationContext.parser(), f0Var);
                                    this.defaultValidationContext_ = certificateValidationContext2;
                                    if (builder != null) {
                                        builder.n0(certificateValidationContext2);
                                        this.defaultValidationContext_ = builder.I();
                                    }
                                } else if (L == 18) {
                                    SdsSecretConfig sdsSecretConfig = this.validationContextSdsSecretConfig_;
                                    SdsSecretConfig.b builder2 = sdsSecretConfig != null ? sdsSecretConfig.toBuilder() : null;
                                    SdsSecretConfig sdsSecretConfig2 = (SdsSecretConfig) pVar.B(SdsSecretConfig.parser(), f0Var);
                                    this.validationContextSdsSecretConfig_ = sdsSecretConfig2;
                                    if (builder2 != null) {
                                        builder2.g0(sdsSecretConfig2);
                                        this.validationContextSdsSecretConfig_ = builder2.I();
                                    }
                                } else if (L == 26) {
                                    CertificateProvider certificateProvider = this.validationContextCertificateProvider_;
                                    CertificateProvider.b builder3 = certificateProvider != null ? certificateProvider.toBuilder() : null;
                                    CertificateProvider certificateProvider2 = (CertificateProvider) pVar.B(CertificateProvider.parser(), f0Var);
                                    this.validationContextCertificateProvider_ = certificateProvider2;
                                    if (builder3 != null) {
                                        builder3.g0(certificateProvider2);
                                        this.validationContextCertificateProvider_ = builder3.I();
                                    }
                                } else if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    CertificateProviderInstance certificateProviderInstance = this.validationContextCertificateProviderInstance_;
                                    CertificateProviderInstance.b builder4 = certificateProviderInstance != null ? certificateProviderInstance.toBuilder() : null;
                                    CertificateProviderInstance certificateProviderInstance2 = (CertificateProviderInstance) pVar.B(CertificateProviderInstance.parser(), f0Var);
                                    this.validationContextCertificateProviderInstance_ = certificateProviderInstance2;
                                    if (builder4 != null) {
                                        builder4.g0(certificateProviderInstance2);
                                        this.validationContextCertificateProviderInstance_ = builder4.I();
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

        public static CombinedCertificateValidationContext parseFrom(InputStream inputStream) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CombinedCertificateValidationContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CombinedCertificateValidationContext parseFrom(p pVar) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CombinedCertificateValidationContext parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CombinedCertificateValidationContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum ValidationContextTypeCase implements u0.c {
        VALIDATION_CONTEXT(3),
        VALIDATION_CONTEXT_SDS_SECRET_CONFIG(7),
        COMBINED_VALIDATION_CONTEXT(8),
        VALIDATION_CONTEXT_CERTIFICATE_PROVIDER(10),
        VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE(12),
        VALIDATIONCONTEXTTYPE_NOT_SET(0);
        
        private final int value;

        ValidationContextTypeCase(int i9) {
            this.value = i9;
        }

        public static ValidationContextTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 10) {
                        if (i9 != 12) {
                            if (i9 != 7) {
                                if (i9 != 8) {
                                    return null;
                                }
                                return COMBINED_VALIDATION_CONTEXT;
                            }
                            return VALIDATION_CONTEXT_SDS_SECRET_CONFIG;
                        }
                        return VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE;
                    }
                    return VALIDATION_CONTEXT_CERTIFICATE_PROVIDER;
                }
                return VALIDATION_CONTEXT;
            }
            return VALIDATIONCONTEXTTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ValidationContextTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CommonTlsContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CommonTlsContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CommonTlsContext(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49938a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49939b;

        static {
            int[] iArr = new int[ValidationContextTypeCase.values().length];
            f49939b = iArr;
            try {
                iArr[ValidationContextTypeCase.VALIDATION_CONTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49939b[ValidationContextTypeCase.VALIDATION_CONTEXT_SDS_SECRET_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49939b[ValidationContextTypeCase.COMBINED_VALIDATION_CONTEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49939b[ValidationContextTypeCase.VALIDATION_CONTEXT_CERTIFICATE_PROVIDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49939b[ValidationContextTypeCase.VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49939b[ValidationContextTypeCase.VALIDATIONCONTEXTTYPE_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[CertificateProvider.ConfigCase.values().length];
            f49938a = iArr2;
            try {
                iArr2[CertificateProvider.ConfigCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49938a[CertificateProvider.ConfigCase.CONFIG_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.d {
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> A;

        /* renamed from: e  reason: collision with root package name */
        private int f49940e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49941f;

        /* renamed from: g  reason: collision with root package name */
        private int f49942g;

        /* renamed from: h  reason: collision with root package name */
        private TlsParameters f49943h;

        /* renamed from: i  reason: collision with root package name */
        private q2<TlsParameters, TlsParameters.b, k> f49944i;

        /* renamed from: j  reason: collision with root package name */
        private List<TlsCertificate> f49945j;

        /* renamed from: k  reason: collision with root package name */
        private l2<TlsCertificate, TlsCertificate.b, j> f49946k;

        /* renamed from: l  reason: collision with root package name */
        private List<SdsSecretConfig> f49947l;

        /* renamed from: m  reason: collision with root package name */
        private l2<SdsSecretConfig, SdsSecretConfig.b, g> f49948m;

        /* renamed from: n  reason: collision with root package name */
        private CertificateProviderPluginInstance f49949n;

        /* renamed from: o  reason: collision with root package name */
        private q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> f49950o;

        /* renamed from: p  reason: collision with root package name */
        private CertificateProvider f49951p;

        /* renamed from: q  reason: collision with root package name */
        private q2<CertificateProvider, CertificateProvider.b, e> f49952q;

        /* renamed from: r  reason: collision with root package name */
        private CertificateProviderInstance f49953r;

        /* renamed from: s  reason: collision with root package name */
        private q2<CertificateProviderInstance, CertificateProviderInstance.b, d> f49954s;

        /* renamed from: t  reason: collision with root package name */
        private q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> f49955t;

        /* renamed from: u  reason: collision with root package name */
        private q2<SdsSecretConfig, SdsSecretConfig.b, g> f49956u;

        /* renamed from: v  reason: collision with root package name */
        private q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, f> f49957v;

        /* renamed from: w  reason: collision with root package name */
        private q2<CertificateProvider, CertificateProvider.b, e> f49958w;

        /* renamed from: x  reason: collision with root package name */
        private q2<CertificateProviderInstance, CertificateProviderInstance.b, d> f49959x;

        /* renamed from: y  reason: collision with root package name */
        private z0 f49960y;

        /* renamed from: z  reason: collision with root package name */
        private TypedExtensionConfig f49961z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49942g & 4) == 0) {
                this.f49960y = new y0(this.f49960y);
                this.f49942g |= 4;
            }
        }

        private void b0() {
            if ((this.f49942g & 2) == 0) {
                this.f49947l = new ArrayList(this.f49947l);
                this.f49942g |= 2;
            }
        }

        private void d0() {
            if ((this.f49942g & 1) == 0) {
                this.f49945j = new ArrayList(this.f49945j);
                this.f49942g |= 1;
            }
        }

        private l2<SdsSecretConfig, SdsSecretConfig.b, g> g0() {
            if (this.f49948m == null) {
                this.f49948m = new l2<>(this.f49947l, (this.f49942g & 2) != 0, H(), O());
                this.f49947l = null;
            }
            return this.f49948m;
        }

        private l2<TlsCertificate, TlsCertificate.b, j> h0() {
            if (this.f49946k == null) {
                this.f49946k = new l2<>(this.f49945j, (this.f49942g & 1) != 0, H(), O());
                this.f49945j = null;
            }
            return this.f49946k;
        }

        private void i0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: B0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f50048f.d(CommonTlsContext.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CommonTlsContext build() {
            CommonTlsContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CommonTlsContext I() {
            CommonTlsContext commonTlsContext = new CommonTlsContext(this, (a) null);
            q2<TlsParameters, TlsParameters.b, k> q2Var = this.f49944i;
            if (q2Var == null) {
                commonTlsContext.tlsParams_ = this.f49943h;
            } else {
                commonTlsContext.tlsParams_ = q2Var.b();
            }
            l2<TlsCertificate, TlsCertificate.b, j> l2Var = this.f49946k;
            if (l2Var == null) {
                if ((this.f49942g & 1) != 0) {
                    this.f49945j = Collections.unmodifiableList(this.f49945j);
                    this.f49942g &= -2;
                }
                commonTlsContext.tlsCertificates_ = this.f49945j;
            } else {
                commonTlsContext.tlsCertificates_ = l2Var.e();
            }
            l2<SdsSecretConfig, SdsSecretConfig.b, g> l2Var2 = this.f49948m;
            if (l2Var2 == null) {
                if ((this.f49942g & 2) != 0) {
                    this.f49947l = Collections.unmodifiableList(this.f49947l);
                    this.f49942g &= -3;
                }
                commonTlsContext.tlsCertificateSdsSecretConfigs_ = this.f49947l;
            } else {
                commonTlsContext.tlsCertificateSdsSecretConfigs_ = l2Var2.e();
            }
            q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> q2Var2 = this.f49950o;
            if (q2Var2 == null) {
                commonTlsContext.tlsCertificateProviderInstance_ = this.f49949n;
            } else {
                commonTlsContext.tlsCertificateProviderInstance_ = q2Var2.b();
            }
            q2<CertificateProvider, CertificateProvider.b, e> q2Var3 = this.f49952q;
            if (q2Var3 == null) {
                commonTlsContext.tlsCertificateCertificateProvider_ = this.f49951p;
            } else {
                commonTlsContext.tlsCertificateCertificateProvider_ = q2Var3.b();
            }
            q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var4 = this.f49954s;
            if (q2Var4 == null) {
                commonTlsContext.tlsCertificateCertificateProviderInstance_ = this.f49953r;
            } else {
                commonTlsContext.tlsCertificateCertificateProviderInstance_ = q2Var4.b();
            }
            if (this.f49940e == 3) {
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var5 = this.f49955t;
                if (q2Var5 == null) {
                    commonTlsContext.validationContextType_ = this.f49941f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var5.b();
                }
            }
            if (this.f49940e == 7) {
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var6 = this.f49956u;
                if (q2Var6 == null) {
                    commonTlsContext.validationContextType_ = this.f49941f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var6.b();
                }
            }
            if (this.f49940e == 8) {
                q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, f> q2Var7 = this.f49957v;
                if (q2Var7 == null) {
                    commonTlsContext.validationContextType_ = this.f49941f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var7.b();
                }
            }
            if (this.f49940e == 10) {
                q2<CertificateProvider, CertificateProvider.b, e> q2Var8 = this.f49958w;
                if (q2Var8 == null) {
                    commonTlsContext.validationContextType_ = this.f49941f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var8.b();
                }
            }
            if (this.f49940e == 12) {
                q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var9 = this.f49959x;
                if (q2Var9 == null) {
                    commonTlsContext.validationContextType_ = this.f49941f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var9.b();
                }
            }
            if ((this.f49942g & 4) != 0) {
                this.f49960y = this.f49960y.V0();
                this.f49942g &= -5;
            }
            commonTlsContext.alpnProtocols_ = this.f49960y;
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var10 = this.A;
            if (q2Var10 == null) {
                commonTlsContext.customHandshaker_ = this.f49961z;
            } else {
                commonTlsContext.customHandshaker_ = q2Var10.b();
            }
            commonTlsContext.validationContextTypeCase_ = this.f49940e;
            Q();
            return commonTlsContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public CommonTlsContext getDefaultInstanceForType() {
            return CommonTlsContext.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f50047e;
        }

        public c j0(CombinedCertificateValidationContext combinedCertificateValidationContext) {
            q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, f> q2Var = this.f49957v;
            if (q2Var == null) {
                if (this.f49940e == 8 && this.f49941f != CombinedCertificateValidationContext.getDefaultInstance()) {
                    this.f49941f = CombinedCertificateValidationContext.newBuilder((CombinedCertificateValidationContext) this.f49941f).h0(combinedCertificateValidationContext).I();
                } else {
                    this.f49941f = combinedCertificateValidationContext;
                }
                R();
            } else {
                if (this.f49940e == 8) {
                    q2Var.e(combinedCertificateValidationContext);
                }
                this.f49957v.g(combinedCertificateValidationContext);
            }
            this.f49940e = 8;
            return this;
        }

        public c k0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.A;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f49961z;
                if (typedExtensionConfig2 != null) {
                    this.f49961z = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f49961z = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CommonTlsContext) {
                return n0((CommonTlsContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c n0(CommonTlsContext commonTlsContext) {
            if (commonTlsContext == CommonTlsContext.getDefaultInstance()) {
                return this;
            }
            if (commonTlsContext.hasTlsParams()) {
                s0(commonTlsContext.getTlsParams());
            }
            if (this.f49946k == null) {
                if (!commonTlsContext.tlsCertificates_.isEmpty()) {
                    if (this.f49945j.isEmpty()) {
                        this.f49945j = commonTlsContext.tlsCertificates_;
                        this.f49942g &= -2;
                    } else {
                        d0();
                        this.f49945j.addAll(commonTlsContext.tlsCertificates_);
                    }
                    R();
                }
            } else if (!commonTlsContext.tlsCertificates_.isEmpty()) {
                if (this.f49946k.k()) {
                    this.f49946k.f();
                    this.f49946k = null;
                    this.f49945j = commonTlsContext.tlsCertificates_;
                    this.f49942g &= -2;
                    this.f49946k = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f49946k.b(commonTlsContext.tlsCertificates_);
                }
            }
            if (this.f49948m == null) {
                if (!commonTlsContext.tlsCertificateSdsSecretConfigs_.isEmpty()) {
                    if (this.f49947l.isEmpty()) {
                        this.f49947l = commonTlsContext.tlsCertificateSdsSecretConfigs_;
                        this.f49942g &= -3;
                    } else {
                        b0();
                        this.f49947l.addAll(commonTlsContext.tlsCertificateSdsSecretConfigs_);
                    }
                    R();
                }
            } else if (!commonTlsContext.tlsCertificateSdsSecretConfigs_.isEmpty()) {
                if (this.f49948m.k()) {
                    this.f49948m.f();
                    this.f49948m = null;
                    this.f49947l = commonTlsContext.tlsCertificateSdsSecretConfigs_;
                    this.f49942g &= -3;
                    this.f49948m = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f49948m.b(commonTlsContext.tlsCertificateSdsSecretConfigs_);
                }
            }
            if (commonTlsContext.hasTlsCertificateProviderInstance()) {
                r0(commonTlsContext.getTlsCertificateProviderInstance());
            }
            if (commonTlsContext.hasTlsCertificateCertificateProvider()) {
                o0(commonTlsContext.getTlsCertificateCertificateProvider());
            }
            if (commonTlsContext.hasTlsCertificateCertificateProviderInstance()) {
                q0(commonTlsContext.getTlsCertificateCertificateProviderInstance());
            }
            if (!commonTlsContext.alpnProtocols_.isEmpty()) {
                if (this.f49960y.isEmpty()) {
                    this.f49960y = commonTlsContext.alpnProtocols_;
                    this.f49942g &= -5;
                } else {
                    a0();
                    this.f49960y.addAll(commonTlsContext.alpnProtocols_);
                }
                R();
            }
            if (commonTlsContext.hasCustomHandshaker()) {
                k0(commonTlsContext.getCustomHandshaker());
            }
            int i9 = b.f49939b[commonTlsContext.getValidationContextTypeCase().ordinal()];
            if (i9 == 1) {
                u0(commonTlsContext.getValidationContext());
            } else if (i9 == 2) {
                y0(commonTlsContext.getValidationContextSdsSecretConfig());
            } else if (i9 == 3) {
                j0(commonTlsContext.getCombinedValidationContext());
            } else if (i9 == 4) {
                v0(commonTlsContext.getValidationContextCertificateProvider());
            } else if (i9 == 5) {
                x0(commonTlsContext.getValidationContextCertificateProviderInstance());
            }
            z(((GeneratedMessageV3) commonTlsContext).unknownFields);
            R();
            return this;
        }

        @Deprecated
        public c o0(CertificateProvider certificateProvider) {
            q2<CertificateProvider, CertificateProvider.b, e> q2Var = this.f49952q;
            if (q2Var == null) {
                CertificateProvider certificateProvider2 = this.f49951p;
                if (certificateProvider2 != null) {
                    this.f49951p = CertificateProvider.newBuilder(certificateProvider2).g0(certificateProvider).I();
                } else {
                    this.f49951p = certificateProvider;
                }
                R();
            } else {
                q2Var.e(certificateProvider);
            }
            return this;
        }

        @Deprecated
        public c q0(CertificateProviderInstance certificateProviderInstance) {
            q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var = this.f49954s;
            if (q2Var == null) {
                CertificateProviderInstance certificateProviderInstance2 = this.f49953r;
                if (certificateProviderInstance2 != null) {
                    this.f49953r = CertificateProviderInstance.newBuilder(certificateProviderInstance2).g0(certificateProviderInstance).I();
                } else {
                    this.f49953r = certificateProviderInstance;
                }
                R();
            } else {
                q2Var.e(certificateProviderInstance);
            }
            return this;
        }

        public c r0(CertificateProviderPluginInstance certificateProviderPluginInstance) {
            q2<CertificateProviderPluginInstance, CertificateProviderPluginInstance.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a> q2Var = this.f49950o;
            if (q2Var == null) {
                CertificateProviderPluginInstance certificateProviderPluginInstance2 = this.f49949n;
                if (certificateProviderPluginInstance2 != null) {
                    this.f49949n = CertificateProviderPluginInstance.newBuilder(certificateProviderPluginInstance2).g0(certificateProviderPluginInstance).I();
                } else {
                    this.f49949n = certificateProviderPluginInstance;
                }
                R();
            } else {
                q2Var.e(certificateProviderPluginInstance);
            }
            return this;
        }

        public c s0(TlsParameters tlsParameters) {
            q2<TlsParameters, TlsParameters.b, k> q2Var = this.f49944i;
            if (q2Var == null) {
                TlsParameters tlsParameters2 = this.f49943h;
                if (tlsParameters2 != null) {
                    this.f49943h = TlsParameters.newBuilder(tlsParameters2).i0(tlsParameters).I();
                } else {
                    this.f49943h = tlsParameters;
                }
                R();
            } else {
                q2Var.e(tlsParameters);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c u0(CertificateValidationContext certificateValidationContext) {
            q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var = this.f49955t;
            if (q2Var == null) {
                if (this.f49940e == 3 && this.f49941f != CertificateValidationContext.getDefaultInstance()) {
                    this.f49941f = CertificateValidationContext.newBuilder((CertificateValidationContext) this.f49941f).n0(certificateValidationContext).I();
                } else {
                    this.f49941f = certificateValidationContext;
                }
                R();
            } else {
                if (this.f49940e == 3) {
                    q2Var.e(certificateValidationContext);
                }
                this.f49955t.g(certificateValidationContext);
            }
            this.f49940e = 3;
            return this;
        }

        @Deprecated
        public c v0(CertificateProvider certificateProvider) {
            q2<CertificateProvider, CertificateProvider.b, e> q2Var = this.f49958w;
            if (q2Var == null) {
                if (this.f49940e == 10 && this.f49941f != CertificateProvider.getDefaultInstance()) {
                    this.f49941f = CertificateProvider.newBuilder((CertificateProvider) this.f49941f).g0(certificateProvider).I();
                } else {
                    this.f49941f = certificateProvider;
                }
                R();
            } else {
                if (this.f49940e == 10) {
                    q2Var.e(certificateProvider);
                }
                this.f49958w.g(certificateProvider);
            }
            this.f49940e = 10;
            return this;
        }

        @Deprecated
        public c x0(CertificateProviderInstance certificateProviderInstance) {
            q2<CertificateProviderInstance, CertificateProviderInstance.b, d> q2Var = this.f49959x;
            if (q2Var == null) {
                if (this.f49940e == 12 && this.f49941f != CertificateProviderInstance.getDefaultInstance()) {
                    this.f49941f = CertificateProviderInstance.newBuilder((CertificateProviderInstance) this.f49941f).g0(certificateProviderInstance).I();
                } else {
                    this.f49941f = certificateProviderInstance;
                }
                R();
            } else {
                if (this.f49940e == 12) {
                    q2Var.e(certificateProviderInstance);
                }
                this.f49959x.g(certificateProviderInstance);
            }
            this.f49940e = 12;
            return this;
        }

        public c y0(SdsSecretConfig sdsSecretConfig) {
            q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var = this.f49956u;
            if (q2Var == null) {
                if (this.f49940e == 7 && this.f49941f != SdsSecretConfig.getDefaultInstance()) {
                    this.f49941f = SdsSecretConfig.newBuilder((SdsSecretConfig) this.f49941f).g0(sdsSecretConfig).I();
                } else {
                    this.f49941f = sdsSecretConfig;
                }
                R();
            } else {
                if (this.f49940e == 7) {
                    q2Var.e(sdsSecretConfig);
                }
                this.f49956u.g(sdsSecretConfig);
            }
            this.f49940e = 7;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: z0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49940e = 0;
            this.f49945j = Collections.emptyList();
            this.f49947l = Collections.emptyList();
            this.f49960y = y0.f15344d;
            i0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49940e = 0;
            this.f49945j = Collections.emptyList();
            this.f49947l = Collections.emptyList();
            this.f49960y = y0.f15344d;
            i0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* synthetic */ CommonTlsContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CommonTlsContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f50047e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CommonTlsContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CommonTlsContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CommonTlsContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CommonTlsContext)) {
            return super.equals(obj);
        }
        CommonTlsContext commonTlsContext = (CommonTlsContext) obj;
        if (hasTlsParams() != commonTlsContext.hasTlsParams()) {
            return false;
        }
        if ((!hasTlsParams() || getTlsParams().equals(commonTlsContext.getTlsParams())) && getTlsCertificatesList().equals(commonTlsContext.getTlsCertificatesList()) && getTlsCertificateSdsSecretConfigsList().equals(commonTlsContext.getTlsCertificateSdsSecretConfigsList()) && hasTlsCertificateProviderInstance() == commonTlsContext.hasTlsCertificateProviderInstance()) {
            if ((!hasTlsCertificateProviderInstance() || getTlsCertificateProviderInstance().equals(commonTlsContext.getTlsCertificateProviderInstance())) && hasTlsCertificateCertificateProvider() == commonTlsContext.hasTlsCertificateCertificateProvider()) {
                if ((!hasTlsCertificateCertificateProvider() || getTlsCertificateCertificateProvider().equals(commonTlsContext.getTlsCertificateCertificateProvider())) && hasTlsCertificateCertificateProviderInstance() == commonTlsContext.hasTlsCertificateCertificateProviderInstance()) {
                    if ((!hasTlsCertificateCertificateProviderInstance() || getTlsCertificateCertificateProviderInstance().equals(commonTlsContext.getTlsCertificateCertificateProviderInstance())) && m1638getAlpnProtocolsList().equals(commonTlsContext.m1638getAlpnProtocolsList()) && hasCustomHandshaker() == commonTlsContext.hasCustomHandshaker()) {
                        if ((!hasCustomHandshaker() || getCustomHandshaker().equals(commonTlsContext.getCustomHandshaker())) && getValidationContextTypeCase().equals(commonTlsContext.getValidationContextTypeCase())) {
                            int i9 = this.validationContextTypeCase_;
                            if (i9 != 3) {
                                if (i9 != 10) {
                                    if (i9 != 12) {
                                        if (i9 != 7) {
                                            if (i9 == 8 && !getCombinedValidationContext().equals(commonTlsContext.getCombinedValidationContext())) {
                                                return false;
                                            }
                                        } else if (!getValidationContextSdsSecretConfig().equals(commonTlsContext.getValidationContextSdsSecretConfig())) {
                                            return false;
                                        }
                                    } else if (!getValidationContextCertificateProviderInstance().equals(commonTlsContext.getValidationContextCertificateProviderInstance())) {
                                        return false;
                                    }
                                } else if (!getValidationContextCertificateProvider().equals(commonTlsContext.getValidationContextCertificateProvider())) {
                                    return false;
                                }
                            } else if (!getValidationContext().equals(commonTlsContext.getValidationContext())) {
                                return false;
                            }
                            return this.unknownFields.equals(commonTlsContext.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String getAlpnProtocols(int i9) {
        return this.alpnProtocols_.get(i9);
    }

    public ByteString getAlpnProtocolsBytes(int i9) {
        return this.alpnProtocols_.j0(i9);
    }

    public int getAlpnProtocolsCount() {
        return this.alpnProtocols_.size();
    }

    public CombinedCertificateValidationContext getCombinedValidationContext() {
        if (this.validationContextTypeCase_ == 8) {
            return (CombinedCertificateValidationContext) this.validationContextType_;
        }
        return CombinedCertificateValidationContext.getDefaultInstance();
    }

    public f getCombinedValidationContextOrBuilder() {
        if (this.validationContextTypeCase_ == 8) {
            return (CombinedCertificateValidationContext) this.validationContextType_;
        }
        return CombinedCertificateValidationContext.getDefaultInstance();
    }

    public TypedExtensionConfig getCustomHandshaker() {
        TypedExtensionConfig typedExtensionConfig = this.customHandshaker_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getCustomHandshakerOrBuilder() {
        return getCustomHandshaker();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CommonTlsContext> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.tlsParams_ != null ? CodedOutputStream.G(1, getTlsParams()) + 0 : 0;
        for (int i10 = 0; i10 < this.tlsCertificates_.size(); i10++) {
            G += CodedOutputStream.G(2, this.tlsCertificates_.get(i10));
        }
        if (this.validationContextTypeCase_ == 3) {
            G += CodedOutputStream.G(3, (CertificateValidationContext) this.validationContextType_);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.alpnProtocols_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.alpnProtocols_.c1(i12));
        }
        int size = G + i11 + (m1638getAlpnProtocolsList().size() * 1);
        for (int i13 = 0; i13 < this.tlsCertificateSdsSecretConfigs_.size(); i13++) {
            size += CodedOutputStream.G(6, this.tlsCertificateSdsSecretConfigs_.get(i13));
        }
        if (this.validationContextTypeCase_ == 7) {
            size += CodedOutputStream.G(7, (SdsSecretConfig) this.validationContextType_);
        }
        if (this.validationContextTypeCase_ == 8) {
            size += CodedOutputStream.G(8, (CombinedCertificateValidationContext) this.validationContextType_);
        }
        if (this.tlsCertificateCertificateProvider_ != null) {
            size += CodedOutputStream.G(9, getTlsCertificateCertificateProvider());
        }
        if (this.validationContextTypeCase_ == 10) {
            size += CodedOutputStream.G(10, (CertificateProvider) this.validationContextType_);
        }
        if (this.tlsCertificateCertificateProviderInstance_ != null) {
            size += CodedOutputStream.G(11, getTlsCertificateCertificateProviderInstance());
        }
        if (this.validationContextTypeCase_ == 12) {
            size += CodedOutputStream.G(12, (CertificateProviderInstance) this.validationContextType_);
        }
        if (this.customHandshaker_ != null) {
            size += CodedOutputStream.G(13, getCustomHandshaker());
        }
        if (this.tlsCertificateProviderInstance_ != null) {
            size += CodedOutputStream.G(14, getTlsCertificateProviderInstance());
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public CertificateProvider getTlsCertificateCertificateProvider() {
        CertificateProvider certificateProvider = this.tlsCertificateCertificateProvider_;
        return certificateProvider == null ? CertificateProvider.getDefaultInstance() : certificateProvider;
    }

    @Deprecated
    public CertificateProviderInstance getTlsCertificateCertificateProviderInstance() {
        CertificateProviderInstance certificateProviderInstance = this.tlsCertificateCertificateProviderInstance_;
        return certificateProviderInstance == null ? CertificateProviderInstance.getDefaultInstance() : certificateProviderInstance;
    }

    @Deprecated
    public d getTlsCertificateCertificateProviderInstanceOrBuilder() {
        return getTlsCertificateCertificateProviderInstance();
    }

    @Deprecated
    public e getTlsCertificateCertificateProviderOrBuilder() {
        return getTlsCertificateCertificateProvider();
    }

    public CertificateProviderPluginInstance getTlsCertificateProviderInstance() {
        CertificateProviderPluginInstance certificateProviderPluginInstance = this.tlsCertificateProviderInstance_;
        return certificateProviderPluginInstance == null ? CertificateProviderPluginInstance.getDefaultInstance() : certificateProviderPluginInstance;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.a getTlsCertificateProviderInstanceOrBuilder() {
        return getTlsCertificateProviderInstance();
    }

    public SdsSecretConfig getTlsCertificateSdsSecretConfigs(int i9) {
        return this.tlsCertificateSdsSecretConfigs_.get(i9);
    }

    public int getTlsCertificateSdsSecretConfigsCount() {
        return this.tlsCertificateSdsSecretConfigs_.size();
    }

    public List<SdsSecretConfig> getTlsCertificateSdsSecretConfigsList() {
        return this.tlsCertificateSdsSecretConfigs_;
    }

    public g getTlsCertificateSdsSecretConfigsOrBuilder(int i9) {
        return this.tlsCertificateSdsSecretConfigs_.get(i9);
    }

    public List<? extends g> getTlsCertificateSdsSecretConfigsOrBuilderList() {
        return this.tlsCertificateSdsSecretConfigs_;
    }

    public TlsCertificate getTlsCertificates(int i9) {
        return this.tlsCertificates_.get(i9);
    }

    public int getTlsCertificatesCount() {
        return this.tlsCertificates_.size();
    }

    public List<TlsCertificate> getTlsCertificatesList() {
        return this.tlsCertificates_;
    }

    public j getTlsCertificatesOrBuilder(int i9) {
        return this.tlsCertificates_.get(i9);
    }

    public List<? extends j> getTlsCertificatesOrBuilderList() {
        return this.tlsCertificates_;
    }

    public TlsParameters getTlsParams() {
        TlsParameters tlsParameters = this.tlsParams_;
        return tlsParameters == null ? TlsParameters.getDefaultInstance() : tlsParameters;
    }

    public k getTlsParamsOrBuilder() {
        return getTlsParams();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public CertificateValidationContext getValidationContext() {
        if (this.validationContextTypeCase_ == 3) {
            return (CertificateValidationContext) this.validationContextType_;
        }
        return CertificateValidationContext.getDefaultInstance();
    }

    @Deprecated
    public CertificateProvider getValidationContextCertificateProvider() {
        if (this.validationContextTypeCase_ == 10) {
            return (CertificateProvider) this.validationContextType_;
        }
        return CertificateProvider.getDefaultInstance();
    }

    @Deprecated
    public CertificateProviderInstance getValidationContextCertificateProviderInstance() {
        if (this.validationContextTypeCase_ == 12) {
            return (CertificateProviderInstance) this.validationContextType_;
        }
        return CertificateProviderInstance.getDefaultInstance();
    }

    @Deprecated
    public d getValidationContextCertificateProviderInstanceOrBuilder() {
        if (this.validationContextTypeCase_ == 12) {
            return (CertificateProviderInstance) this.validationContextType_;
        }
        return CertificateProviderInstance.getDefaultInstance();
    }

    @Deprecated
    public e getValidationContextCertificateProviderOrBuilder() {
        if (this.validationContextTypeCase_ == 10) {
            return (CertificateProvider) this.validationContextType_;
        }
        return CertificateProvider.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b getValidationContextOrBuilder() {
        if (this.validationContextTypeCase_ == 3) {
            return (CertificateValidationContext) this.validationContextType_;
        }
        return CertificateValidationContext.getDefaultInstance();
    }

    public SdsSecretConfig getValidationContextSdsSecretConfig() {
        if (this.validationContextTypeCase_ == 7) {
            return (SdsSecretConfig) this.validationContextType_;
        }
        return SdsSecretConfig.getDefaultInstance();
    }

    public g getValidationContextSdsSecretConfigOrBuilder() {
        if (this.validationContextTypeCase_ == 7) {
            return (SdsSecretConfig) this.validationContextType_;
        }
        return SdsSecretConfig.getDefaultInstance();
    }

    public ValidationContextTypeCase getValidationContextTypeCase() {
        return ValidationContextTypeCase.forNumber(this.validationContextTypeCase_);
    }

    public boolean hasCombinedValidationContext() {
        return this.validationContextTypeCase_ == 8;
    }

    public boolean hasCustomHandshaker() {
        return this.customHandshaker_ != null;
    }

    @Deprecated
    public boolean hasTlsCertificateCertificateProvider() {
        return this.tlsCertificateCertificateProvider_ != null;
    }

    @Deprecated
    public boolean hasTlsCertificateCertificateProviderInstance() {
        return this.tlsCertificateCertificateProviderInstance_ != null;
    }

    public boolean hasTlsCertificateProviderInstance() {
        return this.tlsCertificateProviderInstance_ != null;
    }

    public boolean hasTlsParams() {
        return this.tlsParams_ != null;
    }

    public boolean hasValidationContext() {
        return this.validationContextTypeCase_ == 3;
    }

    @Deprecated
    public boolean hasValidationContextCertificateProvider() {
        return this.validationContextTypeCase_ == 10;
    }

    @Deprecated
    public boolean hasValidationContextCertificateProviderInstance() {
        return this.validationContextTypeCase_ == 12;
    }

    public boolean hasValidationContextSdsSecretConfig() {
        return this.validationContextTypeCase_ == 7;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        if (hasTlsParams()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getTlsParams().hashCode();
        }
        if (getTlsCertificatesCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getTlsCertificatesList().hashCode();
        }
        if (getTlsCertificateSdsSecretConfigsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getTlsCertificateSdsSecretConfigsList().hashCode();
        }
        if (hasTlsCertificateProviderInstance()) {
            hashCode2 = (((hashCode2 * 37) + 14) * 53) + getTlsCertificateProviderInstance().hashCode();
        }
        if (hasTlsCertificateCertificateProvider()) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getTlsCertificateCertificateProvider().hashCode();
        }
        if (hasTlsCertificateCertificateProviderInstance()) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + getTlsCertificateCertificateProviderInstance().hashCode();
        }
        if (getAlpnProtocolsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + m1638getAlpnProtocolsList().hashCode();
        }
        if (hasCustomHandshaker()) {
            hashCode2 = (((hashCode2 * 37) + 13) * 53) + getCustomHandshaker().hashCode();
        }
        int i11 = this.validationContextTypeCase_;
        if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getValidationContext().hashCode();
        } else if (i11 == 10) {
            i9 = ((hashCode2 * 37) + 10) * 53;
            hashCode = getValidationContextCertificateProvider().hashCode();
        } else if (i11 == 12) {
            i9 = ((hashCode2 * 37) + 12) * 53;
            hashCode = getValidationContextCertificateProviderInstance().hashCode();
        } else if (i11 == 7) {
            i9 = ((hashCode2 * 37) + 7) * 53;
            hashCode = getValidationContextSdsSecretConfig().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getCombinedValidationContext().hashCode();
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
        return l.f50048f.d(CommonTlsContext.class, c.class);
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
        return new CommonTlsContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.tlsParams_ != null) {
            codedOutputStream.L0(1, getTlsParams());
        }
        for (int i9 = 0; i9 < this.tlsCertificates_.size(); i9++) {
            codedOutputStream.L0(2, this.tlsCertificates_.get(i9));
        }
        if (this.validationContextTypeCase_ == 3) {
            codedOutputStream.L0(3, (CertificateValidationContext) this.validationContextType_);
        }
        for (int i10 = 0; i10 < this.alpnProtocols_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.alpnProtocols_.c1(i10));
        }
        for (int i11 = 0; i11 < this.tlsCertificateSdsSecretConfigs_.size(); i11++) {
            codedOutputStream.L0(6, this.tlsCertificateSdsSecretConfigs_.get(i11));
        }
        if (this.validationContextTypeCase_ == 7) {
            codedOutputStream.L0(7, (SdsSecretConfig) this.validationContextType_);
        }
        if (this.validationContextTypeCase_ == 8) {
            codedOutputStream.L0(8, (CombinedCertificateValidationContext) this.validationContextType_);
        }
        if (this.tlsCertificateCertificateProvider_ != null) {
            codedOutputStream.L0(9, getTlsCertificateCertificateProvider());
        }
        if (this.validationContextTypeCase_ == 10) {
            codedOutputStream.L0(10, (CertificateProvider) this.validationContextType_);
        }
        if (this.tlsCertificateCertificateProviderInstance_ != null) {
            codedOutputStream.L0(11, getTlsCertificateCertificateProviderInstance());
        }
        if (this.validationContextTypeCase_ == 12) {
            codedOutputStream.L0(12, (CertificateProviderInstance) this.validationContextType_);
        }
        if (this.customHandshaker_ != null) {
            codedOutputStream.L0(13, getCustomHandshaker());
        }
        if (this.tlsCertificateProviderInstance_ != null) {
            codedOutputStream.L0(14, getTlsCertificateProviderInstance());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CommonTlsContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CommonTlsContext commonTlsContext) {
        return DEFAULT_INSTANCE.toBuilder().n0(commonTlsContext);
    }

    public static CommonTlsContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAlpnProtocolsList */
    public i2 m1638getAlpnProtocolsList() {
        return this.alpnProtocols_;
    }

    private CommonTlsContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.validationContextTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CommonTlsContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CommonTlsContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CommonTlsContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).n0(this);
    }

    public static CommonTlsContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static CommonTlsContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private CommonTlsContext() {
        this.validationContextTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.tlsCertificates_ = Collections.emptyList();
        this.tlsCertificateSdsSecretConfigs_ = Collections.emptyList();
        this.alpnProtocols_ = y0.f15344d;
    }

    public static CommonTlsContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CommonTlsContext parseFrom(InputStream inputStream) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CommonTlsContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CommonTlsContext parseFrom(p pVar) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private CommonTlsContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                TlsParameters tlsParameters = this.tlsParams_;
                                TlsParameters.b builder = tlsParameters != null ? tlsParameters.toBuilder() : null;
                                TlsParameters tlsParameters2 = (TlsParameters) pVar.B(TlsParameters.parser(), f0Var);
                                this.tlsParams_ = tlsParameters2;
                                if (builder != null) {
                                    builder.i0(tlsParameters2);
                                    this.tlsParams_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 18:
                                if (!(z11 & true)) {
                                    this.tlsCertificates_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.tlsCertificates_.add((TlsCertificate) pVar.B(TlsCertificate.parser(), f0Var));
                                continue;
                            case 26:
                                CertificateValidationContext.b builder2 = this.validationContextTypeCase_ == 3 ? ((CertificateValidationContext) this.validationContextType_).toBuilder() : null;
                                o1 B = pVar.B(CertificateValidationContext.parser(), f0Var);
                                this.validationContextType_ = B;
                                if (builder2 != null) {
                                    builder2.n0((CertificateValidationContext) B);
                                    this.validationContextType_ = builder2.I();
                                }
                                this.validationContextTypeCase_ = 3;
                                continue;
                            case 34:
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.alpnProtocols_ = new y0();
                                    z11 |= true;
                                }
                                this.alpnProtocols_.add(K);
                                continue;
                            case 50:
                                if (!(z11 & true)) {
                                    this.tlsCertificateSdsSecretConfigs_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.tlsCertificateSdsSecretConfigs_.add((SdsSecretConfig) pVar.B(SdsSecretConfig.parser(), f0Var));
                                continue;
                            case 58:
                                SdsSecretConfig.b builder3 = this.validationContextTypeCase_ == 7 ? ((SdsSecretConfig) this.validationContextType_).toBuilder() : null;
                                o1 B2 = pVar.B(SdsSecretConfig.parser(), f0Var);
                                this.validationContextType_ = B2;
                                if (builder3 != null) {
                                    builder3.g0((SdsSecretConfig) B2);
                                    this.validationContextType_ = builder3.I();
                                }
                                this.validationContextTypeCase_ = 7;
                                continue;
                            case 66:
                                CombinedCertificateValidationContext.b builder4 = this.validationContextTypeCase_ == 8 ? ((CombinedCertificateValidationContext) this.validationContextType_).toBuilder() : null;
                                o1 B3 = pVar.B(CombinedCertificateValidationContext.parser(), f0Var);
                                this.validationContextType_ = B3;
                                if (builder4 != null) {
                                    builder4.h0((CombinedCertificateValidationContext) B3);
                                    this.validationContextType_ = builder4.I();
                                }
                                this.validationContextTypeCase_ = 8;
                                continue;
                            case 74:
                                CertificateProvider certificateProvider = this.tlsCertificateCertificateProvider_;
                                CertificateProvider.b builder5 = certificateProvider != null ? certificateProvider.toBuilder() : null;
                                CertificateProvider certificateProvider2 = (CertificateProvider) pVar.B(CertificateProvider.parser(), f0Var);
                                this.tlsCertificateCertificateProvider_ = certificateProvider2;
                                if (builder5 != null) {
                                    builder5.g0(certificateProvider2);
                                    this.tlsCertificateCertificateProvider_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                CertificateProvider.b builder6 = this.validationContextTypeCase_ == 10 ? ((CertificateProvider) this.validationContextType_).toBuilder() : null;
                                o1 B4 = pVar.B(CertificateProvider.parser(), f0Var);
                                this.validationContextType_ = B4;
                                if (builder6 != null) {
                                    builder6.g0((CertificateProvider) B4);
                                    this.validationContextType_ = builder6.I();
                                }
                                this.validationContextTypeCase_ = 10;
                                continue;
                            case 90:
                                CertificateProviderInstance certificateProviderInstance = this.tlsCertificateCertificateProviderInstance_;
                                CertificateProviderInstance.b builder7 = certificateProviderInstance != null ? certificateProviderInstance.toBuilder() : null;
                                CertificateProviderInstance certificateProviderInstance2 = (CertificateProviderInstance) pVar.B(CertificateProviderInstance.parser(), f0Var);
                                this.tlsCertificateCertificateProviderInstance_ = certificateProviderInstance2;
                                if (builder7 != null) {
                                    builder7.g0(certificateProviderInstance2);
                                    this.tlsCertificateCertificateProviderInstance_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                CertificateProviderInstance.b builder8 = this.validationContextTypeCase_ == 12 ? ((CertificateProviderInstance) this.validationContextType_).toBuilder() : null;
                                o1 B5 = pVar.B(CertificateProviderInstance.parser(), f0Var);
                                this.validationContextType_ = B5;
                                if (builder8 != null) {
                                    builder8.g0((CertificateProviderInstance) B5);
                                    this.validationContextType_ = builder8.I();
                                }
                                this.validationContextTypeCase_ = 12;
                                continue;
                            case 106:
                                TypedExtensionConfig typedExtensionConfig = this.customHandshaker_;
                                TypedExtensionConfig.b builder9 = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.customHandshaker_ = typedExtensionConfig2;
                                if (builder9 != null) {
                                    builder9.g0(typedExtensionConfig2);
                                    this.customHandshaker_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case 114:
                                CertificateProviderPluginInstance certificateProviderPluginInstance = this.tlsCertificateProviderInstance_;
                                CertificateProviderPluginInstance.b builder10 = certificateProviderPluginInstance != null ? certificateProviderPluginInstance.toBuilder() : null;
                                CertificateProviderPluginInstance certificateProviderPluginInstance2 = (CertificateProviderPluginInstance) pVar.B(CertificateProviderPluginInstance.parser(), f0Var);
                                this.tlsCertificateProviderInstance_ = certificateProviderPluginInstance2;
                                if (builder10 != null) {
                                    builder10.g0(certificateProviderPluginInstance2);
                                    this.tlsCertificateProviderInstance_ = builder10.I();
                                } else {
                                    continue;
                                }
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
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.tlsCertificates_ = Collections.unmodifiableList(this.tlsCertificates_);
                }
                if (z11 & true) {
                    this.alpnProtocols_ = this.alpnProtocols_.V0();
                }
                if (z11 & true) {
                    this.tlsCertificateSdsSecretConfigs_ = Collections.unmodifiableList(this.tlsCertificateSdsSecretConfigs_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static CommonTlsContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CommonTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
