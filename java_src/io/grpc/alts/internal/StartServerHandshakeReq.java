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
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.alts.internal.Endpoint;
import io.grpc.alts.internal.RpcProtocolVersions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class StartServerHandshakeReq extends GeneratedMessageV3 implements c0 {
    public static final int APPLICATION_PROTOCOLS_FIELD_NUMBER = 1;
    public static final int HANDSHAKE_PARAMETERS_FIELD_NUMBER = 2;
    public static final int IN_BYTES_FIELD_NUMBER = 3;
    public static final int LOCAL_ENDPOINT_FIELD_NUMBER = 4;
    public static final int MAX_FRAME_SIZE_FIELD_NUMBER = 7;
    public static final int REMOTE_ENDPOINT_FIELD_NUMBER = 5;
    public static final int RPC_VERSIONS_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private z0 applicationProtocols_;
    private g1<Integer, ServerHandshakeParameters> handshakeParameters_;
    private ByteString inBytes_;
    private Endpoint localEndpoint_;
    private int maxFrameSize_;
    private byte memoizedIsInitialized;
    private Endpoint remoteEndpoint_;
    private RpcProtocolVersions rpcVersions_;
    private static final StartServerHandshakeReq DEFAULT_INSTANCE = new StartServerHandshakeReq();
    private static final e2<StartServerHandshakeReq> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<StartServerHandshakeReq> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StartServerHandshakeReq m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new StartServerHandshakeReq(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c0 {

        /* renamed from: e  reason: collision with root package name */
        private int f41820e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f41821f;

        /* renamed from: g  reason: collision with root package name */
        private g1<Integer, ServerHandshakeParameters> f41822g;

        /* renamed from: h  reason: collision with root package name */
        private ByteString f41823h;

        /* renamed from: i  reason: collision with root package name */
        private Endpoint f41824i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Endpoint, Endpoint.b, q> f41825j;

        /* renamed from: k  reason: collision with root package name */
        private Endpoint f41826k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Endpoint, Endpoint.b, q> f41827l;

        /* renamed from: m  reason: collision with root package name */
        private RpcProtocolVersions f41828m;

        /* renamed from: n  reason: collision with root package name */
        private q2<RpcProtocolVersions, RpcProtocolVersions.b, z> f41829n;

        /* renamed from: o  reason: collision with root package name */
        private int f41830o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f41820e & 1) == 0) {
                this.f41821f = new y0(this.f41821f);
                this.f41820e |= 1;
            }
        }

        private g1<Integer, ServerHandshakeParameters> e0() {
            g1<Integer, ServerHandshakeParameters> g1Var = this.f41822g;
            return g1Var == null ? g1.g(c.f41831a) : g1Var;
        }

        private g1<Integer, ServerHandshakeParameters> g0() {
            R();
            if (this.f41822g == null) {
                this.f41822g = g1.p(c.f41831a);
            }
            if (!this.f41822g.m()) {
                this.f41822g = this.f41822g.f();
            }
            return this.f41822g;
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41957l.d(StartServerHandshakeReq.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 2) {
                return e0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 2) {
                return g0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        public b W(String str) {
            Objects.requireNonNull(str);
            b0();
            this.f41821f.add(str);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StartServerHandshakeReq build() {
            StartServerHandshakeReq I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public StartServerHandshakeReq I() {
            StartServerHandshakeReq startServerHandshakeReq = new StartServerHandshakeReq(this, (a) null);
            if ((this.f41820e & 1) != 0) {
                this.f41821f = this.f41821f.V0();
                this.f41820e &= -2;
            }
            startServerHandshakeReq.applicationProtocols_ = this.f41821f;
            startServerHandshakeReq.handshakeParameters_ = e0();
            startServerHandshakeReq.handshakeParameters_.n();
            startServerHandshakeReq.inBytes_ = this.f41823h;
            q2<Endpoint, Endpoint.b, q> q2Var = this.f41825j;
            if (q2Var == null) {
                startServerHandshakeReq.localEndpoint_ = this.f41824i;
            } else {
                startServerHandshakeReq.localEndpoint_ = q2Var.b();
            }
            q2<Endpoint, Endpoint.b, q> q2Var2 = this.f41827l;
            if (q2Var2 == null) {
                startServerHandshakeReq.remoteEndpoint_ = this.f41826k;
            } else {
                startServerHandshakeReq.remoteEndpoint_ = q2Var2.b();
            }
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var3 = this.f41829n;
            if (q2Var3 == null) {
                startServerHandshakeReq.rpcVersions_ = this.f41828m;
            } else {
                startServerHandshakeReq.rpcVersions_ = q2Var3.b();
            }
            startServerHandshakeReq.maxFrameSize_ = this.f41830o;
            Q();
            return startServerHandshakeReq;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public StartServerHandshakeReq getDefaultInstanceForType() {
            return StartServerHandshakeReq.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41956k;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.StartServerHandshakeReq.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.StartServerHandshakeReq.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.StartServerHandshakeReq r3 = (io.grpc.alts.internal.StartServerHandshakeReq) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.StartServerHandshakeReq r4 = (io.grpc.alts.internal.StartServerHandshakeReq) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.StartServerHandshakeReq.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.StartServerHandshakeReq$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StartServerHandshakeReq) {
                return k0((StartServerHandshakeReq) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(StartServerHandshakeReq startServerHandshakeReq) {
            if (startServerHandshakeReq == StartServerHandshakeReq.getDefaultInstance()) {
                return this;
            }
            if (!startServerHandshakeReq.applicationProtocols_.isEmpty()) {
                if (this.f41821f.isEmpty()) {
                    this.f41821f = startServerHandshakeReq.applicationProtocols_;
                    this.f41820e &= -2;
                } else {
                    b0();
                    this.f41821f.addAll(startServerHandshakeReq.applicationProtocols_);
                }
                R();
            }
            g0().o(startServerHandshakeReq.internalGetHandshakeParameters());
            if (startServerHandshakeReq.getInBytes() != ByteString.EMPTY) {
                s0(startServerHandshakeReq.getInBytes());
            }
            if (startServerHandshakeReq.hasLocalEndpoint()) {
                l0(startServerHandshakeReq.getLocalEndpoint());
            }
            if (startServerHandshakeReq.hasRemoteEndpoint()) {
                m0(startServerHandshakeReq.getRemoteEndpoint());
            }
            if (startServerHandshakeReq.hasRpcVersions()) {
                n0(startServerHandshakeReq.getRpcVersions());
            }
            if (startServerHandshakeReq.getMaxFrameSize() != 0) {
                t0(startServerHandshakeReq.getMaxFrameSize());
            }
            z(((GeneratedMessageV3) startServerHandshakeReq).unknownFields);
            R();
            return this;
        }

        public b l0(Endpoint endpoint) {
            q2<Endpoint, Endpoint.b, q> q2Var = this.f41825j;
            if (q2Var == null) {
                Endpoint endpoint2 = this.f41824i;
                if (endpoint2 != null) {
                    this.f41824i = Endpoint.newBuilder(endpoint2).g0(endpoint).I();
                } else {
                    this.f41824i = endpoint;
                }
                R();
            } else {
                q2Var.e(endpoint);
            }
            return this;
        }

        public b m0(Endpoint endpoint) {
            q2<Endpoint, Endpoint.b, q> q2Var = this.f41827l;
            if (q2Var == null) {
                Endpoint endpoint2 = this.f41826k;
                if (endpoint2 != null) {
                    this.f41826k = Endpoint.newBuilder(endpoint2).g0(endpoint).I();
                } else {
                    this.f41826k = endpoint;
                }
                R();
            } else {
                q2Var.e(endpoint);
            }
            return this;
        }

        public b n0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41829n;
            if (q2Var == null) {
                RpcProtocolVersions rpcProtocolVersions2 = this.f41828m;
                if (rpcProtocolVersions2 != null) {
                    this.f41828m = RpcProtocolVersions.newBuilder(rpcProtocolVersions2).g0(rpcProtocolVersions).I();
                } else {
                    this.f41828m = rpcProtocolVersions;
                }
                R();
            } else {
                q2Var.e(rpcProtocolVersions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b q0(int i9, ServerHandshakeParameters serverHandshakeParameters) {
            Objects.requireNonNull(serverHandshakeParameters, "map value");
            g0().l().put(Integer.valueOf(i9), serverHandshakeParameters);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b s0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f41823h = byteString;
            R();
            return this;
        }

        public b t0(int i9) {
            this.f41830o = i9;
            R();
            return this;
        }

        public b u0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41829n;
            if (q2Var == null) {
                Objects.requireNonNull(rpcProtocolVersions);
                this.f41828m = rpcProtocolVersions;
                R();
            } else {
                q2Var.g(rpcProtocolVersions);
            }
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
            this.f41821f = y0.f15344d;
            this.f41823h = ByteString.EMPTY;
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41821f = y0.f15344d;
            this.f41823h = ByteString.EMPTY;
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<Integer, ServerHandshakeParameters> f41831a = e1.k(r.f41958m, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, ServerHandshakeParameters.getDefaultInstance());
    }

    /* synthetic */ StartServerHandshakeReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StartServerHandshakeReq getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41956k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<Integer, ServerHandshakeParameters> internalGetHandshakeParameters() {
        g1<Integer, ServerHandshakeParameters> g1Var = this.handshakeParameters_;
        return g1Var == null ? g1.g(c.f41831a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StartServerHandshakeReq parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StartServerHandshakeReq parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StartServerHandshakeReq> parser() {
        return PARSER;
    }

    public boolean containsHandshakeParameters(int i9) {
        return internalGetHandshakeParameters().i().containsKey(Integer.valueOf(i9));
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StartServerHandshakeReq)) {
            return super.equals(obj);
        }
        StartServerHandshakeReq startServerHandshakeReq = (StartServerHandshakeReq) obj;
        if (m1549getApplicationProtocolsList().equals(startServerHandshakeReq.m1549getApplicationProtocolsList()) && internalGetHandshakeParameters().equals(startServerHandshakeReq.internalGetHandshakeParameters()) && getInBytes().equals(startServerHandshakeReq.getInBytes()) && hasLocalEndpoint() == startServerHandshakeReq.hasLocalEndpoint()) {
            if ((!hasLocalEndpoint() || getLocalEndpoint().equals(startServerHandshakeReq.getLocalEndpoint())) && hasRemoteEndpoint() == startServerHandshakeReq.hasRemoteEndpoint()) {
                if ((!hasRemoteEndpoint() || getRemoteEndpoint().equals(startServerHandshakeReq.getRemoteEndpoint())) && hasRpcVersions() == startServerHandshakeReq.hasRpcVersions()) {
                    return (!hasRpcVersions() || getRpcVersions().equals(startServerHandshakeReq.getRpcVersions())) && getMaxFrameSize() == startServerHandshakeReq.getMaxFrameSize() && this.unknownFields.equals(startServerHandshakeReq.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String getApplicationProtocols(int i9) {
        return this.applicationProtocols_.get(i9);
    }

    public ByteString getApplicationProtocolsBytes(int i9) {
        return this.applicationProtocols_.j0(i9);
    }

    public int getApplicationProtocolsCount() {
        return this.applicationProtocols_.size();
    }

    @Deprecated
    public Map<Integer, ServerHandshakeParameters> getHandshakeParameters() {
        return getHandshakeParametersMap();
    }

    public int getHandshakeParametersCount() {
        return internalGetHandshakeParameters().i().size();
    }

    public Map<Integer, ServerHandshakeParameters> getHandshakeParametersMap() {
        return internalGetHandshakeParameters().i();
    }

    public ServerHandshakeParameters getHandshakeParametersOrDefault(int i9, ServerHandshakeParameters serverHandshakeParameters) {
        Map<Integer, ServerHandshakeParameters> i10 = internalGetHandshakeParameters().i();
        return i10.containsKey(Integer.valueOf(i9)) ? i10.get(Integer.valueOf(i9)) : serverHandshakeParameters;
    }

    public ServerHandshakeParameters getHandshakeParametersOrThrow(int i9) {
        Map<Integer, ServerHandshakeParameters> i10 = internalGetHandshakeParameters().i();
        if (i10.containsKey(Integer.valueOf(i9))) {
            return i10.get(Integer.valueOf(i9));
        }
        throw new IllegalArgumentException();
    }

    public ByteString getInBytes() {
        return this.inBytes_;
    }

    public Endpoint getLocalEndpoint() {
        Endpoint endpoint = this.localEndpoint_;
        return endpoint == null ? Endpoint.getDefaultInstance() : endpoint;
    }

    public q getLocalEndpointOrBuilder() {
        return getLocalEndpoint();
    }

    public int getMaxFrameSize() {
        return this.maxFrameSize_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StartServerHandshakeReq> getParserForType() {
        return PARSER;
    }

    public Endpoint getRemoteEndpoint() {
        Endpoint endpoint = this.remoteEndpoint_;
        return endpoint == null ? Endpoint.getDefaultInstance() : endpoint;
    }

    public q getRemoteEndpointOrBuilder() {
        return getRemoteEndpoint();
    }

    public RpcProtocolVersions getRpcVersions() {
        RpcProtocolVersions rpcProtocolVersions = this.rpcVersions_;
        return rpcProtocolVersions == null ? RpcProtocolVersions.getDefaultInstance() : rpcProtocolVersions;
    }

    public z getRpcVersionsOrBuilder() {
        return getRpcVersions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.applicationProtocols_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.applicationProtocols_.c1(i11));
        }
        int size = 0 + i10 + (m1549getApplicationProtocolsList().size() * 1);
        for (Map.Entry<Integer, ServerHandshakeParameters> entry : internalGetHandshakeParameters().i().entrySet()) {
            size += CodedOutputStream.G(2, c.f41831a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (!this.inBytes_.isEmpty()) {
            size += CodedOutputStream.h(3, this.inBytes_);
        }
        if (this.localEndpoint_ != null) {
            size += CodedOutputStream.G(4, getLocalEndpoint());
        }
        if (this.remoteEndpoint_ != null) {
            size += CodedOutputStream.G(5, getRemoteEndpoint());
        }
        if (this.rpcVersions_ != null) {
            size += CodedOutputStream.G(6, getRpcVersions());
        }
        int i12 = this.maxFrameSize_;
        if (i12 != 0) {
            size += CodedOutputStream.Y(7, i12);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLocalEndpoint() {
        return this.localEndpoint_ != null;
    }

    public boolean hasRemoteEndpoint() {
        return this.remoteEndpoint_ != null;
    }

    public boolean hasRpcVersions() {
        return this.rpcVersions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getApplicationProtocolsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m1549getApplicationProtocolsList().hashCode();
        }
        if (!internalGetHandshakeParameters().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetHandshakeParameters().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 3) * 53) + getInBytes().hashCode();
        if (hasLocalEndpoint()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getLocalEndpoint().hashCode();
        }
        if (hasRemoteEndpoint()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getRemoteEndpoint().hashCode();
        }
        if (hasRpcVersions()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getRpcVersions().hashCode();
        }
        int maxFrameSize = (((((hashCode2 * 37) + 7) * 53) + getMaxFrameSize()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = maxFrameSize;
        return maxFrameSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41957l.d(StartServerHandshakeReq.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetHandshakeParameters();
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
        return new StartServerHandshakeReq();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.applicationProtocols_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.applicationProtocols_.c1(i9));
        }
        GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetHandshakeParameters(), c.f41831a, 2);
        if (!this.inBytes_.isEmpty()) {
            codedOutputStream.r0(3, this.inBytes_);
        }
        if (this.localEndpoint_ != null) {
            codedOutputStream.L0(4, getLocalEndpoint());
        }
        if (this.remoteEndpoint_ != null) {
            codedOutputStream.L0(5, getRemoteEndpoint());
        }
        if (this.rpcVersions_ != null) {
            codedOutputStream.L0(6, getRpcVersions());
        }
        int i10 = this.maxFrameSize_;
        if (i10 != 0) {
            codedOutputStream.c1(7, i10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StartServerHandshakeReq(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StartServerHandshakeReq startServerHandshakeReq) {
        return DEFAULT_INSTANCE.toBuilder().k0(startServerHandshakeReq);
    }

    public static StartServerHandshakeReq parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getApplicationProtocolsList */
    public i2 m1549getApplicationProtocolsList() {
        return this.applicationProtocols_;
    }

    private StartServerHandshakeReq(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StartServerHandshakeReq parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StartServerHandshakeReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StartServerHandshakeReq getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static StartServerHandshakeReq parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StartServerHandshakeReq() {
        this.memoizedIsInitialized = (byte) -1;
        this.applicationProtocols_ = y0.f15344d;
        this.inBytes_ = ByteString.EMPTY;
    }

    public static StartServerHandshakeReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StartServerHandshakeReq parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StartServerHandshakeReq parseFrom(InputStream inputStream) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StartServerHandshakeReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.applicationProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.applicationProtocols_.add(K);
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.handshakeParameters_ = g1.p(c.f41831a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f41831a.getParserForType(), f0Var);
                            this.handshakeParameters_.l().put((Integer) e1Var.f(), (ServerHandshakeParameters) e1Var.h());
                        } else if (L != 26) {
                            if (L == 34) {
                                Endpoint endpoint = this.localEndpoint_;
                                Endpoint.b builder = endpoint != null ? endpoint.toBuilder() : null;
                                Endpoint endpoint2 = (Endpoint) pVar.B(Endpoint.parser(), f0Var);
                                this.localEndpoint_ = endpoint2;
                                if (builder != null) {
                                    builder.g0(endpoint2);
                                    this.localEndpoint_ = builder.I();
                                }
                            } else if (L == 42) {
                                Endpoint endpoint3 = this.remoteEndpoint_;
                                Endpoint.b builder2 = endpoint3 != null ? endpoint3.toBuilder() : null;
                                Endpoint endpoint4 = (Endpoint) pVar.B(Endpoint.parser(), f0Var);
                                this.remoteEndpoint_ = endpoint4;
                                if (builder2 != null) {
                                    builder2.g0(endpoint4);
                                    this.remoteEndpoint_ = builder2.I();
                                }
                            } else if (L == 50) {
                                RpcProtocolVersions rpcProtocolVersions = this.rpcVersions_;
                                RpcProtocolVersions.b builder3 = rpcProtocolVersions != null ? rpcProtocolVersions.toBuilder() : null;
                                RpcProtocolVersions rpcProtocolVersions2 = (RpcProtocolVersions) pVar.B(RpcProtocolVersions.parser(), f0Var);
                                this.rpcVersions_ = rpcProtocolVersions2;
                                if (builder3 != null) {
                                    builder3.g0(rpcProtocolVersions2);
                                    this.rpcVersions_ = builder3.I();
                                }
                            } else if (L != 56) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.maxFrameSize_ = pVar.M();
                            }
                        } else {
                            this.inBytes_ = pVar.s();
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
                    this.applicationProtocols_ = this.applicationProtocols_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static StartServerHandshakeReq parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StartServerHandshakeReq parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StartServerHandshakeReq parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartServerHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
