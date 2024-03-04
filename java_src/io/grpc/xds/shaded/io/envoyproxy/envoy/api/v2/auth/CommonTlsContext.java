package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CertificateValidationContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.SdsSecretConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsParameters;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class CommonTlsContext extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.c {
    public static final int ALPN_PROTOCOLS_FIELD_NUMBER = 4;
    public static final int COMBINED_VALIDATION_CONTEXT_FIELD_NUMBER = 8;
    private static final CommonTlsContext DEFAULT_INSTANCE = new CommonTlsContext();
    private static final e2<CommonTlsContext> PARSER = new a();
    public static final int TLS_CERTIFICATES_FIELD_NUMBER = 2;
    public static final int TLS_CERTIFICATE_SDS_SECRET_CONFIGS_FIELD_NUMBER = 6;
    public static final int TLS_PARAMS_FIELD_NUMBER = 1;
    public static final int VALIDATION_CONTEXT_FIELD_NUMBER = 3;
    public static final int VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private z0 alpnProtocols_;
    private byte memoizedIsInitialized;
    private List<SdsSecretConfig> tlsCertificateSdsSecretConfigs_;
    private List<TlsCertificate> tlsCertificates_;
    private TlsParameters tlsParams_;
    private int validationContextTypeCase_;
    private Object validationContextType_;

    /* loaded from: classes5.dex */
    public static final class CombinedCertificateValidationContext extends GeneratedMessageV3 implements d {
        public static final int DEFAULT_VALIDATION_CONTEXT_FIELD_NUMBER = 1;
        public static final int VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private CertificateValidationContext defaultValidationContext_;
        private byte memoizedIsInitialized;
        private SdsSecretConfig validationContextSdsSecretConfig_;
        private static final CombinedCertificateValidationContext DEFAULT_INSTANCE = new CombinedCertificateValidationContext();
        private static final e2<CombinedCertificateValidationContext> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<CombinedCertificateValidationContext> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CombinedCertificateValidationContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CombinedCertificateValidationContext(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private CertificateValidationContext f46161e;

            /* renamed from: f  reason: collision with root package name */
            private q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> f46162f;

            /* renamed from: g  reason: collision with root package name */
            private SdsSecretConfig f46163g;

            /* renamed from: h  reason: collision with root package name */
            private q2<SdsSecretConfig, SdsSecretConfig.b, g> f46164h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return k.f46263h.d(CombinedCertificateValidationContext.class, b.class);
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
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> q2Var = this.f46162f;
                if (q2Var == null) {
                    combinedCertificateValidationContext.defaultValidationContext_ = this.f46161e;
                } else {
                    combinedCertificateValidationContext.defaultValidationContext_ = q2Var.b();
                }
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var2 = this.f46164h;
                if (q2Var2 == null) {
                    combinedCertificateValidationContext.validationContextSdsSecretConfig_ = this.f46163g;
                } else {
                    combinedCertificateValidationContext.validationContextSdsSecretConfig_ = q2Var2.b();
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
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> q2Var = this.f46162f;
                if (q2Var == null) {
                    CertificateValidationContext certificateValidationContext2 = this.f46161e;
                    if (certificateValidationContext2 != null) {
                        this.f46161e = CertificateValidationContext.newBuilder(certificateValidationContext2).m0(certificateValidationContext).I();
                    } else {
                        this.f46161e = certificateValidationContext;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext$CombinedCertificateValidationContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext$CombinedCertificateValidationContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext$CombinedCertificateValidationContext$b");
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
                return k.f46262g;
            }

            public b h0(CombinedCertificateValidationContext combinedCertificateValidationContext) {
                if (combinedCertificateValidationContext == CombinedCertificateValidationContext.getDefaultInstance()) {
                    return this;
                }
                if (combinedCertificateValidationContext.hasDefaultValidationContext()) {
                    d0(combinedCertificateValidationContext.getDefaultValidationContext());
                }
                if (combinedCertificateValidationContext.hasValidationContextSdsSecretConfig()) {
                    j0(combinedCertificateValidationContext.getValidationContextSdsSecretConfig());
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

            public b j0(SdsSecretConfig sdsSecretConfig) {
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var = this.f46164h;
                if (q2Var == null) {
                    SdsSecretConfig sdsSecretConfig2 = this.f46163g;
                    if (sdsSecretConfig2 != null) {
                        this.f46163g = SdsSecretConfig.newBuilder(sdsSecretConfig2).g0(sdsSecretConfig).I();
                    } else {
                        this.f46163g = sdsSecretConfig;
                    }
                    R();
                } else {
                    q2Var.e(sdsSecretConfig);
                }
                return this;
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
            return k.f46262g;
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
                return (!hasValidationContextSdsSecretConfig() || getValidationContextSdsSecretConfig().equals(combinedCertificateValidationContext.getValidationContextSdsSecretConfig())) && this.unknownFields.equals(combinedCertificateValidationContext.unknownFields);
            }
            return false;
        }

        public CertificateValidationContext getDefaultValidationContext() {
            CertificateValidationContext certificateValidationContext = this.defaultValidationContext_;
            return certificateValidationContext == null ? CertificateValidationContext.getDefaultInstance() : certificateValidationContext;
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a getDefaultValidationContextOrBuilder() {
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
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
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
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return k.f46263h.d(CombinedCertificateValidationContext.class, b.class);
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
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                CertificateValidationContext certificateValidationContext = this.defaultValidationContext_;
                                CertificateValidationContext.b builder = certificateValidationContext != null ? certificateValidationContext.toBuilder() : null;
                                CertificateValidationContext certificateValidationContext2 = (CertificateValidationContext) pVar.B(CertificateValidationContext.parser(), f0Var);
                                this.defaultValidationContext_ = certificateValidationContext2;
                                if (builder != null) {
                                    builder.m0(certificateValidationContext2);
                                    this.defaultValidationContext_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                SdsSecretConfig sdsSecretConfig = this.validationContextSdsSecretConfig_;
                                SdsSecretConfig.b builder2 = sdsSecretConfig != null ? sdsSecretConfig.toBuilder() : null;
                                SdsSecretConfig sdsSecretConfig2 = (SdsSecretConfig) pVar.B(SdsSecretConfig.parser(), f0Var);
                                this.validationContextSdsSecretConfig_ = sdsSecretConfig2;
                                if (builder2 != null) {
                                    builder2.g0(sdsSecretConfig2);
                                    this.validationContextSdsSecretConfig_ = builder2.I();
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

    /* loaded from: classes5.dex */
    public enum ValidationContextTypeCase implements u0.c {
        VALIDATION_CONTEXT(3),
        VALIDATION_CONTEXT_SDS_SECRET_CONFIG(7),
        COMBINED_VALIDATION_CONTEXT(8),
        VALIDATIONCONTEXTTYPE_NOT_SET(0);
        
        private final int value;

        ValidationContextTypeCase(int i9) {
            this.value = i9;
        }

        public static ValidationContextTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 7) {
                        if (i9 != 8) {
                            return null;
                        }
                        return COMBINED_VALIDATION_CONTEXT;
                    }
                    return VALIDATION_CONTEXT_SDS_SECRET_CONFIG;
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
    /* loaded from: classes5.dex */
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
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46165a;

        static {
            int[] iArr = new int[ValidationContextTypeCase.values().length];
            f46165a = iArr;
            try {
                iArr[ValidationContextTypeCase.VALIDATION_CONTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46165a[ValidationContextTypeCase.VALIDATION_CONTEXT_SDS_SECRET_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46165a[ValidationContextTypeCase.COMBINED_VALIDATION_CONTEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f46165a[ValidationContextTypeCase.VALIDATIONCONTEXTTYPE_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.c {

        /* renamed from: e  reason: collision with root package name */
        private int f46166e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46167f;

        /* renamed from: g  reason: collision with root package name */
        private int f46168g;

        /* renamed from: h  reason: collision with root package name */
        private TlsParameters f46169h;

        /* renamed from: i  reason: collision with root package name */
        private q2<TlsParameters, TlsParameters.b, j> f46170i;

        /* renamed from: j  reason: collision with root package name */
        private List<TlsCertificate> f46171j;

        /* renamed from: k  reason: collision with root package name */
        private l2<TlsCertificate, TlsCertificate.b, i> f46172k;

        /* renamed from: l  reason: collision with root package name */
        private List<SdsSecretConfig> f46173l;

        /* renamed from: m  reason: collision with root package name */
        private l2<SdsSecretConfig, SdsSecretConfig.b, g> f46174m;

        /* renamed from: n  reason: collision with root package name */
        private q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> f46175n;

        /* renamed from: o  reason: collision with root package name */
        private q2<SdsSecretConfig, SdsSecretConfig.b, g> f46176o;

        /* renamed from: p  reason: collision with root package name */
        private q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, d> f46177p;

        /* renamed from: q  reason: collision with root package name */
        private z0 f46178q;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46168g & 4) == 0) {
                this.f46178q = new y0(this.f46178q);
                this.f46168g |= 4;
            }
        }

        private void b0() {
            if ((this.f46168g & 2) == 0) {
                this.f46173l = new ArrayList(this.f46173l);
                this.f46168g |= 2;
            }
        }

        private void d0() {
            if ((this.f46168g & 1) == 0) {
                this.f46171j = new ArrayList(this.f46171j);
                this.f46168g |= 1;
            }
        }

        private l2<SdsSecretConfig, SdsSecretConfig.b, g> g0() {
            if (this.f46174m == null) {
                this.f46174m = new l2<>(this.f46173l, (this.f46168g & 2) != 0, H(), O());
                this.f46173l = null;
            }
            return this.f46174m;
        }

        private l2<TlsCertificate, TlsCertificate.b, i> h0() {
            if (this.f46172k == null) {
                this.f46172k = new l2<>(this.f46171j, (this.f46168g & 1) != 0, H(), O());
                this.f46171j = null;
            }
            return this.f46172k;
        }

        private void i0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return k.f46261f.d(CommonTlsContext.class, c.class);
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
            q2<TlsParameters, TlsParameters.b, j> q2Var = this.f46170i;
            if (q2Var == null) {
                commonTlsContext.tlsParams_ = this.f46169h;
            } else {
                commonTlsContext.tlsParams_ = q2Var.b();
            }
            l2<TlsCertificate, TlsCertificate.b, i> l2Var = this.f46172k;
            if (l2Var == null) {
                if ((this.f46168g & 1) != 0) {
                    this.f46171j = Collections.unmodifiableList(this.f46171j);
                    this.f46168g &= -2;
                }
                commonTlsContext.tlsCertificates_ = this.f46171j;
            } else {
                commonTlsContext.tlsCertificates_ = l2Var.e();
            }
            l2<SdsSecretConfig, SdsSecretConfig.b, g> l2Var2 = this.f46174m;
            if (l2Var2 == null) {
                if ((this.f46168g & 2) != 0) {
                    this.f46173l = Collections.unmodifiableList(this.f46173l);
                    this.f46168g &= -3;
                }
                commonTlsContext.tlsCertificateSdsSecretConfigs_ = this.f46173l;
            } else {
                commonTlsContext.tlsCertificateSdsSecretConfigs_ = l2Var2.e();
            }
            if (this.f46166e == 3) {
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> q2Var2 = this.f46175n;
                if (q2Var2 == null) {
                    commonTlsContext.validationContextType_ = this.f46167f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var2.b();
                }
            }
            if (this.f46166e == 7) {
                q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var3 = this.f46176o;
                if (q2Var3 == null) {
                    commonTlsContext.validationContextType_ = this.f46167f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var3.b();
                }
            }
            if (this.f46166e == 8) {
                q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, d> q2Var4 = this.f46177p;
                if (q2Var4 == null) {
                    commonTlsContext.validationContextType_ = this.f46167f;
                } else {
                    commonTlsContext.validationContextType_ = q2Var4.b();
                }
            }
            if ((this.f46168g & 4) != 0) {
                this.f46178q = this.f46178q.V0();
                this.f46168g &= -5;
            }
            commonTlsContext.alpnProtocols_ = this.f46178q;
            commonTlsContext.validationContextTypeCase_ = this.f46166e;
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
            return k.f46260e;
        }

        public c j0(CombinedCertificateValidationContext combinedCertificateValidationContext) {
            q2<CombinedCertificateValidationContext, CombinedCertificateValidationContext.b, d> q2Var = this.f46177p;
            if (q2Var == null) {
                if (this.f46166e == 8 && this.f46167f != CombinedCertificateValidationContext.getDefaultInstance()) {
                    this.f46167f = CombinedCertificateValidationContext.newBuilder((CombinedCertificateValidationContext) this.f46167f).h0(combinedCertificateValidationContext).I();
                } else {
                    this.f46167f = combinedCertificateValidationContext;
                }
                R();
            } else {
                if (this.f46166e == 8) {
                    q2Var.e(combinedCertificateValidationContext);
                }
                this.f46177p.g(combinedCertificateValidationContext);
            }
            this.f46166e = 8;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CommonTlsContext) {
                return m0((CommonTlsContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c m0(CommonTlsContext commonTlsContext) {
            if (commonTlsContext == CommonTlsContext.getDefaultInstance()) {
                return this;
            }
            if (commonTlsContext.hasTlsParams()) {
                n0(commonTlsContext.getTlsParams());
            }
            if (this.f46172k == null) {
                if (!commonTlsContext.tlsCertificates_.isEmpty()) {
                    if (this.f46171j.isEmpty()) {
                        this.f46171j = commonTlsContext.tlsCertificates_;
                        this.f46168g &= -2;
                    } else {
                        d0();
                        this.f46171j.addAll(commonTlsContext.tlsCertificates_);
                    }
                    R();
                }
            } else if (!commonTlsContext.tlsCertificates_.isEmpty()) {
                if (this.f46172k.k()) {
                    this.f46172k.f();
                    this.f46172k = null;
                    this.f46171j = commonTlsContext.tlsCertificates_;
                    this.f46168g &= -2;
                    this.f46172k = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f46172k.b(commonTlsContext.tlsCertificates_);
                }
            }
            if (this.f46174m == null) {
                if (!commonTlsContext.tlsCertificateSdsSecretConfigs_.isEmpty()) {
                    if (this.f46173l.isEmpty()) {
                        this.f46173l = commonTlsContext.tlsCertificateSdsSecretConfigs_;
                        this.f46168g &= -3;
                    } else {
                        b0();
                        this.f46173l.addAll(commonTlsContext.tlsCertificateSdsSecretConfigs_);
                    }
                    R();
                }
            } else if (!commonTlsContext.tlsCertificateSdsSecretConfigs_.isEmpty()) {
                if (this.f46174m.k()) {
                    this.f46174m.f();
                    this.f46174m = null;
                    this.f46173l = commonTlsContext.tlsCertificateSdsSecretConfigs_;
                    this.f46168g &= -3;
                    this.f46174m = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f46174m.b(commonTlsContext.tlsCertificateSdsSecretConfigs_);
                }
            }
            if (!commonTlsContext.alpnProtocols_.isEmpty()) {
                if (this.f46178q.isEmpty()) {
                    this.f46178q = commonTlsContext.alpnProtocols_;
                    this.f46168g &= -5;
                } else {
                    a0();
                    this.f46178q.addAll(commonTlsContext.alpnProtocols_);
                }
                R();
            }
            int i9 = b.f46165a[commonTlsContext.getValidationContextTypeCase().ordinal()];
            if (i9 == 1) {
                q0(commonTlsContext.getValidationContext());
            } else if (i9 == 2) {
                r0(commonTlsContext.getValidationContextSdsSecretConfig());
            } else if (i9 == 3) {
                j0(commonTlsContext.getCombinedValidationContext());
            }
            z(((GeneratedMessageV3) commonTlsContext).unknownFields);
            R();
            return this;
        }

        public c n0(TlsParameters tlsParameters) {
            q2<TlsParameters, TlsParameters.b, j> q2Var = this.f46170i;
            if (q2Var == null) {
                TlsParameters tlsParameters2 = this.f46169h;
                if (tlsParameters2 != null) {
                    this.f46169h = TlsParameters.newBuilder(tlsParameters2).i0(tlsParameters).I();
                } else {
                    this.f46169h = tlsParameters;
                }
                R();
            } else {
                q2Var.e(tlsParameters);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c q0(CertificateValidationContext certificateValidationContext) {
            q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a> q2Var = this.f46175n;
            if (q2Var == null) {
                if (this.f46166e == 3 && this.f46167f != CertificateValidationContext.getDefaultInstance()) {
                    this.f46167f = CertificateValidationContext.newBuilder((CertificateValidationContext) this.f46167f).m0(certificateValidationContext).I();
                } else {
                    this.f46167f = certificateValidationContext;
                }
                R();
            } else {
                if (this.f46166e == 3) {
                    q2Var.e(certificateValidationContext);
                }
                this.f46175n.g(certificateValidationContext);
            }
            this.f46166e = 3;
            return this;
        }

        public c r0(SdsSecretConfig sdsSecretConfig) {
            q2<SdsSecretConfig, SdsSecretConfig.b, g> q2Var = this.f46176o;
            if (q2Var == null) {
                if (this.f46166e == 7 && this.f46167f != SdsSecretConfig.getDefaultInstance()) {
                    this.f46167f = SdsSecretConfig.newBuilder((SdsSecretConfig) this.f46167f).g0(sdsSecretConfig).I();
                } else {
                    this.f46167f = sdsSecretConfig;
                }
                R();
            } else {
                if (this.f46166e == 7) {
                    q2Var.e(sdsSecretConfig);
                }
                this.f46176o.g(sdsSecretConfig);
            }
            this.f46166e = 7;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46166e = 0;
            this.f46171j = Collections.emptyList();
            this.f46173l = Collections.emptyList();
            this.f46178q = y0.f15344d;
            i0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46166e = 0;
            this.f46171j = Collections.emptyList();
            this.f46173l = Collections.emptyList();
            this.f46178q = y0.f15344d;
            i0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ CommonTlsContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CommonTlsContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return k.f46260e;
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
        if ((!hasTlsParams() || getTlsParams().equals(commonTlsContext.getTlsParams())) && getTlsCertificatesList().equals(commonTlsContext.getTlsCertificatesList()) && getTlsCertificateSdsSecretConfigsList().equals(commonTlsContext.getTlsCertificateSdsSecretConfigsList()) && m1589getAlpnProtocolsList().equals(commonTlsContext.m1589getAlpnProtocolsList()) && getValidationContextTypeCase().equals(commonTlsContext.getValidationContextTypeCase())) {
            int i9 = this.validationContextTypeCase_;
            if (i9 != 3) {
                if (i9 != 7) {
                    if (i9 == 8 && !getCombinedValidationContext().equals(commonTlsContext.getCombinedValidationContext())) {
                        return false;
                    }
                } else if (!getValidationContextSdsSecretConfig().equals(commonTlsContext.getValidationContextSdsSecretConfig())) {
                    return false;
                }
            } else if (!getValidationContext().equals(commonTlsContext.getValidationContext())) {
                return false;
            }
            return this.unknownFields.equals(commonTlsContext.unknownFields);
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

    public d getCombinedValidationContextOrBuilder() {
        if (this.validationContextTypeCase_ == 8) {
            return (CombinedCertificateValidationContext) this.validationContextType_;
        }
        return CombinedCertificateValidationContext.getDefaultInstance();
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
        int size = G + i11 + (m1589getAlpnProtocolsList().size() * 1);
        for (int i13 = 0; i13 < this.tlsCertificateSdsSecretConfigs_.size(); i13++) {
            size += CodedOutputStream.G(6, this.tlsCertificateSdsSecretConfigs_.get(i13));
        }
        if (this.validationContextTypeCase_ == 7) {
            size += CodedOutputStream.G(7, (SdsSecretConfig) this.validationContextType_);
        }
        if (this.validationContextTypeCase_ == 8) {
            size += CodedOutputStream.G(8, (CombinedCertificateValidationContext) this.validationContextType_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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

    public i getTlsCertificatesOrBuilder(int i9) {
        return this.tlsCertificates_.get(i9);
    }

    public List<? extends i> getTlsCertificatesOrBuilderList() {
        return this.tlsCertificates_;
    }

    public TlsParameters getTlsParams() {
        TlsParameters tlsParameters = this.tlsParams_;
        return tlsParameters == null ? TlsParameters.getDefaultInstance() : tlsParameters;
    }

    public j getTlsParamsOrBuilder() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.a getValidationContextOrBuilder() {
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

    public boolean hasTlsParams() {
        return this.tlsParams_ != null;
    }

    public boolean hasValidationContext() {
        return this.validationContextTypeCase_ == 3;
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
        if (getAlpnProtocolsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + m1589getAlpnProtocolsList().hashCode();
        }
        int i11 = this.validationContextTypeCase_;
        if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getValidationContext().hashCode();
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
        return k.f46261f.d(CommonTlsContext.class, c.class);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CommonTlsContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CommonTlsContext commonTlsContext) {
        return DEFAULT_INSTANCE.toBuilder().m0(commonTlsContext);
    }

    public static CommonTlsContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAlpnProtocolsList */
    public i2 m1589getAlpnProtocolsList() {
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).m0(this);
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
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            TlsParameters tlsParameters = this.tlsParams_;
                            TlsParameters.b builder = tlsParameters != null ? tlsParameters.toBuilder() : null;
                            TlsParameters tlsParameters2 = (TlsParameters) pVar.B(TlsParameters.parser(), f0Var);
                            this.tlsParams_ = tlsParameters2;
                            if (builder != null) {
                                builder.i0(tlsParameters2);
                                this.tlsParams_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.tlsCertificates_ = new ArrayList();
                                z11 |= true;
                            }
                            this.tlsCertificates_.add((TlsCertificate) pVar.B(TlsCertificate.parser(), f0Var));
                        } else if (L == 26) {
                            CertificateValidationContext.b builder2 = this.validationContextTypeCase_ == 3 ? ((CertificateValidationContext) this.validationContextType_).toBuilder() : null;
                            o1 B = pVar.B(CertificateValidationContext.parser(), f0Var);
                            this.validationContextType_ = B;
                            if (builder2 != null) {
                                builder2.m0((CertificateValidationContext) B);
                                this.validationContextType_ = builder2.I();
                            }
                            this.validationContextTypeCase_ = 3;
                        } else if (L == 34) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.alpnProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.alpnProtocols_.add(K);
                        } else if (L == 50) {
                            if (!(z11 & true)) {
                                this.tlsCertificateSdsSecretConfigs_ = new ArrayList();
                                z11 |= true;
                            }
                            this.tlsCertificateSdsSecretConfigs_.add((SdsSecretConfig) pVar.B(SdsSecretConfig.parser(), f0Var));
                        } else if (L == 58) {
                            SdsSecretConfig.b builder3 = this.validationContextTypeCase_ == 7 ? ((SdsSecretConfig) this.validationContextType_).toBuilder() : null;
                            o1 B2 = pVar.B(SdsSecretConfig.parser(), f0Var);
                            this.validationContextType_ = B2;
                            if (builder3 != null) {
                                builder3.g0((SdsSecretConfig) B2);
                                this.validationContextType_ = builder3.I();
                            }
                            this.validationContextTypeCase_ = 7;
                        } else if (L != 66) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            CombinedCertificateValidationContext.b builder4 = this.validationContextTypeCase_ == 8 ? ((CombinedCertificateValidationContext) this.validationContextType_).toBuilder() : null;
                            o1 B3 = pVar.B(CombinedCertificateValidationContext.parser(), f0Var);
                            this.validationContextType_ = B3;
                            if (builder4 != null) {
                                builder4.h0((CombinedCertificateValidationContext) B3);
                                this.validationContextType_ = builder4.I();
                            }
                            this.validationContextTypeCase_ = 8;
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
