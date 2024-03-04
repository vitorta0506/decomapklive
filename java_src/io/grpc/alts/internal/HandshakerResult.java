package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.alts.internal.Identity;
import io.grpc.alts.internal.RpcProtocolVersions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class HandshakerResult extends GeneratedMessageV3 implements s {
    public static final int APPLICATION_PROTOCOL_FIELD_NUMBER = 1;
    public static final int KEEP_CHANNEL_OPEN_FIELD_NUMBER = 6;
    public static final int KEY_DATA_FIELD_NUMBER = 3;
    public static final int LOCAL_IDENTITY_FIELD_NUMBER = 5;
    public static final int MAX_FRAME_SIZE_FIELD_NUMBER = 8;
    public static final int PEER_IDENTITY_FIELD_NUMBER = 4;
    public static final int PEER_RPC_VERSIONS_FIELD_NUMBER = 7;
    public static final int RECORD_PROTOCOL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object applicationProtocol_;
    private boolean keepChannelOpen_;
    private ByteString keyData_;
    private Identity localIdentity_;
    private int maxFrameSize_;
    private byte memoizedIsInitialized;
    private Identity peerIdentity_;
    private RpcProtocolVersions peerRpcVersions_;
    private volatile Object recordProtocol_;
    private static final HandshakerResult DEFAULT_INSTANCE = new HandshakerResult();
    private static final e2<HandshakerResult> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<HandshakerResult> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HandshakerResult m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HandshakerResult(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements s {

        /* renamed from: e  reason: collision with root package name */
        private Object f41775e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41776f;

        /* renamed from: g  reason: collision with root package name */
        private ByteString f41777g;

        /* renamed from: h  reason: collision with root package name */
        private Identity f41778h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Identity, Identity.d, v> f41779i;

        /* renamed from: j  reason: collision with root package name */
        private Identity f41780j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Identity, Identity.d, v> f41781k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f41782l;

        /* renamed from: m  reason: collision with root package name */
        private RpcProtocolVersions f41783m;

        /* renamed from: n  reason: collision with root package name */
        private q2<RpcProtocolVersions, RpcProtocolVersions.b, z> f41784n;

        /* renamed from: o  reason: collision with root package name */
        private int f41785o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41965t.d(HandshakerResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HandshakerResult build() {
            HandshakerResult I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HandshakerResult I() {
            HandshakerResult handshakerResult = new HandshakerResult(this, (a) null);
            handshakerResult.applicationProtocol_ = this.f41775e;
            handshakerResult.recordProtocol_ = this.f41776f;
            handshakerResult.keyData_ = this.f41777g;
            q2<Identity, Identity.d, v> q2Var = this.f41779i;
            if (q2Var == null) {
                handshakerResult.peerIdentity_ = this.f41778h;
            } else {
                handshakerResult.peerIdentity_ = q2Var.b();
            }
            q2<Identity, Identity.d, v> q2Var2 = this.f41781k;
            if (q2Var2 == null) {
                handshakerResult.localIdentity_ = this.f41780j;
            } else {
                handshakerResult.localIdentity_ = q2Var2.b();
            }
            handshakerResult.keepChannelOpen_ = this.f41782l;
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var3 = this.f41784n;
            if (q2Var3 == null) {
                handshakerResult.peerRpcVersions_ = this.f41783m;
            } else {
                handshakerResult.peerRpcVersions_ = q2Var3.b();
            }
            handshakerResult.maxFrameSize_ = this.f41785o;
            Q();
            return handshakerResult;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HandshakerResult getDefaultInstanceForType() {
            return HandshakerResult.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.HandshakerResult.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.HandshakerResult.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.HandshakerResult r3 = (io.grpc.alts.internal.HandshakerResult) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.HandshakerResult r4 = (io.grpc.alts.internal.HandshakerResult) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.HandshakerResult.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.HandshakerResult$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HandshakerResult) {
                return g0((HandshakerResult) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(HandshakerResult handshakerResult) {
            if (handshakerResult == HandshakerResult.getDefaultInstance()) {
                return this;
            }
            if (!handshakerResult.getApplicationProtocol().isEmpty()) {
                this.f41775e = handshakerResult.applicationProtocol_;
                R();
            }
            if (!handshakerResult.getRecordProtocol().isEmpty()) {
                this.f41776f = handshakerResult.recordProtocol_;
                R();
            }
            if (handshakerResult.getKeyData() != ByteString.EMPTY) {
                n0(handshakerResult.getKeyData());
            }
            if (handshakerResult.hasPeerIdentity()) {
                i0(handshakerResult.getPeerIdentity());
            }
            if (handshakerResult.hasLocalIdentity()) {
                h0(handshakerResult.getLocalIdentity());
            }
            if (handshakerResult.getKeepChannelOpen()) {
                m0(handshakerResult.getKeepChannelOpen());
            }
            if (handshakerResult.hasPeerRpcVersions()) {
                j0(handshakerResult.getPeerRpcVersions());
            }
            if (handshakerResult.getMaxFrameSize() != 0) {
                o0(handshakerResult.getMaxFrameSize());
            }
            z(((GeneratedMessageV3) handshakerResult).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41964s;
        }

        public b h0(Identity identity) {
            q2<Identity, Identity.d, v> q2Var = this.f41781k;
            if (q2Var == null) {
                Identity identity2 = this.f41780j;
                if (identity2 != null) {
                    this.f41780j = Identity.newBuilder(identity2).i0(identity).I();
                } else {
                    this.f41780j = identity;
                }
                R();
            } else {
                q2Var.e(identity);
            }
            return this;
        }

        public b i0(Identity identity) {
            q2<Identity, Identity.d, v> q2Var = this.f41779i;
            if (q2Var == null) {
                Identity identity2 = this.f41778h;
                if (identity2 != null) {
                    this.f41778h = Identity.newBuilder(identity2).i0(identity).I();
                } else {
                    this.f41778h = identity;
                }
                R();
            } else {
                q2Var.e(identity);
            }
            return this;
        }

        public b j0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41784n;
            if (q2Var == null) {
                RpcProtocolVersions rpcProtocolVersions2 = this.f41783m;
                if (rpcProtocolVersions2 != null) {
                    this.f41783m = RpcProtocolVersions.newBuilder(rpcProtocolVersions2).g0(rpcProtocolVersions).I();
                } else {
                    this.f41783m = rpcProtocolVersions;
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(boolean z10) {
            this.f41782l = z10;
            R();
            return this;
        }

        public b n0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f41777g = byteString;
            R();
            return this;
        }

        public b o0(int i9) {
            this.f41785o = i9;
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
            this.f41775e = "";
            this.f41776f = "";
            this.f41777g = ByteString.EMPTY;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41775e = "";
            this.f41776f = "";
            this.f41777g = ByteString.EMPTY;
            b0();
        }
    }

    /* synthetic */ HandshakerResult(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HandshakerResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41964s;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HandshakerResult parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HandshakerResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HandshakerResult> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HandshakerResult)) {
            return super.equals(obj);
        }
        HandshakerResult handshakerResult = (HandshakerResult) obj;
        if (getApplicationProtocol().equals(handshakerResult.getApplicationProtocol()) && getRecordProtocol().equals(handshakerResult.getRecordProtocol()) && getKeyData().equals(handshakerResult.getKeyData()) && hasPeerIdentity() == handshakerResult.hasPeerIdentity()) {
            if ((!hasPeerIdentity() || getPeerIdentity().equals(handshakerResult.getPeerIdentity())) && hasLocalIdentity() == handshakerResult.hasLocalIdentity()) {
                if ((!hasLocalIdentity() || getLocalIdentity().equals(handshakerResult.getLocalIdentity())) && getKeepChannelOpen() == handshakerResult.getKeepChannelOpen() && hasPeerRpcVersions() == handshakerResult.hasPeerRpcVersions()) {
                    return (!hasPeerRpcVersions() || getPeerRpcVersions().equals(handshakerResult.getPeerRpcVersions())) && getMaxFrameSize() == handshakerResult.getMaxFrameSize() && this.unknownFields.equals(handshakerResult.unknownFields);
                }
                return false;
            }
            return false;
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

    public boolean getKeepChannelOpen() {
        return this.keepChannelOpen_;
    }

    public ByteString getKeyData() {
        return this.keyData_;
    }

    public Identity getLocalIdentity() {
        Identity identity = this.localIdentity_;
        return identity == null ? Identity.getDefaultInstance() : identity;
    }

    public v getLocalIdentityOrBuilder() {
        return getLocalIdentity();
    }

    public int getMaxFrameSize() {
        return this.maxFrameSize_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HandshakerResult> getParserForType() {
        return PARSER;
    }

    public Identity getPeerIdentity() {
        Identity identity = this.peerIdentity_;
        return identity == null ? Identity.getDefaultInstance() : identity;
    }

    public v getPeerIdentityOrBuilder() {
        return getPeerIdentity();
    }

    public RpcProtocolVersions getPeerRpcVersions() {
        RpcProtocolVersions rpcProtocolVersions = this.peerRpcVersions_;
        return rpcProtocolVersions == null ? RpcProtocolVersions.getDefaultInstance() : rpcProtocolVersions;
    }

    public z getPeerRpcVersionsOrBuilder() {
        return getPeerRpcVersions();
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
        if (!this.keyData_.isEmpty()) {
            computeStringSize += CodedOutputStream.h(3, this.keyData_);
        }
        if (this.peerIdentity_ != null) {
            computeStringSize += CodedOutputStream.G(4, getPeerIdentity());
        }
        if (this.localIdentity_ != null) {
            computeStringSize += CodedOutputStream.G(5, getLocalIdentity());
        }
        boolean z10 = this.keepChannelOpen_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(6, z10);
        }
        if (this.peerRpcVersions_ != null) {
            computeStringSize += CodedOutputStream.G(7, getPeerRpcVersions());
        }
        int i10 = this.maxFrameSize_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.Y(8, i10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLocalIdentity() {
        return this.localIdentity_ != null;
    }

    public boolean hasPeerIdentity() {
        return this.peerIdentity_ != null;
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
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getApplicationProtocol().hashCode()) * 37) + 2) * 53) + getRecordProtocol().hashCode()) * 37) + 3) * 53) + getKeyData().hashCode();
        if (hasPeerIdentity()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getPeerIdentity().hashCode();
        }
        if (hasLocalIdentity()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getLocalIdentity().hashCode();
        }
        int d10 = (((hashCode * 37) + 6) * 53) + u0.d(getKeepChannelOpen());
        if (hasPeerRpcVersions()) {
            d10 = (((d10 * 37) + 7) * 53) + getPeerRpcVersions().hashCode();
        }
        int maxFrameSize = (((((d10 * 37) + 8) * 53) + getMaxFrameSize()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = maxFrameSize;
        return maxFrameSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41965t.d(HandshakerResult.class, b.class);
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
        return new HandshakerResult();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.applicationProtocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.applicationProtocol_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.recordProtocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.recordProtocol_);
        }
        if (!this.keyData_.isEmpty()) {
            codedOutputStream.r0(3, this.keyData_);
        }
        if (this.peerIdentity_ != null) {
            codedOutputStream.L0(4, getPeerIdentity());
        }
        if (this.localIdentity_ != null) {
            codedOutputStream.L0(5, getLocalIdentity());
        }
        boolean z10 = this.keepChannelOpen_;
        if (z10) {
            codedOutputStream.n0(6, z10);
        }
        if (this.peerRpcVersions_ != null) {
            codedOutputStream.L0(7, getPeerRpcVersions());
        }
        int i9 = this.maxFrameSize_;
        if (i9 != 0) {
            codedOutputStream.c1(8, i9);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HandshakerResult(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HandshakerResult handshakerResult) {
        return DEFAULT_INSTANCE.toBuilder().g0(handshakerResult);
    }

    public static HandshakerResult parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HandshakerResult(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HandshakerResult parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HandshakerResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HandshakerResult getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HandshakerResult parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HandshakerResult() {
        this.memoizedIsInitialized = (byte) -1;
        this.applicationProtocol_ = "";
        this.recordProtocol_ = "";
        this.keyData_ = ByteString.EMPTY;
    }

    public static HandshakerResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HandshakerResult parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HandshakerResult parseFrom(InputStream inputStream) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HandshakerResult parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HandshakerResult(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.applicationProtocol_ = pVar.K();
                        } else if (L == 18) {
                            this.recordProtocol_ = pVar.K();
                        } else if (L != 26) {
                            if (L == 34) {
                                Identity identity = this.peerIdentity_;
                                Identity.d builder = identity != null ? identity.toBuilder() : null;
                                Identity identity2 = (Identity) pVar.B(Identity.parser(), f0Var);
                                this.peerIdentity_ = identity2;
                                if (builder != null) {
                                    builder.i0(identity2);
                                    this.peerIdentity_ = builder.I();
                                }
                            } else if (L == 42) {
                                Identity identity3 = this.localIdentity_;
                                Identity.d builder2 = identity3 != null ? identity3.toBuilder() : null;
                                Identity identity4 = (Identity) pVar.B(Identity.parser(), f0Var);
                                this.localIdentity_ = identity4;
                                if (builder2 != null) {
                                    builder2.i0(identity4);
                                    this.localIdentity_ = builder2.I();
                                }
                            } else if (L == 48) {
                                this.keepChannelOpen_ = pVar.r();
                            } else if (L == 58) {
                                RpcProtocolVersions rpcProtocolVersions = this.peerRpcVersions_;
                                RpcProtocolVersions.b builder3 = rpcProtocolVersions != null ? rpcProtocolVersions.toBuilder() : null;
                                RpcProtocolVersions rpcProtocolVersions2 = (RpcProtocolVersions) pVar.B(RpcProtocolVersions.parser(), f0Var);
                                this.peerRpcVersions_ = rpcProtocolVersions2;
                                if (builder3 != null) {
                                    builder3.g0(rpcProtocolVersions2);
                                    this.peerRpcVersions_ = builder3.I();
                                }
                            } else if (L != 64) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.maxFrameSize_ = pVar.M();
                            }
                        } else {
                            this.keyData_ = pVar.s();
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

    public static HandshakerResult parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HandshakerResult parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HandshakerResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
