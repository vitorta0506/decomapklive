package io.grpc.lb.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.lb.v1.ClientStatsPerToken;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ClientStats extends GeneratedMessageV3 implements io.grpc.lb.v1.a {
    public static final int CALLS_FINISHED_WITH_DROP_FIELD_NUMBER = 8;
    public static final int NUM_CALLS_FINISHED_FIELD_NUMBER = 3;
    public static final int NUM_CALLS_FINISHED_KNOWN_RECEIVED_FIELD_NUMBER = 7;
    public static final int NUM_CALLS_FINISHED_WITH_CLIENT_FAILED_TO_SEND_FIELD_NUMBER = 6;
    public static final int NUM_CALLS_STARTED_FIELD_NUMBER = 2;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<ClientStatsPerToken> callsFinishedWithDrop_;
    private byte memoizedIsInitialized;
    private long numCallsFinishedKnownReceived_;
    private long numCallsFinishedWithClientFailedToSend_;
    private long numCallsFinished_;
    private long numCallsStarted_;
    private Timestamp timestamp_;
    private static final ClientStats DEFAULT_INSTANCE = new ClientStats();
    private static final e2<ClientStats> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ClientStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClientStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClientStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.lb.v1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f43353e;

        /* renamed from: f  reason: collision with root package name */
        private Timestamp f43354f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f43355g;

        /* renamed from: h  reason: collision with root package name */
        private long f43356h;

        /* renamed from: i  reason: collision with root package name */
        private long f43357i;

        /* renamed from: j  reason: collision with root package name */
        private long f43358j;

        /* renamed from: k  reason: collision with root package name */
        private long f43359k;

        /* renamed from: l  reason: collision with root package name */
        private List<ClientStatsPerToken> f43360l;

        /* renamed from: m  reason: collision with root package name */
        private l2<ClientStatsPerToken, ClientStatsPerToken.b, io.grpc.lb.v1.b> f43361m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f43353e & 1) == 0) {
                this.f43360l = new ArrayList(this.f43360l);
                this.f43353e |= 1;
            }
        }

        private l2<ClientStatsPerToken, ClientStatsPerToken.b, io.grpc.lb.v1.b> d0() {
            if (this.f43361m == null) {
                this.f43361m = new l2<>(this.f43360l, (this.f43353e & 1) != 0, H(), O());
                this.f43360l = null;
            }
            return this.f43361m;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f43394h.d(ClientStats.class, b.class);
        }

        public b W(ClientStatsPerToken clientStatsPerToken) {
            l2<ClientStatsPerToken, ClientStatsPerToken.b, io.grpc.lb.v1.b> l2Var = this.f43361m;
            if (l2Var == null) {
                Objects.requireNonNull(clientStatsPerToken);
                b0();
                this.f43360l.add(clientStatsPerToken);
                R();
            } else {
                l2Var.d(clientStatsPerToken);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClientStats build() {
            ClientStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public ClientStats I() {
            ClientStats clientStats = new ClientStats(this, (a) null);
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f43355g;
            if (q2Var == null) {
                clientStats.timestamp_ = this.f43354f;
            } else {
                clientStats.timestamp_ = q2Var.b();
            }
            clientStats.numCallsStarted_ = this.f43356h;
            clientStats.numCallsFinished_ = this.f43357i;
            clientStats.numCallsFinishedWithClientFailedToSend_ = this.f43358j;
            clientStats.numCallsFinishedKnownReceived_ = this.f43359k;
            l2<ClientStatsPerToken, ClientStatsPerToken.b, io.grpc.lb.v1.b> l2Var = this.f43361m;
            if (l2Var == null) {
                if ((this.f43353e & 1) != 0) {
                    this.f43360l = Collections.unmodifiableList(this.f43360l);
                    this.f43353e &= -2;
                }
                clientStats.callsFinishedWithDrop_ = this.f43360l;
            } else {
                clientStats.callsFinishedWithDrop_ = l2Var.e();
            }
            Q();
            return clientStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public ClientStats getDefaultInstanceForType() {
            return ClientStats.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f43393g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.lb.v1.ClientStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.lb.v1.ClientStats.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.lb.v1.ClientStats r3 = (io.grpc.lb.v1.ClientStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.lb.v1.ClientStats r4 = (io.grpc.lb.v1.ClientStats) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.lb.v1.ClientStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.lb.v1.ClientStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClientStats) {
                return j0((ClientStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(ClientStats clientStats) {
            if (clientStats == ClientStats.getDefaultInstance()) {
                return this;
            }
            if (clientStats.hasTimestamp()) {
                k0(clientStats.getTimestamp());
            }
            if (clientStats.getNumCallsStarted() != 0) {
                r0(clientStats.getNumCallsStarted());
            }
            if (clientStats.getNumCallsFinished() != 0) {
                n0(clientStats.getNumCallsFinished());
            }
            if (clientStats.getNumCallsFinishedWithClientFailedToSend() != 0) {
                q0(clientStats.getNumCallsFinishedWithClientFailedToSend());
            }
            if (clientStats.getNumCallsFinishedKnownReceived() != 0) {
                o0(clientStats.getNumCallsFinishedKnownReceived());
            }
            if (this.f43361m == null) {
                if (!clientStats.callsFinishedWithDrop_.isEmpty()) {
                    if (this.f43360l.isEmpty()) {
                        this.f43360l = clientStats.callsFinishedWithDrop_;
                        this.f43353e &= -2;
                    } else {
                        b0();
                        this.f43360l.addAll(clientStats.callsFinishedWithDrop_);
                    }
                    R();
                }
            } else if (!clientStats.callsFinishedWithDrop_.isEmpty()) {
                if (this.f43361m.k()) {
                    this.f43361m.f();
                    this.f43361m = null;
                    this.f43360l = clientStats.callsFinishedWithDrop_;
                    this.f43353e &= -2;
                    this.f43361m = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f43361m.b(clientStats.callsFinishedWithDrop_);
                }
            }
            z(((GeneratedMessageV3) clientStats).unknownFields);
            R();
            return this;
        }

        public b k0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f43355g;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f43354f;
                if (timestamp2 != null) {
                    this.f43354f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f43354f = timestamp;
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
            this.f43357i = j10;
            R();
            return this;
        }

        public b o0(long j10) {
            this.f43359k = j10;
            R();
            return this;
        }

        public b q0(long j10) {
            this.f43358j = j10;
            R();
            return this;
        }

        public b r0(long j10) {
            this.f43356h = j10;
            R();
            return this;
        }

        public b s0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f43355g;
            if (q2Var == null) {
                Objects.requireNonNull(timestamp);
                this.f43354f = timestamp;
                R();
            } else {
                q2Var.g(timestamp);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f43360l = Collections.emptyList();
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f43360l = Collections.emptyList();
            g0();
        }
    }

    /* synthetic */ ClientStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClientStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f43393g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClientStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClientStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClientStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientStats)) {
            return super.equals(obj);
        }
        ClientStats clientStats = (ClientStats) obj;
        if (hasTimestamp() != clientStats.hasTimestamp()) {
            return false;
        }
        return (!hasTimestamp() || getTimestamp().equals(clientStats.getTimestamp())) && getNumCallsStarted() == clientStats.getNumCallsStarted() && getNumCallsFinished() == clientStats.getNumCallsFinished() && getNumCallsFinishedWithClientFailedToSend() == clientStats.getNumCallsFinishedWithClientFailedToSend() && getNumCallsFinishedKnownReceived() == clientStats.getNumCallsFinishedKnownReceived() && getCallsFinishedWithDropList().equals(clientStats.getCallsFinishedWithDropList()) && this.unknownFields.equals(clientStats.unknownFields);
    }

    public ClientStatsPerToken getCallsFinishedWithDrop(int i9) {
        return this.callsFinishedWithDrop_.get(i9);
    }

    public int getCallsFinishedWithDropCount() {
        return this.callsFinishedWithDrop_.size();
    }

    public List<ClientStatsPerToken> getCallsFinishedWithDropList() {
        return this.callsFinishedWithDrop_;
    }

    public io.grpc.lb.v1.b getCallsFinishedWithDropOrBuilder(int i9) {
        return this.callsFinishedWithDrop_.get(i9);
    }

    public List<? extends io.grpc.lb.v1.b> getCallsFinishedWithDropOrBuilderList() {
        return this.callsFinishedWithDrop_;
    }

    public long getNumCallsFinished() {
        return this.numCallsFinished_;
    }

    public long getNumCallsFinishedKnownReceived() {
        return this.numCallsFinishedKnownReceived_;
    }

    public long getNumCallsFinishedWithClientFailedToSend() {
        return this.numCallsFinishedWithClientFailedToSend_;
    }

    public long getNumCallsStarted() {
        return this.numCallsStarted_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClientStats> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.timestamp_ != null ? CodedOutputStream.G(1, getTimestamp()) + 0 : 0;
        long j10 = this.numCallsStarted_;
        if (j10 != 0) {
            G += CodedOutputStream.z(2, j10);
        }
        long j11 = this.numCallsFinished_;
        if (j11 != 0) {
            G += CodedOutputStream.z(3, j11);
        }
        long j12 = this.numCallsFinishedWithClientFailedToSend_;
        if (j12 != 0) {
            G += CodedOutputStream.z(6, j12);
        }
        long j13 = this.numCallsFinishedKnownReceived_;
        if (j13 != 0) {
            G += CodedOutputStream.z(7, j13);
        }
        for (int i10 = 0; i10 < this.callsFinishedWithDrop_.size(); i10++) {
            G += CodedOutputStream.G(8, this.callsFinishedWithDrop_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getTimestampOrBuilder() {
        return getTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasTimestamp() {
        return this.timestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTimestamp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTimestamp().hashCode();
        }
        int i10 = (((((((((((((((hashCode * 37) + 2) * 53) + u0.i(getNumCallsStarted())) * 37) + 3) * 53) + u0.i(getNumCallsFinished())) * 37) + 6) * 53) + u0.i(getNumCallsFinishedWithClientFailedToSend())) * 37) + 7) * 53) + u0.i(getNumCallsFinishedKnownReceived());
        if (getCallsFinishedWithDropCount() > 0) {
            i10 = (((i10 * 37) + 8) * 53) + getCallsFinishedWithDropList().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f43394h.d(ClientStats.class, b.class);
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
        return new ClientStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.timestamp_ != null) {
            codedOutputStream.L0(1, getTimestamp());
        }
        long j10 = this.numCallsStarted_;
        if (j10 != 0) {
            codedOutputStream.J0(2, j10);
        }
        long j11 = this.numCallsFinished_;
        if (j11 != 0) {
            codedOutputStream.J0(3, j11);
        }
        long j12 = this.numCallsFinishedWithClientFailedToSend_;
        if (j12 != 0) {
            codedOutputStream.J0(6, j12);
        }
        long j13 = this.numCallsFinishedKnownReceived_;
        if (j13 != 0) {
            codedOutputStream.J0(7, j13);
        }
        for (int i9 = 0; i9 < this.callsFinishedWithDrop_.size(); i9++) {
            codedOutputStream.L0(8, this.callsFinishedWithDrop_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClientStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClientStats clientStats) {
        return DEFAULT_INSTANCE.toBuilder().j0(clientStats);
    }

    public static ClientStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClientStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClientStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClientStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static ClientStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClientStats() {
        this.memoizedIsInitialized = (byte) -1;
        this.callsFinishedWithDrop_ = Collections.emptyList();
    }

    public static ClientStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClientStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClientStats parseFrom(InputStream inputStream) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClientStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Timestamp timestamp = this.timestamp_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.timestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.timestamp_ = builder.I();
                                }
                            } else if (L == 16) {
                                this.numCallsStarted_ = pVar.A();
                            } else if (L == 24) {
                                this.numCallsFinished_ = pVar.A();
                            } else if (L == 48) {
                                this.numCallsFinishedWithClientFailedToSend_ = pVar.A();
                            } else if (L == 56) {
                                this.numCallsFinishedKnownReceived_ = pVar.A();
                            } else if (L != 66) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.callsFinishedWithDrop_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.callsFinishedWithDrop_.add((ClientStatsPerToken) pVar.B(ClientStatsPerToken.parser(), f0Var));
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
                    this.callsFinishedWithDrop_ = Collections.unmodifiableList(this.callsFinishedWithDrop_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClientStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClientStats parseFrom(p pVar) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClientStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClientStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
