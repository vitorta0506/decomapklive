package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.alts.internal.RpcProtocolVersions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class AltsContext extends GeneratedMessageV3 implements r1 {
    public static final int APPLICATION_PROTOCOL_FIELD_NUMBER = 1;
    public static final int LOCAL_SERVICE_ACCOUNT_FIELD_NUMBER = 5;
    public static final int PEER_ATTRIBUTES_FIELD_NUMBER = 7;
    public static final int PEER_RPC_VERSIONS_FIELD_NUMBER = 6;
    public static final int PEER_SERVICE_ACCOUNT_FIELD_NUMBER = 4;
    public static final int RECORD_PROTOCOL_FIELD_NUMBER = 2;
    public static final int SECURITY_LEVEL_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object applicationProtocol_;
    private volatile Object localServiceAccount_;
    private byte memoizedIsInitialized;
    private g1<String, String> peerAttributes_;
    private RpcProtocolVersions peerRpcVersions_;
    private volatile Object peerServiceAccount_;
    private volatile Object recordProtocol_;
    private int securityLevel_;
    private static final AltsContext DEFAULT_INSTANCE = new AltsContext();
    private static final e2<AltsContext> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<AltsContext> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AltsContext m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new AltsContext(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f41751e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41752f;

        /* renamed from: g  reason: collision with root package name */
        private int f41753g;

        /* renamed from: h  reason: collision with root package name */
        private Object f41754h;

        /* renamed from: i  reason: collision with root package name */
        private Object f41755i;

        /* renamed from: j  reason: collision with root package name */
        private RpcProtocolVersions f41756j;

        /* renamed from: k  reason: collision with root package name */
        private q2<RpcProtocolVersions, RpcProtocolVersions.b, z> f41757k;

        /* renamed from: l  reason: collision with root package name */
        private g1<String, String> f41758l;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, String> b0() {
            R();
            if (this.f41758l == null) {
                this.f41758l = g1.p(c.f41759a);
            }
            if (!this.f41758l.m()) {
                this.f41758l = this.f41758l.f();
            }
            return this.f41758l;
        }

        private g1<String, String> d0() {
            g1<String, String> g1Var = this.f41758l;
            return g1Var == null ? g1.g(c.f41759a) : g1Var;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f41869b.d(AltsContext.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 7) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 7) {
                return b0();
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
        public AltsContext build() {
            AltsContext I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AltsContext I() {
            AltsContext altsContext = new AltsContext(this, (a) null);
            altsContext.applicationProtocol_ = this.f41751e;
            altsContext.recordProtocol_ = this.f41752f;
            altsContext.securityLevel_ = this.f41753g;
            altsContext.peerServiceAccount_ = this.f41754h;
            altsContext.localServiceAccount_ = this.f41755i;
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41757k;
            if (q2Var == null) {
                altsContext.peerRpcVersions_ = this.f41756j;
            } else {
                altsContext.peerRpcVersions_ = q2Var.b();
            }
            altsContext.peerAttributes_ = d0();
            altsContext.peerAttributes_.n();
            Q();
            return altsContext;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AltsContext getDefaultInstanceForType() {
            return AltsContext.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.AltsContext.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.AltsContext.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.AltsContext r3 = (io.grpc.alts.internal.AltsContext) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.AltsContext r4 = (io.grpc.alts.internal.AltsContext) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.AltsContext.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.AltsContext$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f41868a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AltsContext) {
                return i0((AltsContext) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(AltsContext altsContext) {
            if (altsContext == AltsContext.getDefaultInstance()) {
                return this;
            }
            if (!altsContext.getApplicationProtocol().isEmpty()) {
                this.f41751e = altsContext.applicationProtocol_;
                R();
            }
            if (!altsContext.getRecordProtocol().isEmpty()) {
                this.f41752f = altsContext.recordProtocol_;
                R();
            }
            if (altsContext.securityLevel_ != 0) {
                u0(altsContext.getSecurityLevelValue());
            }
            if (!altsContext.getPeerServiceAccount().isEmpty()) {
                this.f41754h = altsContext.peerServiceAccount_;
                R();
            }
            if (!altsContext.getLocalServiceAccount().isEmpty()) {
                this.f41755i = altsContext.localServiceAccount_;
                R();
            }
            if (altsContext.hasPeerRpcVersions()) {
                j0(altsContext.getPeerRpcVersions());
            }
            b0().o(altsContext.internalGetPeerAttributes());
            z(((GeneratedMessageV3) altsContext).unknownFields);
            R();
            return this;
        }

        public b j0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41757k;
            if (q2Var == null) {
                RpcProtocolVersions rpcProtocolVersions2 = this.f41756j;
                if (rpcProtocolVersions2 != null) {
                    this.f41756j = RpcProtocolVersions.newBuilder(rpcProtocolVersions2).g0(rpcProtocolVersions).I();
                } else {
                    this.f41756j = rpcProtocolVersions;
                }
                R();
            } else {
                q2Var.e(rpcProtocolVersions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(Map<String, String> map) {
            b0().l().putAll(map);
            return this;
        }

        public b m0(String str) {
            Objects.requireNonNull(str);
            this.f41751e = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(String str) {
            Objects.requireNonNull(str);
            this.f41755i = str;
            R();
            return this;
        }

        public b q0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41757k;
            if (q2Var == null) {
                Objects.requireNonNull(rpcProtocolVersions);
                this.f41756j = rpcProtocolVersions;
                R();
            } else {
                q2Var.g(rpcProtocolVersions);
            }
            return this;
        }

        public b r0(String str) {
            Objects.requireNonNull(str);
            this.f41754h = str;
            R();
            return this;
        }

        public b s0(String str) {
            Objects.requireNonNull(str);
            this.f41752f = str;
            R();
            return this;
        }

        public b t0(SecurityLevel securityLevel) {
            Objects.requireNonNull(securityLevel);
            this.f41753g = securityLevel.getNumber();
            R();
            return this;
        }

        public b u0(int i9) {
            this.f41753g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f41751e = "";
            this.f41752f = "";
            this.f41753g = 0;
            this.f41754h = "";
            this.f41755i = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41751e = "";
            this.f41752f = "";
            this.f41753g = 0;
            this.f41754h = "";
            this.f41755i = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f41759a;

        static {
            Descriptors.b bVar = f.f41870c;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f41759a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ AltsContext(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AltsContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f41868a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetPeerAttributes() {
        g1<String, String> g1Var = this.peerAttributes_;
        return g1Var == null ? g1.g(c.f41759a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AltsContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AltsContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AltsContext> parser() {
        return PARSER;
    }

    public boolean containsPeerAttributes(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetPeerAttributes().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AltsContext)) {
            return super.equals(obj);
        }
        AltsContext altsContext = (AltsContext) obj;
        if (getApplicationProtocol().equals(altsContext.getApplicationProtocol()) && getRecordProtocol().equals(altsContext.getRecordProtocol()) && this.securityLevel_ == altsContext.securityLevel_ && getPeerServiceAccount().equals(altsContext.getPeerServiceAccount()) && getLocalServiceAccount().equals(altsContext.getLocalServiceAccount()) && hasPeerRpcVersions() == altsContext.hasPeerRpcVersions()) {
            return (!hasPeerRpcVersions() || getPeerRpcVersions().equals(altsContext.getPeerRpcVersions())) && internalGetPeerAttributes().equals(altsContext.internalGetPeerAttributes()) && this.unknownFields.equals(altsContext.unknownFields);
        }
        return false;
    }

    public String getApplicationProtocol() {
        Object obj = this.applicationProtocol_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.applicationProtocol_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getApplicationProtocolBytes() {
        Object obj = this.applicationProtocol_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.applicationProtocol_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getLocalServiceAccount() {
        Object obj = this.localServiceAccount_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.localServiceAccount_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLocalServiceAccountBytes() {
        Object obj = this.localServiceAccount_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.localServiceAccount_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AltsContext> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public Map<String, String> getPeerAttributes() {
        return getPeerAttributesMap();
    }

    public int getPeerAttributesCount() {
        return internalGetPeerAttributes().i().size();
    }

    public Map<String, String> getPeerAttributesMap() {
        return internalGetPeerAttributes().i();
    }

    public String getPeerAttributesOrDefault(String str, String str2) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetPeerAttributes().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getPeerAttributesOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetPeerAttributes().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public RpcProtocolVersions getPeerRpcVersions() {
        RpcProtocolVersions rpcProtocolVersions = this.peerRpcVersions_;
        return rpcProtocolVersions == null ? RpcProtocolVersions.getDefaultInstance() : rpcProtocolVersions;
    }

    public z getPeerRpcVersionsOrBuilder() {
        return getPeerRpcVersions();
    }

    public String getPeerServiceAccount() {
        Object obj = this.peerServiceAccount_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.peerServiceAccount_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPeerServiceAccountBytes() {
        Object obj = this.peerServiceAccount_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.peerServiceAccount_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getRecordProtocol() {
        Object obj = this.recordProtocol_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.recordProtocol_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRecordProtocolBytes() {
        Object obj = this.recordProtocol_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.recordProtocol_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public SecurityLevel getSecurityLevel() {
        SecurityLevel valueOf = SecurityLevel.valueOf(this.securityLevel_);
        return valueOf == null ? SecurityLevel.UNRECOGNIZED : valueOf;
    }

    public int getSecurityLevelValue() {
        return this.securityLevel_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.applicationProtocol_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.applicationProtocol_);
        if (!GeneratedMessageV3.isStringEmpty(this.recordProtocol_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.recordProtocol_);
        }
        if (this.securityLevel_ != SecurityLevel.SECURITY_NONE.getNumber()) {
            computeStringSize += CodedOutputStream.l(3, this.securityLevel_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.peerServiceAccount_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.peerServiceAccount_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.localServiceAccount_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.localServiceAccount_);
        }
        if (this.peerRpcVersions_ != null) {
            computeStringSize += CodedOutputStream.G(6, getPeerRpcVersions());
        }
        for (Map.Entry<String, String> entry : internalGetPeerAttributes().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(7, c.f41759a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPeerRpcVersions() {
        return this.peerRpcVersions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getApplicationProtocol().hashCode()) * 37) + 2) * 53) + getRecordProtocol().hashCode()) * 37) + 3) * 53) + this.securityLevel_) * 37) + 4) * 53) + getPeerServiceAccount().hashCode()) * 37) + 5) * 53) + getLocalServiceAccount().hashCode();
        if (hasPeerRpcVersions()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getPeerRpcVersions().hashCode();
        }
        if (!internalGetPeerAttributes().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 7) * 53) + internalGetPeerAttributes().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f41869b.d(AltsContext.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 7) {
            return internalGetPeerAttributes();
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
        return new AltsContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.applicationProtocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.applicationProtocol_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.recordProtocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.recordProtocol_);
        }
        if (this.securityLevel_ != SecurityLevel.SECURITY_NONE.getNumber()) {
            codedOutputStream.v0(3, this.securityLevel_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.peerServiceAccount_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.peerServiceAccount_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.localServiceAccount_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.localServiceAccount_);
        }
        if (this.peerRpcVersions_ != null) {
            codedOutputStream.L0(6, getPeerRpcVersions());
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetPeerAttributes(), c.f41759a, 7);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AltsContext(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AltsContext altsContext) {
        return DEFAULT_INSTANCE.toBuilder().i0(altsContext);
    }

    public static AltsContext parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AltsContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AltsContext parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AltsContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AltsContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static AltsContext parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AltsContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.applicationProtocol_ = "";
        this.recordProtocol_ = "";
        this.securityLevel_ = 0;
        this.peerServiceAccount_ = "";
        this.localServiceAccount_ = "";
    }

    public static AltsContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AltsContext parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AltsContext parseFrom(InputStream inputStream) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AltsContext parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AltsContext parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private AltsContext(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.applicationProtocol_ = pVar.K();
                        } else if (L == 18) {
                            this.recordProtocol_ = pVar.K();
                        } else if (L == 24) {
                            this.securityLevel_ = pVar.u();
                        } else if (L == 34) {
                            this.peerServiceAccount_ = pVar.K();
                        } else if (L == 42) {
                            this.localServiceAccount_ = pVar.K();
                        } else if (L == 50) {
                            RpcProtocolVersions rpcProtocolVersions = this.peerRpcVersions_;
                            RpcProtocolVersions.b builder = rpcProtocolVersions != null ? rpcProtocolVersions.toBuilder() : null;
                            RpcProtocolVersions rpcProtocolVersions2 = (RpcProtocolVersions) pVar.B(RpcProtocolVersions.parser(), f0Var);
                            this.peerRpcVersions_ = rpcProtocolVersions2;
                            if (builder != null) {
                                builder.g0(rpcProtocolVersions2);
                                this.peerRpcVersions_ = builder.I();
                            }
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.peerAttributes_ = g1.p(c.f41759a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f41759a.getParserForType(), f0Var);
                            this.peerAttributes_.l().put((String) e1Var.f(), (String) e1Var.h());
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

    public static AltsContext parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (AltsContext) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
