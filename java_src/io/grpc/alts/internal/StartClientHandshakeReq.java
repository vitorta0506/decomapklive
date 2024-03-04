package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.alts.internal.Endpoint;
import io.grpc.alts.internal.Identity;
import io.grpc.alts.internal.RpcProtocolVersions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class StartClientHandshakeReq extends GeneratedMessageV3 implements b0 {
    public static final int APPLICATION_PROTOCOLS_FIELD_NUMBER = 2;
    public static final int HANDSHAKE_SECURITY_PROTOCOL_FIELD_NUMBER = 1;
    public static final int LOCAL_ENDPOINT_FIELD_NUMBER = 6;
    public static final int LOCAL_IDENTITY_FIELD_NUMBER = 5;
    public static final int MAX_FRAME_SIZE_FIELD_NUMBER = 10;
    public static final int RECORD_PROTOCOLS_FIELD_NUMBER = 3;
    public static final int REMOTE_ENDPOINT_FIELD_NUMBER = 7;
    public static final int RPC_VERSIONS_FIELD_NUMBER = 9;
    public static final int TARGET_IDENTITIES_FIELD_NUMBER = 4;
    public static final int TARGET_NAME_FIELD_NUMBER = 8;
    private static final long serialVersionUID = 0;
    private z0 applicationProtocols_;
    private int handshakeSecurityProtocol_;
    private Endpoint localEndpoint_;
    private Identity localIdentity_;
    private int maxFrameSize_;
    private byte memoizedIsInitialized;
    private z0 recordProtocols_;
    private Endpoint remoteEndpoint_;
    private RpcProtocolVersions rpcVersions_;
    private List<Identity> targetIdentities_;
    private volatile Object targetName_;
    private static final StartClientHandshakeReq DEFAULT_INSTANCE = new StartClientHandshakeReq();
    private static final e2<StartClientHandshakeReq> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<StartClientHandshakeReq> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StartClientHandshakeReq m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new StartClientHandshakeReq(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements b0 {

        /* renamed from: e  reason: collision with root package name */
        private int f41804e;

        /* renamed from: f  reason: collision with root package name */
        private int f41805f;

        /* renamed from: g  reason: collision with root package name */
        private z0 f41806g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f41807h;

        /* renamed from: i  reason: collision with root package name */
        private List<Identity> f41808i;

        /* renamed from: j  reason: collision with root package name */
        private l2<Identity, Identity.d, v> f41809j;

        /* renamed from: k  reason: collision with root package name */
        private Identity f41810k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Identity, Identity.d, v> f41811l;

        /* renamed from: m  reason: collision with root package name */
        private Endpoint f41812m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Endpoint, Endpoint.b, q> f41813n;

        /* renamed from: o  reason: collision with root package name */
        private Endpoint f41814o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Endpoint, Endpoint.b, q> f41815p;

        /* renamed from: q  reason: collision with root package name */
        private Object f41816q;

        /* renamed from: r  reason: collision with root package name */
        private RpcProtocolVersions f41817r;

        /* renamed from: s  reason: collision with root package name */
        private q2<RpcProtocolVersions, RpcProtocolVersions.b, z> f41818s;

        /* renamed from: t  reason: collision with root package name */
        private int f41819t;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void e0() {
            if ((this.f41804e & 1) == 0) {
                this.f41806g = new y0(this.f41806g);
                this.f41804e |= 1;
            }
        }

        private void g0() {
            if ((this.f41804e & 2) == 0) {
                this.f41807h = new y0(this.f41807h);
                this.f41804e |= 2;
            }
        }

        private void h0() {
            if ((this.f41804e & 4) == 0) {
                this.f41808i = new ArrayList(this.f41808i);
                this.f41804e |= 4;
            }
        }

        private l2<Identity, Identity.d, v> j0() {
            if (this.f41809j == null) {
                this.f41809j = new l2<>(this.f41808i, (this.f41804e & 4) != 0, H(), O());
                this.f41808i = null;
            }
            return this.f41809j;
        }

        private void k0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                j0();
            }
        }

        public b B0(String str) {
            Objects.requireNonNull(str);
            this.f41816q = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: D0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41953h.d(StartClientHandshakeReq.class, b.class);
        }

        public b W(String str) {
            Objects.requireNonNull(str);
            e0();
            this.f41806g.add(str);
            R();
            return this;
        }

        public b X(String str) {
            Objects.requireNonNull(str);
            g0();
            this.f41807h.add(str);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: Y */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        public Identity.d Z() {
            return j0().c(Identity.getDefaultInstance());
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: a0 */
        public StartClientHandshakeReq build() {
            StartClientHandshakeReq I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: b0 */
        public StartClientHandshakeReq I() {
            StartClientHandshakeReq startClientHandshakeReq = new StartClientHandshakeReq(this, (a) null);
            startClientHandshakeReq.handshakeSecurityProtocol_ = this.f41805f;
            if ((this.f41804e & 1) != 0) {
                this.f41806g = this.f41806g.V0();
                this.f41804e &= -2;
            }
            startClientHandshakeReq.applicationProtocols_ = this.f41806g;
            if ((this.f41804e & 2) != 0) {
                this.f41807h = this.f41807h.V0();
                this.f41804e &= -3;
            }
            startClientHandshakeReq.recordProtocols_ = this.f41807h;
            l2<Identity, Identity.d, v> l2Var = this.f41809j;
            if (l2Var == null) {
                if ((this.f41804e & 4) != 0) {
                    this.f41808i = Collections.unmodifiableList(this.f41808i);
                    this.f41804e &= -5;
                }
                startClientHandshakeReq.targetIdentities_ = this.f41808i;
            } else {
                startClientHandshakeReq.targetIdentities_ = l2Var.e();
            }
            q2<Identity, Identity.d, v> q2Var = this.f41811l;
            if (q2Var == null) {
                startClientHandshakeReq.localIdentity_ = this.f41810k;
            } else {
                startClientHandshakeReq.localIdentity_ = q2Var.b();
            }
            q2<Endpoint, Endpoint.b, q> q2Var2 = this.f41813n;
            if (q2Var2 == null) {
                startClientHandshakeReq.localEndpoint_ = this.f41812m;
            } else {
                startClientHandshakeReq.localEndpoint_ = q2Var2.b();
            }
            q2<Endpoint, Endpoint.b, q> q2Var3 = this.f41815p;
            if (q2Var3 == null) {
                startClientHandshakeReq.remoteEndpoint_ = this.f41814o;
            } else {
                startClientHandshakeReq.remoteEndpoint_ = q2Var3.b();
            }
            startClientHandshakeReq.targetName_ = this.f41816q;
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var4 = this.f41818s;
            if (q2Var4 == null) {
                startClientHandshakeReq.rpcVersions_ = this.f41817r;
            } else {
                startClientHandshakeReq.rpcVersions_ = q2Var4.b();
            }
            startClientHandshakeReq.maxFrameSize_ = this.f41819t;
            Q();
            return startClientHandshakeReq;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41952g;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: i0 */
        public StartClientHandshakeReq getDefaultInstanceForType() {
            return StartClientHandshakeReq.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.StartClientHandshakeReq.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.StartClientHandshakeReq.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.StartClientHandshakeReq r3 = (io.grpc.alts.internal.StartClientHandshakeReq) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.StartClientHandshakeReq r4 = (io.grpc.alts.internal.StartClientHandshakeReq) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.StartClientHandshakeReq.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.StartClientHandshakeReq$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StartClientHandshakeReq) {
                return n0((StartClientHandshakeReq) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b n0(StartClientHandshakeReq startClientHandshakeReq) {
            if (startClientHandshakeReq == StartClientHandshakeReq.getDefaultInstance()) {
                return this;
            }
            if (startClientHandshakeReq.handshakeSecurityProtocol_ != 0) {
                x0(startClientHandshakeReq.getHandshakeSecurityProtocolValue());
            }
            if (!startClientHandshakeReq.applicationProtocols_.isEmpty()) {
                if (this.f41806g.isEmpty()) {
                    this.f41806g = startClientHandshakeReq.applicationProtocols_;
                    this.f41804e &= -2;
                } else {
                    e0();
                    this.f41806g.addAll(startClientHandshakeReq.applicationProtocols_);
                }
                R();
            }
            if (!startClientHandshakeReq.recordProtocols_.isEmpty()) {
                if (this.f41807h.isEmpty()) {
                    this.f41807h = startClientHandshakeReq.recordProtocols_;
                    this.f41804e &= -3;
                } else {
                    g0();
                    this.f41807h.addAll(startClientHandshakeReq.recordProtocols_);
                }
                R();
            }
            if (this.f41809j == null) {
                if (!startClientHandshakeReq.targetIdentities_.isEmpty()) {
                    if (this.f41808i.isEmpty()) {
                        this.f41808i = startClientHandshakeReq.targetIdentities_;
                        this.f41804e &= -5;
                    } else {
                        h0();
                        this.f41808i.addAll(startClientHandshakeReq.targetIdentities_);
                    }
                    R();
                }
            } else if (!startClientHandshakeReq.targetIdentities_.isEmpty()) {
                if (this.f41809j.k()) {
                    this.f41809j.f();
                    this.f41809j = null;
                    this.f41808i = startClientHandshakeReq.targetIdentities_;
                    this.f41804e &= -5;
                    this.f41809j = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f41809j.b(startClientHandshakeReq.targetIdentities_);
                }
            }
            if (startClientHandshakeReq.hasLocalIdentity()) {
                q0(startClientHandshakeReq.getLocalIdentity());
            }
            if (startClientHandshakeReq.hasLocalEndpoint()) {
                o0(startClientHandshakeReq.getLocalEndpoint());
            }
            if (startClientHandshakeReq.hasRemoteEndpoint()) {
                r0(startClientHandshakeReq.getRemoteEndpoint());
            }
            if (!startClientHandshakeReq.getTargetName().isEmpty()) {
                this.f41816q = startClientHandshakeReq.targetName_;
                R();
            }
            if (startClientHandshakeReq.hasRpcVersions()) {
                s0(startClientHandshakeReq.getRpcVersions());
            }
            if (startClientHandshakeReq.getMaxFrameSize() != 0) {
                y0(startClientHandshakeReq.getMaxFrameSize());
            }
            z(((GeneratedMessageV3) startClientHandshakeReq).unknownFields);
            R();
            return this;
        }

        public b o0(Endpoint endpoint) {
            q2<Endpoint, Endpoint.b, q> q2Var = this.f41813n;
            if (q2Var == null) {
                Endpoint endpoint2 = this.f41812m;
                if (endpoint2 != null) {
                    this.f41812m = Endpoint.newBuilder(endpoint2).g0(endpoint).I();
                } else {
                    this.f41812m = endpoint;
                }
                R();
            } else {
                q2Var.e(endpoint);
            }
            return this;
        }

        public b q0(Identity identity) {
            q2<Identity, Identity.d, v> q2Var = this.f41811l;
            if (q2Var == null) {
                Identity identity2 = this.f41810k;
                if (identity2 != null) {
                    this.f41810k = Identity.newBuilder(identity2).i0(identity).I();
                } else {
                    this.f41810k = identity;
                }
                R();
            } else {
                q2Var.e(identity);
            }
            return this;
        }

        public b r0(Endpoint endpoint) {
            q2<Endpoint, Endpoint.b, q> q2Var = this.f41815p;
            if (q2Var == null) {
                Endpoint endpoint2 = this.f41814o;
                if (endpoint2 != null) {
                    this.f41814o = Endpoint.newBuilder(endpoint2).g0(endpoint).I();
                } else {
                    this.f41814o = endpoint;
                }
                R();
            } else {
                q2Var.e(endpoint);
            }
            return this;
        }

        public b s0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41818s;
            if (q2Var == null) {
                RpcProtocolVersions rpcProtocolVersions2 = this.f41817r;
                if (rpcProtocolVersions2 != null) {
                    this.f41817r = RpcProtocolVersions.newBuilder(rpcProtocolVersions2).g0(rpcProtocolVersions).I();
                } else {
                    this.f41817r = rpcProtocolVersions;
                }
                R();
            } else {
                q2Var.e(rpcProtocolVersions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b v0(HandshakeProtocol handshakeProtocol) {
            Objects.requireNonNull(handshakeProtocol);
            this.f41805f = handshakeProtocol.getNumber();
            R();
            return this;
        }

        public b x0(int i9) {
            this.f41805f = i9;
            R();
            return this;
        }

        public b y0(int i9) {
            this.f41819t = i9;
            R();
            return this;
        }

        public b z0(RpcProtocolVersions rpcProtocolVersions) {
            q2<RpcProtocolVersions, RpcProtocolVersions.b, z> q2Var = this.f41818s;
            if (q2Var == null) {
                Objects.requireNonNull(rpcProtocolVersions);
                this.f41817r = rpcProtocolVersions;
                R();
            } else {
                q2Var.g(rpcProtocolVersions);
            }
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f41805f = 0;
            z0 z0Var = y0.f15344d;
            this.f41806g = z0Var;
            this.f41807h = z0Var;
            this.f41808i = Collections.emptyList();
            this.f41816q = "";
            k0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41805f = 0;
            z0 z0Var = y0.f15344d;
            this.f41806g = z0Var;
            this.f41807h = z0Var;
            this.f41808i = Collections.emptyList();
            this.f41816q = "";
            k0();
        }
    }

    /* synthetic */ StartClientHandshakeReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StartClientHandshakeReq getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41952g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StartClientHandshakeReq parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StartClientHandshakeReq parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StartClientHandshakeReq> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StartClientHandshakeReq)) {
            return super.equals(obj);
        }
        StartClientHandshakeReq startClientHandshakeReq = (StartClientHandshakeReq) obj;
        if (this.handshakeSecurityProtocol_ == startClientHandshakeReq.handshakeSecurityProtocol_ && m1547getApplicationProtocolsList().equals(startClientHandshakeReq.m1547getApplicationProtocolsList()) && m1548getRecordProtocolsList().equals(startClientHandshakeReq.m1548getRecordProtocolsList()) && getTargetIdentitiesList().equals(startClientHandshakeReq.getTargetIdentitiesList()) && hasLocalIdentity() == startClientHandshakeReq.hasLocalIdentity()) {
            if ((!hasLocalIdentity() || getLocalIdentity().equals(startClientHandshakeReq.getLocalIdentity())) && hasLocalEndpoint() == startClientHandshakeReq.hasLocalEndpoint()) {
                if ((!hasLocalEndpoint() || getLocalEndpoint().equals(startClientHandshakeReq.getLocalEndpoint())) && hasRemoteEndpoint() == startClientHandshakeReq.hasRemoteEndpoint()) {
                    if ((!hasRemoteEndpoint() || getRemoteEndpoint().equals(startClientHandshakeReq.getRemoteEndpoint())) && getTargetName().equals(startClientHandshakeReq.getTargetName()) && hasRpcVersions() == startClientHandshakeReq.hasRpcVersions()) {
                        return (!hasRpcVersions() || getRpcVersions().equals(startClientHandshakeReq.getRpcVersions())) && getMaxFrameSize() == startClientHandshakeReq.getMaxFrameSize() && this.unknownFields.equals(startClientHandshakeReq.unknownFields);
                    }
                    return false;
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

    public HandshakeProtocol getHandshakeSecurityProtocol() {
        HandshakeProtocol valueOf = HandshakeProtocol.valueOf(this.handshakeSecurityProtocol_);
        return valueOf == null ? HandshakeProtocol.UNRECOGNIZED : valueOf;
    }

    public int getHandshakeSecurityProtocolValue() {
        return this.handshakeSecurityProtocol_;
    }

    public Endpoint getLocalEndpoint() {
        Endpoint endpoint = this.localEndpoint_;
        return endpoint == null ? Endpoint.getDefaultInstance() : endpoint;
    }

    public q getLocalEndpointOrBuilder() {
        return getLocalEndpoint();
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
    public e2<StartClientHandshakeReq> getParserForType() {
        return PARSER;
    }

    public String getRecordProtocols(int i9) {
        return this.recordProtocols_.get(i9);
    }

    public ByteString getRecordProtocolsBytes(int i9) {
        return this.recordProtocols_.j0(i9);
    }

    public int getRecordProtocolsCount() {
        return this.recordProtocols_.size();
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
        int l10 = this.handshakeSecurityProtocol_ != HandshakeProtocol.HANDSHAKE_PROTOCOL_UNSPECIFIED.getNumber() ? CodedOutputStream.l(1, this.handshakeSecurityProtocol_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.applicationProtocols_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.applicationProtocols_.c1(i11));
        }
        int size = l10 + i10 + (m1547getApplicationProtocolsList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.recordProtocols_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.recordProtocols_.c1(i13));
        }
        int size2 = size + i12 + (m1548getRecordProtocolsList().size() * 1);
        for (int i14 = 0; i14 < this.targetIdentities_.size(); i14++) {
            size2 += CodedOutputStream.G(4, this.targetIdentities_.get(i14));
        }
        if (this.localIdentity_ != null) {
            size2 += CodedOutputStream.G(5, getLocalIdentity());
        }
        if (this.localEndpoint_ != null) {
            size2 += CodedOutputStream.G(6, getLocalEndpoint());
        }
        if (this.remoteEndpoint_ != null) {
            size2 += CodedOutputStream.G(7, getRemoteEndpoint());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.targetName_)) {
            size2 += GeneratedMessageV3.computeStringSize(8, this.targetName_);
        }
        if (this.rpcVersions_ != null) {
            size2 += CodedOutputStream.G(9, getRpcVersions());
        }
        int i15 = this.maxFrameSize_;
        if (i15 != 0) {
            size2 += CodedOutputStream.Y(10, i15);
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Identity getTargetIdentities(int i9) {
        return this.targetIdentities_.get(i9);
    }

    public int getTargetIdentitiesCount() {
        return this.targetIdentities_.size();
    }

    public List<Identity> getTargetIdentitiesList() {
        return this.targetIdentities_;
    }

    public v getTargetIdentitiesOrBuilder(int i9) {
        return this.targetIdentities_.get(i9);
    }

    public List<? extends v> getTargetIdentitiesOrBuilderList() {
        return this.targetIdentities_;
    }

    public String getTargetName() {
        Object obj = this.targetName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.targetName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTargetNameBytes() {
        Object obj = this.targetName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.targetName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLocalEndpoint() {
        return this.localEndpoint_ != null;
    }

    public boolean hasLocalIdentity() {
        return this.localIdentity_ != null;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.handshakeSecurityProtocol_;
        if (getApplicationProtocolsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m1547getApplicationProtocolsList().hashCode();
        }
        if (getRecordProtocolsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m1548getRecordProtocolsList().hashCode();
        }
        if (getTargetIdentitiesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getTargetIdentitiesList().hashCode();
        }
        if (hasLocalIdentity()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getLocalIdentity().hashCode();
        }
        if (hasLocalEndpoint()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getLocalEndpoint().hashCode();
        }
        if (hasRemoteEndpoint()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getRemoteEndpoint().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 8) * 53) + getTargetName().hashCode();
        if (hasRpcVersions()) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getRpcVersions().hashCode();
        }
        int maxFrameSize = (((((hashCode2 * 37) + 10) * 53) + getMaxFrameSize()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = maxFrameSize;
        return maxFrameSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f41953h.d(StartClientHandshakeReq.class, b.class);
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
        return new StartClientHandshakeReq();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.handshakeSecurityProtocol_ != HandshakeProtocol.HANDSHAKE_PROTOCOL_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(1, this.handshakeSecurityProtocol_);
        }
        for (int i9 = 0; i9 < this.applicationProtocols_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.applicationProtocols_.c1(i9));
        }
        for (int i10 = 0; i10 < this.recordProtocols_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.recordProtocols_.c1(i10));
        }
        for (int i11 = 0; i11 < this.targetIdentities_.size(); i11++) {
            codedOutputStream.L0(4, this.targetIdentities_.get(i11));
        }
        if (this.localIdentity_ != null) {
            codedOutputStream.L0(5, getLocalIdentity());
        }
        if (this.localEndpoint_ != null) {
            codedOutputStream.L0(6, getLocalEndpoint());
        }
        if (this.remoteEndpoint_ != null) {
            codedOutputStream.L0(7, getRemoteEndpoint());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.targetName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.targetName_);
        }
        if (this.rpcVersions_ != null) {
            codedOutputStream.L0(9, getRpcVersions());
        }
        int i12 = this.maxFrameSize_;
        if (i12 != 0) {
            codedOutputStream.c1(10, i12);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StartClientHandshakeReq(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StartClientHandshakeReq startClientHandshakeReq) {
        return DEFAULT_INSTANCE.toBuilder().n0(startClientHandshakeReq);
    }

    public static StartClientHandshakeReq parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getApplicationProtocolsList */
    public i2 m1547getApplicationProtocolsList() {
        return this.applicationProtocols_;
    }

    /* renamed from: getRecordProtocolsList */
    public i2 m1548getRecordProtocolsList() {
        return this.recordProtocols_;
    }

    private StartClientHandshakeReq(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StartClientHandshakeReq parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StartClientHandshakeReq parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StartClientHandshakeReq getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).n0(this);
    }

    public static StartClientHandshakeReq parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StartClientHandshakeReq() {
        this.memoizedIsInitialized = (byte) -1;
        this.handshakeSecurityProtocol_ = 0;
        z0 z0Var = y0.f15344d;
        this.applicationProtocols_ = z0Var;
        this.recordProtocols_ = z0Var;
        this.targetIdentities_ = Collections.emptyList();
        this.targetName_ = "";
    }

    public static StartClientHandshakeReq parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StartClientHandshakeReq parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StartClientHandshakeReq parseFrom(InputStream inputStream) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StartClientHandshakeReq parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StartClientHandshakeReq parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private StartClientHandshakeReq(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 8:
                            this.handshakeSecurityProtocol_ = pVar.u();
                            continue;
                        case 18:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.applicationProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.applicationProtocols_.add(K);
                            continue;
                        case 26:
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.recordProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.recordProtocols_.add(K2);
                            continue;
                        case 34:
                            if (!(z11 & true)) {
                                this.targetIdentities_ = new ArrayList();
                                z11 |= true;
                            }
                            this.targetIdentities_.add((Identity) pVar.B(Identity.parser(), f0Var));
                            continue;
                        case 42:
                            Identity identity = this.localIdentity_;
                            Identity.d builder = identity != null ? identity.toBuilder() : null;
                            Identity identity2 = (Identity) pVar.B(Identity.parser(), f0Var);
                            this.localIdentity_ = identity2;
                            if (builder != null) {
                                builder.i0(identity2);
                                this.localIdentity_ = builder.I();
                            } else {
                                continue;
                            }
                        case 50:
                            Endpoint endpoint = this.localEndpoint_;
                            Endpoint.b builder2 = endpoint != null ? endpoint.toBuilder() : null;
                            Endpoint endpoint2 = (Endpoint) pVar.B(Endpoint.parser(), f0Var);
                            this.localEndpoint_ = endpoint2;
                            if (builder2 != null) {
                                builder2.g0(endpoint2);
                                this.localEndpoint_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 58:
                            Endpoint endpoint3 = this.remoteEndpoint_;
                            Endpoint.b builder3 = endpoint3 != null ? endpoint3.toBuilder() : null;
                            Endpoint endpoint4 = (Endpoint) pVar.B(Endpoint.parser(), f0Var);
                            this.remoteEndpoint_ = endpoint4;
                            if (builder3 != null) {
                                builder3.g0(endpoint4);
                                this.remoteEndpoint_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 66:
                            this.targetName_ = pVar.K();
                            continue;
                        case 74:
                            RpcProtocolVersions rpcProtocolVersions = this.rpcVersions_;
                            RpcProtocolVersions.b builder4 = rpcProtocolVersions != null ? rpcProtocolVersions.toBuilder() : null;
                            RpcProtocolVersions rpcProtocolVersions2 = (RpcProtocolVersions) pVar.B(RpcProtocolVersions.parser(), f0Var);
                            this.rpcVersions_ = rpcProtocolVersions2;
                            if (builder4 != null) {
                                builder4.g0(rpcProtocolVersions2);
                                this.rpcVersions_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 80:
                            this.maxFrameSize_ = pVar.M();
                            continue;
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
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.applicationProtocols_ = this.applicationProtocols_.V0();
                }
                if (z11 & true) {
                    this.recordProtocols_ = this.recordProtocols_.V0();
                }
                if (z11 & true) {
                    this.targetIdentities_ = Collections.unmodifiableList(this.targetIdentities_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static StartClientHandshakeReq parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (StartClientHandshakeReq) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
