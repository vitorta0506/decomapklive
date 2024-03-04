package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.Empty;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValue;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class GrpcService extends GeneratedMessageV3 implements w {
    public static final int ENVOY_GRPC_FIELD_NUMBER = 1;
    public static final int GOOGLE_GRPC_FIELD_NUMBER = 2;
    public static final int INITIAL_METADATA_FIELD_NUMBER = 5;
    public static final int TIMEOUT_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private List<HeaderValue> initialMetadata_;
    private byte memoizedIsInitialized;
    private int targetSpecifierCase_;
    private Object targetSpecifier_;
    private Duration timeout_;
    private static final GrpcService DEFAULT_INSTANCE = new GrpcService();
    private static final e2<GrpcService> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class EnvoyGrpc extends GeneratedMessageV3 implements d {
        public static final int AUTHORITY_FIELD_NUMBER = 2;
        public static final int CLUSTER_NAME_FIELD_NUMBER = 1;
        private static final EnvoyGrpc DEFAULT_INSTANCE = new EnvoyGrpc();
        private static final e2<EnvoyGrpc> PARSER = new a();
        private static final long serialVersionUID = 0;
        private volatile Object authority_;
        private volatile Object clusterName_;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<EnvoyGrpc> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public EnvoyGrpc m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new EnvoyGrpc(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f47854e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47855f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return x.f48298d.d(EnvoyGrpc.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public EnvoyGrpc build() {
                EnvoyGrpc I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public EnvoyGrpc I() {
                EnvoyGrpc envoyGrpc = new EnvoyGrpc(this, (a) null);
                envoyGrpc.clusterName_ = this.f47854e;
                envoyGrpc.authority_ = this.f47855f;
                Q();
                return envoyGrpc;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public EnvoyGrpc getDefaultInstanceForType() {
                return EnvoyGrpc.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.EnvoyGrpc.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.EnvoyGrpc.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$EnvoyGrpc r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.EnvoyGrpc) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$EnvoyGrpc r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.EnvoyGrpc) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.EnvoyGrpc.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$EnvoyGrpc$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof EnvoyGrpc) {
                    return g0((EnvoyGrpc) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(EnvoyGrpc envoyGrpc) {
                if (envoyGrpc == EnvoyGrpc.getDefaultInstance()) {
                    return this;
                }
                if (!envoyGrpc.getClusterName().isEmpty()) {
                    this.f47854e = envoyGrpc.clusterName_;
                    R();
                }
                if (!envoyGrpc.getAuthority().isEmpty()) {
                    this.f47855f = envoyGrpc.authority_;
                    R();
                }
                z(((GeneratedMessageV3) envoyGrpc).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return x.f48297c;
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
                this.f47854e = "";
                this.f47855f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47854e = "";
                this.f47855f = "";
                b0();
            }
        }

        /* synthetic */ EnvoyGrpc(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static EnvoyGrpc getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return x.f48297c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static EnvoyGrpc parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static EnvoyGrpc parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<EnvoyGrpc> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnvoyGrpc)) {
                return super.equals(obj);
            }
            EnvoyGrpc envoyGrpc = (EnvoyGrpc) obj;
            return getClusterName().equals(envoyGrpc.getClusterName()) && getAuthority().equals(envoyGrpc.getAuthority()) && this.unknownFields.equals(envoyGrpc.unknownFields);
        }

        public String getAuthority() {
            Object obj = this.authority_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.authority_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getAuthorityBytes() {
            Object obj = this.authority_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.authority_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getClusterName() {
            Object obj = this.clusterName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.clusterName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getClusterNameBytes() {
            Object obj = this.clusterName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.clusterName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<EnvoyGrpc> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.clusterName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.clusterName_);
            if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.authority_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getClusterName().hashCode()) * 37) + 2) * 53) + getAuthority().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return x.f48298d.d(EnvoyGrpc.class, b.class);
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
            return new EnvoyGrpc();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.clusterName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.clusterName_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.authority_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ EnvoyGrpc(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(EnvoyGrpc envoyGrpc) {
            return DEFAULT_INSTANCE.toBuilder().g0(envoyGrpc);
        }

        public static EnvoyGrpc parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private EnvoyGrpc(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static EnvoyGrpc parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static EnvoyGrpc parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public EnvoyGrpc getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static EnvoyGrpc parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private EnvoyGrpc() {
            this.memoizedIsInitialized = (byte) -1;
            this.clusterName_ = "";
            this.authority_ = "";
        }

        public static EnvoyGrpc parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static EnvoyGrpc parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static EnvoyGrpc parseFrom(InputStream inputStream) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private EnvoyGrpc(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.clusterName_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.authority_ = pVar.K();
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

        public static EnvoyGrpc parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static EnvoyGrpc parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static EnvoyGrpc parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (EnvoyGrpc) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class GoogleGrpc extends GeneratedMessageV3 implements e {
        public static final int CALL_CREDENTIALS_FIELD_NUMBER = 3;
        public static final int CHANNEL_ARGS_FIELD_NUMBER = 8;
        public static final int CHANNEL_CREDENTIALS_FIELD_NUMBER = 2;
        public static final int CONFIG_FIELD_NUMBER = 6;
        public static final int CREDENTIALS_FACTORY_NAME_FIELD_NUMBER = 5;
        private static final GoogleGrpc DEFAULT_INSTANCE = new GoogleGrpc();
        private static final e2<GoogleGrpc> PARSER = new a();
        public static final int PER_STREAM_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 7;
        public static final int STAT_PREFIX_FIELD_NUMBER = 4;
        public static final int TARGET_URI_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<CallCredentials> callCredentials_;
        private ChannelArgs channelArgs_;
        private ChannelCredentials channelCredentials_;
        private Struct config_;
        private volatile Object credentialsFactoryName_;
        private byte memoizedIsInitialized;
        private UInt32Value perStreamBufferLimitBytes_;
        private volatile Object statPrefix_;
        private volatile Object targetUri_;

        /* loaded from: classes6.dex */
        public static final class CallCredentials extends GeneratedMessageV3 implements c {
            public static final int ACCESS_TOKEN_FIELD_NUMBER = 1;
            public static final int FROM_PLUGIN_FIELD_NUMBER = 6;
            public static final int GOOGLE_COMPUTE_ENGINE_FIELD_NUMBER = 2;
            public static final int GOOGLE_IAM_FIELD_NUMBER = 5;
            public static final int GOOGLE_REFRESH_TOKEN_FIELD_NUMBER = 3;
            public static final int SERVICE_ACCOUNT_JWT_ACCESS_FIELD_NUMBER = 4;
            public static final int STS_SERVICE_FIELD_NUMBER = 7;
            private static final long serialVersionUID = 0;
            private int credentialSpecifierCase_;
            private Object credentialSpecifier_;
            private byte memoizedIsInitialized;
            private static final CallCredentials DEFAULT_INSTANCE = new CallCredentials();
            private static final e2<CallCredentials> PARSER = new a();

            /* loaded from: classes6.dex */
            public enum CredentialSpecifierCase implements u0.c {
                ACCESS_TOKEN(1),
                GOOGLE_COMPUTE_ENGINE(2),
                GOOGLE_REFRESH_TOKEN(3),
                SERVICE_ACCOUNT_JWT_ACCESS(4),
                GOOGLE_IAM(5),
                FROM_PLUGIN(6),
                STS_SERVICE(7),
                CREDENTIALSPECIFIER_NOT_SET(0);
                
                private final int value;

                CredentialSpecifierCase(int i9) {
                    this.value = i9;
                }

                public static CredentialSpecifierCase forNumber(int i9) {
                    switch (i9) {
                        case 0:
                            return CREDENTIALSPECIFIER_NOT_SET;
                        case 1:
                            return ACCESS_TOKEN;
                        case 2:
                            return GOOGLE_COMPUTE_ENGINE;
                        case 3:
                            return GOOGLE_REFRESH_TOKEN;
                        case 4:
                            return SERVICE_ACCOUNT_JWT_ACCESS;
                        case 5:
                            return GOOGLE_IAM;
                        case 6:
                            return FROM_PLUGIN;
                        case 7:
                            return STS_SERVICE;
                        default:
                            return null;
                    }
                }

                @Override // com.google.protobuf.u0.c
                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static CredentialSpecifierCase valueOf(int i9) {
                    return forNumber(i9);
                }
            }

            /* loaded from: classes6.dex */
            public static final class GoogleIAMCredentials extends GeneratedMessageV3 implements c {
                public static final int AUTHORITY_SELECTOR_FIELD_NUMBER = 2;
                public static final int AUTHORIZATION_TOKEN_FIELD_NUMBER = 1;
                private static final GoogleIAMCredentials DEFAULT_INSTANCE = new GoogleIAMCredentials();
                private static final e2<GoogleIAMCredentials> PARSER = new a();
                private static final long serialVersionUID = 0;
                private volatile Object authoritySelector_;
                private volatile Object authorizationToken_;
                private byte memoizedIsInitialized;

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<GoogleIAMCredentials> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public GoogleIAMCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                        return new GoogleIAMCredentials(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements c {

                    /* renamed from: e  reason: collision with root package name */
                    private Object f47856e;

                    /* renamed from: f  reason: collision with root package name */
                    private Object f47857f;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return x.f48312r.d(GoogleIAMCredentials.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public GoogleIAMCredentials build() {
                        GoogleIAMCredentials I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public GoogleIAMCredentials I() {
                        GoogleIAMCredentials googleIAMCredentials = new GoogleIAMCredentials(this, (a) null);
                        googleIAMCredentials.authorizationToken_ = this.f47856e;
                        googleIAMCredentials.authoritySelector_ = this.f47857f;
                        Q();
                        return googleIAMCredentials;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public GoogleIAMCredentials getDefaultInstanceForType() {
                        return GoogleIAMCredentials.getDefaultInstance();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: d0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials.access$5400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$GoogleIAMCredentials$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    public b v(com.google.protobuf.l1 l1Var) {
                        if (l1Var instanceof GoogleIAMCredentials) {
                            return g0((GoogleIAMCredentials) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    public b g0(GoogleIAMCredentials googleIAMCredentials) {
                        if (googleIAMCredentials == GoogleIAMCredentials.getDefaultInstance()) {
                            return this;
                        }
                        if (!googleIAMCredentials.getAuthorizationToken().isEmpty()) {
                            this.f47856e = googleIAMCredentials.authorizationToken_;
                            R();
                        }
                        if (!googleIAMCredentials.getAuthoritySelector().isEmpty()) {
                            this.f47857f = googleIAMCredentials.authoritySelector_;
                            R();
                        }
                        z(((GeneratedMessageV3) googleIAMCredentials).unknownFields);
                        R();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return x.f48311q;
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
                        this.f47856e = "";
                        this.f47857f = "";
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f47856e = "";
                        this.f47857f = "";
                        b0();
                    }
                }

                /* synthetic */ GoogleIAMCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static GoogleIAMCredentials getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return x.f48311q;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static GoogleIAMCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static GoogleIAMCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<GoogleIAMCredentials> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof GoogleIAMCredentials)) {
                        return super.equals(obj);
                    }
                    GoogleIAMCredentials googleIAMCredentials = (GoogleIAMCredentials) obj;
                    return getAuthorizationToken().equals(googleIAMCredentials.getAuthorizationToken()) && getAuthoritySelector().equals(googleIAMCredentials.getAuthoritySelector()) && this.unknownFields.equals(googleIAMCredentials.unknownFields);
                }

                public String getAuthoritySelector() {
                    Object obj = this.authoritySelector_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.authoritySelector_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getAuthoritySelectorBytes() {
                    Object obj = this.authoritySelector_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.authoritySelector_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getAuthorizationToken() {
                    Object obj = this.authorizationToken_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.authorizationToken_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getAuthorizationTokenBytes() {
                    Object obj = this.authorizationToken_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.authorizationToken_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public e2<GoogleIAMCredentials> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public int getSerializedSize() {
                    int i9 = this.memoizedSize;
                    if (i9 != -1) {
                        return i9;
                    }
                    int computeStringSize = GeneratedMessageV3.isStringEmpty(this.authorizationToken_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.authorizationToken_);
                    if (!GeneratedMessageV3.isStringEmpty(this.authoritySelector_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(2, this.authoritySelector_);
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
                    int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAuthorizationToken().hashCode()) * 37) + 2) * 53) + getAuthoritySelector().hashCode()) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return x.f48312r.d(GoogleIAMCredentials.class, b.class);
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
                    return new GoogleIAMCredentials();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!GeneratedMessageV3.isStringEmpty(this.authorizationToken_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.authorizationToken_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.authoritySelector_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.authoritySelector_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ GoogleIAMCredentials(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(GoogleIAMCredentials googleIAMCredentials) {
                    return DEFAULT_INSTANCE.toBuilder().g0(googleIAMCredentials);
                }

                public static GoogleIAMCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private GoogleIAMCredentials(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static GoogleIAMCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static GoogleIAMCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public GoogleIAMCredentials getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                }

                public static GoogleIAMCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                private GoogleIAMCredentials() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.authorizationToken_ = "";
                    this.authoritySelector_ = "";
                }

                public static GoogleIAMCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                public static GoogleIAMCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static GoogleIAMCredentials parseFrom(InputStream inputStream) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                private GoogleIAMCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                            this.authorizationToken_ = pVar.K();
                                        } else if (L != 18) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            this.authoritySelector_ = pVar.K();
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

                public static GoogleIAMCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                public static GoogleIAMCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static GoogleIAMCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                    return (GoogleIAMCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }
            }

            /* loaded from: classes6.dex */
            public static final class MetadataCredentialsFromPlugin extends GeneratedMessageV3 implements d {
                public static final int NAME_FIELD_NUMBER = 1;
                public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
                private static final long serialVersionUID = 0;
                private int configTypeCase_;
                private Object configType_;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private static final MetadataCredentialsFromPlugin DEFAULT_INSTANCE = new MetadataCredentialsFromPlugin();
                private static final e2<MetadataCredentialsFromPlugin> PARSER = new a();

                /* loaded from: classes6.dex */
                public enum ConfigTypeCase implements u0.c {
                    TYPED_CONFIG(3),
                    CONFIGTYPE_NOT_SET(0);
                    
                    private final int value;

                    ConfigTypeCase(int i9) {
                        this.value = i9;
                    }

                    public static ConfigTypeCase forNumber(int i9) {
                        if (i9 != 0) {
                            if (i9 != 3) {
                                return null;
                            }
                            return TYPED_CONFIG;
                        }
                        return CONFIGTYPE_NOT_SET;
                    }

                    @Override // com.google.protobuf.u0.c
                    public int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static ConfigTypeCase valueOf(int i9) {
                        return forNumber(i9);
                    }
                }

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<MetadataCredentialsFromPlugin> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public MetadataCredentialsFromPlugin m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                        return new MetadataCredentialsFromPlugin(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements d {

                    /* renamed from: e  reason: collision with root package name */
                    private int f47858e;

                    /* renamed from: f  reason: collision with root package name */
                    private Object f47859f;

                    /* renamed from: g  reason: collision with root package name */
                    private Object f47860g;

                    /* renamed from: h  reason: collision with root package name */
                    private q2<Any, Any.b, com.google.protobuf.f> f47861h;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return x.f48314t.d(MetadataCredentialsFromPlugin.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public MetadataCredentialsFromPlugin build() {
                        MetadataCredentialsFromPlugin I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public MetadataCredentialsFromPlugin I() {
                        MetadataCredentialsFromPlugin metadataCredentialsFromPlugin = new MetadataCredentialsFromPlugin(this, (a) null);
                        metadataCredentialsFromPlugin.name_ = this.f47860g;
                        if (this.f47858e == 3) {
                            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47861h;
                            if (q2Var == null) {
                                metadataCredentialsFromPlugin.configType_ = this.f47859f;
                            } else {
                                metadataCredentialsFromPlugin.configType_ = q2Var.b();
                            }
                        }
                        metadataCredentialsFromPlugin.configTypeCase_ = this.f47858e;
                        Q();
                        return metadataCredentialsFromPlugin;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public MetadataCredentialsFromPlugin getDefaultInstanceForType() {
                        return MetadataCredentialsFromPlugin.getDefaultInstance();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: d0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.access$6600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    public b v(com.google.protobuf.l1 l1Var) {
                        if (l1Var instanceof MetadataCredentialsFromPlugin) {
                            return g0((MetadataCredentialsFromPlugin) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    public b g0(MetadataCredentialsFromPlugin metadataCredentialsFromPlugin) {
                        if (metadataCredentialsFromPlugin == MetadataCredentialsFromPlugin.getDefaultInstance()) {
                            return this;
                        }
                        if (!metadataCredentialsFromPlugin.getName().isEmpty()) {
                            this.f47860g = metadataCredentialsFromPlugin.name_;
                            R();
                        }
                        if (b.f47910b[metadataCredentialsFromPlugin.getConfigTypeCase().ordinal()] == 1) {
                            h0(metadataCredentialsFromPlugin.getTypedConfig());
                        }
                        z(((GeneratedMessageV3) metadataCredentialsFromPlugin).unknownFields);
                        R();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return x.f48313s;
                    }

                    public b h0(Any any) {
                        q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47861h;
                        if (q2Var == null) {
                            if (this.f47858e == 3 && this.f47859f != Any.getDefaultInstance()) {
                                this.f47859f = Any.newBuilder((Any) this.f47859f).d0(any).I();
                            } else {
                                this.f47859f = any;
                            }
                            R();
                        } else {
                            if (this.f47858e == 3) {
                                q2Var.e(any);
                            }
                            this.f47861h.g(any);
                        }
                        this.f47858e = 3;
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
                        this.f47858e = 0;
                        this.f47860g = "";
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f47858e = 0;
                        this.f47860g = "";
                        b0();
                    }
                }

                /* synthetic */ MetadataCredentialsFromPlugin(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static MetadataCredentialsFromPlugin getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return x.f48313s;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static MetadataCredentialsFromPlugin parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static MetadataCredentialsFromPlugin parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<MetadataCredentialsFromPlugin> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof MetadataCredentialsFromPlugin)) {
                        return super.equals(obj);
                    }
                    MetadataCredentialsFromPlugin metadataCredentialsFromPlugin = (MetadataCredentialsFromPlugin) obj;
                    if (getName().equals(metadataCredentialsFromPlugin.getName()) && getConfigTypeCase().equals(metadataCredentialsFromPlugin.getConfigTypeCase())) {
                        return (this.configTypeCase_ != 3 || getTypedConfig().equals(metadataCredentialsFromPlugin.getTypedConfig())) && this.unknownFields.equals(metadataCredentialsFromPlugin.unknownFields);
                    }
                    return false;
                }

                public ConfigTypeCase getConfigTypeCase() {
                    return ConfigTypeCase.forNumber(this.configTypeCase_);
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
                public e2<MetadataCredentialsFromPlugin> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public int getSerializedSize() {
                    int i9 = this.memoizedSize;
                    if (i9 != -1) {
                        return i9;
                    }
                    int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
                    if (this.configTypeCase_ == 3) {
                        computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
                    }
                    int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                public Any getTypedConfig() {
                    if (this.configTypeCase_ == 3) {
                        return (Any) this.configType_;
                    }
                    return Any.getDefaultInstance();
                }

                public com.google.protobuf.f getTypedConfigOrBuilder() {
                    if (this.configTypeCase_ == 3) {
                        return (Any) this.configType_;
                    }
                    return Any.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
                public final h3 getUnknownFields() {
                    return this.unknownFields;
                }

                public boolean hasTypedConfig() {
                    return this.configTypeCase_ == 3;
                }

                @Override // com.google.protobuf.a
                public int hashCode() {
                    int i9 = this.memoizedHashCode;
                    if (i9 != 0) {
                        return i9;
                    }
                    int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
                    if (this.configTypeCase_ == 3) {
                        hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
                    }
                    int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return x.f48314t.d(MetadataCredentialsFromPlugin.class, b.class);
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
                    return new MetadataCredentialsFromPlugin();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                    }
                    if (this.configTypeCase_ == 3) {
                        codedOutputStream.L0(3, (Any) this.configType_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ MetadataCredentialsFromPlugin(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(MetadataCredentialsFromPlugin metadataCredentialsFromPlugin) {
                    return DEFAULT_INSTANCE.toBuilder().g0(metadataCredentialsFromPlugin);
                }

                public static MetadataCredentialsFromPlugin parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private MetadataCredentialsFromPlugin(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.configTypeCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static MetadataCredentialsFromPlugin parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static MetadataCredentialsFromPlugin parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public MetadataCredentialsFromPlugin getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                }

                public static MetadataCredentialsFromPlugin parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                public static MetadataCredentialsFromPlugin parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                private MetadataCredentialsFromPlugin() {
                    this.configTypeCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                    this.name_ = "";
                }

                public static MetadataCredentialsFromPlugin parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static MetadataCredentialsFromPlugin parseFrom(InputStream inputStream) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static MetadataCredentialsFromPlugin parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                private MetadataCredentialsFromPlugin(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                        } else if (L != 26) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                            o1 B = pVar.B(Any.parser(), f0Var);
                                            this.configType_ = B;
                                            if (builder != null) {
                                                builder.d0((Any) B);
                                                this.configType_ = builder.I();
                                            }
                                            this.configTypeCase_ = 3;
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

                public static MetadataCredentialsFromPlugin parseFrom(com.google.protobuf.p pVar) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static MetadataCredentialsFromPlugin parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                    return (MetadataCredentialsFromPlugin) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }
            }

            /* loaded from: classes6.dex */
            public static final class ServiceAccountJWTAccessCredentials extends GeneratedMessageV3 implements e {
                public static final int JSON_KEY_FIELD_NUMBER = 1;
                public static final int TOKEN_LIFETIME_SECONDS_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private volatile Object jsonKey_;
                private byte memoizedIsInitialized;
                private long tokenLifetimeSeconds_;
                private static final ServiceAccountJWTAccessCredentials DEFAULT_INSTANCE = new ServiceAccountJWTAccessCredentials();
                private static final e2<ServiceAccountJWTAccessCredentials> PARSER = new a();

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<ServiceAccountJWTAccessCredentials> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public ServiceAccountJWTAccessCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                        return new ServiceAccountJWTAccessCredentials(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements e {

                    /* renamed from: e  reason: collision with root package name */
                    private Object f47862e;

                    /* renamed from: f  reason: collision with root package name */
                    private long f47863f;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return x.f48310p.d(ServiceAccountJWTAccessCredentials.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public ServiceAccountJWTAccessCredentials build() {
                        ServiceAccountJWTAccessCredentials I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public ServiceAccountJWTAccessCredentials I() {
                        ServiceAccountJWTAccessCredentials serviceAccountJWTAccessCredentials = new ServiceAccountJWTAccessCredentials(this, (a) null);
                        serviceAccountJWTAccessCredentials.jsonKey_ = this.f47862e;
                        serviceAccountJWTAccessCredentials.tokenLifetimeSeconds_ = this.f47863f;
                        Q();
                        return serviceAccountJWTAccessCredentials;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public ServiceAccountJWTAccessCredentials getDefaultInstanceForType() {
                        return ServiceAccountJWTAccessCredentials.getDefaultInstance();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: d0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials.access$4400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$ServiceAccountJWTAccessCredentials$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    public b v(com.google.protobuf.l1 l1Var) {
                        if (l1Var instanceof ServiceAccountJWTAccessCredentials) {
                            return g0((ServiceAccountJWTAccessCredentials) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    public b g0(ServiceAccountJWTAccessCredentials serviceAccountJWTAccessCredentials) {
                        if (serviceAccountJWTAccessCredentials == ServiceAccountJWTAccessCredentials.getDefaultInstance()) {
                            return this;
                        }
                        if (!serviceAccountJWTAccessCredentials.getJsonKey().isEmpty()) {
                            this.f47862e = serviceAccountJWTAccessCredentials.jsonKey_;
                            R();
                        }
                        if (serviceAccountJWTAccessCredentials.getTokenLifetimeSeconds() != 0) {
                            j0(serviceAccountJWTAccessCredentials.getTokenLifetimeSeconds());
                        }
                        z(((GeneratedMessageV3) serviceAccountJWTAccessCredentials).unknownFields);
                        R();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return x.f48309o;
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

                    public b j0(long j10) {
                        this.f47863f = j10;
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
                        this.f47862e = "";
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f47862e = "";
                        b0();
                    }
                }

                /* synthetic */ ServiceAccountJWTAccessCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static ServiceAccountJWTAccessCredentials getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return x.f48309o;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static ServiceAccountJWTAccessCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<ServiceAccountJWTAccessCredentials> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof ServiceAccountJWTAccessCredentials)) {
                        return super.equals(obj);
                    }
                    ServiceAccountJWTAccessCredentials serviceAccountJWTAccessCredentials = (ServiceAccountJWTAccessCredentials) obj;
                    return getJsonKey().equals(serviceAccountJWTAccessCredentials.getJsonKey()) && getTokenLifetimeSeconds() == serviceAccountJWTAccessCredentials.getTokenLifetimeSeconds() && this.unknownFields.equals(serviceAccountJWTAccessCredentials.unknownFields);
                }

                public String getJsonKey() {
                    Object obj = this.jsonKey_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.jsonKey_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getJsonKeyBytes() {
                    Object obj = this.jsonKey_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.jsonKey_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public e2<ServiceAccountJWTAccessCredentials> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public int getSerializedSize() {
                    int i9 = this.memoizedSize;
                    if (i9 != -1) {
                        return i9;
                    }
                    int computeStringSize = GeneratedMessageV3.isStringEmpty(this.jsonKey_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.jsonKey_);
                    long j10 = this.tokenLifetimeSeconds_;
                    if (j10 != 0) {
                        computeStringSize += CodedOutputStream.a0(2, j10);
                    }
                    int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                public long getTokenLifetimeSeconds() {
                    return this.tokenLifetimeSeconds_;
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
                    int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getJsonKey().hashCode()) * 37) + 2) * 53) + com.google.protobuf.u0.i(getTokenLifetimeSeconds())) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return x.f48310p.d(ServiceAccountJWTAccessCredentials.class, b.class);
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
                    return new ServiceAccountJWTAccessCredentials();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!GeneratedMessageV3.isStringEmpty(this.jsonKey_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.jsonKey_);
                    }
                    long j10 = this.tokenLifetimeSeconds_;
                    if (j10 != 0) {
                        codedOutputStream.e1(2, j10);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ ServiceAccountJWTAccessCredentials(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(ServiceAccountJWTAccessCredentials serviceAccountJWTAccessCredentials) {
                    return DEFAULT_INSTANCE.toBuilder().g0(serviceAccountJWTAccessCredentials);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private ServiceAccountJWTAccessCredentials(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static ServiceAccountJWTAccessCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public ServiceAccountJWTAccessCredentials getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                private ServiceAccountJWTAccessCredentials() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.jsonKey_ = "";
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(InputStream inputStream) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                private ServiceAccountJWTAccessCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                            this.jsonKey_ = pVar.K();
                                        } else if (L != 16) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            this.tokenLifetimeSeconds_ = pVar.N();
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

                public static ServiceAccountJWTAccessCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static ServiceAccountJWTAccessCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                    return (ServiceAccountJWTAccessCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }
            }

            /* loaded from: classes6.dex */
            public static final class StsService extends GeneratedMessageV3 implements f {
                public static final int ACTOR_TOKEN_PATH_FIELD_NUMBER = 8;
                public static final int ACTOR_TOKEN_TYPE_FIELD_NUMBER = 9;
                public static final int AUDIENCE_FIELD_NUMBER = 3;
                private static final StsService DEFAULT_INSTANCE = new StsService();
                private static final e2<StsService> PARSER = new a();
                public static final int REQUESTED_TOKEN_TYPE_FIELD_NUMBER = 5;
                public static final int RESOURCE_FIELD_NUMBER = 2;
                public static final int SCOPE_FIELD_NUMBER = 4;
                public static final int SUBJECT_TOKEN_PATH_FIELD_NUMBER = 6;
                public static final int SUBJECT_TOKEN_TYPE_FIELD_NUMBER = 7;
                public static final int TOKEN_EXCHANGE_SERVICE_URI_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private volatile Object actorTokenPath_;
                private volatile Object actorTokenType_;
                private volatile Object audience_;
                private byte memoizedIsInitialized;
                private volatile Object requestedTokenType_;
                private volatile Object resource_;
                private volatile Object scope_;
                private volatile Object subjectTokenPath_;
                private volatile Object subjectTokenType_;
                private volatile Object tokenExchangeServiceUri_;

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<StsService> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public StsService m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                        return new StsService(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements f {

                    /* renamed from: e  reason: collision with root package name */
                    private Object f47864e;

                    /* renamed from: f  reason: collision with root package name */
                    private Object f47865f;

                    /* renamed from: g  reason: collision with root package name */
                    private Object f47866g;

                    /* renamed from: h  reason: collision with root package name */
                    private Object f47867h;

                    /* renamed from: i  reason: collision with root package name */
                    private Object f47868i;

                    /* renamed from: j  reason: collision with root package name */
                    private Object f47869j;

                    /* renamed from: k  reason: collision with root package name */
                    private Object f47870k;

                    /* renamed from: l  reason: collision with root package name */
                    private Object f47871l;

                    /* renamed from: m  reason: collision with root package name */
                    private Object f47872m;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return x.f48316v.d(StsService.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public StsService build() {
                        StsService I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public StsService I() {
                        StsService stsService = new StsService(this, (a) null);
                        stsService.tokenExchangeServiceUri_ = this.f47864e;
                        stsService.resource_ = this.f47865f;
                        stsService.audience_ = this.f47866g;
                        stsService.scope_ = this.f47867h;
                        stsService.requestedTokenType_ = this.f47868i;
                        stsService.subjectTokenPath_ = this.f47869j;
                        stsService.subjectTokenType_ = this.f47870k;
                        stsService.actorTokenPath_ = this.f47871l;
                        stsService.actorTokenType_ = this.f47872m;
                        Q();
                        return stsService;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public StsService getDefaultInstanceForType() {
                        return StsService.getDefaultInstance();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: d0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService.access$8300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$StsService r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$StsService r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$StsService$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    public b v(com.google.protobuf.l1 l1Var) {
                        if (l1Var instanceof StsService) {
                            return g0((StsService) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    public b g0(StsService stsService) {
                        if (stsService == StsService.getDefaultInstance()) {
                            return this;
                        }
                        if (!stsService.getTokenExchangeServiceUri().isEmpty()) {
                            this.f47864e = stsService.tokenExchangeServiceUri_;
                            R();
                        }
                        if (!stsService.getResource().isEmpty()) {
                            this.f47865f = stsService.resource_;
                            R();
                        }
                        if (!stsService.getAudience().isEmpty()) {
                            this.f47866g = stsService.audience_;
                            R();
                        }
                        if (!stsService.getScope().isEmpty()) {
                            this.f47867h = stsService.scope_;
                            R();
                        }
                        if (!stsService.getRequestedTokenType().isEmpty()) {
                            this.f47868i = stsService.requestedTokenType_;
                            R();
                        }
                        if (!stsService.getSubjectTokenPath().isEmpty()) {
                            this.f47869j = stsService.subjectTokenPath_;
                            R();
                        }
                        if (!stsService.getSubjectTokenType().isEmpty()) {
                            this.f47870k = stsService.subjectTokenType_;
                            R();
                        }
                        if (!stsService.getActorTokenPath().isEmpty()) {
                            this.f47871l = stsService.actorTokenPath_;
                            R();
                        }
                        if (!stsService.getActorTokenType().isEmpty()) {
                            this.f47872m = stsService.actorTokenType_;
                            R();
                        }
                        z(((GeneratedMessageV3) stsService).unknownFields);
                        R();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return x.f48315u;
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
                        this.f47864e = "";
                        this.f47865f = "";
                        this.f47866g = "";
                        this.f47867h = "";
                        this.f47868i = "";
                        this.f47869j = "";
                        this.f47870k = "";
                        this.f47871l = "";
                        this.f47872m = "";
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f47864e = "";
                        this.f47865f = "";
                        this.f47866g = "";
                        this.f47867h = "";
                        this.f47868i = "";
                        this.f47869j = "";
                        this.f47870k = "";
                        this.f47871l = "";
                        this.f47872m = "";
                        b0();
                    }
                }

                /* synthetic */ StsService(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static StsService getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return x.f48315u;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static StsService parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (StsService) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static StsService parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<StsService> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof StsService)) {
                        return super.equals(obj);
                    }
                    StsService stsService = (StsService) obj;
                    return getTokenExchangeServiceUri().equals(stsService.getTokenExchangeServiceUri()) && getResource().equals(stsService.getResource()) && getAudience().equals(stsService.getAudience()) && getScope().equals(stsService.getScope()) && getRequestedTokenType().equals(stsService.getRequestedTokenType()) && getSubjectTokenPath().equals(stsService.getSubjectTokenPath()) && getSubjectTokenType().equals(stsService.getSubjectTokenType()) && getActorTokenPath().equals(stsService.getActorTokenPath()) && getActorTokenType().equals(stsService.getActorTokenType()) && this.unknownFields.equals(stsService.unknownFields);
                }

                public String getActorTokenPath() {
                    Object obj = this.actorTokenPath_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.actorTokenPath_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getActorTokenPathBytes() {
                    Object obj = this.actorTokenPath_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.actorTokenPath_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getActorTokenType() {
                    Object obj = this.actorTokenType_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.actorTokenType_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getActorTokenTypeBytes() {
                    Object obj = this.actorTokenType_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.actorTokenType_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getAudience() {
                    Object obj = this.audience_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.audience_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getAudienceBytes() {
                    Object obj = this.audience_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.audience_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public e2<StsService> getParserForType() {
                    return PARSER;
                }

                public String getRequestedTokenType() {
                    Object obj = this.requestedTokenType_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.requestedTokenType_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getRequestedTokenTypeBytes() {
                    Object obj = this.requestedTokenType_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.requestedTokenType_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getResource() {
                    Object obj = this.resource_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.resource_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getResourceBytes() {
                    Object obj = this.resource_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.resource_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getScope() {
                    Object obj = this.scope_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.scope_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getScopeBytes() {
                    Object obj = this.scope_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.scope_ = copyFromUtf8;
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
                    int computeStringSize = GeneratedMessageV3.isStringEmpty(this.tokenExchangeServiceUri_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.tokenExchangeServiceUri_);
                    if (!GeneratedMessageV3.isStringEmpty(this.resource_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(2, this.resource_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.audience_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(3, this.audience_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.scope_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(4, this.scope_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.requestedTokenType_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(5, this.requestedTokenType_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.subjectTokenPath_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(6, this.subjectTokenPath_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.subjectTokenType_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(7, this.subjectTokenType_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.actorTokenPath_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(8, this.actorTokenPath_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.actorTokenType_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(9, this.actorTokenType_);
                    }
                    int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                public String getSubjectTokenPath() {
                    Object obj = this.subjectTokenPath_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.subjectTokenPath_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getSubjectTokenPathBytes() {
                    Object obj = this.subjectTokenPath_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.subjectTokenPath_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getSubjectTokenType() {
                    Object obj = this.subjectTokenType_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.subjectTokenType_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getSubjectTokenTypeBytes() {
                    Object obj = this.subjectTokenType_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.subjectTokenType_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public String getTokenExchangeServiceUri() {
                    Object obj = this.tokenExchangeServiceUri_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.tokenExchangeServiceUri_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getTokenExchangeServiceUriBytes() {
                    Object obj = this.tokenExchangeServiceUri_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.tokenExchangeServiceUri_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
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
                    int hashCode = ((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTokenExchangeServiceUri().hashCode()) * 37) + 2) * 53) + getResource().hashCode()) * 37) + 3) * 53) + getAudience().hashCode()) * 37) + 4) * 53) + getScope().hashCode()) * 37) + 5) * 53) + getRequestedTokenType().hashCode()) * 37) + 6) * 53) + getSubjectTokenPath().hashCode()) * 37) + 7) * 53) + getSubjectTokenType().hashCode()) * 37) + 8) * 53) + getActorTokenPath().hashCode()) * 37) + 9) * 53) + getActorTokenType().hashCode()) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return x.f48316v.d(StsService.class, b.class);
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
                    return new StsService();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!GeneratedMessageV3.isStringEmpty(this.tokenExchangeServiceUri_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.tokenExchangeServiceUri_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.resource_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.resource_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.audience_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 3, this.audience_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.scope_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 4, this.scope_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.requestedTokenType_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 5, this.requestedTokenType_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.subjectTokenPath_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 6, this.subjectTokenPath_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.subjectTokenType_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 7, this.subjectTokenType_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.actorTokenPath_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 8, this.actorTokenPath_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.actorTokenType_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 9, this.actorTokenType_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ StsService(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(StsService stsService) {
                    return DEFAULT_INSTANCE.toBuilder().g0(stsService);
                }

                public static StsService parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private StsService(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static StsService parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (StsService) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static StsService parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public StsService getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                }

                public static StsService parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                private StsService() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.tokenExchangeServiceUri_ = "";
                    this.resource_ = "";
                    this.audience_ = "";
                    this.scope_ = "";
                    this.requestedTokenType_ = "";
                    this.subjectTokenPath_ = "";
                    this.subjectTokenType_ = "";
                    this.actorTokenPath_ = "";
                    this.actorTokenType_ = "";
                }

                public static StsService parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                public static StsService parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static StsService parseFrom(InputStream inputStream) throws IOException {
                    return (StsService) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static StsService parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (StsService) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                public static StsService parseFrom(com.google.protobuf.p pVar) throws IOException {
                    return (StsService) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static StsService parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                    return (StsService) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }

                private StsService(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                            this.tokenExchangeServiceUri_ = pVar.K();
                                        } else if (L == 18) {
                                            this.resource_ = pVar.K();
                                        } else if (L == 26) {
                                            this.audience_ = pVar.K();
                                        } else if (L == 34) {
                                            this.scope_ = pVar.K();
                                        } else if (L == 42) {
                                            this.requestedTokenType_ = pVar.K();
                                        } else if (L == 50) {
                                            this.subjectTokenPath_ = pVar.K();
                                        } else if (L == 58) {
                                            this.subjectTokenType_ = pVar.K();
                                        } else if (L == 66) {
                                            this.actorTokenPath_ = pVar.K();
                                        } else if (L != 74) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            this.actorTokenType_ = pVar.K();
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
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<CallCredentials> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public CallCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new CallCredentials(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f47873e;

                /* renamed from: f  reason: collision with root package name */
                private Object f47874f;

                /* renamed from: g  reason: collision with root package name */
                private q2<Empty, Empty.b, com.google.protobuf.y> f47875g;

                /* renamed from: h  reason: collision with root package name */
                private q2<ServiceAccountJWTAccessCredentials, ServiceAccountJWTAccessCredentials.b, e> f47876h;

                /* renamed from: i  reason: collision with root package name */
                private q2<GoogleIAMCredentials, GoogleIAMCredentials.b, c> f47877i;

                /* renamed from: j  reason: collision with root package name */
                private q2<MetadataCredentialsFromPlugin, MetadataCredentialsFromPlugin.b, d> f47878j;

                /* renamed from: k  reason: collision with root package name */
                private q2<StsService, StsService.b, f> f47879k;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return x.f48308n.d(CallCredentials.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public CallCredentials build() {
                    CallCredentials I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public CallCredentials I() {
                    CallCredentials callCredentials = new CallCredentials(this, (a) null);
                    if (this.f47873e == 1) {
                        callCredentials.credentialSpecifier_ = this.f47874f;
                    }
                    if (this.f47873e == 2) {
                        q2<Empty, Empty.b, com.google.protobuf.y> q2Var = this.f47875g;
                        if (q2Var == null) {
                            callCredentials.credentialSpecifier_ = this.f47874f;
                        } else {
                            callCredentials.credentialSpecifier_ = q2Var.b();
                        }
                    }
                    if (this.f47873e == 3) {
                        callCredentials.credentialSpecifier_ = this.f47874f;
                    }
                    if (this.f47873e == 4) {
                        q2<ServiceAccountJWTAccessCredentials, ServiceAccountJWTAccessCredentials.b, e> q2Var2 = this.f47876h;
                        if (q2Var2 == null) {
                            callCredentials.credentialSpecifier_ = this.f47874f;
                        } else {
                            callCredentials.credentialSpecifier_ = q2Var2.b();
                        }
                    }
                    if (this.f47873e == 5) {
                        q2<GoogleIAMCredentials, GoogleIAMCredentials.b, c> q2Var3 = this.f47877i;
                        if (q2Var3 == null) {
                            callCredentials.credentialSpecifier_ = this.f47874f;
                        } else {
                            callCredentials.credentialSpecifier_ = q2Var3.b();
                        }
                    }
                    if (this.f47873e == 6) {
                        q2<MetadataCredentialsFromPlugin, MetadataCredentialsFromPlugin.b, d> q2Var4 = this.f47878j;
                        if (q2Var4 == null) {
                            callCredentials.credentialSpecifier_ = this.f47874f;
                        } else {
                            callCredentials.credentialSpecifier_ = q2Var4.b();
                        }
                    }
                    if (this.f47873e == 7) {
                        q2<StsService, StsService.b, f> q2Var5 = this.f47879k;
                        if (q2Var5 == null) {
                            callCredentials.credentialSpecifier_ = this.f47874f;
                        } else {
                            callCredentials.credentialSpecifier_ = q2Var5.b();
                        }
                    }
                    callCredentials.credentialSpecifierCase_ = this.f47873e;
                    Q();
                    return callCredentials;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public CallCredentials getDefaultInstanceForType() {
                    return CallCredentials.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.access$10100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$CallCredentials$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof CallCredentials) {
                        return g0((CallCredentials) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(CallCredentials callCredentials) {
                    if (callCredentials == CallCredentials.getDefaultInstance()) {
                        return this;
                    }
                    switch (b.f47911c[callCredentials.getCredentialSpecifierCase().ordinal()]) {
                        case 1:
                            this.f47873e = 1;
                            this.f47874f = callCredentials.credentialSpecifier_;
                            R();
                            break;
                        case 2:
                            i0(callCredentials.getGoogleComputeEngine());
                            break;
                        case 3:
                            this.f47873e = 3;
                            this.f47874f = callCredentials.credentialSpecifier_;
                            R();
                            break;
                        case 4:
                            k0(callCredentials.getServiceAccountJwtAccess());
                            break;
                        case 5:
                            j0(callCredentials.getGoogleIam());
                            break;
                        case 6:
                            h0(callCredentials.getFromPlugin());
                            break;
                        case 7:
                            l0(callCredentials.getStsService());
                            break;
                    }
                    z(((GeneratedMessageV3) callCredentials).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return x.f48307m;
                }

                public b h0(MetadataCredentialsFromPlugin metadataCredentialsFromPlugin) {
                    q2<MetadataCredentialsFromPlugin, MetadataCredentialsFromPlugin.b, d> q2Var = this.f47878j;
                    if (q2Var == null) {
                        if (this.f47873e == 6 && this.f47874f != MetadataCredentialsFromPlugin.getDefaultInstance()) {
                            this.f47874f = MetadataCredentialsFromPlugin.newBuilder((MetadataCredentialsFromPlugin) this.f47874f).g0(metadataCredentialsFromPlugin).I();
                        } else {
                            this.f47874f = metadataCredentialsFromPlugin;
                        }
                        R();
                    } else {
                        if (this.f47873e == 6) {
                            q2Var.e(metadataCredentialsFromPlugin);
                        }
                        this.f47878j.g(metadataCredentialsFromPlugin);
                    }
                    this.f47873e = 6;
                    return this;
                }

                public b i0(Empty empty) {
                    q2<Empty, Empty.b, com.google.protobuf.y> q2Var = this.f47875g;
                    if (q2Var == null) {
                        if (this.f47873e == 2 && this.f47874f != Empty.getDefaultInstance()) {
                            this.f47874f = Empty.newBuilder((Empty) this.f47874f).e0(empty).I();
                        } else {
                            this.f47874f = empty;
                        }
                        R();
                    } else {
                        if (this.f47873e == 2) {
                            q2Var.e(empty);
                        }
                        this.f47875g.g(empty);
                    }
                    this.f47873e = 2;
                    return this;
                }

                public b j0(GoogleIAMCredentials googleIAMCredentials) {
                    q2<GoogleIAMCredentials, GoogleIAMCredentials.b, c> q2Var = this.f47877i;
                    if (q2Var == null) {
                        if (this.f47873e == 5 && this.f47874f != GoogleIAMCredentials.getDefaultInstance()) {
                            this.f47874f = GoogleIAMCredentials.newBuilder((GoogleIAMCredentials) this.f47874f).g0(googleIAMCredentials).I();
                        } else {
                            this.f47874f = googleIAMCredentials;
                        }
                        R();
                    } else {
                        if (this.f47873e == 5) {
                            q2Var.e(googleIAMCredentials);
                        }
                        this.f47877i.g(googleIAMCredentials);
                    }
                    this.f47873e = 5;
                    return this;
                }

                public b k0(ServiceAccountJWTAccessCredentials serviceAccountJWTAccessCredentials) {
                    q2<ServiceAccountJWTAccessCredentials, ServiceAccountJWTAccessCredentials.b, e> q2Var = this.f47876h;
                    if (q2Var == null) {
                        if (this.f47873e == 4 && this.f47874f != ServiceAccountJWTAccessCredentials.getDefaultInstance()) {
                            this.f47874f = ServiceAccountJWTAccessCredentials.newBuilder((ServiceAccountJWTAccessCredentials) this.f47874f).g0(serviceAccountJWTAccessCredentials).I();
                        } else {
                            this.f47874f = serviceAccountJWTAccessCredentials;
                        }
                        R();
                    } else {
                        if (this.f47873e == 4) {
                            q2Var.e(serviceAccountJWTAccessCredentials);
                        }
                        this.f47876h.g(serviceAccountJWTAccessCredentials);
                    }
                    this.f47873e = 4;
                    return this;
                }

                public b l0(StsService stsService) {
                    q2<StsService, StsService.b, f> q2Var = this.f47879k;
                    if (q2Var == null) {
                        if (this.f47873e == 7 && this.f47874f != StsService.getDefaultInstance()) {
                            this.f47874f = StsService.newBuilder((StsService) this.f47874f).g0(stsService).I();
                        } else {
                            this.f47874f = stsService;
                        }
                        R();
                    } else {
                        if (this.f47873e == 7) {
                            q2Var.e(stsService);
                        }
                        this.f47879k.g(stsService);
                    }
                    this.f47873e = 7;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: m0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: n0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: o0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f47873e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47873e = 0;
                    b0();
                }
            }

            /* loaded from: classes6.dex */
            public interface c extends r1 {
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

            /* synthetic */ CallCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static CallCredentials getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return x.f48307m;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static CallCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static CallCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<CallCredentials> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof CallCredentials)) {
                    return super.equals(obj);
                }
                CallCredentials callCredentials = (CallCredentials) obj;
                if (getCredentialSpecifierCase().equals(callCredentials.getCredentialSpecifierCase())) {
                    switch (this.credentialSpecifierCase_) {
                        case 1:
                            if (!getAccessToken().equals(callCredentials.getAccessToken())) {
                                return false;
                            }
                            break;
                        case 2:
                            if (!getGoogleComputeEngine().equals(callCredentials.getGoogleComputeEngine())) {
                                return false;
                            }
                            break;
                        case 3:
                            if (!getGoogleRefreshToken().equals(callCredentials.getGoogleRefreshToken())) {
                                return false;
                            }
                            break;
                        case 4:
                            if (!getServiceAccountJwtAccess().equals(callCredentials.getServiceAccountJwtAccess())) {
                                return false;
                            }
                            break;
                        case 5:
                            if (!getGoogleIam().equals(callCredentials.getGoogleIam())) {
                                return false;
                            }
                            break;
                        case 6:
                            if (!getFromPlugin().equals(callCredentials.getFromPlugin())) {
                                return false;
                            }
                            break;
                        case 7:
                            if (!getStsService().equals(callCredentials.getStsService())) {
                                return false;
                            }
                            break;
                    }
                    return this.unknownFields.equals(callCredentials.unknownFields);
                }
                return false;
            }

            public String getAccessToken() {
                String str = this.credentialSpecifierCase_ == 1 ? this.credentialSpecifier_ : "";
                if (str instanceof String) {
                    return (String) str;
                }
                String stringUtf8 = ((ByteString) str).toStringUtf8();
                if (this.credentialSpecifierCase_ == 1) {
                    this.credentialSpecifier_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getAccessTokenBytes() {
                String str = this.credentialSpecifierCase_ == 1 ? this.credentialSpecifier_ : "";
                if (str instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                    if (this.credentialSpecifierCase_ == 1) {
                        this.credentialSpecifier_ = copyFromUtf8;
                    }
                    return copyFromUtf8;
                }
                return (ByteString) str;
            }

            public CredentialSpecifierCase getCredentialSpecifierCase() {
                return CredentialSpecifierCase.forNumber(this.credentialSpecifierCase_);
            }

            public MetadataCredentialsFromPlugin getFromPlugin() {
                if (this.credentialSpecifierCase_ == 6) {
                    return (MetadataCredentialsFromPlugin) this.credentialSpecifier_;
                }
                return MetadataCredentialsFromPlugin.getDefaultInstance();
            }

            public d getFromPluginOrBuilder() {
                if (this.credentialSpecifierCase_ == 6) {
                    return (MetadataCredentialsFromPlugin) this.credentialSpecifier_;
                }
                return MetadataCredentialsFromPlugin.getDefaultInstance();
            }

            public Empty getGoogleComputeEngine() {
                if (this.credentialSpecifierCase_ == 2) {
                    return (Empty) this.credentialSpecifier_;
                }
                return Empty.getDefaultInstance();
            }

            public com.google.protobuf.y getGoogleComputeEngineOrBuilder() {
                if (this.credentialSpecifierCase_ == 2) {
                    return (Empty) this.credentialSpecifier_;
                }
                return Empty.getDefaultInstance();
            }

            public GoogleIAMCredentials getGoogleIam() {
                if (this.credentialSpecifierCase_ == 5) {
                    return (GoogleIAMCredentials) this.credentialSpecifier_;
                }
                return GoogleIAMCredentials.getDefaultInstance();
            }

            public c getGoogleIamOrBuilder() {
                if (this.credentialSpecifierCase_ == 5) {
                    return (GoogleIAMCredentials) this.credentialSpecifier_;
                }
                return GoogleIAMCredentials.getDefaultInstance();
            }

            public String getGoogleRefreshToken() {
                String str = this.credentialSpecifierCase_ == 3 ? this.credentialSpecifier_ : "";
                if (str instanceof String) {
                    return (String) str;
                }
                String stringUtf8 = ((ByteString) str).toStringUtf8();
                if (this.credentialSpecifierCase_ == 3) {
                    this.credentialSpecifier_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getGoogleRefreshTokenBytes() {
                String str = this.credentialSpecifierCase_ == 3 ? this.credentialSpecifier_ : "";
                if (str instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                    if (this.credentialSpecifierCase_ == 3) {
                        this.credentialSpecifier_ = copyFromUtf8;
                    }
                    return copyFromUtf8;
                }
                return (ByteString) str;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<CallCredentials> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = this.credentialSpecifierCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.credentialSpecifier_) : 0;
                if (this.credentialSpecifierCase_ == 2) {
                    computeStringSize += CodedOutputStream.G(2, (Empty) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 3) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(3, this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 4) {
                    computeStringSize += CodedOutputStream.G(4, (ServiceAccountJWTAccessCredentials) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 5) {
                    computeStringSize += CodedOutputStream.G(5, (GoogleIAMCredentials) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 6) {
                    computeStringSize += CodedOutputStream.G(6, (MetadataCredentialsFromPlugin) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 7) {
                    computeStringSize += CodedOutputStream.G(7, (StsService) this.credentialSpecifier_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public ServiceAccountJWTAccessCredentials getServiceAccountJwtAccess() {
                if (this.credentialSpecifierCase_ == 4) {
                    return (ServiceAccountJWTAccessCredentials) this.credentialSpecifier_;
                }
                return ServiceAccountJWTAccessCredentials.getDefaultInstance();
            }

            public e getServiceAccountJwtAccessOrBuilder() {
                if (this.credentialSpecifierCase_ == 4) {
                    return (ServiceAccountJWTAccessCredentials) this.credentialSpecifier_;
                }
                return ServiceAccountJWTAccessCredentials.getDefaultInstance();
            }

            public StsService getStsService() {
                if (this.credentialSpecifierCase_ == 7) {
                    return (StsService) this.credentialSpecifier_;
                }
                return StsService.getDefaultInstance();
            }

            public f getStsServiceOrBuilder() {
                if (this.credentialSpecifierCase_ == 7) {
                    return (StsService) this.credentialSpecifier_;
                }
                return StsService.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasAccessToken() {
                return this.credentialSpecifierCase_ == 1;
            }

            public boolean hasFromPlugin() {
                return this.credentialSpecifierCase_ == 6;
            }

            public boolean hasGoogleComputeEngine() {
                return this.credentialSpecifierCase_ == 2;
            }

            public boolean hasGoogleIam() {
                return this.credentialSpecifierCase_ == 5;
            }

            public boolean hasGoogleRefreshToken() {
                return this.credentialSpecifierCase_ == 3;
            }

            public boolean hasServiceAccountJwtAccess() {
                return this.credentialSpecifierCase_ == 4;
            }

            public boolean hasStsService() {
                return this.credentialSpecifierCase_ == 7;
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
                switch (this.credentialSpecifierCase_) {
                    case 1:
                        i9 = ((hashCode2 * 37) + 1) * 53;
                        hashCode = getAccessToken().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode3;
                        return hashCode3;
                    case 2:
                        i9 = ((hashCode2 * 37) + 2) * 53;
                        hashCode = getGoogleComputeEngine().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode32;
                        return hashCode32;
                    case 3:
                        i9 = ((hashCode2 * 37) + 3) * 53;
                        hashCode = getGoogleRefreshToken().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode322;
                        return hashCode322;
                    case 4:
                        i9 = ((hashCode2 * 37) + 4) * 53;
                        hashCode = getServiceAccountJwtAccess().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode3222;
                        return hashCode3222;
                    case 5:
                        i9 = ((hashCode2 * 37) + 5) * 53;
                        hashCode = getGoogleIam().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode32222;
                        return hashCode32222;
                    case 6:
                        i9 = ((hashCode2 * 37) + 6) * 53;
                        hashCode = getFromPlugin().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode322222;
                        return hashCode322222;
                    case 7:
                        i9 = ((hashCode2 * 37) + 7) * 53;
                        hashCode = getStsService().hashCode();
                        hashCode2 = i9 + hashCode;
                        int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode3222222;
                        return hashCode3222222;
                    default:
                        int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode32222222;
                        return hashCode32222222;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return x.f48308n.d(CallCredentials.class, b.class);
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
                return new CallCredentials();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.credentialSpecifierCase_ == 1) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 2) {
                    codedOutputStream.L0(2, (Empty) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 3) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 4) {
                    codedOutputStream.L0(4, (ServiceAccountJWTAccessCredentials) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 5) {
                    codedOutputStream.L0(5, (GoogleIAMCredentials) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 6) {
                    codedOutputStream.L0(6, (MetadataCredentialsFromPlugin) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 7) {
                    codedOutputStream.L0(7, (StsService) this.credentialSpecifier_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ CallCredentials(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(CallCredentials callCredentials) {
                return DEFAULT_INSTANCE.toBuilder().g0(callCredentials);
            }

            public static CallCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private CallCredentials(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.credentialSpecifierCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static CallCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static CallCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public CallCredentials getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static CallCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static CallCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private CallCredentials() {
                this.credentialSpecifierCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static CallCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static CallCredentials parseFrom(InputStream inputStream) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private CallCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (L == 18) {
                                        Empty.b builder = this.credentialSpecifierCase_ == 2 ? ((Empty) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B = pVar.B(Empty.parser(), f0Var);
                                        this.credentialSpecifier_ = B;
                                        if (builder != null) {
                                            builder.e0((Empty) B);
                                            this.credentialSpecifier_ = builder.I();
                                        }
                                        this.credentialSpecifierCase_ = 2;
                                    } else if (L == 26) {
                                        String K = pVar.K();
                                        this.credentialSpecifierCase_ = 3;
                                        this.credentialSpecifier_ = K;
                                    } else if (L == 34) {
                                        ServiceAccountJWTAccessCredentials.b builder2 = this.credentialSpecifierCase_ == 4 ? ((ServiceAccountJWTAccessCredentials) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B2 = pVar.B(ServiceAccountJWTAccessCredentials.parser(), f0Var);
                                        this.credentialSpecifier_ = B2;
                                        if (builder2 != null) {
                                            builder2.g0((ServiceAccountJWTAccessCredentials) B2);
                                            this.credentialSpecifier_ = builder2.I();
                                        }
                                        this.credentialSpecifierCase_ = 4;
                                    } else if (L == 42) {
                                        GoogleIAMCredentials.b builder3 = this.credentialSpecifierCase_ == 5 ? ((GoogleIAMCredentials) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B3 = pVar.B(GoogleIAMCredentials.parser(), f0Var);
                                        this.credentialSpecifier_ = B3;
                                        if (builder3 != null) {
                                            builder3.g0((GoogleIAMCredentials) B3);
                                            this.credentialSpecifier_ = builder3.I();
                                        }
                                        this.credentialSpecifierCase_ = 5;
                                    } else if (L == 50) {
                                        MetadataCredentialsFromPlugin.b builder4 = this.credentialSpecifierCase_ == 6 ? ((MetadataCredentialsFromPlugin) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B4 = pVar.B(MetadataCredentialsFromPlugin.parser(), f0Var);
                                        this.credentialSpecifier_ = B4;
                                        if (builder4 != null) {
                                            builder4.g0((MetadataCredentialsFromPlugin) B4);
                                            this.credentialSpecifier_ = builder4.I();
                                        }
                                        this.credentialSpecifierCase_ = 6;
                                    } else if (L != 58) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        StsService.b builder5 = this.credentialSpecifierCase_ == 7 ? ((StsService) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B5 = pVar.B(StsService.parser(), f0Var);
                                        this.credentialSpecifier_ = B5;
                                        if (builder5 != null) {
                                            builder5.g0((StsService) B5);
                                            this.credentialSpecifier_ = builder5.I();
                                        }
                                        this.credentialSpecifierCase_ = 7;
                                    }
                                } else {
                                    String K2 = pVar.K();
                                    this.credentialSpecifierCase_ = 1;
                                    this.credentialSpecifier_ = K2;
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

            public static CallCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static CallCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static CallCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (CallCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class ChannelArgs extends GeneratedMessageV3 implements d {
            public static final int ARGS_FIELD_NUMBER = 1;
            private static final ChannelArgs DEFAULT_INSTANCE = new ChannelArgs();
            private static final e2<ChannelArgs> PARSER = new a();
            private static final long serialVersionUID = 0;
            private com.google.protobuf.g1<String, Value> args_;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            public static final class Value extends GeneratedMessageV3 implements r1 {
                public static final int INT_VALUE_FIELD_NUMBER = 2;
                public static final int STRING_VALUE_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private byte memoizedIsInitialized;
                private int valueSpecifierCase_;
                private Object valueSpecifier_;
                private static final Value DEFAULT_INSTANCE = new Value();
                private static final e2<Value> PARSER = new a();

                /* loaded from: classes6.dex */
                public enum ValueSpecifierCase implements u0.c {
                    STRING_VALUE(1),
                    INT_VALUE(2),
                    VALUESPECIFIER_NOT_SET(0);
                    
                    private final int value;

                    ValueSpecifierCase(int i9) {
                        this.value = i9;
                    }

                    public static ValueSpecifierCase forNumber(int i9) {
                        if (i9 != 0) {
                            if (i9 != 1) {
                                if (i9 != 2) {
                                    return null;
                                }
                                return INT_VALUE;
                            }
                            return STRING_VALUE;
                        }
                        return VALUESPECIFIER_NOT_SET;
                    }

                    @Override // com.google.protobuf.u0.c
                    public int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static ValueSpecifierCase valueOf(int i9) {
                        return forNumber(i9);
                    }
                }

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<Value> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public Value m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                        return new Value(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements r1 {

                    /* renamed from: e  reason: collision with root package name */
                    private int f47880e;

                    /* renamed from: f  reason: collision with root package name */
                    private Object f47881f;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return x.f48320z.d(Value.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public Value build() {
                        Value I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public Value I() {
                        Value value = new Value(this, (a) null);
                        if (this.f47880e == 1) {
                            value.valueSpecifier_ = this.f47881f;
                        }
                        if (this.f47880e == 2) {
                            value.valueSpecifier_ = this.f47881f;
                        }
                        value.valueSpecifierCase_ = this.f47880e;
                        Q();
                        return value;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public Value getDefaultInstanceForType() {
                        return Value.getDefaultInstance();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: d0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.access$11200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs$Value r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs$Value r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs$Value$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    public b v(com.google.protobuf.l1 l1Var) {
                        if (l1Var instanceof Value) {
                            return g0((Value) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    public b g0(Value value) {
                        if (value == Value.getDefaultInstance()) {
                            return this;
                        }
                        int i9 = b.f47912d[value.getValueSpecifierCase().ordinal()];
                        if (i9 == 1) {
                            this.f47880e = 1;
                            this.f47881f = value.valueSpecifier_;
                            R();
                        } else if (i9 == 2) {
                            j0(value.getIntValue());
                        }
                        z(((GeneratedMessageV3) value).unknownFields);
                        R();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return x.f48319y;
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

                    public b j0(long j10) {
                        this.f47880e = 2;
                        this.f47881f = Long.valueOf(j10);
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
                        this.f47880e = 0;
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f47880e = 0;
                        b0();
                    }
                }

                /* synthetic */ Value(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static Value getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return x.f48319y;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Value parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Value parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<Value> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Value)) {
                        return super.equals(obj);
                    }
                    Value value = (Value) obj;
                    if (getValueSpecifierCase().equals(value.getValueSpecifierCase())) {
                        int i9 = this.valueSpecifierCase_;
                        if (i9 != 1) {
                            if (i9 == 2 && getIntValue() != value.getIntValue()) {
                                return false;
                            }
                        } else if (!getStringValue().equals(value.getStringValue())) {
                            return false;
                        }
                        return this.unknownFields.equals(value.unknownFields);
                    }
                    return false;
                }

                public long getIntValue() {
                    if (this.valueSpecifierCase_ == 2) {
                        return ((Long) this.valueSpecifier_).longValue();
                    }
                    return 0L;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public e2<Value> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public int getSerializedSize() {
                    int i9 = this.memoizedSize;
                    if (i9 != -1) {
                        return i9;
                    }
                    int computeStringSize = this.valueSpecifierCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.valueSpecifier_) : 0;
                    if (this.valueSpecifierCase_ == 2) {
                        computeStringSize += CodedOutputStream.z(2, ((Long) this.valueSpecifier_).longValue());
                    }
                    int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                public String getStringValue() {
                    String str = this.valueSpecifierCase_ == 1 ? this.valueSpecifier_ : "";
                    if (str instanceof String) {
                        return (String) str;
                    }
                    String stringUtf8 = ((ByteString) str).toStringUtf8();
                    if (this.valueSpecifierCase_ == 1) {
                        this.valueSpecifier_ = stringUtf8;
                    }
                    return stringUtf8;
                }

                public ByteString getStringValueBytes() {
                    String str = this.valueSpecifierCase_ == 1 ? this.valueSpecifier_ : "";
                    if (str instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                        if (this.valueSpecifierCase_ == 1) {
                            this.valueSpecifier_ = copyFromUtf8;
                        }
                        return copyFromUtf8;
                    }
                    return (ByteString) str;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
                public final h3 getUnknownFields() {
                    return this.unknownFields;
                }

                public ValueSpecifierCase getValueSpecifierCase() {
                    return ValueSpecifierCase.forNumber(this.valueSpecifierCase_);
                }

                public boolean hasIntValue() {
                    return this.valueSpecifierCase_ == 2;
                }

                public boolean hasStringValue() {
                    return this.valueSpecifierCase_ == 1;
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
                    int i11 = this.valueSpecifierCase_;
                    if (i11 == 1) {
                        i9 = ((hashCode2 * 37) + 1) * 53;
                        hashCode = getStringValue().hashCode();
                    } else {
                        if (i11 == 2) {
                            i9 = ((hashCode2 * 37) + 2) * 53;
                            hashCode = com.google.protobuf.u0.i(getIntValue());
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
                    return x.f48320z.d(Value.class, b.class);
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
                    return new Value();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (this.valueSpecifierCase_ == 1) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.valueSpecifier_);
                    }
                    if (this.valueSpecifierCase_ == 2) {
                        codedOutputStream.J0(2, ((Long) this.valueSpecifier_).longValue());
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ Value(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(Value value) {
                    return DEFAULT_INSTANCE.toBuilder().g0(value);
                }

                public static Value parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private Value(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.valueSpecifierCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static Value parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static Value parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public Value getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                }

                public static Value parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                public static Value parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                private Value() {
                    this.valueSpecifierCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static Value parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static Value parseFrom(InputStream inputStream) throws IOException {
                    return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                private Value(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                            String K = pVar.K();
                                            this.valueSpecifierCase_ = 1;
                                            this.valueSpecifier_ = K;
                                        } else if (L != 16) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            this.valueSpecifier_ = Long.valueOf(pVar.A());
                                            this.valueSpecifierCase_ = 2;
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

                public static Value parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                    return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                public static Value parseFrom(com.google.protobuf.p pVar) throws IOException {
                    return (Value) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static Value parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                    return (Value) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ChannelArgs> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ChannelArgs m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new ChannelArgs(pVar, f0Var, null);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b {

                /* renamed from: a  reason: collision with root package name */
                static final com.google.protobuf.e1<String, Value> f47882a = com.google.protobuf.e1.k(x.A, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Value.getDefaultInstance());
            }

            /* loaded from: classes6.dex */
            public static final class c extends GeneratedMessageV3.b<c> implements d {

                /* renamed from: e  reason: collision with root package name */
                private com.google.protobuf.g1<String, Value> f47883e;

                /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private com.google.protobuf.g1<String, Value> b0() {
                    com.google.protobuf.g1<String, Value> g1Var = this.f47883e;
                    return g1Var == null ? com.google.protobuf.g1.g(b.f47882a) : g1Var;
                }

                private com.google.protobuf.g1<String, Value> d0() {
                    R();
                    if (this.f47883e == null) {
                        this.f47883e = com.google.protobuf.g1.p(b.f47882a);
                    }
                    if (!this.f47883e.m()) {
                        this.f47883e = this.f47883e.f();
                    }
                    return this.f47883e;
                }

                private void e0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return x.f48318x.d(ChannelArgs.class, c.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected com.google.protobuf.g1 M(int i9) {
                    if (i9 == 1) {
                        return b0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected com.google.protobuf.g1 N(int i9) {
                    if (i9 == 1) {
                        return d0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (c) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ChannelArgs build() {
                    ChannelArgs I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ChannelArgs I() {
                    ChannelArgs channelArgs = new ChannelArgs(this, (a) null);
                    channelArgs.args_ = b0();
                    channelArgs.args_.n();
                    Q();
                    return channelArgs;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public c n() {
                    return (c) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ChannelArgs getDefaultInstanceForType() {
                    return ChannelArgs.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.access$12200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelArgs$c");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return x.f48317w;
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public c v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof ChannelArgs) {
                        return i0((ChannelArgs) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public c i0(ChannelArgs channelArgs) {
                    if (channelArgs == ChannelArgs.getDefaultInstance()) {
                        return this;
                    }
                    d0().o(channelArgs.internalGetArgs());
                    z(((GeneratedMessageV3) channelArgs).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: j0 */
                public final c z(h3 h3Var) {
                    return (c) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: k0 */
                public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (c) super.c(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public final c f1(h3 h3Var) {
                    return (c) super.f1(h3Var);
                }

                /* synthetic */ c(a aVar) {
                    this();
                }

                private c() {
                    e0();
                }

                private c(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    e0();
                }
            }

            /* synthetic */ ChannelArgs(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ChannelArgs getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return x.f48317w;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.google.protobuf.g1<String, Value> internalGetArgs() {
                com.google.protobuf.g1<String, Value> g1Var = this.args_;
                return g1Var == null ? com.google.protobuf.g1.g(b.f47882a) : g1Var;
            }

            public static c newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ChannelArgs parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ChannelArgs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ChannelArgs> parser() {
                return PARSER;
            }

            public boolean containsArgs(String str) {
                Objects.requireNonNull(str, "map key");
                return internalGetArgs().i().containsKey(str);
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ChannelArgs)) {
                    return super.equals(obj);
                }
                ChannelArgs channelArgs = (ChannelArgs) obj;
                return internalGetArgs().equals(channelArgs.internalGetArgs()) && this.unknownFields.equals(channelArgs.unknownFields);
            }

            @Deprecated
            public Map<String, Value> getArgs() {
                return getArgsMap();
            }

            public int getArgsCount() {
                return internalGetArgs().i().size();
            }

            public Map<String, Value> getArgsMap() {
                return internalGetArgs().i();
            }

            public Value getArgsOrDefault(String str, Value value) {
                Objects.requireNonNull(str, "map key");
                Map<String, Value> i9 = internalGetArgs().i();
                return i9.containsKey(str) ? i9.get(str) : value;
            }

            public Value getArgsOrThrow(String str) {
                Objects.requireNonNull(str, "map key");
                Map<String, Value> i9 = internalGetArgs().i();
                if (i9.containsKey(str)) {
                    return i9.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ChannelArgs> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int i10 = 0;
                for (Map.Entry<String, Value> entry : internalGetArgs().i().entrySet()) {
                    i10 += CodedOutputStream.G(1, b.f47882a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
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
                if (!internalGetArgs().i().isEmpty()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + internalGetArgs().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return x.f48318x.d(ChannelArgs.class, c.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected com.google.protobuf.g1 internalGetMapField(int i9) {
                if (i9 == 1) {
                    return internalGetArgs();
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
                return new ChannelArgs();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetArgs(), b.f47882a, 1);
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ChannelArgs(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static c newBuilder(ChannelArgs channelArgs) {
                return DEFAULT_INSTANCE.toBuilder().i0(channelArgs);
            }

            public static ChannelArgs parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ChannelArgs(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ChannelArgs parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ChannelArgs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ChannelArgs getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public c toBuilder() {
                return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
            }

            public static ChannelArgs parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public c newBuilderForType() {
                return newBuilder();
            }

            private ChannelArgs() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ChannelArgs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public c newBuilderForType(GeneratedMessageV3.c cVar) {
                return new c(cVar, null);
            }

            public static ChannelArgs parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ChannelArgs(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 0) {
                                    if (L != 10) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        if (!(z11 & true)) {
                                            this.args_ = com.google.protobuf.g1.p(b.f47882a);
                                            z11 |= true;
                                        }
                                        com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(b.f47882a.getParserForType(), f0Var);
                                        this.args_.l().put((String) e1Var.f(), (Value) e1Var.h());
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

            public static ChannelArgs parseFrom(InputStream inputStream) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ChannelArgs parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ChannelArgs parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ChannelArgs parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelArgs) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class ChannelCredentials extends GeneratedMessageV3 implements e {
            public static final int GOOGLE_DEFAULT_FIELD_NUMBER = 2;
            public static final int LOCAL_CREDENTIALS_FIELD_NUMBER = 3;
            public static final int SSL_CREDENTIALS_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int credentialSpecifierCase_;
            private Object credentialSpecifier_;
            private byte memoizedIsInitialized;
            private static final ChannelCredentials DEFAULT_INSTANCE = new ChannelCredentials();
            private static final e2<ChannelCredentials> PARSER = new a();

            /* loaded from: classes6.dex */
            public enum CredentialSpecifierCase implements u0.c {
                SSL_CREDENTIALS(1),
                GOOGLE_DEFAULT(2),
                LOCAL_CREDENTIALS(3),
                CREDENTIALSPECIFIER_NOT_SET(0);
                
                private final int value;

                CredentialSpecifierCase(int i9) {
                    this.value = i9;
                }

                public static CredentialSpecifierCase forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 != 2) {
                                if (i9 != 3) {
                                    return null;
                                }
                                return LOCAL_CREDENTIALS;
                            }
                            return GOOGLE_DEFAULT;
                        }
                        return SSL_CREDENTIALS;
                    }
                    return CREDENTIALSPECIFIER_NOT_SET;
                }

                @Override // com.google.protobuf.u0.c
                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static CredentialSpecifierCase valueOf(int i9) {
                    return forNumber(i9);
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ChannelCredentials> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ChannelCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new ChannelCredentials(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private int f47884e;

                /* renamed from: f  reason: collision with root package name */
                private Object f47885f;

                /* renamed from: g  reason: collision with root package name */
                private q2<SslCredentials, SslCredentials.b, g> f47886g;

                /* renamed from: h  reason: collision with root package name */
                private q2<Empty, Empty.b, com.google.protobuf.y> f47887h;

                /* renamed from: i  reason: collision with root package name */
                private q2<GoogleLocalCredentials, GoogleLocalCredentials.b, f> f47888i;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return x.f48306l.d(ChannelCredentials.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ChannelCredentials build() {
                    ChannelCredentials I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ChannelCredentials I() {
                    ChannelCredentials channelCredentials = new ChannelCredentials(this, (a) null);
                    if (this.f47884e == 1) {
                        q2<SslCredentials, SslCredentials.b, g> q2Var = this.f47886g;
                        if (q2Var == null) {
                            channelCredentials.credentialSpecifier_ = this.f47885f;
                        } else {
                            channelCredentials.credentialSpecifier_ = q2Var.b();
                        }
                    }
                    if (this.f47884e == 2) {
                        q2<Empty, Empty.b, com.google.protobuf.y> q2Var2 = this.f47887h;
                        if (q2Var2 == null) {
                            channelCredentials.credentialSpecifier_ = this.f47885f;
                        } else {
                            channelCredentials.credentialSpecifier_ = q2Var2.b();
                        }
                    }
                    if (this.f47884e == 3) {
                        q2<GoogleLocalCredentials, GoogleLocalCredentials.b, f> q2Var3 = this.f47888i;
                        if (q2Var3 == null) {
                            channelCredentials.credentialSpecifier_ = this.f47885f;
                        } else {
                            channelCredentials.credentialSpecifier_ = q2Var3.b();
                        }
                    }
                    channelCredentials.credentialSpecifierCase_ = this.f47884e;
                    Q();
                    return channelCredentials;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ChannelCredentials getDefaultInstanceForType() {
                    return ChannelCredentials.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$ChannelCredentials$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof ChannelCredentials) {
                        return g0((ChannelCredentials) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ChannelCredentials channelCredentials) {
                    if (channelCredentials == ChannelCredentials.getDefaultInstance()) {
                        return this;
                    }
                    int i9 = b.f47909a[channelCredentials.getCredentialSpecifierCase().ordinal()];
                    if (i9 == 1) {
                        j0(channelCredentials.getSslCredentials());
                    } else if (i9 == 2) {
                        h0(channelCredentials.getGoogleDefault());
                    } else if (i9 == 3) {
                        i0(channelCredentials.getLocalCredentials());
                    }
                    z(((GeneratedMessageV3) channelCredentials).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return x.f48305k;
                }

                public b h0(Empty empty) {
                    q2<Empty, Empty.b, com.google.protobuf.y> q2Var = this.f47887h;
                    if (q2Var == null) {
                        if (this.f47884e == 2 && this.f47885f != Empty.getDefaultInstance()) {
                            this.f47885f = Empty.newBuilder((Empty) this.f47885f).e0(empty).I();
                        } else {
                            this.f47885f = empty;
                        }
                        R();
                    } else {
                        if (this.f47884e == 2) {
                            q2Var.e(empty);
                        }
                        this.f47887h.g(empty);
                    }
                    this.f47884e = 2;
                    return this;
                }

                public b i0(GoogleLocalCredentials googleLocalCredentials) {
                    q2<GoogleLocalCredentials, GoogleLocalCredentials.b, f> q2Var = this.f47888i;
                    if (q2Var == null) {
                        if (this.f47884e == 3 && this.f47885f != GoogleLocalCredentials.getDefaultInstance()) {
                            this.f47885f = GoogleLocalCredentials.newBuilder((GoogleLocalCredentials) this.f47885f).g0(googleLocalCredentials).I();
                        } else {
                            this.f47885f = googleLocalCredentials;
                        }
                        R();
                    } else {
                        if (this.f47884e == 3) {
                            q2Var.e(googleLocalCredentials);
                        }
                        this.f47888i.g(googleLocalCredentials);
                    }
                    this.f47884e = 3;
                    return this;
                }

                public b j0(SslCredentials sslCredentials) {
                    q2<SslCredentials, SslCredentials.b, g> q2Var = this.f47886g;
                    if (q2Var == null) {
                        if (this.f47884e == 1 && this.f47885f != SslCredentials.getDefaultInstance()) {
                            this.f47885f = SslCredentials.newBuilder((SslCredentials) this.f47885f).h0(sslCredentials).I();
                        } else {
                            this.f47885f = sslCredentials;
                        }
                        R();
                    } else {
                        if (this.f47884e == 1) {
                            q2Var.e(sslCredentials);
                        }
                        this.f47886g.g(sslCredentials);
                    }
                    this.f47884e = 1;
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
                    this.f47884e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47884e = 0;
                    b0();
                }
            }

            /* synthetic */ ChannelCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ChannelCredentials getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return x.f48305k;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ChannelCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ChannelCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ChannelCredentials> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ChannelCredentials)) {
                    return super.equals(obj);
                }
                ChannelCredentials channelCredentials = (ChannelCredentials) obj;
                if (getCredentialSpecifierCase().equals(channelCredentials.getCredentialSpecifierCase())) {
                    int i9 = this.credentialSpecifierCase_;
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 == 3 && !getLocalCredentials().equals(channelCredentials.getLocalCredentials())) {
                                return false;
                            }
                        } else if (!getGoogleDefault().equals(channelCredentials.getGoogleDefault())) {
                            return false;
                        }
                    } else if (!getSslCredentials().equals(channelCredentials.getSslCredentials())) {
                        return false;
                    }
                    return this.unknownFields.equals(channelCredentials.unknownFields);
                }
                return false;
            }

            public CredentialSpecifierCase getCredentialSpecifierCase() {
                return CredentialSpecifierCase.forNumber(this.credentialSpecifierCase_);
            }

            public Empty getGoogleDefault() {
                if (this.credentialSpecifierCase_ == 2) {
                    return (Empty) this.credentialSpecifier_;
                }
                return Empty.getDefaultInstance();
            }

            public com.google.protobuf.y getGoogleDefaultOrBuilder() {
                if (this.credentialSpecifierCase_ == 2) {
                    return (Empty) this.credentialSpecifier_;
                }
                return Empty.getDefaultInstance();
            }

            public GoogleLocalCredentials getLocalCredentials() {
                if (this.credentialSpecifierCase_ == 3) {
                    return (GoogleLocalCredentials) this.credentialSpecifier_;
                }
                return GoogleLocalCredentials.getDefaultInstance();
            }

            public f getLocalCredentialsOrBuilder() {
                if (this.credentialSpecifierCase_ == 3) {
                    return (GoogleLocalCredentials) this.credentialSpecifier_;
                }
                return GoogleLocalCredentials.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ChannelCredentials> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.credentialSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (SslCredentials) this.credentialSpecifier_) : 0;
                if (this.credentialSpecifierCase_ == 2) {
                    G += CodedOutputStream.G(2, (Empty) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 3) {
                    G += CodedOutputStream.G(3, (GoogleLocalCredentials) this.credentialSpecifier_);
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public SslCredentials getSslCredentials() {
                if (this.credentialSpecifierCase_ == 1) {
                    return (SslCredentials) this.credentialSpecifier_;
                }
                return SslCredentials.getDefaultInstance();
            }

            public g getSslCredentialsOrBuilder() {
                if (this.credentialSpecifierCase_ == 1) {
                    return (SslCredentials) this.credentialSpecifier_;
                }
                return SslCredentials.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasGoogleDefault() {
                return this.credentialSpecifierCase_ == 2;
            }

            public boolean hasLocalCredentials() {
                return this.credentialSpecifierCase_ == 3;
            }

            public boolean hasSslCredentials() {
                return this.credentialSpecifierCase_ == 1;
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
                int i11 = this.credentialSpecifierCase_;
                if (i11 == 1) {
                    i9 = ((hashCode2 * 37) + 1) * 53;
                    hashCode = getSslCredentials().hashCode();
                } else if (i11 == 2) {
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getGoogleDefault().hashCode();
                } else {
                    if (i11 == 3) {
                        i9 = ((hashCode2 * 37) + 3) * 53;
                        hashCode = getLocalCredentials().hashCode();
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
                return x.f48306l.d(ChannelCredentials.class, b.class);
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
                return new ChannelCredentials();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.credentialSpecifierCase_ == 1) {
                    codedOutputStream.L0(1, (SslCredentials) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 2) {
                    codedOutputStream.L0(2, (Empty) this.credentialSpecifier_);
                }
                if (this.credentialSpecifierCase_ == 3) {
                    codedOutputStream.L0(3, (GoogleLocalCredentials) this.credentialSpecifier_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ChannelCredentials(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ChannelCredentials channelCredentials) {
                return DEFAULT_INSTANCE.toBuilder().g0(channelCredentials);
            }

            public static ChannelCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ChannelCredentials(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.credentialSpecifierCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ChannelCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ChannelCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ChannelCredentials getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ChannelCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static ChannelCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private ChannelCredentials() {
                this.credentialSpecifierCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ChannelCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static ChannelCredentials parseFrom(InputStream inputStream) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private ChannelCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                        SslCredentials.b builder = this.credentialSpecifierCase_ == 1 ? ((SslCredentials) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B = pVar.B(SslCredentials.parser(), f0Var);
                                        this.credentialSpecifier_ = B;
                                        if (builder != null) {
                                            builder.h0((SslCredentials) B);
                                            this.credentialSpecifier_ = builder.I();
                                        }
                                        this.credentialSpecifierCase_ = 1;
                                    } else if (L == 18) {
                                        Empty.b builder2 = this.credentialSpecifierCase_ == 2 ? ((Empty) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B2 = pVar.B(Empty.parser(), f0Var);
                                        this.credentialSpecifier_ = B2;
                                        if (builder2 != null) {
                                            builder2.e0((Empty) B2);
                                            this.credentialSpecifier_ = builder2.I();
                                        }
                                        this.credentialSpecifierCase_ = 2;
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        GoogleLocalCredentials.b builder3 = this.credentialSpecifierCase_ == 3 ? ((GoogleLocalCredentials) this.credentialSpecifier_).toBuilder() : null;
                                        o1 B3 = pVar.B(GoogleLocalCredentials.parser(), f0Var);
                                        this.credentialSpecifier_ = B3;
                                        if (builder3 != null) {
                                            builder3.g0((GoogleLocalCredentials) B3);
                                            this.credentialSpecifier_ = builder3.I();
                                        }
                                        this.credentialSpecifierCase_ = 3;
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

            public static ChannelCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ChannelCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ChannelCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (ChannelCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class GoogleLocalCredentials extends GeneratedMessageV3 implements f {
            private static final GoogleLocalCredentials DEFAULT_INSTANCE = new GoogleLocalCredentials();
            private static final e2<GoogleLocalCredentials> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<GoogleLocalCredentials> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public GoogleLocalCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new GoogleLocalCredentials(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements f {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return x.f48304j.d(GoogleLocalCredentials.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public GoogleLocalCredentials build() {
                    GoogleLocalCredentials I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public GoogleLocalCredentials I() {
                    GoogleLocalCredentials googleLocalCredentials = new GoogleLocalCredentials(this, (a) null);
                    Q();
                    return googleLocalCredentials;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public GoogleLocalCredentials getDefaultInstanceForType() {
                    return GoogleLocalCredentials.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$GoogleLocalCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$GoogleLocalCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$GoogleLocalCredentials$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof GoogleLocalCredentials) {
                        return g0((GoogleLocalCredentials) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(GoogleLocalCredentials googleLocalCredentials) {
                    if (googleLocalCredentials == GoogleLocalCredentials.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) googleLocalCredentials).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return x.f48303i;
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
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ GoogleLocalCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static GoogleLocalCredentials getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return x.f48303i;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static GoogleLocalCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GoogleLocalCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<GoogleLocalCredentials> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof GoogleLocalCredentials) {
                    return this.unknownFields.equals(((GoogleLocalCredentials) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<GoogleLocalCredentials> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return x.f48304j.d(GoogleLocalCredentials.class, b.class);
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
                return new GoogleLocalCredentials();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ GoogleLocalCredentials(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(GoogleLocalCredentials googleLocalCredentials) {
                return DEFAULT_INSTANCE.toBuilder().g0(googleLocalCredentials);
            }

            public static GoogleLocalCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private GoogleLocalCredentials(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static GoogleLocalCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static GoogleLocalCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public GoogleLocalCredentials getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static GoogleLocalCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private GoogleLocalCredentials() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static GoogleLocalCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static GoogleLocalCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private GoogleLocalCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
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

            public static GoogleLocalCredentials parseFrom(InputStream inputStream) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static GoogleLocalCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static GoogleLocalCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static GoogleLocalCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (GoogleLocalCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class SslCredentials extends GeneratedMessageV3 implements g {
            public static final int CERT_CHAIN_FIELD_NUMBER = 3;
            private static final SslCredentials DEFAULT_INSTANCE = new SslCredentials();
            private static final e2<SslCredentials> PARSER = new a();
            public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
            public static final int ROOT_CERTS_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private DataSource certChain_;
            private byte memoizedIsInitialized;
            private DataSource privateKey_;
            private DataSource rootCerts_;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<SslCredentials> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public SslCredentials m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new SslCredentials(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements g {

                /* renamed from: e  reason: collision with root package name */
                private DataSource f47889e;

                /* renamed from: f  reason: collision with root package name */
                private q2<DataSource, DataSource.c, n> f47890f;

                /* renamed from: g  reason: collision with root package name */
                private DataSource f47891g;

                /* renamed from: h  reason: collision with root package name */
                private q2<DataSource, DataSource.c, n> f47892h;

                /* renamed from: i  reason: collision with root package name */
                private DataSource f47893i;

                /* renamed from: j  reason: collision with root package name */
                private q2<DataSource, DataSource.c, n> f47894j;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return x.f48302h.d(SslCredentials.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public SslCredentials build() {
                    SslCredentials I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public SslCredentials I() {
                    SslCredentials sslCredentials = new SslCredentials(this, (a) null);
                    q2<DataSource, DataSource.c, n> q2Var = this.f47890f;
                    if (q2Var == null) {
                        sslCredentials.rootCerts_ = this.f47889e;
                    } else {
                        sslCredentials.rootCerts_ = q2Var.b();
                    }
                    q2<DataSource, DataSource.c, n> q2Var2 = this.f47892h;
                    if (q2Var2 == null) {
                        sslCredentials.privateKey_ = this.f47891g;
                    } else {
                        sslCredentials.privateKey_ = q2Var2.b();
                    }
                    q2<DataSource, DataSource.c, n> q2Var3 = this.f47894j;
                    if (q2Var3 == null) {
                        sslCredentials.certChain_ = this.f47893i;
                    } else {
                        sslCredentials.certChain_ = q2Var3.b();
                    }
                    Q();
                    return sslCredentials;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public SslCredentials getDefaultInstanceForType() {
                    return SslCredentials.getDefaultInstance();
                }

                public b d0(DataSource dataSource) {
                    q2<DataSource, DataSource.c, n> q2Var = this.f47894j;
                    if (q2Var == null) {
                        DataSource dataSource2 = this.f47893i;
                        if (dataSource2 != null) {
                            this.f47893i = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                        } else {
                            this.f47893i = dataSource;
                        }
                        R();
                    } else {
                        q2Var.e(dataSource);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$SslCredentials r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$SslCredentials r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$SslCredentials$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof SslCredentials) {
                        return h0((SslCredentials) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return x.f48301g;
                }

                public b h0(SslCredentials sslCredentials) {
                    if (sslCredentials == SslCredentials.getDefaultInstance()) {
                        return this;
                    }
                    if (sslCredentials.hasRootCerts()) {
                        j0(sslCredentials.getRootCerts());
                    }
                    if (sslCredentials.hasPrivateKey()) {
                        i0(sslCredentials.getPrivateKey());
                    }
                    if (sslCredentials.hasCertChain()) {
                        d0(sslCredentials.getCertChain());
                    }
                    z(((GeneratedMessageV3) sslCredentials).unknownFields);
                    R();
                    return this;
                }

                public b i0(DataSource dataSource) {
                    q2<DataSource, DataSource.c, n> q2Var = this.f47892h;
                    if (q2Var == null) {
                        DataSource dataSource2 = this.f47891g;
                        if (dataSource2 != null) {
                            this.f47891g = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                        } else {
                            this.f47891g = dataSource;
                        }
                        R();
                    } else {
                        q2Var.e(dataSource);
                    }
                    return this;
                }

                public b j0(DataSource dataSource) {
                    q2<DataSource, DataSource.c, n> q2Var = this.f47890f;
                    if (q2Var == null) {
                        DataSource dataSource2 = this.f47889e;
                        if (dataSource2 != null) {
                            this.f47889e = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                        } else {
                            this.f47889e = dataSource;
                        }
                        R();
                    } else {
                        q2Var.e(dataSource);
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
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ SslCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static SslCredentials getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return x.f48301g;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static SslCredentials parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static SslCredentials parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<SslCredentials> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof SslCredentials)) {
                    return super.equals(obj);
                }
                SslCredentials sslCredentials = (SslCredentials) obj;
                if (hasRootCerts() != sslCredentials.hasRootCerts()) {
                    return false;
                }
                if ((!hasRootCerts() || getRootCerts().equals(sslCredentials.getRootCerts())) && hasPrivateKey() == sslCredentials.hasPrivateKey()) {
                    if ((!hasPrivateKey() || getPrivateKey().equals(sslCredentials.getPrivateKey())) && hasCertChain() == sslCredentials.hasCertChain()) {
                        return (!hasCertChain() || getCertChain().equals(sslCredentials.getCertChain())) && this.unknownFields.equals(sslCredentials.unknownFields);
                    }
                    return false;
                }
                return false;
            }

            public DataSource getCertChain() {
                DataSource dataSource = this.certChain_;
                return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
            }

            public n getCertChainOrBuilder() {
                return getCertChain();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<SslCredentials> getParserForType() {
                return PARSER;
            }

            public DataSource getPrivateKey() {
                DataSource dataSource = this.privateKey_;
                return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
            }

            public n getPrivateKeyOrBuilder() {
                return getPrivateKey();
            }

            public DataSource getRootCerts() {
                DataSource dataSource = this.rootCerts_;
                return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
            }

            public n getRootCertsOrBuilder() {
                return getRootCerts();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.rootCerts_ != null ? 0 + CodedOutputStream.G(1, getRootCerts()) : 0;
                if (this.privateKey_ != null) {
                    G += CodedOutputStream.G(2, getPrivateKey());
                }
                if (this.certChain_ != null) {
                    G += CodedOutputStream.G(3, getCertChain());
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasCertChain() {
                return this.certChain_ != null;
            }

            public boolean hasPrivateKey() {
                return this.privateKey_ != null;
            }

            public boolean hasRootCerts() {
                return this.rootCerts_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasRootCerts()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getRootCerts().hashCode();
                }
                if (hasPrivateKey()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getPrivateKey().hashCode();
                }
                if (hasCertChain()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getCertChain().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return x.f48302h.d(SslCredentials.class, b.class);
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
                return new SslCredentials();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.rootCerts_ != null) {
                    codedOutputStream.L0(1, getRootCerts());
                }
                if (this.privateKey_ != null) {
                    codedOutputStream.L0(2, getPrivateKey());
                }
                if (this.certChain_ != null) {
                    codedOutputStream.L0(3, getCertChain());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ SslCredentials(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(SslCredentials sslCredentials) {
                return DEFAULT_INSTANCE.toBuilder().h0(sslCredentials);
            }

            public static SslCredentials parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private SslCredentials(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static SslCredentials parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static SslCredentials parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public SslCredentials getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
            }

            public static SslCredentials parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private SslCredentials() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static SslCredentials parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static SslCredentials parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private SslCredentials(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                this();
                DataSource.c builder;
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    DataSource dataSource = this.rootCerts_;
                                    builder = dataSource != null ? dataSource.toBuilder() : null;
                                    DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                                    this.rootCerts_ = dataSource2;
                                    if (builder != null) {
                                        builder.g0(dataSource2);
                                        this.rootCerts_ = builder.I();
                                    }
                                } else if (L == 18) {
                                    DataSource dataSource3 = this.privateKey_;
                                    builder = dataSource3 != null ? dataSource3.toBuilder() : null;
                                    DataSource dataSource4 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                                    this.privateKey_ = dataSource4;
                                    if (builder != null) {
                                        builder.g0(dataSource4);
                                        this.privateKey_ = builder.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    DataSource dataSource5 = this.certChain_;
                                    builder = dataSource5 != null ? dataSource5.toBuilder() : null;
                                    DataSource dataSource6 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                                    this.certChain_ = dataSource6;
                                    if (builder != null) {
                                        builder.g0(dataSource6);
                                        this.certChain_ = builder.I();
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

            public static SslCredentials parseFrom(InputStream inputStream) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static SslCredentials parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static SslCredentials parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static SslCredentials parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (SslCredentials) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<GoogleGrpc> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public GoogleGrpc m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new GoogleGrpc(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f47895e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47896f;

            /* renamed from: g  reason: collision with root package name */
            private ChannelCredentials f47897g;

            /* renamed from: h  reason: collision with root package name */
            private q2<ChannelCredentials, ChannelCredentials.b, e> f47898h;

            /* renamed from: i  reason: collision with root package name */
            private List<CallCredentials> f47899i;

            /* renamed from: j  reason: collision with root package name */
            private l2<CallCredentials, CallCredentials.b, c> f47900j;

            /* renamed from: k  reason: collision with root package name */
            private Object f47901k;

            /* renamed from: l  reason: collision with root package name */
            private Object f47902l;

            /* renamed from: m  reason: collision with root package name */
            private Struct f47903m;

            /* renamed from: n  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f47904n;

            /* renamed from: o  reason: collision with root package name */
            private UInt32Value f47905o;

            /* renamed from: p  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f47906p;

            /* renamed from: q  reason: collision with root package name */
            private ChannelArgs f47907q;

            /* renamed from: r  reason: collision with root package name */
            private q2<ChannelArgs, ChannelArgs.c, d> f47908r;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f47895e & 1) == 0) {
                    this.f47899i = new ArrayList(this.f47899i);
                    this.f47895e |= 1;
                }
            }

            private l2<CallCredentials, CallCredentials.b, c> b0() {
                if (this.f47900j == null) {
                    this.f47900j = new l2<>(this.f47899i, (this.f47895e & 1) != 0, H(), O());
                    this.f47899i = null;
                }
                return this.f47900j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return x.f48300f.d(GoogleGrpc.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public GoogleGrpc build() {
                GoogleGrpc I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public GoogleGrpc I() {
                GoogleGrpc googleGrpc = new GoogleGrpc(this, (a) null);
                googleGrpc.targetUri_ = this.f47896f;
                q2<ChannelCredentials, ChannelCredentials.b, e> q2Var = this.f47898h;
                if (q2Var == null) {
                    googleGrpc.channelCredentials_ = this.f47897g;
                } else {
                    googleGrpc.channelCredentials_ = q2Var.b();
                }
                l2<CallCredentials, CallCredentials.b, c> l2Var = this.f47900j;
                if (l2Var == null) {
                    if ((this.f47895e & 1) != 0) {
                        this.f47899i = Collections.unmodifiableList(this.f47899i);
                        this.f47895e &= -2;
                    }
                    googleGrpc.callCredentials_ = this.f47899i;
                } else {
                    googleGrpc.callCredentials_ = l2Var.e();
                }
                googleGrpc.statPrefix_ = this.f47901k;
                googleGrpc.credentialsFactoryName_ = this.f47902l;
                q2<Struct, Struct.b, u2> q2Var2 = this.f47904n;
                if (q2Var2 == null) {
                    googleGrpc.config_ = this.f47903m;
                } else {
                    googleGrpc.config_ = q2Var2.b();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f47906p;
                if (q2Var3 == null) {
                    googleGrpc.perStreamBufferLimitBytes_ = this.f47905o;
                } else {
                    googleGrpc.perStreamBufferLimitBytes_ = q2Var3.b();
                }
                q2<ChannelArgs, ChannelArgs.c, d> q2Var4 = this.f47908r;
                if (q2Var4 == null) {
                    googleGrpc.channelArgs_ = this.f47907q;
                } else {
                    googleGrpc.channelArgs_ = q2Var4.b();
                }
                Q();
                return googleGrpc;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public GoogleGrpc getDefaultInstanceForType() {
                return GoogleGrpc.getDefaultInstance();
            }

            public b g0(ChannelArgs channelArgs) {
                q2<ChannelArgs, ChannelArgs.c, d> q2Var = this.f47908r;
                if (q2Var == null) {
                    ChannelArgs channelArgs2 = this.f47907q;
                    if (channelArgs2 != null) {
                        this.f47907q = ChannelArgs.newBuilder(channelArgs2).i0(channelArgs).I();
                    } else {
                        this.f47907q = channelArgs;
                    }
                    R();
                } else {
                    q2Var.e(channelArgs);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return x.f48299e;
            }

            public b h0(ChannelCredentials channelCredentials) {
                q2<ChannelCredentials, ChannelCredentials.b, e> q2Var = this.f47898h;
                if (q2Var == null) {
                    ChannelCredentials channelCredentials2 = this.f47897g;
                    if (channelCredentials2 != null) {
                        this.f47897g = ChannelCredentials.newBuilder(channelCredentials2).g0(channelCredentials).I();
                    } else {
                        this.f47897g = channelCredentials;
                    }
                    R();
                } else {
                    q2Var.e(channelCredentials);
                }
                return this;
            }

            public b i0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f47904n;
                if (q2Var == null) {
                    Struct struct2 = this.f47903m;
                    if (struct2 != null) {
                        this.f47903m = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f47903m = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.access$13800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.l0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.l0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.GoogleGrpc.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$GoogleGrpc$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof GoogleGrpc) {
                    return l0((GoogleGrpc) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b l0(GoogleGrpc googleGrpc) {
                if (googleGrpc == GoogleGrpc.getDefaultInstance()) {
                    return this;
                }
                if (!googleGrpc.getTargetUri().isEmpty()) {
                    this.f47896f = googleGrpc.targetUri_;
                    R();
                }
                if (googleGrpc.hasChannelCredentials()) {
                    h0(googleGrpc.getChannelCredentials());
                }
                if (this.f47900j == null) {
                    if (!googleGrpc.callCredentials_.isEmpty()) {
                        if (this.f47899i.isEmpty()) {
                            this.f47899i = googleGrpc.callCredentials_;
                            this.f47895e &= -2;
                        } else {
                            a0();
                            this.f47899i.addAll(googleGrpc.callCredentials_);
                        }
                        R();
                    }
                } else if (!googleGrpc.callCredentials_.isEmpty()) {
                    if (this.f47900j.k()) {
                        this.f47900j.f();
                        this.f47900j = null;
                        this.f47899i = googleGrpc.callCredentials_;
                        this.f47895e &= -2;
                        this.f47900j = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                    } else {
                        this.f47900j.b(googleGrpc.callCredentials_);
                    }
                }
                if (!googleGrpc.getStatPrefix().isEmpty()) {
                    this.f47901k = googleGrpc.statPrefix_;
                    R();
                }
                if (!googleGrpc.getCredentialsFactoryName().isEmpty()) {
                    this.f47902l = googleGrpc.credentialsFactoryName_;
                    R();
                }
                if (googleGrpc.hasConfig()) {
                    i0(googleGrpc.getConfig());
                }
                if (googleGrpc.hasPerStreamBufferLimitBytes()) {
                    m0(googleGrpc.getPerStreamBufferLimitBytes());
                }
                if (googleGrpc.hasChannelArgs()) {
                    g0(googleGrpc.getChannelArgs());
                }
                z(((GeneratedMessageV3) googleGrpc).unknownFields);
                R();
                return this;
            }

            public b m0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47906p;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f47905o;
                    if (uInt32Value2 != null) {
                        this.f47905o = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f47905o = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47896f = "";
                this.f47899i = Collections.emptyList();
                this.f47901k = "";
                this.f47902l = "";
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47896f = "";
                this.f47899i = Collections.emptyList();
                this.f47901k = "";
                this.f47902l = "";
                e0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
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

        /* loaded from: classes6.dex */
        public interface g extends r1 {
        }

        /* synthetic */ GoogleGrpc(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static GoogleGrpc getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return x.f48299e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static GoogleGrpc parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GoogleGrpc parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<GoogleGrpc> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GoogleGrpc)) {
                return super.equals(obj);
            }
            GoogleGrpc googleGrpc = (GoogleGrpc) obj;
            if (getTargetUri().equals(googleGrpc.getTargetUri()) && hasChannelCredentials() == googleGrpc.hasChannelCredentials()) {
                if ((!hasChannelCredentials() || getChannelCredentials().equals(googleGrpc.getChannelCredentials())) && getCallCredentialsList().equals(googleGrpc.getCallCredentialsList()) && getStatPrefix().equals(googleGrpc.getStatPrefix()) && getCredentialsFactoryName().equals(googleGrpc.getCredentialsFactoryName()) && hasConfig() == googleGrpc.hasConfig()) {
                    if ((!hasConfig() || getConfig().equals(googleGrpc.getConfig())) && hasPerStreamBufferLimitBytes() == googleGrpc.hasPerStreamBufferLimitBytes()) {
                        if ((!hasPerStreamBufferLimitBytes() || getPerStreamBufferLimitBytes().equals(googleGrpc.getPerStreamBufferLimitBytes())) && hasChannelArgs() == googleGrpc.hasChannelArgs()) {
                            return (!hasChannelArgs() || getChannelArgs().equals(googleGrpc.getChannelArgs())) && this.unknownFields.equals(googleGrpc.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public CallCredentials getCallCredentials(int i9) {
            return this.callCredentials_.get(i9);
        }

        public int getCallCredentialsCount() {
            return this.callCredentials_.size();
        }

        public List<CallCredentials> getCallCredentialsList() {
            return this.callCredentials_;
        }

        public c getCallCredentialsOrBuilder(int i9) {
            return this.callCredentials_.get(i9);
        }

        public List<? extends c> getCallCredentialsOrBuilderList() {
            return this.callCredentials_;
        }

        public ChannelArgs getChannelArgs() {
            ChannelArgs channelArgs = this.channelArgs_;
            return channelArgs == null ? ChannelArgs.getDefaultInstance() : channelArgs;
        }

        public d getChannelArgsOrBuilder() {
            return getChannelArgs();
        }

        public ChannelCredentials getChannelCredentials() {
            ChannelCredentials channelCredentials = this.channelCredentials_;
            return channelCredentials == null ? ChannelCredentials.getDefaultInstance() : channelCredentials;
        }

        public e getChannelCredentialsOrBuilder() {
            return getChannelCredentials();
        }

        public Struct getConfig() {
            Struct struct = this.config_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getConfigOrBuilder() {
            return getConfig();
        }

        public String getCredentialsFactoryName() {
            Object obj = this.credentialsFactoryName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.credentialsFactoryName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getCredentialsFactoryNameBytes() {
            Object obj = this.credentialsFactoryName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.credentialsFactoryName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<GoogleGrpc> getParserForType() {
            return PARSER;
        }

        public UInt32Value getPerStreamBufferLimitBytes() {
            UInt32Value uInt32Value = this.perStreamBufferLimitBytes_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getPerStreamBufferLimitBytesOrBuilder() {
            return getPerStreamBufferLimitBytes();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.targetUri_) ? GeneratedMessageV3.computeStringSize(1, this.targetUri_) + 0 : 0;
            if (this.channelCredentials_ != null) {
                computeStringSize += CodedOutputStream.G(2, getChannelCredentials());
            }
            for (int i10 = 0; i10 < this.callCredentials_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(3, this.callCredentials_.get(i10));
            }
            if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.statPrefix_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.credentialsFactoryName_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.credentialsFactoryName_);
            }
            if (this.config_ != null) {
                computeStringSize += CodedOutputStream.G(6, getConfig());
            }
            if (this.perStreamBufferLimitBytes_ != null) {
                computeStringSize += CodedOutputStream.G(7, getPerStreamBufferLimitBytes());
            }
            if (this.channelArgs_ != null) {
                computeStringSize += CodedOutputStream.G(8, getChannelArgs());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getStatPrefix() {
            Object obj = this.statPrefix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.statPrefix_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getStatPrefixBytes() {
            Object obj = this.statPrefix_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.statPrefix_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getTargetUri() {
            Object obj = this.targetUri_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.targetUri_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getTargetUriBytes() {
            Object obj = this.targetUri_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.targetUri_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasChannelArgs() {
            return this.channelArgs_ != null;
        }

        public boolean hasChannelCredentials() {
            return this.channelCredentials_ != null;
        }

        public boolean hasConfig() {
            return this.config_ != null;
        }

        public boolean hasPerStreamBufferLimitBytes() {
            return this.perStreamBufferLimitBytes_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTargetUri().hashCode();
            if (hasChannelCredentials()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getChannelCredentials().hashCode();
            }
            if (getCallCredentialsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getCallCredentialsList().hashCode();
            }
            int hashCode2 = (((((((hashCode * 37) + 4) * 53) + getStatPrefix().hashCode()) * 37) + 5) * 53) + getCredentialsFactoryName().hashCode();
            if (hasConfig()) {
                hashCode2 = (((hashCode2 * 37) + 6) * 53) + getConfig().hashCode();
            }
            if (hasPerStreamBufferLimitBytes()) {
                hashCode2 = (((hashCode2 * 37) + 7) * 53) + getPerStreamBufferLimitBytes().hashCode();
            }
            if (hasChannelArgs()) {
                hashCode2 = (((hashCode2 * 37) + 8) * 53) + getChannelArgs().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return x.f48300f.d(GoogleGrpc.class, b.class);
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
            return new GoogleGrpc();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.targetUri_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.targetUri_);
            }
            if (this.channelCredentials_ != null) {
                codedOutputStream.L0(2, getChannelCredentials());
            }
            for (int i9 = 0; i9 < this.callCredentials_.size(); i9++) {
                codedOutputStream.L0(3, this.callCredentials_.get(i9));
            }
            if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.statPrefix_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.credentialsFactoryName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.credentialsFactoryName_);
            }
            if (this.config_ != null) {
                codedOutputStream.L0(6, getConfig());
            }
            if (this.perStreamBufferLimitBytes_ != null) {
                codedOutputStream.L0(7, getPerStreamBufferLimitBytes());
            }
            if (this.channelArgs_ != null) {
                codedOutputStream.L0(8, getChannelArgs());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ GoogleGrpc(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(GoogleGrpc googleGrpc) {
            return DEFAULT_INSTANCE.toBuilder().l0(googleGrpc);
        }

        public static GoogleGrpc parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private GoogleGrpc(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GoogleGrpc parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static GoogleGrpc parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public GoogleGrpc getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
        }

        public static GoogleGrpc parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private GoogleGrpc() {
            this.memoizedIsInitialized = (byte) -1;
            this.targetUri_ = "";
            this.callCredentials_ = Collections.emptyList();
            this.statPrefix_ = "";
            this.credentialsFactoryName_ = "";
        }

        public static GoogleGrpc parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static GoogleGrpc parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static GoogleGrpc parseFrom(InputStream inputStream) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static GoogleGrpc parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private GoogleGrpc(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ChannelCredentials channelCredentials = this.channelCredentials_;
                                    ChannelCredentials.b builder = channelCredentials != null ? channelCredentials.toBuilder() : null;
                                    ChannelCredentials channelCredentials2 = (ChannelCredentials) pVar.B(ChannelCredentials.parser(), f0Var);
                                    this.channelCredentials_ = channelCredentials2;
                                    if (builder != null) {
                                        builder.g0(channelCredentials2);
                                        this.channelCredentials_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    if (!(z11 & true)) {
                                        this.callCredentials_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.callCredentials_.add((CallCredentials) pVar.B(CallCredentials.parser(), f0Var));
                                } else if (L == 34) {
                                    this.statPrefix_ = pVar.K();
                                } else if (L == 42) {
                                    this.credentialsFactoryName_ = pVar.K();
                                } else if (L == 50) {
                                    Struct struct = this.config_;
                                    Struct.b builder2 = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                    this.config_ = struct2;
                                    if (builder2 != null) {
                                        builder2.i0(struct2);
                                        this.config_ = builder2.I();
                                    }
                                } else if (L == 58) {
                                    UInt32Value uInt32Value = this.perStreamBufferLimitBytes_;
                                    UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.perStreamBufferLimitBytes_ = uInt32Value2;
                                    if (builder3 != null) {
                                        builder3.g0(uInt32Value2);
                                        this.perStreamBufferLimitBytes_ = builder3.I();
                                    }
                                } else if (L != 66) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    ChannelArgs channelArgs = this.channelArgs_;
                                    ChannelArgs.c builder4 = channelArgs != null ? channelArgs.toBuilder() : null;
                                    ChannelArgs channelArgs2 = (ChannelArgs) pVar.B(ChannelArgs.parser(), f0Var);
                                    this.channelArgs_ = channelArgs2;
                                    if (builder4 != null) {
                                        builder4.i0(channelArgs2);
                                        this.channelArgs_ = builder4.I();
                                    }
                                }
                            } else {
                                this.targetUri_ = pVar.K();
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
                        this.callCredentials_ = Collections.unmodifiableList(this.callCredentials_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static GoogleGrpc parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static GoogleGrpc parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (GoogleGrpc) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum TargetSpecifierCase implements u0.c {
        ENVOY_GRPC(1),
        GOOGLE_GRPC(2),
        TARGETSPECIFIER_NOT_SET(0);
        
        private final int value;

        TargetSpecifierCase(int i9) {
            this.value = i9;
        }

        public static TargetSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return GOOGLE_GRPC;
                }
                return ENVOY_GRPC;
            }
            return TARGETSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TargetSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<GrpcService> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GrpcService m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new GrpcService(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47909a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f47910b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f47911c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f47912d;

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ int[] f47913e;

        static {
            int[] iArr = new int[TargetSpecifierCase.values().length];
            f47913e = iArr;
            try {
                iArr[TargetSpecifierCase.ENVOY_GRPC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47913e[TargetSpecifierCase.GOOGLE_GRPC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47913e[TargetSpecifierCase.TARGETSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[GoogleGrpc.ChannelArgs.Value.ValueSpecifierCase.values().length];
            f47912d = iArr2;
            try {
                iArr2[GoogleGrpc.ChannelArgs.Value.ValueSpecifierCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47912d[GoogleGrpc.ChannelArgs.Value.ValueSpecifierCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47912d[GoogleGrpc.ChannelArgs.Value.ValueSpecifierCase.VALUESPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[GoogleGrpc.CallCredentials.CredentialSpecifierCase.values().length];
            f47911c = iArr3;
            try {
                iArr3[GoogleGrpc.CallCredentials.CredentialSpecifierCase.ACCESS_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.GOOGLE_COMPUTE_ENGINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.GOOGLE_REFRESH_TOKEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.SERVICE_ACCOUNT_JWT_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.GOOGLE_IAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.FROM_PLUGIN.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.STS_SERVICE.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f47911c[GoogleGrpc.CallCredentials.CredentialSpecifierCase.CREDENTIALSPECIFIER_NOT_SET.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr4 = new int[GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.ConfigTypeCase.values().length];
            f47910b = iArr4;
            try {
                iArr4[GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f47910b[GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr5 = new int[GoogleGrpc.ChannelCredentials.CredentialSpecifierCase.values().length];
            f47909a = iArr5;
            try {
                iArr5[GoogleGrpc.ChannelCredentials.CredentialSpecifierCase.SSL_CREDENTIALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f47909a[GoogleGrpc.ChannelCredentials.CredentialSpecifierCase.GOOGLE_DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f47909a[GoogleGrpc.ChannelCredentials.CredentialSpecifierCase.LOCAL_CREDENTIALS.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f47909a[GoogleGrpc.ChannelCredentials.CredentialSpecifierCase.CREDENTIALSPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements w {

        /* renamed from: e  reason: collision with root package name */
        private int f47914e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47915f;

        /* renamed from: g  reason: collision with root package name */
        private int f47916g;

        /* renamed from: h  reason: collision with root package name */
        private q2<EnvoyGrpc, EnvoyGrpc.b, d> f47917h;

        /* renamed from: i  reason: collision with root package name */
        private q2<GoogleGrpc, GoogleGrpc.b, e> f47918i;

        /* renamed from: j  reason: collision with root package name */
        private Duration f47919j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f47920k;

        /* renamed from: l  reason: collision with root package name */
        private List<HeaderValue> f47921l;

        /* renamed from: m  reason: collision with root package name */
        private l2<HeaderValue, HeaderValue.b, z> f47922m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47916g & 1) == 0) {
                this.f47921l = new ArrayList(this.f47921l);
                this.f47916g |= 1;
            }
        }

        private l2<HeaderValue, HeaderValue.b, z> d0() {
            if (this.f47922m == null) {
                this.f47922m = new l2<>(this.f47921l, (this.f47916g & 1) != 0, H(), O());
                this.f47921l = null;
            }
            return this.f47922m;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return x.f48296b.d(GrpcService.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GrpcService build() {
            GrpcService I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GrpcService I() {
            GrpcService grpcService = new GrpcService(this, (a) null);
            if (this.f47914e == 1) {
                q2<EnvoyGrpc, EnvoyGrpc.b, d> q2Var = this.f47917h;
                if (q2Var == null) {
                    grpcService.targetSpecifier_ = this.f47915f;
                } else {
                    grpcService.targetSpecifier_ = q2Var.b();
                }
            }
            if (this.f47914e == 2) {
                q2<GoogleGrpc, GoogleGrpc.b, e> q2Var2 = this.f47918i;
                if (q2Var2 == null) {
                    grpcService.targetSpecifier_ = this.f47915f;
                } else {
                    grpcService.targetSpecifier_ = q2Var2.b();
                }
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var3 = this.f47920k;
            if (q2Var3 == null) {
                grpcService.timeout_ = this.f47919j;
            } else {
                grpcService.timeout_ = q2Var3.b();
            }
            l2<HeaderValue, HeaderValue.b, z> l2Var = this.f47922m;
            if (l2Var == null) {
                if ((this.f47916g & 1) != 0) {
                    this.f47921l = Collections.unmodifiableList(this.f47921l);
                    this.f47916g &= -2;
                }
                grpcService.initialMetadata_ = this.f47921l;
            } else {
                grpcService.initialMetadata_ = l2Var.e();
            }
            grpcService.targetSpecifierCase_ = this.f47914e;
            Q();
            return grpcService;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public GrpcService getDefaultInstanceForType() {
            return GrpcService.getDefaultInstance();
        }

        public c g0(EnvoyGrpc envoyGrpc) {
            q2<EnvoyGrpc, EnvoyGrpc.b, d> q2Var = this.f47917h;
            if (q2Var == null) {
                if (this.f47914e == 1 && this.f47915f != EnvoyGrpc.getDefaultInstance()) {
                    this.f47915f = EnvoyGrpc.newBuilder((EnvoyGrpc) this.f47915f).g0(envoyGrpc).I();
                } else {
                    this.f47915f = envoyGrpc;
                }
                R();
            } else {
                if (this.f47914e == 1) {
                    q2Var.e(envoyGrpc);
                }
                this.f47917h.g(envoyGrpc);
            }
            this.f47914e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return x.f48295a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.access$15300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.GrpcService$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof GrpcService) {
                return j0((GrpcService) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(GrpcService grpcService) {
            if (grpcService == GrpcService.getDefaultInstance()) {
                return this;
            }
            if (grpcService.hasTimeout()) {
                l0(grpcService.getTimeout());
            }
            if (this.f47922m == null) {
                if (!grpcService.initialMetadata_.isEmpty()) {
                    if (this.f47921l.isEmpty()) {
                        this.f47921l = grpcService.initialMetadata_;
                        this.f47916g &= -2;
                    } else {
                        a0();
                        this.f47921l.addAll(grpcService.initialMetadata_);
                    }
                    R();
                }
            } else if (!grpcService.initialMetadata_.isEmpty()) {
                if (this.f47922m.k()) {
                    this.f47922m.f();
                    this.f47922m = null;
                    this.f47921l = grpcService.initialMetadata_;
                    this.f47916g &= -2;
                    this.f47922m = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47922m.b(grpcService.initialMetadata_);
                }
            }
            int i9 = b.f47913e[grpcService.getTargetSpecifierCase().ordinal()];
            if (i9 == 1) {
                g0(grpcService.getEnvoyGrpc());
            } else if (i9 == 2) {
                k0(grpcService.getGoogleGrpc());
            }
            z(((GeneratedMessageV3) grpcService).unknownFields);
            R();
            return this;
        }

        public c k0(GoogleGrpc googleGrpc) {
            q2<GoogleGrpc, GoogleGrpc.b, e> q2Var = this.f47918i;
            if (q2Var == null) {
                if (this.f47914e == 2 && this.f47915f != GoogleGrpc.getDefaultInstance()) {
                    this.f47915f = GoogleGrpc.newBuilder((GoogleGrpc) this.f47915f).l0(googleGrpc).I();
                } else {
                    this.f47915f = googleGrpc;
                }
                R();
            } else {
                if (this.f47914e == 2) {
                    q2Var.e(googleGrpc);
                }
                this.f47918i.g(googleGrpc);
            }
            this.f47914e = 2;
            return this;
        }

        public c l0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f47920k;
            if (q2Var == null) {
                Duration duration2 = this.f47919j;
                if (duration2 != null) {
                    this.f47919j = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47919j = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47914e = 0;
            this.f47921l = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47914e = 0;
            this.f47921l = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* synthetic */ GrpcService(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GrpcService getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return x.f48295a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GrpcService parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GrpcService parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GrpcService> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GrpcService)) {
            return super.equals(obj);
        }
        GrpcService grpcService = (GrpcService) obj;
        if (hasTimeout() != grpcService.hasTimeout()) {
            return false;
        }
        if ((!hasTimeout() || getTimeout().equals(grpcService.getTimeout())) && getInitialMetadataList().equals(grpcService.getInitialMetadataList()) && getTargetSpecifierCase().equals(grpcService.getTargetSpecifierCase())) {
            int i9 = this.targetSpecifierCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getGoogleGrpc().equals(grpcService.getGoogleGrpc())) {
                    return false;
                }
            } else if (!getEnvoyGrpc().equals(grpcService.getEnvoyGrpc())) {
                return false;
            }
            return this.unknownFields.equals(grpcService.unknownFields);
        }
        return false;
    }

    public EnvoyGrpc getEnvoyGrpc() {
        if (this.targetSpecifierCase_ == 1) {
            return (EnvoyGrpc) this.targetSpecifier_;
        }
        return EnvoyGrpc.getDefaultInstance();
    }

    public d getEnvoyGrpcOrBuilder() {
        if (this.targetSpecifierCase_ == 1) {
            return (EnvoyGrpc) this.targetSpecifier_;
        }
        return EnvoyGrpc.getDefaultInstance();
    }

    public GoogleGrpc getGoogleGrpc() {
        if (this.targetSpecifierCase_ == 2) {
            return (GoogleGrpc) this.targetSpecifier_;
        }
        return GoogleGrpc.getDefaultInstance();
    }

    public e getGoogleGrpcOrBuilder() {
        if (this.targetSpecifierCase_ == 2) {
            return (GoogleGrpc) this.targetSpecifier_;
        }
        return GoogleGrpc.getDefaultInstance();
    }

    public HeaderValue getInitialMetadata(int i9) {
        return this.initialMetadata_.get(i9);
    }

    public int getInitialMetadataCount() {
        return this.initialMetadata_.size();
    }

    public List<HeaderValue> getInitialMetadataList() {
        return this.initialMetadata_;
    }

    public z getInitialMetadataOrBuilder(int i9) {
        return this.initialMetadata_.get(i9);
    }

    public List<? extends z> getInitialMetadataOrBuilderList() {
        return this.initialMetadata_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GrpcService> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.targetSpecifierCase_ == 1 ? CodedOutputStream.G(1, (EnvoyGrpc) this.targetSpecifier_) + 0 : 0;
        if (this.targetSpecifierCase_ == 2) {
            G += CodedOutputStream.G(2, (GoogleGrpc) this.targetSpecifier_);
        }
        if (this.timeout_ != null) {
            G += CodedOutputStream.G(3, getTimeout());
        }
        for (int i10 = 0; i10 < this.initialMetadata_.size(); i10++) {
            G += CodedOutputStream.G(5, this.initialMetadata_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TargetSpecifierCase getTargetSpecifierCase() {
        return TargetSpecifierCase.forNumber(this.targetSpecifierCase_);
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getTimeoutOrBuilder() {
        return getTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasEnvoyGrpc() {
        return this.targetSpecifierCase_ == 1;
    }

    public boolean hasGoogleGrpc() {
        return this.targetSpecifierCase_ == 2;
    }

    public boolean hasTimeout() {
        return this.timeout_ != null;
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
        if (hasTimeout()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getTimeout().hashCode();
        }
        if (getInitialMetadataCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getInitialMetadataList().hashCode();
        }
        int i11 = this.targetSpecifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getEnvoyGrpc().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getGoogleGrpc().hashCode();
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
        return x.f48296b.d(GrpcService.class, c.class);
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
        return new GrpcService();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.targetSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (EnvoyGrpc) this.targetSpecifier_);
        }
        if (this.targetSpecifierCase_ == 2) {
            codedOutputStream.L0(2, (GoogleGrpc) this.targetSpecifier_);
        }
        if (this.timeout_ != null) {
            codedOutputStream.L0(3, getTimeout());
        }
        for (int i9 = 0; i9 < this.initialMetadata_.size(); i9++) {
            codedOutputStream.L0(5, this.initialMetadata_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GrpcService(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(GrpcService grpcService) {
        return DEFAULT_INSTANCE.toBuilder().j0(grpcService);
    }

    public static GrpcService parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GrpcService(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.targetSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GrpcService parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcService parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GrpcService getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static GrpcService parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static GrpcService parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private GrpcService() {
        this.targetSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.initialMetadata_ = Collections.emptyList();
    }

    public static GrpcService parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GrpcService parseFrom(InputStream inputStream) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GrpcService parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private GrpcService(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            EnvoyGrpc.b builder = this.targetSpecifierCase_ == 1 ? ((EnvoyGrpc) this.targetSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(EnvoyGrpc.parser(), f0Var);
                            this.targetSpecifier_ = B;
                            if (builder != null) {
                                builder.g0((EnvoyGrpc) B);
                                this.targetSpecifier_ = builder.I();
                            }
                            this.targetSpecifierCase_ = 1;
                        } else if (L == 18) {
                            GoogleGrpc.b builder2 = this.targetSpecifierCase_ == 2 ? ((GoogleGrpc) this.targetSpecifier_).toBuilder() : null;
                            o1 B2 = pVar.B(GoogleGrpc.parser(), f0Var);
                            this.targetSpecifier_ = B2;
                            if (builder2 != null) {
                                builder2.l0((GoogleGrpc) B2);
                                this.targetSpecifier_ = builder2.I();
                            }
                            this.targetSpecifierCase_ = 2;
                        } else if (L == 26) {
                            Duration duration = this.timeout_;
                            Duration.b builder3 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.timeout_ = duration2;
                            if (builder3 != null) {
                                builder3.e0(duration2);
                                this.timeout_ = builder3.I();
                            }
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.initialMetadata_ = new ArrayList();
                                z11 |= true;
                            }
                            this.initialMetadata_.add((HeaderValue) pVar.B(HeaderValue.parser(), f0Var));
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
                    this.initialMetadata_ = Collections.unmodifiableList(this.initialMetadata_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static GrpcService parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GrpcService parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcService) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
