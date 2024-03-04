package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.CommonTlsContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class UpstreamTlsContext extends GeneratedMessageV3 implements m {
    public static final int ALLOW_RENEGOTIATION_FIELD_NUMBER = 3;
    public static final int COMMON_TLS_CONTEXT_FIELD_NUMBER = 1;
    public static final int MAX_SESSION_KEYS_FIELD_NUMBER = 4;
    public static final int SNI_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean allowRenegotiation_;
    private CommonTlsContext commonTlsContext_;
    private UInt32Value maxSessionKeys_;
    private byte memoizedIsInitialized;
    private volatile Object sni_;
    private static final UpstreamTlsContext DEFAULT_INSTANCE = new UpstreamTlsContext();
    private static final e2<UpstreamTlsContext> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<UpstreamTlsContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpstreamTlsContext m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpstreamTlsContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements m {

        /* renamed from: e  reason: collision with root package name */
        private CommonTlsContext f46232e;

        /* renamed from: f  reason: collision with root package name */
        private q2<CommonTlsContext, CommonTlsContext.c, c> f46233f;

        /* renamed from: g  reason: collision with root package name */
        private Object f46234g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f46235h;

        /* renamed from: i  reason: collision with root package name */
        private UInt32Value f46236i;

        /* renamed from: j  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46237j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return k.f46257b.d(UpstreamTlsContext.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpstreamTlsContext build() {
            UpstreamTlsContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpstreamTlsContext I() {
            UpstreamTlsContext upstreamTlsContext = new UpstreamTlsContext(this, (a) null);
            q2<CommonTlsContext, CommonTlsContext.c, c> q2Var = this.f46233f;
            if (q2Var == null) {
                upstreamTlsContext.commonTlsContext_ = this.f46232e;
            } else {
                upstreamTlsContext.commonTlsContext_ = q2Var.b();
            }
            upstreamTlsContext.sni_ = this.f46234g;
            upstreamTlsContext.allowRenegotiation_ = this.f46235h;
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f46237j;
            if (q2Var2 == null) {
                upstreamTlsContext.maxSessionKeys_ = this.f46236i;
            } else {
                upstreamTlsContext.maxSessionKeys_ = q2Var2.b();
            }
            Q();
            return upstreamTlsContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpstreamTlsContext getDefaultInstanceForType() {
            return UpstreamTlsContext.getDefaultInstance();
        }

        public b d0(CommonTlsContext commonTlsContext) {
            q2<CommonTlsContext, CommonTlsContext.c, c> q2Var = this.f46233f;
            if (q2Var == null) {
                CommonTlsContext commonTlsContext2 = this.f46232e;
                if (commonTlsContext2 != null) {
                    this.f46232e = CommonTlsContext.newBuilder(commonTlsContext2).m0(commonTlsContext).I();
                } else {
                    this.f46232e = commonTlsContext;
                }
                R();
            } else {
                q2Var.e(commonTlsContext);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.UpstreamTlsContext$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpstreamTlsContext) {
                return h0((UpstreamTlsContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return k.f46256a;
        }

        public b h0(UpstreamTlsContext upstreamTlsContext) {
            if (upstreamTlsContext == UpstreamTlsContext.getDefaultInstance()) {
                return this;
            }
            if (upstreamTlsContext.hasCommonTlsContext()) {
                d0(upstreamTlsContext.getCommonTlsContext());
            }
            if (!upstreamTlsContext.getSni().isEmpty()) {
                this.f46234g = upstreamTlsContext.sni_;
                R();
            }
            if (upstreamTlsContext.getAllowRenegotiation()) {
                k0(upstreamTlsContext.getAllowRenegotiation());
            }
            if (upstreamTlsContext.hasMaxSessionKeys()) {
                i0(upstreamTlsContext.getMaxSessionKeys());
            }
            z(((GeneratedMessageV3) upstreamTlsContext).unknownFields);
            R();
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46237j;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46236i;
                if (uInt32Value2 != null) {
                    this.f46236i = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46236i = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(boolean z10) {
            this.f46235h = z10;
            R();
            return this;
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
            this.f46234g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46234g = "";
            b0();
        }
    }

    /* synthetic */ UpstreamTlsContext(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpstreamTlsContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return k.f46256a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpstreamTlsContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpstreamTlsContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpstreamTlsContext> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpstreamTlsContext)) {
            return super.equals(obj);
        }
        UpstreamTlsContext upstreamTlsContext = (UpstreamTlsContext) obj;
        if (hasCommonTlsContext() != upstreamTlsContext.hasCommonTlsContext()) {
            return false;
        }
        if ((!hasCommonTlsContext() || getCommonTlsContext().equals(upstreamTlsContext.getCommonTlsContext())) && getSni().equals(upstreamTlsContext.getSni()) && getAllowRenegotiation() == upstreamTlsContext.getAllowRenegotiation() && hasMaxSessionKeys() == upstreamTlsContext.hasMaxSessionKeys()) {
            return (!hasMaxSessionKeys() || getMaxSessionKeys().equals(upstreamTlsContext.getMaxSessionKeys())) && this.unknownFields.equals(upstreamTlsContext.unknownFields);
        }
        return false;
    }

    public boolean getAllowRenegotiation() {
        return this.allowRenegotiation_;
    }

    public CommonTlsContext getCommonTlsContext() {
        CommonTlsContext commonTlsContext = this.commonTlsContext_;
        return commonTlsContext == null ? CommonTlsContext.getDefaultInstance() : commonTlsContext;
    }

    public c getCommonTlsContextOrBuilder() {
        return getCommonTlsContext();
    }

    public UInt32Value getMaxSessionKeys() {
        UInt32Value uInt32Value = this.maxSessionKeys_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxSessionKeysOrBuilder() {
        return getMaxSessionKeys();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpstreamTlsContext> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.commonTlsContext_ != null ? 0 + CodedOutputStream.G(1, getCommonTlsContext()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.sni_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.sni_);
        }
        boolean z10 = this.allowRenegotiation_;
        if (z10) {
            G += CodedOutputStream.e(3, z10);
        }
        if (this.maxSessionKeys_ != null) {
            G += CodedOutputStream.G(4, getMaxSessionKeys());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSni() {
        Object obj = this.sni_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sni_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSniBytes() {
        Object obj = this.sni_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sni_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCommonTlsContext() {
        return this.commonTlsContext_ != null;
    }

    public boolean hasMaxSessionKeys() {
        return this.maxSessionKeys_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasCommonTlsContext()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getCommonTlsContext().hashCode();
        }
        int hashCode2 = (((((((hashCode * 37) + 2) * 53) + getSni().hashCode()) * 37) + 3) * 53) + u0.d(getAllowRenegotiation());
        if (hasMaxSessionKeys()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getMaxSessionKeys().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return k.f46257b.d(UpstreamTlsContext.class, b.class);
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
        return new UpstreamTlsContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.commonTlsContext_ != null) {
            codedOutputStream.L0(1, getCommonTlsContext());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sni_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.sni_);
        }
        boolean z10 = this.allowRenegotiation_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (this.maxSessionKeys_ != null) {
            codedOutputStream.L0(4, getMaxSessionKeys());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpstreamTlsContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpstreamTlsContext upstreamTlsContext) {
        return DEFAULT_INSTANCE.toBuilder().h0(upstreamTlsContext);
    }

    public static UpstreamTlsContext parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpstreamTlsContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamTlsContext parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamTlsContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpstreamTlsContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static UpstreamTlsContext parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpstreamTlsContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.sni_ = "";
    }

    public static UpstreamTlsContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpstreamTlsContext parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static UpstreamTlsContext parseFrom(InputStream inputStream) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private UpstreamTlsContext(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                CommonTlsContext commonTlsContext = this.commonTlsContext_;
                                CommonTlsContext.c builder = commonTlsContext != null ? commonTlsContext.toBuilder() : null;
                                CommonTlsContext commonTlsContext2 = (CommonTlsContext) pVar.B(CommonTlsContext.parser(), f0Var);
                                this.commonTlsContext_ = commonTlsContext2;
                                if (builder != null) {
                                    builder.m0(commonTlsContext2);
                                    this.commonTlsContext_ = builder.I();
                                }
                            } else if (L == 18) {
                                this.sni_ = pVar.K();
                            } else if (L == 24) {
                                this.allowRenegotiation_ = pVar.r();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                UInt32Value uInt32Value = this.maxSessionKeys_;
                                UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxSessionKeys_ = uInt32Value2;
                                if (builder2 != null) {
                                    builder2.g0(uInt32Value2);
                                    this.maxSessionKeys_ = builder2.I();
                                }
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

    public static UpstreamTlsContext parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamTlsContext parseFrom(p pVar) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpstreamTlsContext parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpstreamTlsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
