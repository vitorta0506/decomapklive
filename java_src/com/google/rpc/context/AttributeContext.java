package com.google.rpc.context;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.Timestamp;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class AttributeContext extends GeneratedMessageV3 implements r1 {
    public static final int API_FIELD_NUMBER = 6;
    public static final int DESTINATION_FIELD_NUMBER = 2;
    public static final int EXTENSIONS_FIELD_NUMBER = 8;
    public static final int ORIGIN_FIELD_NUMBER = 7;
    public static final int REQUEST_FIELD_NUMBER = 3;
    public static final int RESOURCE_FIELD_NUMBER = 5;
    public static final int RESPONSE_FIELD_NUMBER = 4;
    public static final int SOURCE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Api api_;
    private Peer destination_;
    private List<Any> extensions_;
    private byte memoizedIsInitialized;
    private Peer origin_;
    private Request request_;
    private Resource resource_;
    private Response response_;
    private Peer source_;
    private static final AttributeContext DEFAULT_INSTANCE = new AttributeContext();
    private static final e2<AttributeContext> PARSER = new a();

    /* loaded from: classes3.dex */
    public static final class Api extends GeneratedMessageV3 implements b {
        public static final int OPERATION_FIELD_NUMBER = 2;
        public static final int PROTOCOL_FIELD_NUMBER = 3;
        public static final int SERVICE_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object operation_;
        private volatile Object protocol_;
        private volatile Object service_;
        private volatile Object version_;
        private static final Api DEFAULT_INSTANCE = new Api();
        private static final e2<Api> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Api> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Api m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Api(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements b {

            /* renamed from: e  reason: collision with root package name */
            private Object f15620e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15621f;

            /* renamed from: g  reason: collision with root package name */
            private Object f15622g;

            /* renamed from: h  reason: collision with root package name */
            private Object f15623h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15701h.d(Api.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Api build() {
                Api I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Api I() {
                Api api = new Api(this, (a) null);
                api.service_ = this.f15620e;
                api.operation_ = this.f15621f;
                api.protocol_ = this.f15622g;
                api.version_ = this.f15623h;
                Q();
                return api;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Api getDefaultInstanceForType() {
                return Api.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Api.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Api.access$2500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Api r3 = (com.google.rpc.context.AttributeContext.Api) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Api r4 = (com.google.rpc.context.AttributeContext.Api) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Api.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Api$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Api) {
                    return g0((Api) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Api api) {
                if (api == Api.getDefaultInstance()) {
                    return this;
                }
                if (!api.getService().isEmpty()) {
                    this.f15620e = api.service_;
                    R();
                }
                if (!api.getOperation().isEmpty()) {
                    this.f15621f = api.operation_;
                    R();
                }
                if (!api.getProtocol().isEmpty()) {
                    this.f15622g = api.protocol_;
                    R();
                }
                if (!api.getVersion().isEmpty()) {
                    this.f15623h = api.version_;
                    R();
                }
                z(((GeneratedMessageV3) api).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15700g;
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
                this.f15620e = "";
                this.f15621f = "";
                this.f15622g = "";
                this.f15623h = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15620e = "";
                this.f15621f = "";
                this.f15622g = "";
                this.f15623h = "";
                b0();
            }
        }

        /* synthetic */ Api(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Api getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15700g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Api parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Api parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Api> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Api)) {
                return super.equals(obj);
            }
            Api api = (Api) obj;
            return getService().equals(api.getService()) && getOperation().equals(api.getOperation()) && getProtocol().equals(api.getProtocol()) && getVersion().equals(api.getVersion()) && this.unknownFields.equals(api.unknownFields);
        }

        public String getOperation() {
            Object obj = this.operation_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.operation_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getOperationBytes() {
            Object obj = this.operation_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.operation_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Api> getParserForType() {
            return PARSER;
        }

        public String getProtocol() {
            Object obj = this.protocol_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.protocol_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getProtocolBytes() {
            Object obj = this.protocol_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.protocol_ = copyFromUtf8;
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.service_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.service_);
            if (!GeneratedMessageV3.isStringEmpty(this.operation_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.operation_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.protocol_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.version_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getService() {
            Object obj = this.service_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.service_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getServiceBytes() {
            Object obj = this.service_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.service_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getVersion() {
            Object obj = this.version_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.version_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getVersionBytes() {
            Object obj = this.version_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.version_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getService().hashCode()) * 37) + 2) * 53) + getOperation().hashCode()) * 37) + 3) * 53) + getProtocol().hashCode()) * 37) + 4) * 53) + getVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15701h.d(Api.class, b.class);
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
            return new Api();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.service_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.service_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.operation_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.operation_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.protocol_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.version_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Api(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Api api) {
            return DEFAULT_INSTANCE.toBuilder().g0(api);
        }

        public static Api parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Api parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Api(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Api parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Api getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Api parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Api() {
            this.memoizedIsInitialized = (byte) -1;
            this.service_ = "";
            this.operation_ = "";
            this.protocol_ = "";
            this.version_ = "";
        }

        public static Api parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Api parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Api parseFrom(InputStream inputStream) throws IOException {
            return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Api parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Api parseFrom(p pVar) throws IOException {
            return (Api) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Api parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Api) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        private Api(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.service_ = pVar.K();
                            } else if (L == 18) {
                                this.operation_ = pVar.K();
                            } else if (L == 26) {
                                this.protocol_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.version_ = pVar.K();
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
    }

    /* loaded from: classes3.dex */
    public static final class Auth extends GeneratedMessageV3 implements c {
        public static final int ACCESS_LEVELS_FIELD_NUMBER = 5;
        public static final int AUDIENCES_FIELD_NUMBER = 2;
        public static final int CLAIMS_FIELD_NUMBER = 4;
        private static final Auth DEFAULT_INSTANCE = new Auth();
        private static final e2<Auth> PARSER = new a();
        public static final int PRESENTER_FIELD_NUMBER = 3;
        public static final int PRINCIPAL_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private z0 accessLevels_;
        private z0 audiences_;
        private Struct claims_;
        private byte memoizedIsInitialized;
        private volatile Object presenter_;
        private volatile Object principal_;

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Auth> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Auth m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Auth(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f15624e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15625f;

            /* renamed from: g  reason: collision with root package name */
            private z0 f15626g;

            /* renamed from: h  reason: collision with root package name */
            private Object f15627h;

            /* renamed from: i  reason: collision with root package name */
            private Struct f15628i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f15629j;

            /* renamed from: k  reason: collision with root package name */
            private z0 f15630k;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f15624e & 2) == 0) {
                    this.f15630k = new y0(this.f15630k);
                    this.f15624e |= 2;
                }
            }

            private void b0() {
                if ((this.f15624e & 1) == 0) {
                    this.f15626g = new y0(this.f15626g);
                    this.f15624e |= 1;
                }
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15703j.d(Auth.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Auth build() {
                Auth I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Auth I() {
                Auth auth = new Auth(this, (a) null);
                auth.principal_ = this.f15625f;
                if ((this.f15624e & 1) != 0) {
                    this.f15626g = this.f15626g.V0();
                    this.f15624e &= -2;
                }
                auth.audiences_ = this.f15626g;
                auth.presenter_ = this.f15627h;
                q2<Struct, Struct.b, u2> q2Var = this.f15629j;
                if (q2Var == null) {
                    auth.claims_ = this.f15628i;
                } else {
                    auth.claims_ = q2Var.b();
                }
                if ((this.f15624e & 2) != 0) {
                    this.f15630k = this.f15630k.V0();
                    this.f15624e &= -3;
                }
                auth.accessLevels_ = this.f15630k;
                Q();
                return auth;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Auth getDefaultInstanceForType() {
                return Auth.getDefaultInstance();
            }

            public b g0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f15629j;
                if (q2Var == null) {
                    Struct struct2 = this.f15628i;
                    if (struct2 != null) {
                        this.f15628i = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f15628i = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15702i;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Auth.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Auth.access$4100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Auth r3 = (com.google.rpc.context.AttributeContext.Auth) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Auth r4 = (com.google.rpc.context.AttributeContext.Auth) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Auth.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Auth$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Auth) {
                    return j0((Auth) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Auth auth) {
                if (auth == Auth.getDefaultInstance()) {
                    return this;
                }
                if (!auth.getPrincipal().isEmpty()) {
                    this.f15625f = auth.principal_;
                    R();
                }
                if (!auth.audiences_.isEmpty()) {
                    if (this.f15626g.isEmpty()) {
                        this.f15626g = auth.audiences_;
                        this.f15624e &= -2;
                    } else {
                        b0();
                        this.f15626g.addAll(auth.audiences_);
                    }
                    R();
                }
                if (!auth.getPresenter().isEmpty()) {
                    this.f15627h = auth.presenter_;
                    R();
                }
                if (auth.hasClaims()) {
                    g0(auth.getClaims());
                }
                if (!auth.accessLevels_.isEmpty()) {
                    if (this.f15630k.isEmpty()) {
                        this.f15630k = auth.accessLevels_;
                        this.f15624e &= -3;
                    } else {
                        a0();
                        this.f15630k.addAll(auth.accessLevels_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) auth).unknownFields);
                R();
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
                this.f15625f = "";
                z0 z0Var = y0.f15344d;
                this.f15626g = z0Var;
                this.f15627h = "";
                this.f15630k = z0Var;
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15625f = "";
                z0 z0Var = y0.f15344d;
                this.f15626g = z0Var;
                this.f15627h = "";
                this.f15630k = z0Var;
                e0();
            }
        }

        /* synthetic */ Auth(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Auth getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15702i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Auth parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Auth) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Auth parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Auth> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Auth)) {
                return super.equals(obj);
            }
            Auth auth = (Auth) obj;
            if (getPrincipal().equals(auth.getPrincipal()) && m223getAudiencesList().equals(auth.m223getAudiencesList()) && getPresenter().equals(auth.getPresenter()) && hasClaims() == auth.hasClaims()) {
                return (!hasClaims() || getClaims().equals(auth.getClaims())) && m222getAccessLevelsList().equals(auth.m222getAccessLevelsList()) && this.unknownFields.equals(auth.unknownFields);
            }
            return false;
        }

        public String getAccessLevels(int i9) {
            return this.accessLevels_.get(i9);
        }

        public ByteString getAccessLevelsBytes(int i9) {
            return this.accessLevels_.j0(i9);
        }

        public int getAccessLevelsCount() {
            return this.accessLevels_.size();
        }

        public String getAudiences(int i9) {
            return this.audiences_.get(i9);
        }

        public ByteString getAudiencesBytes(int i9) {
            return this.audiences_.j0(i9);
        }

        public int getAudiencesCount() {
            return this.audiences_.size();
        }

        public Struct getClaims() {
            Struct struct = this.claims_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getClaimsOrBuilder() {
            return getClaims();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Auth> getParserForType() {
            return PARSER;
        }

        public String getPresenter() {
            Object obj = this.presenter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.presenter_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPresenterBytes() {
            Object obj = this.presenter_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.presenter_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getPrincipal() {
            Object obj = this.principal_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.principal_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPrincipalBytes() {
            Object obj = this.principal_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.principal_ = copyFromUtf8;
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
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.principal_) ? GeneratedMessageV3.computeStringSize(1, this.principal_) + 0 : 0;
            int i10 = 0;
            for (int i11 = 0; i11 < this.audiences_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.audiences_.c1(i11));
            }
            int size = computeStringSize + i10 + (m223getAudiencesList().size() * 1);
            if (!GeneratedMessageV3.isStringEmpty(this.presenter_)) {
                size += GeneratedMessageV3.computeStringSize(3, this.presenter_);
            }
            if (this.claims_ != null) {
                size += CodedOutputStream.G(4, getClaims());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.accessLevels_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.accessLevels_.c1(i13));
            }
            int size2 = size + i12 + (m222getAccessLevelsList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasClaims() {
            return this.claims_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPrincipal().hashCode();
            if (getAudiencesCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + m223getAudiencesList().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 3) * 53) + getPresenter().hashCode();
            if (hasClaims()) {
                hashCode2 = (((hashCode2 * 37) + 4) * 53) + getClaims().hashCode();
            }
            if (getAccessLevelsCount() > 0) {
                hashCode2 = (((hashCode2 * 37) + 5) * 53) + m222getAccessLevelsList().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15703j.d(Auth.class, b.class);
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
            return new Auth();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.principal_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.principal_);
            }
            for (int i9 = 0; i9 < this.audiences_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.audiences_.c1(i9));
            }
            if (!GeneratedMessageV3.isStringEmpty(this.presenter_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.presenter_);
            }
            if (this.claims_ != null) {
                codedOutputStream.L0(4, getClaims());
            }
            for (int i10 = 0; i10 < this.accessLevels_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.accessLevels_.c1(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Auth(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Auth auth) {
            return DEFAULT_INSTANCE.toBuilder().j0(auth);
        }

        public static Auth parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Auth) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Auth parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getAccessLevelsList */
        public i2 m222getAccessLevelsList() {
            return this.accessLevels_;
        }

        /* renamed from: getAudiencesList */
        public i2 m223getAudiencesList() {
            return this.audiences_;
        }

        private Auth(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Auth parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Auth getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static Auth parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Auth() {
            this.memoizedIsInitialized = (byte) -1;
            this.principal_ = "";
            z0 z0Var = y0.f15344d;
            this.audiences_ = z0Var;
            this.presenter_ = "";
            this.accessLevels_ = z0Var;
        }

        public static Auth parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Auth parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Auth parseFrom(InputStream inputStream) throws IOException {
            return (Auth) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Auth parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Auth) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Auth parseFrom(p pVar) throws IOException {
            return (Auth) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Auth parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Auth) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        private Auth(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 10) {
                                    this.principal_ = pVar.K();
                                } else if (L == 18) {
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.audiences_ = new y0();
                                        z11 |= true;
                                    }
                                    this.audiences_.add(K);
                                } else if (L == 26) {
                                    this.presenter_ = pVar.K();
                                } else if (L == 34) {
                                    Struct struct = this.claims_;
                                    Struct.b builder = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                    this.claims_ = struct2;
                                    if (builder != null) {
                                        builder.i0(struct2);
                                        this.claims_ = builder.I();
                                    }
                                } else if (L != 42) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    String K2 = pVar.K();
                                    if (!(z11 & true)) {
                                        this.accessLevels_ = new y0();
                                        z11 |= true;
                                    }
                                    this.accessLevels_.add(K2);
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
                        this.audiences_ = this.audiences_.V0();
                    }
                    if (z11 & true) {
                        this.accessLevels_ = this.accessLevels_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Peer extends GeneratedMessageV3 implements e {
        public static final int IP_FIELD_NUMBER = 1;
        public static final int LABELS_FIELD_NUMBER = 6;
        public static final int PORT_FIELD_NUMBER = 2;
        public static final int PRINCIPAL_FIELD_NUMBER = 7;
        public static final int REGION_CODE_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private volatile Object ip_;
        private g1<String, String> labels_;
        private byte memoizedIsInitialized;
        private long port_;
        private volatile Object principal_;
        private volatile Object regionCode_;
        private static final Peer DEFAULT_INSTANCE = new Peer();
        private static final e2<Peer> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Peer> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Peer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Peer(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f15631e;

            /* renamed from: f  reason: collision with root package name */
            private long f15632f;

            /* renamed from: g  reason: collision with root package name */
            private g1<String, String> f15633g;

            /* renamed from: h  reason: collision with root package name */
            private Object f15634h;

            /* renamed from: i  reason: collision with root package name */
            private Object f15635i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, String> b0() {
                g1<String, String> g1Var = this.f15633g;
                return g1Var == null ? g1.g(c.f15636a) : g1Var;
            }

            private g1<String, String> d0() {
                R();
                if (this.f15633g == null) {
                    this.f15633g = g1.p(c.f15636a);
                }
                if (!this.f15633g.m()) {
                    this.f15633g = this.f15633g.f();
                }
                return this.f15633g;
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15697d.d(Peer.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 == 6) {
                    return b0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 == 6) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Peer build() {
                Peer I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Peer I() {
                Peer peer = new Peer(this, (a) null);
                peer.ip_ = this.f15631e;
                peer.port_ = this.f15632f;
                peer.labels_ = b0();
                peer.labels_.n();
                peer.principal_ = this.f15634h;
                peer.regionCode_ = this.f15635i;
                Q();
                return peer;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Peer getDefaultInstanceForType() {
                return Peer.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Peer.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Peer.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Peer r3 = (com.google.rpc.context.AttributeContext.Peer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Peer r4 = (com.google.rpc.context.AttributeContext.Peer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Peer.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Peer$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15696c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Peer) {
                    return i0((Peer) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Peer peer) {
                if (peer == Peer.getDefaultInstance()) {
                    return this;
                }
                if (!peer.getIp().isEmpty()) {
                    this.f15631e = peer.ip_;
                    R();
                }
                if (peer.getPort() != 0) {
                    l0(peer.getPort());
                }
                d0().o(peer.internalGetLabels());
                if (!peer.getPrincipal().isEmpty()) {
                    this.f15634h = peer.principal_;
                    R();
                }
                if (!peer.getRegionCode().isEmpty()) {
                    this.f15635i = peer.regionCode_;
                    R();
                }
                z(((GeneratedMessageV3) peer).unknownFields);
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

            public b l0(long j10) {
                this.f15632f = j10;
                R();
                return this;
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
                this.f15631e = "";
                this.f15634h = "";
                this.f15635i = "";
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15631e = "";
                this.f15634h = "";
                this.f15635i = "";
                e0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class c {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f15636a;

            static {
                Descriptors.b bVar = com.google.rpc.context.a.f15698e;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f15636a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* synthetic */ Peer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Peer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15696c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetLabels() {
            g1<String, String> g1Var = this.labels_;
            return g1Var == null ? g1.g(c.f15636a) : g1Var;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Peer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Peer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Peer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Peer> parser() {
            return PARSER;
        }

        public boolean containsLabels(String str) {
            Objects.requireNonNull(str);
            return internalGetLabels().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Peer)) {
                return super.equals(obj);
            }
            Peer peer = (Peer) obj;
            return getIp().equals(peer.getIp()) && getPort() == peer.getPort() && internalGetLabels().equals(peer.internalGetLabels()) && getPrincipal().equals(peer.getPrincipal()) && getRegionCode().equals(peer.getRegionCode()) && this.unknownFields.equals(peer.unknownFields);
        }

        public String getIp() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ip_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getIpBytes() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Deprecated
        public Map<String, String> getLabels() {
            return getLabelsMap();
        }

        public int getLabelsCount() {
            return internalGetLabels().i().size();
        }

        public Map<String, String> getLabelsMap() {
            return internalGetLabels().i();
        }

        public String getLabelsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetLabels().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getLabelsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetLabels().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Peer> getParserForType() {
            return PARSER;
        }

        public long getPort() {
            return this.port_;
        }

        public String getPrincipal() {
            Object obj = this.principal_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.principal_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPrincipalBytes() {
            Object obj = this.principal_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.principal_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getRegionCode() {
            Object obj = this.regionCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.regionCode_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getRegionCodeBytes() {
            Object obj = this.regionCode_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.regionCode_ = copyFromUtf8;
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.ip_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.ip_);
            long j10 = this.port_;
            if (j10 != 0) {
                computeStringSize += CodedOutputStream.z(2, j10);
            }
            for (Map.Entry<String, String> entry : internalGetLabels().i().entrySet()) {
                computeStringSize += CodedOutputStream.G(6, c.f15636a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.principal_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.principal_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.regionCode_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(8, this.regionCode_);
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
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIp().hashCode()) * 37) + 2) * 53) + u0.i(getPort());
            if (!internalGetLabels().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 6) * 53) + internalGetLabels().hashCode();
            }
            int hashCode2 = (((((((((hashCode * 37) + 7) * 53) + getPrincipal().hashCode()) * 37) + 8) * 53) + getRegionCode().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15697d.d(Peer.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 == 6) {
                return internalGetLabels();
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
            return new Peer();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.ip_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.ip_);
            }
            long j10 = this.port_;
            if (j10 != 0) {
                codedOutputStream.J0(2, j10);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetLabels(), c.f15636a, 6);
            if (!GeneratedMessageV3.isStringEmpty(this.principal_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.principal_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.regionCode_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.regionCode_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Peer(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Peer peer) {
            return DEFAULT_INSTANCE.toBuilder().i0(peer);
        }

        public static Peer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Peer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Peer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Peer(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Peer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Peer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Peer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Peer() {
            this.memoizedIsInitialized = (byte) -1;
            this.ip_ = "";
            this.principal_ = "";
            this.regionCode_ = "";
        }

        public static Peer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Peer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Peer parseFrom(InputStream inputStream) throws IOException {
            return (Peer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Peer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Peer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Peer parseFrom(p pVar) throws IOException {
            return (Peer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
        private Peer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.ip_ = pVar.K();
                            } else if (L == 16) {
                                this.port_ = pVar.A();
                            } else if (L == 50) {
                                if (!(z11 & true)) {
                                    this.labels_ = g1.p(c.f15636a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(c.f15636a.getParserForType(), f0Var);
                                this.labels_.l().put(e1Var.f(), e1Var.h());
                            } else if (L == 58) {
                                this.principal_ = pVar.K();
                            } else if (L != 66) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.regionCode_ = pVar.K();
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

        public static Peer parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Peer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Request extends GeneratedMessageV3 implements f {
        public static final int AUTH_FIELD_NUMBER = 13;
        public static final int HEADERS_FIELD_NUMBER = 3;
        public static final int HOST_FIELD_NUMBER = 5;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int METHOD_FIELD_NUMBER = 2;
        public static final int PATH_FIELD_NUMBER = 4;
        public static final int PROTOCOL_FIELD_NUMBER = 11;
        public static final int QUERY_FIELD_NUMBER = 7;
        public static final int REASON_FIELD_NUMBER = 12;
        public static final int SCHEME_FIELD_NUMBER = 6;
        public static final int SIZE_FIELD_NUMBER = 10;
        public static final int TIME_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private Auth auth_;
        private g1<String, String> headers_;
        private volatile Object host_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private volatile Object method_;
        private volatile Object path_;
        private volatile Object protocol_;
        private volatile Object query_;
        private volatile Object reason_;
        private volatile Object scheme_;
        private long size_;
        private Timestamp time_;
        private static final Request DEFAULT_INSTANCE = new Request();
        private static final e2<Request> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Request> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Request m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Request(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Object f15637e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15638f;

            /* renamed from: g  reason: collision with root package name */
            private g1<String, String> f15639g;

            /* renamed from: h  reason: collision with root package name */
            private Object f15640h;

            /* renamed from: i  reason: collision with root package name */
            private Object f15641i;

            /* renamed from: j  reason: collision with root package name */
            private Object f15642j;

            /* renamed from: k  reason: collision with root package name */
            private Object f15643k;

            /* renamed from: l  reason: collision with root package name */
            private Timestamp f15644l;

            /* renamed from: m  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f15645m;

            /* renamed from: n  reason: collision with root package name */
            private long f15646n;

            /* renamed from: o  reason: collision with root package name */
            private Object f15647o;

            /* renamed from: p  reason: collision with root package name */
            private Object f15648p;

            /* renamed from: q  reason: collision with root package name */
            private Auth f15649q;

            /* renamed from: r  reason: collision with root package name */
            private q2<Auth, Auth.b, c> f15650r;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, String> b0() {
                g1<String, String> g1Var = this.f15639g;
                return g1Var == null ? g1.g(c.f15651a) : g1Var;
            }

            private g1<String, String> d0() {
                R();
                if (this.f15639g == null) {
                    this.f15639g = g1.p(c.f15651a);
                }
                if (!this.f15639g.m()) {
                    this.f15639g = this.f15639g.f();
                }
                return this.f15639g;
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15705l.d(Request.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 == 3) {
                    return b0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 == 3) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Request build() {
                Request I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Request I() {
                Request request = new Request(this, (a) null);
                request.id_ = this.f15637e;
                request.method_ = this.f15638f;
                request.headers_ = b0();
                request.headers_.n();
                request.path_ = this.f15640h;
                request.host_ = this.f15641i;
                request.scheme_ = this.f15642j;
                request.query_ = this.f15643k;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15645m;
                if (q2Var == null) {
                    request.time_ = this.f15644l;
                } else {
                    request.time_ = q2Var.b();
                }
                request.size_ = this.f15646n;
                request.protocol_ = this.f15647o;
                request.reason_ = this.f15648p;
                q2<Auth, Auth.b, c> q2Var2 = this.f15650r;
                if (q2Var2 == null) {
                    request.auth_ = this.f15649q;
                } else {
                    request.auth_ = q2Var2.b();
                }
                Q();
                return request;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Request getDefaultInstanceForType() {
                return Request.getDefaultInstance();
            }

            public b g0(Auth auth) {
                q2<Auth, Auth.b, c> q2Var = this.f15650r;
                if (q2Var == null) {
                    Auth auth2 = this.f15649q;
                    if (auth2 != null) {
                        this.f15649q = Auth.newBuilder(auth2).j0(auth).I();
                    } else {
                        this.f15649q = auth;
                    }
                    R();
                } else {
                    q2Var.e(auth);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15704k;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Request.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Request.access$6500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Request r3 = (com.google.rpc.context.AttributeContext.Request) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Request r4 = (com.google.rpc.context.AttributeContext.Request) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Request.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Request$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Request) {
                    return j0((Request) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Request request) {
                if (request == Request.getDefaultInstance()) {
                    return this;
                }
                if (!request.getId().isEmpty()) {
                    this.f15637e = request.id_;
                    R();
                }
                if (!request.getMethod().isEmpty()) {
                    this.f15638f = request.method_;
                    R();
                }
                d0().o(request.internalGetHeaders());
                if (!request.getPath().isEmpty()) {
                    this.f15640h = request.path_;
                    R();
                }
                if (!request.getHost().isEmpty()) {
                    this.f15641i = request.host_;
                    R();
                }
                if (!request.getScheme().isEmpty()) {
                    this.f15642j = request.scheme_;
                    R();
                }
                if (!request.getQuery().isEmpty()) {
                    this.f15643k = request.query_;
                    R();
                }
                if (request.hasTime()) {
                    k0(request.getTime());
                }
                if (request.getSize() != 0) {
                    n0(request.getSize());
                }
                if (!request.getProtocol().isEmpty()) {
                    this.f15647o = request.protocol_;
                    R();
                }
                if (!request.getReason().isEmpty()) {
                    this.f15648p = request.reason_;
                    R();
                }
                if (request.hasAuth()) {
                    g0(request.getAuth());
                }
                z(((GeneratedMessageV3) request).unknownFields);
                R();
                return this;
            }

            public b k0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15645m;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f15644l;
                    if (timestamp2 != null) {
                        this.f15644l = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f15644l = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b n0(long j10) {
                this.f15646n = j10;
                R();
                return this;
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
                this.f15637e = "";
                this.f15638f = "";
                this.f15640h = "";
                this.f15641i = "";
                this.f15642j = "";
                this.f15643k = "";
                this.f15647o = "";
                this.f15648p = "";
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15637e = "";
                this.f15638f = "";
                this.f15640h = "";
                this.f15641i = "";
                this.f15642j = "";
                this.f15643k = "";
                this.f15647o = "";
                this.f15648p = "";
                e0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class c {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f15651a;

            static {
                Descriptors.b bVar = com.google.rpc.context.a.f15706m;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f15651a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* synthetic */ Request(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15704k;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetHeaders() {
            g1<String, String> g1Var = this.headers_;
            return g1Var == null ? g1.g(c.f15651a) : g1Var;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Request> parser() {
            return PARSER;
        }

        public boolean containsHeaders(String str) {
            Objects.requireNonNull(str);
            return internalGetHeaders().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Request)) {
                return super.equals(obj);
            }
            Request request = (Request) obj;
            if (getId().equals(request.getId()) && getMethod().equals(request.getMethod()) && internalGetHeaders().equals(request.internalGetHeaders()) && getPath().equals(request.getPath()) && getHost().equals(request.getHost()) && getScheme().equals(request.getScheme()) && getQuery().equals(request.getQuery()) && hasTime() == request.hasTime()) {
                if ((!hasTime() || getTime().equals(request.getTime())) && getSize() == request.getSize() && getProtocol().equals(request.getProtocol()) && getReason().equals(request.getReason()) && hasAuth() == request.hasAuth()) {
                    return (!hasAuth() || getAuth().equals(request.getAuth())) && this.unknownFields.equals(request.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Auth getAuth() {
            Auth auth = this.auth_;
            return auth == null ? Auth.getDefaultInstance() : auth;
        }

        public c getAuthOrBuilder() {
            return getAuth();
        }

        @Deprecated
        public Map<String, String> getHeaders() {
            return getHeadersMap();
        }

        public int getHeadersCount() {
            return internalGetHeaders().i().size();
        }

        public Map<String, String> getHeadersMap() {
            return internalGetHeaders().i();
        }

        public String getHeadersOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetHeaders().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getHeadersOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetHeaders().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        public String getHost() {
            Object obj = this.host_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.host_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getHostBytes() {
            Object obj = this.host_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.host_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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

        public String getMethod() {
            Object obj = this.method_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.method_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getMethodBytes() {
            Object obj = this.method_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.method_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Request> getParserForType() {
            return PARSER;
        }

        public String getPath() {
            Object obj = this.path_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.path_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPathBytes() {
            Object obj = this.path_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.path_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getProtocol() {
            Object obj = this.protocol_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.protocol_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getProtocolBytes() {
            Object obj = this.protocol_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.protocol_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getQuery() {
            Object obj = this.query_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.query_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getQueryBytes() {
            Object obj = this.query_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.query_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getReason() {
            Object obj = this.reason_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.reason_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getReasonBytes() {
            Object obj = this.reason_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.reason_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getScheme() {
            Object obj = this.scheme_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.scheme_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getSchemeBytes() {
            Object obj = this.scheme_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.scheme_ = copyFromUtf8;
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.id_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.id_);
            if (!GeneratedMessageV3.isStringEmpty(this.method_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.method_);
            }
            for (Map.Entry<String, String> entry : internalGetHeaders().i().entrySet()) {
                computeStringSize += CodedOutputStream.G(3, c.f15651a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(4, this.path_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.host_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.host_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.scheme_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(6, this.scheme_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.query_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.query_);
            }
            if (this.time_ != null) {
                computeStringSize += CodedOutputStream.G(9, getTime());
            }
            long j10 = this.size_;
            if (j10 != 0) {
                computeStringSize += CodedOutputStream.z(10, j10);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.protocol_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.reason_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.reason_);
            }
            if (this.auth_ != null) {
                computeStringSize += CodedOutputStream.G(13, getAuth());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public long getSize() {
            return this.size_;
        }

        public Timestamp getTime() {
            Timestamp timestamp = this.time_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getTimeOrBuilder() {
            return getTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAuth() {
            return this.auth_ != null;
        }

        public boolean hasTime() {
            return this.time_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getMethod().hashCode();
            if (!internalGetHeaders().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetHeaders().hashCode();
            }
            int hashCode2 = (((((((((((((((hashCode * 37) + 4) * 53) + getPath().hashCode()) * 37) + 5) * 53) + getHost().hashCode()) * 37) + 6) * 53) + getScheme().hashCode()) * 37) + 7) * 53) + getQuery().hashCode();
            if (hasTime()) {
                hashCode2 = (((hashCode2 * 37) + 9) * 53) + getTime().hashCode();
            }
            int i10 = (((((((((((hashCode2 * 37) + 10) * 53) + u0.i(getSize())) * 37) + 11) * 53) + getProtocol().hashCode()) * 37) + 12) * 53) + getReason().hashCode();
            if (hasAuth()) {
                i10 = (((i10 * 37) + 13) * 53) + getAuth().hashCode();
            }
            int hashCode3 = (i10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15705l.d(Request.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 == 3) {
                return internalGetHeaders();
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
            return new Request();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.method_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.method_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetHeaders(), c.f15651a, 3);
            if (!GeneratedMessageV3.isStringEmpty(this.path_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.path_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.host_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.host_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.scheme_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.scheme_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.query_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.query_);
            }
            if (this.time_ != null) {
                codedOutputStream.L0(9, getTime());
            }
            long j10 = this.size_;
            if (j10 != 0) {
                codedOutputStream.J0(10, j10);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.protocol_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.reason_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.reason_);
            }
            if (this.auth_ != null) {
                codedOutputStream.L0(13, getAuth());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Request(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Request request) {
            return DEFAULT_INSTANCE.toBuilder().j0(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Request(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Request getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static Request parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Request() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.method_ = "";
            this.path_ = "";
            this.host_ = "";
            this.scheme_ = "";
            this.query_ = "";
            this.protocol_ = "";
            this.reason_ = "";
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Request parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Request parseFrom(p pVar) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Request parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Request) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
        private Request(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.method_ = pVar.K();
                                    continue;
                                case 26:
                                    if (!(z11 & true)) {
                                        this.headers_ = g1.p(c.f15651a);
                                        z11 |= true;
                                    }
                                    e1 e1Var = (e1) pVar.B(c.f15651a.getParserForType(), f0Var);
                                    this.headers_.l().put(e1Var.f(), e1Var.h());
                                    continue;
                                case 34:
                                    this.path_ = pVar.K();
                                    continue;
                                case 42:
                                    this.host_ = pVar.K();
                                    continue;
                                case 50:
                                    this.scheme_ = pVar.K();
                                    continue;
                                case 58:
                                    this.query_ = pVar.K();
                                    continue;
                                case 74:
                                    Timestamp timestamp = this.time_;
                                    Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.time_ = timestamp2;
                                    if (builder != null) {
                                        builder.g0(timestamp2);
                                        this.time_ = builder.I();
                                    } else {
                                        continue;
                                    }
                                case 80:
                                    this.size_ = pVar.A();
                                    continue;
                                case 90:
                                    this.protocol_ = pVar.K();
                                    continue;
                                case 98:
                                    this.reason_ = pVar.K();
                                    continue;
                                case 106:
                                    Auth auth = this.auth_;
                                    Auth.b builder2 = auth != null ? auth.toBuilder() : null;
                                    Auth auth2 = (Auth) pVar.B(Auth.parser(), f0Var);
                                    this.auth_ = auth2;
                                    if (builder2 != null) {
                                        builder2.j0(auth2);
                                        this.auth_ = builder2.I();
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
    }

    /* loaded from: classes3.dex */
    public static final class Resource extends GeneratedMessageV3 implements g {
        public static final int ANNOTATIONS_FIELD_NUMBER = 6;
        public static final int CREATE_TIME_FIELD_NUMBER = 8;
        public static final int DELETE_TIME_FIELD_NUMBER = 10;
        public static final int DISPLAY_NAME_FIELD_NUMBER = 7;
        public static final int ETAG_FIELD_NUMBER = 11;
        public static final int LABELS_FIELD_NUMBER = 4;
        public static final int LOCATION_FIELD_NUMBER = 12;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int SERVICE_FIELD_NUMBER = 1;
        public static final int TYPE_FIELD_NUMBER = 3;
        public static final int UID_FIELD_NUMBER = 5;
        public static final int UPDATE_TIME_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private g1<String, String> annotations_;
        private Timestamp createTime_;
        private Timestamp deleteTime_;
        private volatile Object displayName_;
        private volatile Object etag_;
        private g1<String, String> labels_;
        private volatile Object location_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private volatile Object service_;
        private volatile Object type_;
        private volatile Object uid_;
        private Timestamp updateTime_;
        private static final Resource DEFAULT_INSTANCE = new Resource();
        private static final e2<Resource> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Resource> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Resource m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Resource(pVar, f0Var, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f15652a;

            static {
                Descriptors.b bVar = com.google.rpc.context.a.f15716w;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f15652a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* loaded from: classes3.dex */
        public static final class c extends GeneratedMessageV3.b<c> implements g {

            /* renamed from: e  reason: collision with root package name */
            private Object f15653e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15654f;

            /* renamed from: g  reason: collision with root package name */
            private Object f15655g;

            /* renamed from: h  reason: collision with root package name */
            private g1<String, String> f15656h;

            /* renamed from: i  reason: collision with root package name */
            private Object f15657i;

            /* renamed from: j  reason: collision with root package name */
            private g1<String, String> f15658j;

            /* renamed from: k  reason: collision with root package name */
            private Object f15659k;

            /* renamed from: l  reason: collision with root package name */
            private Timestamp f15660l;

            /* renamed from: m  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f15661m;

            /* renamed from: n  reason: collision with root package name */
            private Timestamp f15662n;

            /* renamed from: o  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f15663o;

            /* renamed from: p  reason: collision with root package name */
            private Timestamp f15664p;

            /* renamed from: q  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f15665q;

            /* renamed from: r  reason: collision with root package name */
            private Object f15666r;

            /* renamed from: s  reason: collision with root package name */
            private Object f15667s;

            /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, String> b0() {
                g1<String, String> g1Var = this.f15658j;
                return g1Var == null ? g1.g(b.f15652a) : g1Var;
            }

            private g1<String, String> d0() {
                g1<String, String> g1Var = this.f15656h;
                return g1Var == null ? g1.g(d.f15668a) : g1Var;
            }

            private g1<String, String> e0() {
                R();
                if (this.f15658j == null) {
                    this.f15658j = g1.p(b.f15652a);
                }
                if (!this.f15658j.m()) {
                    this.f15658j = this.f15658j.f();
                }
                return this.f15658j;
            }

            private g1<String, String> g0() {
                R();
                if (this.f15656h == null) {
                    this.f15656h = g1.p(d.f15668a);
                }
                if (!this.f15656h.m()) {
                    this.f15656h = this.f15656h.f();
                }
                return this.f15656h;
            }

            private void h0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15713t.d(Resource.class, c.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 != 4) {
                    if (i9 == 6) {
                        return b0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }
                return d0();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 != 4) {
                    if (i9 == 6) {
                        return e0();
                    }
                    throw new RuntimeException("Invalid map field number: " + i9);
                }
                return g0();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Resource build() {
                Resource I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Resource I() {
                Resource resource = new Resource(this, (a) null);
                resource.service_ = this.f15653e;
                resource.name_ = this.f15654f;
                resource.type_ = this.f15655g;
                resource.labels_ = d0();
                resource.labels_.n();
                resource.uid_ = this.f15657i;
                resource.annotations_ = b0();
                resource.annotations_.n();
                resource.displayName_ = this.f15659k;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15661m;
                if (q2Var == null) {
                    resource.createTime_ = this.f15660l;
                } else {
                    resource.createTime_ = q2Var.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f15663o;
                if (q2Var2 == null) {
                    resource.updateTime_ = this.f15662n;
                } else {
                    resource.updateTime_ = q2Var2.b();
                }
                q2<Timestamp, Timestamp.b, z2> q2Var3 = this.f15665q;
                if (q2Var3 == null) {
                    resource.deleteTime_ = this.f15664p;
                } else {
                    resource.deleteTime_ = q2Var3.b();
                }
                resource.etag_ = this.f15666r;
                resource.location_ = this.f15667s;
                Q();
                return resource;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public c n() {
                return (c) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Resource getDefaultInstanceForType() {
                return Resource.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15712s;
            }

            public c i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15661m;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f15660l;
                    if (timestamp2 != null) {
                        this.f15660l = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f15660l = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public c j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15665q;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f15664p;
                    if (timestamp2 != null) {
                        this.f15664p = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f15664p = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Resource.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Resource.access$10700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Resource r3 = (com.google.rpc.context.AttributeContext.Resource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Resource r4 = (com.google.rpc.context.AttributeContext.Resource) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Resource.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Resource$c");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public c v(l1 l1Var) {
                if (l1Var instanceof Resource) {
                    return m0((Resource) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public c m0(Resource resource) {
                if (resource == Resource.getDefaultInstance()) {
                    return this;
                }
                if (!resource.getService().isEmpty()) {
                    this.f15653e = resource.service_;
                    R();
                }
                if (!resource.getName().isEmpty()) {
                    this.f15654f = resource.name_;
                    R();
                }
                if (!resource.getType().isEmpty()) {
                    this.f15655g = resource.type_;
                    R();
                }
                g0().o(resource.internalGetLabels());
                if (!resource.getUid().isEmpty()) {
                    this.f15657i = resource.uid_;
                    R();
                }
                e0().o(resource.internalGetAnnotations());
                if (!resource.getDisplayName().isEmpty()) {
                    this.f15659k = resource.displayName_;
                    R();
                }
                if (resource.hasCreateTime()) {
                    i0(resource.getCreateTime());
                }
                if (resource.hasUpdateTime()) {
                    o0(resource.getUpdateTime());
                }
                if (resource.hasDeleteTime()) {
                    j0(resource.getDeleteTime());
                }
                if (!resource.getEtag().isEmpty()) {
                    this.f15666r = resource.etag_;
                    R();
                }
                if (!resource.getLocation().isEmpty()) {
                    this.f15667s = resource.location_;
                    R();
                }
                z(((GeneratedMessageV3) resource).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final c z(h3 h3Var) {
                return (c) super.z(h3Var);
            }

            public c o0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15663o;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f15662n;
                    if (timestamp2 != null) {
                        this.f15662n = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f15662n = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final c f1(h3 h3Var) {
                return (c) super.f1(h3Var);
            }

            /* synthetic */ c(a aVar) {
                this();
            }

            private c() {
                this.f15653e = "";
                this.f15654f = "";
                this.f15655g = "";
                this.f15657i = "";
                this.f15659k = "";
                this.f15666r = "";
                this.f15667s = "";
                h0();
            }

            private c(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15653e = "";
                this.f15654f = "";
                this.f15655g = "";
                this.f15657i = "";
                this.f15659k = "";
                this.f15666r = "";
                this.f15667s = "";
                h0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class d {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f15668a;

            static {
                Descriptors.b bVar = com.google.rpc.context.a.f15714u;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f15668a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* synthetic */ Resource(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Resource getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15712s;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetAnnotations() {
            g1<String, String> g1Var = this.annotations_;
            return g1Var == null ? g1.g(b.f15652a) : g1Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetLabels() {
            g1<String, String> g1Var = this.labels_;
            return g1Var == null ? g1.g(d.f15668a) : g1Var;
        }

        public static c newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Resource parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Resource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Resource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Resource> parser() {
            return PARSER;
        }

        public boolean containsAnnotations(String str) {
            Objects.requireNonNull(str);
            return internalGetAnnotations().i().containsKey(str);
        }

        public boolean containsLabels(String str) {
            Objects.requireNonNull(str);
            return internalGetLabels().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Resource)) {
                return super.equals(obj);
            }
            Resource resource = (Resource) obj;
            if (getService().equals(resource.getService()) && getName().equals(resource.getName()) && getType().equals(resource.getType()) && internalGetLabels().equals(resource.internalGetLabels()) && getUid().equals(resource.getUid()) && internalGetAnnotations().equals(resource.internalGetAnnotations()) && getDisplayName().equals(resource.getDisplayName()) && hasCreateTime() == resource.hasCreateTime()) {
                if ((!hasCreateTime() || getCreateTime().equals(resource.getCreateTime())) && hasUpdateTime() == resource.hasUpdateTime()) {
                    if ((!hasUpdateTime() || getUpdateTime().equals(resource.getUpdateTime())) && hasDeleteTime() == resource.hasDeleteTime()) {
                        return (!hasDeleteTime() || getDeleteTime().equals(resource.getDeleteTime())) && getEtag().equals(resource.getEtag()) && getLocation().equals(resource.getLocation()) && this.unknownFields.equals(resource.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        @Deprecated
        public Map<String, String> getAnnotations() {
            return getAnnotationsMap();
        }

        public int getAnnotationsCount() {
            return internalGetAnnotations().i().size();
        }

        public Map<String, String> getAnnotationsMap() {
            return internalGetAnnotations().i();
        }

        public String getAnnotationsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetAnnotations().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getAnnotationsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetAnnotations().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        public Timestamp getCreateTime() {
            Timestamp timestamp = this.createTime_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getCreateTimeOrBuilder() {
            return getCreateTime();
        }

        public Timestamp getDeleteTime() {
            Timestamp timestamp = this.deleteTime_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getDeleteTimeOrBuilder() {
            return getDeleteTime();
        }

        public String getDisplayName() {
            Object obj = this.displayName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.displayName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDisplayNameBytes() {
            Object obj = this.displayName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.displayName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getEtag() {
            Object obj = this.etag_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.etag_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getEtagBytes() {
            Object obj = this.etag_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.etag_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Deprecated
        public Map<String, String> getLabels() {
            return getLabelsMap();
        }

        public int getLabelsCount() {
            return internalGetLabels().i().size();
        }

        public Map<String, String> getLabelsMap() {
            return internalGetLabels().i();
        }

        public String getLabelsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetLabels().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getLabelsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetLabels().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        public String getLocation() {
            Object obj = this.location_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.location_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getLocationBytes() {
            Object obj = this.location_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.location_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
        public e2<Resource> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.service_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.service_);
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.type_);
            }
            for (Map.Entry<String, String> entry : internalGetLabels().i().entrySet()) {
                computeStringSize += CodedOutputStream.G(4, d.f15668a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.uid_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(5, this.uid_);
            }
            for (Map.Entry<String, String> entry2 : internalGetAnnotations().i().entrySet()) {
                computeStringSize += CodedOutputStream.G(6, b.f15652a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(7, this.displayName_);
            }
            if (this.createTime_ != null) {
                computeStringSize += CodedOutputStream.G(8, getCreateTime());
            }
            if (this.updateTime_ != null) {
                computeStringSize += CodedOutputStream.G(9, getUpdateTime());
            }
            if (this.deleteTime_ != null) {
                computeStringSize += CodedOutputStream.G(10, getDeleteTime());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.etag_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(11, this.etag_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.location_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(12, this.location_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getService() {
            Object obj = this.service_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.service_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getServiceBytes() {
            Object obj = this.service_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.service_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.type_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getUid() {
            Object obj = this.uid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.uid_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getUidBytes() {
            Object obj = this.uid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.uid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Timestamp getUpdateTime() {
            Timestamp timestamp = this.updateTime_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getUpdateTimeOrBuilder() {
            return getUpdateTime();
        }

        public boolean hasCreateTime() {
            return this.createTime_ != null;
        }

        public boolean hasDeleteTime() {
            return this.deleteTime_ != null;
        }

        public boolean hasUpdateTime() {
            return this.updateTime_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getService().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getType().hashCode();
            if (!internalGetLabels().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 4) * 53) + internalGetLabels().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 5) * 53) + getUid().hashCode();
            if (!internalGetAnnotations().i().isEmpty()) {
                hashCode2 = (((hashCode2 * 37) + 6) * 53) + internalGetAnnotations().hashCode();
            }
            int hashCode3 = (((hashCode2 * 37) + 7) * 53) + getDisplayName().hashCode();
            if (hasCreateTime()) {
                hashCode3 = (((hashCode3 * 37) + 8) * 53) + getCreateTime().hashCode();
            }
            if (hasUpdateTime()) {
                hashCode3 = (((hashCode3 * 37) + 9) * 53) + getUpdateTime().hashCode();
            }
            if (hasDeleteTime()) {
                hashCode3 = (((hashCode3 * 37) + 10) * 53) + getDeleteTime().hashCode();
            }
            int hashCode4 = (((((((((hashCode3 * 37) + 11) * 53) + getEtag().hashCode()) * 37) + 12) * 53) + getLocation().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode4;
            return hashCode4;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15713t.d(Resource.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 != 4) {
                if (i9 == 6) {
                    return internalGetAnnotations();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return internalGetLabels();
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
            return new Resource();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.service_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.service_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.type_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetLabels(), d.f15668a, 4);
            if (!GeneratedMessageV3.isStringEmpty(this.uid_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.uid_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAnnotations(), b.f15652a, 6);
            if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.displayName_);
            }
            if (this.createTime_ != null) {
                codedOutputStream.L0(8, getCreateTime());
            }
            if (this.updateTime_ != null) {
                codedOutputStream.L0(9, getUpdateTime());
            }
            if (this.deleteTime_ != null) {
                codedOutputStream.L0(10, getDeleteTime());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.etag_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.etag_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.location_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.location_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Resource(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static c newBuilder(Resource resource) {
            return DEFAULT_INSTANCE.toBuilder().m0(resource);
        }

        public static Resource parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Resource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Resource parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Resource(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Resource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Resource getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c toBuilder() {
            return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).m0(this);
        }

        public static Resource parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c newBuilderForType() {
            return newBuilder();
        }

        private Resource() {
            this.memoizedIsInitialized = (byte) -1;
            this.service_ = "";
            this.name_ = "";
            this.type_ = "";
            this.uid_ = "";
            this.displayName_ = "";
            this.etag_ = "";
            this.location_ = "";
        }

        public static Resource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public c newBuilderForType(GeneratedMessageV3.c cVar) {
            return new c(cVar, null);
        }

        public static Resource parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Resource parseFrom(InputStream inputStream) throws IOException {
            return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Resource parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Resource parseFrom(p pVar) throws IOException {
            return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Resource parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Resource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }

        /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v19, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
        private Resource(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Timestamp.b builder;
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
                                    this.service_ = pVar.K();
                                    continue;
                                case 18:
                                    this.name_ = pVar.K();
                                    continue;
                                case 26:
                                    this.type_ = pVar.K();
                                    continue;
                                case 34:
                                    if (!(z11 & true)) {
                                        this.labels_ = g1.p(d.f15668a);
                                        z11 |= true;
                                    }
                                    e1 e1Var = (e1) pVar.B(d.f15668a.getParserForType(), f0Var);
                                    this.labels_.l().put(e1Var.f(), e1Var.h());
                                    continue;
                                case 42:
                                    this.uid_ = pVar.K();
                                    continue;
                                case 50:
                                    if (!(z11 & true)) {
                                        this.annotations_ = g1.p(b.f15652a);
                                        z11 |= true;
                                    }
                                    e1 e1Var2 = (e1) pVar.B(b.f15652a.getParserForType(), f0Var);
                                    this.annotations_.l().put(e1Var2.f(), e1Var2.h());
                                    continue;
                                case 58:
                                    this.displayName_ = pVar.K();
                                    continue;
                                case 66:
                                    Timestamp timestamp = this.createTime_;
                                    builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.createTime_ = timestamp2;
                                    if (builder != null) {
                                        builder.g0(timestamp2);
                                        this.createTime_ = builder.I();
                                    } else {
                                        continue;
                                    }
                                case 74:
                                    Timestamp timestamp3 = this.updateTime_;
                                    builder = timestamp3 != null ? timestamp3.toBuilder() : null;
                                    Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.updateTime_ = timestamp4;
                                    if (builder != null) {
                                        builder.g0(timestamp4);
                                        this.updateTime_ = builder.I();
                                    } else {
                                        continue;
                                    }
                                case 82:
                                    Timestamp timestamp5 = this.deleteTime_;
                                    builder = timestamp5 != null ? timestamp5.toBuilder() : null;
                                    Timestamp timestamp6 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.deleteTime_ = timestamp6;
                                    if (builder != null) {
                                        builder.g0(timestamp6);
                                        this.deleteTime_ = builder.I();
                                    } else {
                                        continue;
                                    }
                                case 90:
                                    this.etag_ = pVar.K();
                                    continue;
                                case 98:
                                    this.location_ = pVar.K();
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Response extends GeneratedMessageV3 implements h {
        public static final int BACKEND_LATENCY_FIELD_NUMBER = 5;
        public static final int CODE_FIELD_NUMBER = 1;
        public static final int HEADERS_FIELD_NUMBER = 3;
        public static final int SIZE_FIELD_NUMBER = 2;
        public static final int TIME_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private Duration backendLatency_;
        private long code_;
        private g1<String, String> headers_;
        private byte memoizedIsInitialized;
        private long size_;
        private Timestamp time_;
        private static final Response DEFAULT_INSTANCE = new Response();
        private static final e2<Response> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Response> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Response m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Response(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private long f15669e;

            /* renamed from: f  reason: collision with root package name */
            private long f15670f;

            /* renamed from: g  reason: collision with root package name */
            private g1<String, String> f15671g;

            /* renamed from: h  reason: collision with root package name */
            private Timestamp f15672h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f15673i;

            /* renamed from: j  reason: collision with root package name */
            private Duration f15674j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f15675k;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, String> b0() {
                g1<String, String> g1Var = this.f15671g;
                return g1Var == null ? g1.g(c.f15676a) : g1Var;
            }

            private g1<String, String> d0() {
                R();
                if (this.f15671g == null) {
                    this.f15671g = g1.p(c.f15676a);
                }
                if (!this.f15671g.m()) {
                    this.f15671g = this.f15671g.f();
                }
                return this.f15671g;
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.context.a.f15709p.d(Response.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 == 3) {
                    return b0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 == 3) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Response build() {
                Response I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Response I() {
                Response response = new Response(this, (a) null);
                response.code_ = this.f15669e;
                response.size_ = this.f15670f;
                response.headers_ = b0();
                response.headers_.n();
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15673i;
                if (q2Var == null) {
                    response.time_ = this.f15672h;
                } else {
                    response.time_ = q2Var.b();
                }
                q2<Duration, Duration.b, v> q2Var2 = this.f15675k;
                if (q2Var2 == null) {
                    response.backendLatency_ = this.f15674j;
                } else {
                    response.backendLatency_ = q2Var2.b();
                }
                Q();
                return response;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Response getDefaultInstanceForType() {
                return Response.getDefaultInstance();
            }

            public b g0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f15675k;
                if (q2Var == null) {
                    Duration duration2 = this.f15674j;
                    if (duration2 != null) {
                        this.f15674j = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f15674j = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.context.a.f15708o;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.context.AttributeContext.Response.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.Response.access$8600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.context.AttributeContext$Response r3 = (com.google.rpc.context.AttributeContext.Response) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.context.AttributeContext$Response r4 = (com.google.rpc.context.AttributeContext.Response) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.Response.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$Response$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Response) {
                    return j0((Response) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Response response) {
                if (response == Response.getDefaultInstance()) {
                    return this;
                }
                if (response.getCode() != 0) {
                    m0(response.getCode());
                }
                if (response.getSize() != 0) {
                    o0(response.getSize());
                }
                d0().o(response.internalGetHeaders());
                if (response.hasTime()) {
                    k0(response.getTime());
                }
                if (response.hasBackendLatency()) {
                    g0(response.getBackendLatency());
                }
                z(((GeneratedMessageV3) response).unknownFields);
                R();
                return this;
            }

            public b k0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f15673i;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f15672h;
                    if (timestamp2 != null) {
                        this.f15672h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f15672h = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b m0(long j10) {
                this.f15669e = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b o0(long j10) {
                this.f15670f = j10;
                R();
                return this;
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
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                e0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class c {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, String> f15676a;

            static {
                Descriptors.b bVar = com.google.rpc.context.a.f15710q;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f15676a = e1.k(bVar, fieldType, "", fieldType, "");
            }
        }

        /* synthetic */ Response(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.context.a.f15708o;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, String> internalGetHeaders() {
            g1<String, String> g1Var = this.headers_;
            return g1Var == null ? g1.g(c.f15676a) : g1Var;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Response> parser() {
            return PARSER;
        }

        public boolean containsHeaders(String str) {
            Objects.requireNonNull(str);
            return internalGetHeaders().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Response)) {
                return super.equals(obj);
            }
            Response response = (Response) obj;
            if (getCode() == response.getCode() && getSize() == response.getSize() && internalGetHeaders().equals(response.internalGetHeaders()) && hasTime() == response.hasTime()) {
                if ((!hasTime() || getTime().equals(response.getTime())) && hasBackendLatency() == response.hasBackendLatency()) {
                    return (!hasBackendLatency() || getBackendLatency().equals(response.getBackendLatency())) && this.unknownFields.equals(response.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Duration getBackendLatency() {
            Duration duration = this.backendLatency_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getBackendLatencyOrBuilder() {
            return getBackendLatency();
        }

        public long getCode() {
            return this.code_;
        }

        @Deprecated
        public Map<String, String> getHeaders() {
            return getHeadersMap();
        }

        public int getHeadersCount() {
            return internalGetHeaders().i().size();
        }

        public Map<String, String> getHeadersMap() {
            return internalGetHeaders().i();
        }

        public String getHeadersOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetHeaders().i();
            return i9.containsKey(str) ? i9.get(str) : str2;
        }

        public String getHeadersOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> i9 = internalGetHeaders().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Response> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            long j10 = this.code_;
            int z10 = j10 != 0 ? 0 + CodedOutputStream.z(1, j10) : 0;
            long j11 = this.size_;
            if (j11 != 0) {
                z10 += CodedOutputStream.z(2, j11);
            }
            for (Map.Entry<String, String> entry : internalGetHeaders().i().entrySet()) {
                z10 += CodedOutputStream.G(3, c.f15676a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            if (this.time_ != null) {
                z10 += CodedOutputStream.G(4, getTime());
            }
            if (this.backendLatency_ != null) {
                z10 += CodedOutputStream.G(5, getBackendLatency());
            }
            int serializedSize = z10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public long getSize() {
            return this.size_;
        }

        public Timestamp getTime() {
            Timestamp timestamp = this.time_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getTimeOrBuilder() {
            return getTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasBackendLatency() {
            return this.backendLatency_ != null;
        }

        public boolean hasTime() {
            return this.time_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getCode())) * 37) + 2) * 53) + u0.i(getSize());
            if (!internalGetHeaders().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetHeaders().hashCode();
            }
            if (hasTime()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getTime().hashCode();
            }
            if (hasBackendLatency()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getBackendLatency().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.context.a.f15709p.d(Response.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 == 3) {
                return internalGetHeaders();
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
            return new Response();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            long j10 = this.code_;
            if (j10 != 0) {
                codedOutputStream.J0(1, j10);
            }
            long j11 = this.size_;
            if (j11 != 0) {
                codedOutputStream.J0(2, j11);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetHeaders(), c.f15676a, 3);
            if (this.time_ != null) {
                codedOutputStream.L0(4, getTime());
            }
            if (this.backendLatency_ != null) {
                codedOutputStream.L0(5, getBackendLatency());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Response(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Response response) {
            return DEFAULT_INSTANCE.toBuilder().j0(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Response(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Response getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static Response parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Response() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Response parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
        private Response(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 8) {
                                    this.code_ = pVar.A();
                                } else if (L == 16) {
                                    this.size_ = pVar.A();
                                } else if (L != 26) {
                                    if (L == 34) {
                                        Timestamp timestamp = this.time_;
                                        Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                        this.time_ = timestamp2;
                                        if (builder != null) {
                                            builder.g0(timestamp2);
                                            this.time_ = builder.I();
                                        }
                                    } else if (L != 42) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        Duration duration = this.backendLatency_;
                                        Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                        Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                        this.backendLatency_ = duration2;
                                        if (builder2 != null) {
                                            builder2.e0(duration2);
                                            this.backendLatency_ = builder2.I();
                                        }
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.headers_ = g1.p(c.f15676a);
                                        z11 |= true;
                                    }
                                    e1 e1Var = (e1) pVar.B(c.f15676a.getParserForType(), f0Var);
                                    this.headers_.l().put(e1Var.f(), e1Var.h());
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

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Response parseFrom(p pVar) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Response parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Response) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<AttributeContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AttributeContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AttributeContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public interface b extends r1 {
    }

    /* loaded from: classes3.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes3.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15677e;

        /* renamed from: f  reason: collision with root package name */
        private Peer f15678f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Peer, Peer.b, e> f15679g;

        /* renamed from: h  reason: collision with root package name */
        private Peer f15680h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Peer, Peer.b, e> f15681i;

        /* renamed from: j  reason: collision with root package name */
        private Peer f15682j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Peer, Peer.b, e> f15683k;

        /* renamed from: l  reason: collision with root package name */
        private Request f15684l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Request, Request.b, f> f15685m;

        /* renamed from: n  reason: collision with root package name */
        private Response f15686n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Response, Response.b, h> f15687o;

        /* renamed from: p  reason: collision with root package name */
        private Resource f15688p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Resource, Resource.c, g> f15689q;

        /* renamed from: r  reason: collision with root package name */
        private Api f15690r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Api, Api.b, b> f15691s;

        /* renamed from: t  reason: collision with root package name */
        private List<Any> f15692t;

        /* renamed from: u  reason: collision with root package name */
        private l2<Any, Any.b, com.google.protobuf.f> f15693u;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15677e & 1) == 0) {
                this.f15692t = new ArrayList(this.f15692t);
                this.f15677e |= 1;
            }
        }

        private l2<Any, Any.b, com.google.protobuf.f> d0() {
            if (this.f15693u == null) {
                this.f15693u = new l2<>(this.f15692t, (this.f15677e & 1) != 0, H(), O());
                this.f15692t = null;
            }
            return this.f15693u;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.context.a.f15695b.d(AttributeContext.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AttributeContext build() {
            AttributeContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AttributeContext I() {
            AttributeContext attributeContext = new AttributeContext(this, (a) null);
            q2<Peer, Peer.b, e> q2Var = this.f15679g;
            if (q2Var == null) {
                attributeContext.origin_ = this.f15678f;
            } else {
                attributeContext.origin_ = q2Var.b();
            }
            q2<Peer, Peer.b, e> q2Var2 = this.f15681i;
            if (q2Var2 == null) {
                attributeContext.source_ = this.f15680h;
            } else {
                attributeContext.source_ = q2Var2.b();
            }
            q2<Peer, Peer.b, e> q2Var3 = this.f15683k;
            if (q2Var3 == null) {
                attributeContext.destination_ = this.f15682j;
            } else {
                attributeContext.destination_ = q2Var3.b();
            }
            q2<Request, Request.b, f> q2Var4 = this.f15685m;
            if (q2Var4 == null) {
                attributeContext.request_ = this.f15684l;
            } else {
                attributeContext.request_ = q2Var4.b();
            }
            q2<Response, Response.b, h> q2Var5 = this.f15687o;
            if (q2Var5 == null) {
                attributeContext.response_ = this.f15686n;
            } else {
                attributeContext.response_ = q2Var5.b();
            }
            q2<Resource, Resource.c, g> q2Var6 = this.f15689q;
            if (q2Var6 == null) {
                attributeContext.resource_ = this.f15688p;
            } else {
                attributeContext.resource_ = q2Var6.b();
            }
            q2<Api, Api.b, b> q2Var7 = this.f15691s;
            if (q2Var7 == null) {
                attributeContext.api_ = this.f15690r;
            } else {
                attributeContext.api_ = q2Var7.b();
            }
            l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f15693u;
            if (l2Var == null) {
                if ((this.f15677e & 1) != 0) {
                    this.f15692t = Collections.unmodifiableList(this.f15692t);
                    this.f15677e &= -2;
                }
                attributeContext.extensions_ = this.f15692t;
            } else {
                attributeContext.extensions_ = l2Var.e();
            }
            Q();
            return attributeContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public AttributeContext getDefaultInstanceForType() {
            return AttributeContext.getDefaultInstance();
        }

        public d g0(Api api) {
            q2<Api, Api.b, b> q2Var = this.f15691s;
            if (q2Var == null) {
                Api api2 = this.f15690r;
                if (api2 != null) {
                    this.f15690r = Api.newBuilder(api2).g0(api).I();
                } else {
                    this.f15690r = api;
                }
                R();
            } else {
                q2Var.e(api);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.context.a.f15694a;
        }

        public d h0(Peer peer) {
            q2<Peer, Peer.b, e> q2Var = this.f15683k;
            if (q2Var == null) {
                Peer peer2 = this.f15682j;
                if (peer2 != null) {
                    this.f15682j = Peer.newBuilder(peer2).i0(peer).I();
                } else {
                    this.f15682j = peer;
                }
                R();
            } else {
                q2Var.e(peer);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.context.AttributeContext.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.context.AttributeContext.access$13000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.context.AttributeContext r3 = (com.google.rpc.context.AttributeContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.rpc.context.AttributeContext r4 = (com.google.rpc.context.AttributeContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.context.AttributeContext.d.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.context.AttributeContext$d");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof AttributeContext) {
                return k0((AttributeContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d k0(AttributeContext attributeContext) {
            if (attributeContext == AttributeContext.getDefaultInstance()) {
                return this;
            }
            if (attributeContext.hasOrigin()) {
                l0(attributeContext.getOrigin());
            }
            if (attributeContext.hasSource()) {
                q0(attributeContext.getSource());
            }
            if (attributeContext.hasDestination()) {
                h0(attributeContext.getDestination());
            }
            if (attributeContext.hasRequest()) {
                m0(attributeContext.getRequest());
            }
            if (attributeContext.hasResponse()) {
                o0(attributeContext.getResponse());
            }
            if (attributeContext.hasResource()) {
                n0(attributeContext.getResource());
            }
            if (attributeContext.hasApi()) {
                g0(attributeContext.getApi());
            }
            if (this.f15693u == null) {
                if (!attributeContext.extensions_.isEmpty()) {
                    if (this.f15692t.isEmpty()) {
                        this.f15692t = attributeContext.extensions_;
                        this.f15677e &= -2;
                    } else {
                        a0();
                        this.f15692t.addAll(attributeContext.extensions_);
                    }
                    R();
                }
            } else if (!attributeContext.extensions_.isEmpty()) {
                if (this.f15693u.k()) {
                    this.f15693u.f();
                    this.f15693u = null;
                    this.f15692t = attributeContext.extensions_;
                    this.f15677e &= -2;
                    this.f15693u = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f15693u.b(attributeContext.extensions_);
                }
            }
            z(((GeneratedMessageV3) attributeContext).unknownFields);
            R();
            return this;
        }

        public d l0(Peer peer) {
            q2<Peer, Peer.b, e> q2Var = this.f15679g;
            if (q2Var == null) {
                Peer peer2 = this.f15678f;
                if (peer2 != null) {
                    this.f15678f = Peer.newBuilder(peer2).i0(peer).I();
                } else {
                    this.f15678f = peer;
                }
                R();
            } else {
                q2Var.e(peer);
            }
            return this;
        }

        public d m0(Request request) {
            q2<Request, Request.b, f> q2Var = this.f15685m;
            if (q2Var == null) {
                Request request2 = this.f15684l;
                if (request2 != null) {
                    this.f15684l = Request.newBuilder(request2).j0(request).I();
                } else {
                    this.f15684l = request;
                }
                R();
            } else {
                q2Var.e(request);
            }
            return this;
        }

        public d n0(Resource resource) {
            q2<Resource, Resource.c, g> q2Var = this.f15689q;
            if (q2Var == null) {
                Resource resource2 = this.f15688p;
                if (resource2 != null) {
                    this.f15688p = Resource.newBuilder(resource2).m0(resource).I();
                } else {
                    this.f15688p = resource;
                }
                R();
            } else {
                q2Var.e(resource);
            }
            return this;
        }

        public d o0(Response response) {
            q2<Response, Response.b, h> q2Var = this.f15687o;
            if (q2Var == null) {
                Response response2 = this.f15686n;
                if (response2 != null) {
                    this.f15686n = Response.newBuilder(response2).j0(response).I();
                } else {
                    this.f15686n = response;
                }
                R();
            } else {
                q2Var.e(response);
            }
            return this;
        }

        public d q0(Peer peer) {
            q2<Peer, Peer.b, e> q2Var = this.f15681i;
            if (q2Var == null) {
                Peer peer2 = this.f15680h;
                if (peer2 != null) {
                    this.f15680h = Peer.newBuilder(peer2).i0(peer).I();
                } else {
                    this.f15680h = peer;
                }
                R();
            } else {
                q2Var.e(peer);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f15692t = Collections.emptyList();
            e0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15692t = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes3.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes3.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes3.dex */
    public interface g extends r1 {
    }

    /* loaded from: classes3.dex */
    public interface h extends r1 {
    }

    /* synthetic */ AttributeContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AttributeContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.context.a.f15694a;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AttributeContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AttributeContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AttributeContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttributeContext)) {
            return super.equals(obj);
        }
        AttributeContext attributeContext = (AttributeContext) obj;
        if (hasOrigin() != attributeContext.hasOrigin()) {
            return false;
        }
        if ((!hasOrigin() || getOrigin().equals(attributeContext.getOrigin())) && hasSource() == attributeContext.hasSource()) {
            if ((!hasSource() || getSource().equals(attributeContext.getSource())) && hasDestination() == attributeContext.hasDestination()) {
                if ((!hasDestination() || getDestination().equals(attributeContext.getDestination())) && hasRequest() == attributeContext.hasRequest()) {
                    if ((!hasRequest() || getRequest().equals(attributeContext.getRequest())) && hasResponse() == attributeContext.hasResponse()) {
                        if ((!hasResponse() || getResponse().equals(attributeContext.getResponse())) && hasResource() == attributeContext.hasResource()) {
                            if ((!hasResource() || getResource().equals(attributeContext.getResource())) && hasApi() == attributeContext.hasApi()) {
                                return (!hasApi() || getApi().equals(attributeContext.getApi())) && getExtensionsList().equals(attributeContext.getExtensionsList()) && this.unknownFields.equals(attributeContext.unknownFields);
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
        return false;
    }

    public Api getApi() {
        Api api = this.api_;
        return api == null ? Api.getDefaultInstance() : api;
    }

    public b getApiOrBuilder() {
        return getApi();
    }

    public Peer getDestination() {
        Peer peer = this.destination_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public e getDestinationOrBuilder() {
        return getDestination();
    }

    public Any getExtensions(int i9) {
        return this.extensions_.get(i9);
    }

    public int getExtensionsCount() {
        return this.extensions_.size();
    }

    public List<Any> getExtensionsList() {
        return this.extensions_;
    }

    public com.google.protobuf.f getExtensionsOrBuilder(int i9) {
        return this.extensions_.get(i9);
    }

    public List<? extends com.google.protobuf.f> getExtensionsOrBuilderList() {
        return this.extensions_;
    }

    public Peer getOrigin() {
        Peer peer = this.origin_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public e getOriginOrBuilder() {
        return getOrigin();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AttributeContext> getParserForType() {
        return PARSER;
    }

    public Request getRequest() {
        Request request = this.request_;
        return request == null ? Request.getDefaultInstance() : request;
    }

    public f getRequestOrBuilder() {
        return getRequest();
    }

    public Resource getResource() {
        Resource resource = this.resource_;
        return resource == null ? Resource.getDefaultInstance() : resource;
    }

    public g getResourceOrBuilder() {
        return getResource();
    }

    public Response getResponse() {
        Response response = this.response_;
        return response == null ? Response.getDefaultInstance() : response;
    }

    public h getResponseOrBuilder() {
        return getResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.source_ != null ? CodedOutputStream.G(1, getSource()) + 0 : 0;
        if (this.destination_ != null) {
            G += CodedOutputStream.G(2, getDestination());
        }
        if (this.request_ != null) {
            G += CodedOutputStream.G(3, getRequest());
        }
        if (this.response_ != null) {
            G += CodedOutputStream.G(4, getResponse());
        }
        if (this.resource_ != null) {
            G += CodedOutputStream.G(5, getResource());
        }
        if (this.api_ != null) {
            G += CodedOutputStream.G(6, getApi());
        }
        if (this.origin_ != null) {
            G += CodedOutputStream.G(7, getOrigin());
        }
        for (int i10 = 0; i10 < this.extensions_.size(); i10++) {
            G += CodedOutputStream.G(8, this.extensions_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Peer getSource() {
        Peer peer = this.source_;
        return peer == null ? Peer.getDefaultInstance() : peer;
    }

    public e getSourceOrBuilder() {
        return getSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasApi() {
        return this.api_ != null;
    }

    public boolean hasDestination() {
        return this.destination_ != null;
    }

    public boolean hasOrigin() {
        return this.origin_ != null;
    }

    public boolean hasRequest() {
        return this.request_ != null;
    }

    public boolean hasResource() {
        return this.resource_ != null;
    }

    public boolean hasResponse() {
        return this.response_ != null;
    }

    public boolean hasSource() {
        return this.source_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasOrigin()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getOrigin().hashCode();
        }
        if (hasSource()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSource().hashCode();
        }
        if (hasDestination()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDestination().hashCode();
        }
        if (hasRequest()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRequest().hashCode();
        }
        if (hasResponse()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getResponse().hashCode();
        }
        if (hasResource()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getResource().hashCode();
        }
        if (hasApi()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getApi().hashCode();
        }
        if (getExtensionsCount() > 0) {
            hashCode = (((hashCode * 37) + 8) * 53) + getExtensionsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.rpc.context.a.f15695b.d(AttributeContext.class, d.class);
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
        return new AttributeContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.source_ != null) {
            codedOutputStream.L0(1, getSource());
        }
        if (this.destination_ != null) {
            codedOutputStream.L0(2, getDestination());
        }
        if (this.request_ != null) {
            codedOutputStream.L0(3, getRequest());
        }
        if (this.response_ != null) {
            codedOutputStream.L0(4, getResponse());
        }
        if (this.resource_ != null) {
            codedOutputStream.L0(5, getResource());
        }
        if (this.api_ != null) {
            codedOutputStream.L0(6, getApi());
        }
        if (this.origin_ != null) {
            codedOutputStream.L0(7, getOrigin());
        }
        for (int i9 = 0; i9 < this.extensions_.size(); i9++) {
            codedOutputStream.L0(8, this.extensions_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AttributeContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(AttributeContext attributeContext) {
        return DEFAULT_INSTANCE.toBuilder().k0(attributeContext);
    }

    public static AttributeContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AttributeContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AttributeContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AttributeContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AttributeContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).k0(this);
    }

    public static AttributeContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    private AttributeContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.extensions_ = Collections.emptyList();
    }

    public static AttributeContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    public static AttributeContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AttributeContext parseFrom(InputStream inputStream) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AttributeContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                Peer peer = this.source_;
                                Peer.b builder = peer != null ? peer.toBuilder() : null;
                                Peer peer2 = (Peer) pVar.B(Peer.parser(), f0Var);
                                this.source_ = peer2;
                                if (builder != null) {
                                    builder.i0(peer2);
                                    this.source_ = builder.I();
                                }
                            } else if (L == 18) {
                                Peer peer3 = this.destination_;
                                Peer.b builder2 = peer3 != null ? peer3.toBuilder() : null;
                                Peer peer4 = (Peer) pVar.B(Peer.parser(), f0Var);
                                this.destination_ = peer4;
                                if (builder2 != null) {
                                    builder2.i0(peer4);
                                    this.destination_ = builder2.I();
                                }
                            } else if (L == 26) {
                                Request request = this.request_;
                                Request.b builder3 = request != null ? request.toBuilder() : null;
                                Request request2 = (Request) pVar.B(Request.parser(), f0Var);
                                this.request_ = request2;
                                if (builder3 != null) {
                                    builder3.j0(request2);
                                    this.request_ = builder3.I();
                                }
                            } else if (L == 34) {
                                Response response = this.response_;
                                Response.b builder4 = response != null ? response.toBuilder() : null;
                                Response response2 = (Response) pVar.B(Response.parser(), f0Var);
                                this.response_ = response2;
                                if (builder4 != null) {
                                    builder4.j0(response2);
                                    this.response_ = builder4.I();
                                }
                            } else if (L == 42) {
                                Resource resource = this.resource_;
                                Resource.c builder5 = resource != null ? resource.toBuilder() : null;
                                Resource resource2 = (Resource) pVar.B(Resource.parser(), f0Var);
                                this.resource_ = resource2;
                                if (builder5 != null) {
                                    builder5.m0(resource2);
                                    this.resource_ = builder5.I();
                                }
                            } else if (L == 50) {
                                Api api = this.api_;
                                Api.b builder6 = api != null ? api.toBuilder() : null;
                                Api api2 = (Api) pVar.B(Api.parser(), f0Var);
                                this.api_ = api2;
                                if (builder6 != null) {
                                    builder6.g0(api2);
                                    this.api_ = builder6.I();
                                }
                            } else if (L == 58) {
                                Peer peer5 = this.origin_;
                                Peer.b builder7 = peer5 != null ? peer5.toBuilder() : null;
                                Peer peer6 = (Peer) pVar.B(Peer.parser(), f0Var);
                                this.origin_ = peer6;
                                if (builder7 != null) {
                                    builder7.i0(peer6);
                                    this.origin_ = builder7.I();
                                }
                            } else if (L != 66) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.extensions_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.extensions_.add(pVar.B(Any.parser(), f0Var));
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static AttributeContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AttributeContext parseFrom(p pVar) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AttributeContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AttributeContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
