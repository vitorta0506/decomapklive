package io.grpc.channelz.v1;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.channelz.v1.ChannelTrace;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ServerData extends GeneratedMessageV3 implements j {
    public static final int CALLS_FAILED_FIELD_NUMBER = 4;
    public static final int CALLS_STARTED_FIELD_NUMBER = 2;
    public static final int CALLS_SUCCEEDED_FIELD_NUMBER = 3;
    public static final int LAST_CALL_STARTED_TIMESTAMP_FIELD_NUMBER = 5;
    public static final int TRACE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private long callsFailed_;
    private long callsStarted_;
    private long callsSucceeded_;
    private Timestamp lastCallStartedTimestamp_;
    private byte memoizedIsInitialized;
    private ChannelTrace trace_;
    private static final ServerData DEFAULT_INSTANCE = new ServerData();
    private static final e2<ServerData> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ServerData> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServerData m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ServerData(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements j {

        /* renamed from: e  reason: collision with root package name */
        private ChannelTrace f42167e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ChannelTrace, ChannelTrace.b, g> f42168f;

        /* renamed from: g  reason: collision with root package name */
        private long f42169g;

        /* renamed from: h  reason: collision with root package name */
        private long f42170h;

        /* renamed from: i  reason: collision with root package name */
        private long f42171i;

        /* renamed from: j  reason: collision with root package name */
        private Timestamp f42172j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42173k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42300x.d(ServerData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ServerData build() {
            ServerData I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServerData I() {
            ServerData serverData = new ServerData(this, (a) null);
            q2<ChannelTrace, ChannelTrace.b, g> q2Var = this.f42168f;
            if (q2Var == null) {
                serverData.trace_ = this.f42167e;
            } else {
                serverData.trace_ = q2Var.b();
            }
            serverData.callsStarted_ = this.f42169g;
            serverData.callsSucceeded_ = this.f42170h;
            serverData.callsFailed_ = this.f42171i;
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f42173k;
            if (q2Var2 == null) {
                serverData.lastCallStartedTimestamp_ = this.f42172j;
            } else {
                serverData.lastCallStartedTimestamp_ = q2Var2.b();
            }
            Q();
            return serverData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ServerData getDefaultInstanceForType() {
            return ServerData.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.ServerData.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.ServerData.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.ServerData r3 = (io.grpc.channelz.v1.ServerData) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.ServerData r4 = (io.grpc.channelz.v1.ServerData) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.ServerData.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.ServerData$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ServerData) {
                return g0((ServerData) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ServerData serverData) {
            if (serverData == ServerData.getDefaultInstance()) {
                return this;
            }
            if (serverData.hasTrace()) {
                i0(serverData.getTrace());
            }
            if (serverData.getCallsStarted() != 0) {
                l0(serverData.getCallsStarted());
            }
            if (serverData.getCallsSucceeded() != 0) {
                m0(serverData.getCallsSucceeded());
            }
            if (serverData.getCallsFailed() != 0) {
                k0(serverData.getCallsFailed());
            }
            if (serverData.hasLastCallStartedTimestamp()) {
                h0(serverData.getLastCallStartedTimestamp());
            }
            z(((GeneratedMessageV3) serverData).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42298w;
        }

        public b h0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42173k;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42172j;
                if (timestamp2 != null) {
                    this.f42172j = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42172j = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b i0(ChannelTrace channelTrace) {
            q2<ChannelTrace, ChannelTrace.b, g> q2Var = this.f42168f;
            if (q2Var == null) {
                ChannelTrace channelTrace2 = this.f42167e;
                if (channelTrace2 != null) {
                    this.f42167e = ChannelTrace.newBuilder(channelTrace2).j0(channelTrace).I();
                } else {
                    this.f42167e = channelTrace;
                }
                R();
            } else {
                q2Var.e(channelTrace);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(long j10) {
            this.f42171i = j10;
            R();
            return this;
        }

        public b l0(long j10) {
            this.f42169g = j10;
            R();
            return this;
        }

        public b m0(long j10) {
            this.f42170h = j10;
            R();
            return this;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ ServerData(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServerData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42298w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServerData parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServerData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServerData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServerData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerData)) {
            return super.equals(obj);
        }
        ServerData serverData = (ServerData) obj;
        if (hasTrace() != serverData.hasTrace()) {
            return false;
        }
        if ((!hasTrace() || getTrace().equals(serverData.getTrace())) && getCallsStarted() == serverData.getCallsStarted() && getCallsSucceeded() == serverData.getCallsSucceeded() && getCallsFailed() == serverData.getCallsFailed() && hasLastCallStartedTimestamp() == serverData.hasLastCallStartedTimestamp()) {
            return (!hasLastCallStartedTimestamp() || getLastCallStartedTimestamp().equals(serverData.getLastCallStartedTimestamp())) && this.unknownFields.equals(serverData.unknownFields);
        }
        return false;
    }

    public long getCallsFailed() {
        return this.callsFailed_;
    }

    public long getCallsStarted() {
        return this.callsStarted_;
    }

    public long getCallsSucceeded() {
        return this.callsSucceeded_;
    }

    public Timestamp getLastCallStartedTimestamp() {
        Timestamp timestamp = this.lastCallStartedTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastCallStartedTimestampOrBuilder() {
        return getLastCallStartedTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServerData> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.trace_ != null ? 0 + CodedOutputStream.G(1, getTrace()) : 0;
        long j10 = this.callsStarted_;
        if (j10 != 0) {
            G += CodedOutputStream.z(2, j10);
        }
        long j11 = this.callsSucceeded_;
        if (j11 != 0) {
            G += CodedOutputStream.z(3, j11);
        }
        long j12 = this.callsFailed_;
        if (j12 != 0) {
            G += CodedOutputStream.z(4, j12);
        }
        if (this.lastCallStartedTimestamp_ != null) {
            G += CodedOutputStream.G(5, getLastCallStartedTimestamp());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ChannelTrace getTrace() {
        ChannelTrace channelTrace = this.trace_;
        return channelTrace == null ? ChannelTrace.getDefaultInstance() : channelTrace;
    }

    public g getTraceOrBuilder() {
        return getTrace();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLastCallStartedTimestamp() {
        return this.lastCallStartedTimestamp_ != null;
    }

    public boolean hasTrace() {
        return this.trace_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTrace()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTrace().hashCode();
        }
        int i10 = (((((((((((hashCode * 37) + 2) * 53) + u0.i(getCallsStarted())) * 37) + 3) * 53) + u0.i(getCallsSucceeded())) * 37) + 4) * 53) + u0.i(getCallsFailed());
        if (hasLastCallStartedTimestamp()) {
            i10 = (((i10 * 37) + 5) * 53) + getLastCallStartedTimestamp().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42300x.d(ServerData.class, b.class);
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
        return new ServerData();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.trace_ != null) {
            codedOutputStream.L0(1, getTrace());
        }
        long j10 = this.callsStarted_;
        if (j10 != 0) {
            codedOutputStream.J0(2, j10);
        }
        long j11 = this.callsSucceeded_;
        if (j11 != 0) {
            codedOutputStream.J0(3, j11);
        }
        long j12 = this.callsFailed_;
        if (j12 != 0) {
            codedOutputStream.J0(4, j12);
        }
        if (this.lastCallStartedTimestamp_ != null) {
            codedOutputStream.L0(5, getLastCallStartedTimestamp());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServerData(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ServerData serverData) {
        return DEFAULT_INSTANCE.toBuilder().g0(serverData);
    }

    public static ServerData parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ServerData(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerData parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServerData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ServerData parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ServerData() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServerData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ServerData parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private ServerData(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            ChannelTrace channelTrace = this.trace_;
                            ChannelTrace.b builder = channelTrace != null ? channelTrace.toBuilder() : null;
                            ChannelTrace channelTrace2 = (ChannelTrace) pVar.B(ChannelTrace.parser(), f0Var);
                            this.trace_ = channelTrace2;
                            if (builder != null) {
                                builder.j0(channelTrace2);
                                this.trace_ = builder.I();
                            }
                        } else if (L == 16) {
                            this.callsStarted_ = pVar.A();
                        } else if (L == 24) {
                            this.callsSucceeded_ = pVar.A();
                        } else if (L == 32) {
                            this.callsFailed_ = pVar.A();
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Timestamp timestamp = this.lastCallStartedTimestamp_;
                            Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.lastCallStartedTimestamp_ = timestamp2;
                            if (builder2 != null) {
                                builder2.g0(timestamp2);
                                this.lastCallStartedTimestamp_ = builder2.I();
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

    public static ServerData parseFrom(InputStream inputStream) throws IOException {
        return (ServerData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ServerData parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServerData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServerData parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ServerData) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ServerData parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ServerData) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
