package io.grpc.channelz.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Int64Value;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.s0;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.channelz.v1.SocketOption;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SocketData extends GeneratedMessageV3 implements m {
    public static final int KEEP_ALIVES_SENT_FIELD_NUMBER = 6;
    public static final int LAST_LOCAL_STREAM_CREATED_TIMESTAMP_FIELD_NUMBER = 7;
    public static final int LAST_MESSAGE_RECEIVED_TIMESTAMP_FIELD_NUMBER = 10;
    public static final int LAST_MESSAGE_SENT_TIMESTAMP_FIELD_NUMBER = 9;
    public static final int LAST_REMOTE_STREAM_CREATED_TIMESTAMP_FIELD_NUMBER = 8;
    public static final int LOCAL_FLOW_CONTROL_WINDOW_FIELD_NUMBER = 11;
    public static final int MESSAGES_RECEIVED_FIELD_NUMBER = 5;
    public static final int MESSAGES_SENT_FIELD_NUMBER = 4;
    public static final int OPTION_FIELD_NUMBER = 13;
    public static final int REMOTE_FLOW_CONTROL_WINDOW_FIELD_NUMBER = 12;
    public static final int STREAMS_FAILED_FIELD_NUMBER = 3;
    public static final int STREAMS_STARTED_FIELD_NUMBER = 1;
    public static final int STREAMS_SUCCEEDED_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private long keepAlivesSent_;
    private Timestamp lastLocalStreamCreatedTimestamp_;
    private Timestamp lastMessageReceivedTimestamp_;
    private Timestamp lastMessageSentTimestamp_;
    private Timestamp lastRemoteStreamCreatedTimestamp_;
    private Int64Value localFlowControlWindow_;
    private byte memoizedIsInitialized;
    private long messagesReceived_;
    private long messagesSent_;
    private List<SocketOption> option_;
    private Int64Value remoteFlowControlWindow_;
    private long streamsFailed_;
    private long streamsStarted_;
    private long streamsSucceeded_;
    private static final SocketData DEFAULT_INSTANCE = new SocketData();
    private static final e2<SocketData> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SocketData> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketData m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketData(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements m {

        /* renamed from: e  reason: collision with root package name */
        private int f42187e;

        /* renamed from: f  reason: collision with root package name */
        private long f42188f;

        /* renamed from: g  reason: collision with root package name */
        private long f42189g;

        /* renamed from: h  reason: collision with root package name */
        private long f42190h;

        /* renamed from: i  reason: collision with root package name */
        private long f42191i;

        /* renamed from: j  reason: collision with root package name */
        private long f42192j;

        /* renamed from: k  reason: collision with root package name */
        private long f42193k;

        /* renamed from: l  reason: collision with root package name */
        private Timestamp f42194l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42195m;

        /* renamed from: n  reason: collision with root package name */
        private Timestamp f42196n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42197o;

        /* renamed from: p  reason: collision with root package name */
        private Timestamp f42198p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42199q;

        /* renamed from: r  reason: collision with root package name */
        private Timestamp f42200r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42201s;

        /* renamed from: t  reason: collision with root package name */
        private Int64Value f42202t;

        /* renamed from: u  reason: collision with root package name */
        private q2<Int64Value, Int64Value.b, s0> f42203u;

        /* renamed from: v  reason: collision with root package name */
        private Int64Value f42204v;

        /* renamed from: w  reason: collision with root package name */
        private q2<Int64Value, Int64Value.b, s0> f42205w;

        /* renamed from: x  reason: collision with root package name */
        private List<SocketOption> f42206x;

        /* renamed from: y  reason: collision with root package name */
        private l2<SocketOption, SocketOption.b, n> f42207y;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42187e & 1) == 0) {
                this.f42206x = new ArrayList(this.f42206x);
                this.f42187e |= 1;
            }
        }

        private l2<SocketOption, SocketOption.b, n> d0() {
            if (this.f42207y == null) {
                this.f42207y = new l2<>(this.f42206x, (this.f42187e & 1) != 0, H(), O());
                this.f42206x = null;
            }
            return this.f42207y;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.B.d(SocketData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketData build() {
            SocketData I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketData I() {
            SocketData socketData = new SocketData(this, (a) null);
            socketData.streamsStarted_ = this.f42188f;
            socketData.streamsSucceeded_ = this.f42189g;
            socketData.streamsFailed_ = this.f42190h;
            socketData.messagesSent_ = this.f42191i;
            socketData.messagesReceived_ = this.f42192j;
            socketData.keepAlivesSent_ = this.f42193k;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42195m;
            if (q2Var == null) {
                socketData.lastLocalStreamCreatedTimestamp_ = this.f42194l;
            } else {
                socketData.lastLocalStreamCreatedTimestamp_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f42197o;
            if (q2Var2 == null) {
                socketData.lastRemoteStreamCreatedTimestamp_ = this.f42196n;
            } else {
                socketData.lastRemoteStreamCreatedTimestamp_ = q2Var2.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var3 = this.f42199q;
            if (q2Var3 == null) {
                socketData.lastMessageSentTimestamp_ = this.f42198p;
            } else {
                socketData.lastMessageSentTimestamp_ = q2Var3.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var4 = this.f42201s;
            if (q2Var4 == null) {
                socketData.lastMessageReceivedTimestamp_ = this.f42200r;
            } else {
                socketData.lastMessageReceivedTimestamp_ = q2Var4.b();
            }
            q2<Int64Value, Int64Value.b, s0> q2Var5 = this.f42203u;
            if (q2Var5 == null) {
                socketData.localFlowControlWindow_ = this.f42202t;
            } else {
                socketData.localFlowControlWindow_ = q2Var5.b();
            }
            q2<Int64Value, Int64Value.b, s0> q2Var6 = this.f42205w;
            if (q2Var6 == null) {
                socketData.remoteFlowControlWindow_ = this.f42204v;
            } else {
                socketData.remoteFlowControlWindow_ = q2Var6.b();
            }
            l2<SocketOption, SocketOption.b, n> l2Var = this.f42207y;
            if (l2Var == null) {
                if ((this.f42187e & 1) != 0) {
                    this.f42206x = Collections.unmodifiableList(this.f42206x);
                    this.f42187e &= -2;
                }
                socketData.option_ = this.f42206x;
            } else {
                socketData.option_ = l2Var.e();
            }
            Q();
            return socketData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SocketData getDefaultInstanceForType() {
            return SocketData.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.SocketData.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.SocketData.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.SocketData r3 = (io.grpc.channelz.v1.SocketData) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.SocketData r4 = (io.grpc.channelz.v1.SocketData) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.SocketData.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.SocketData$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.A;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SocketData) {
                return i0((SocketData) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(SocketData socketData) {
            if (socketData == SocketData.getDefaultInstance()) {
                return this;
            }
            if (socketData.getStreamsStarted() != 0) {
                x0(socketData.getStreamsStarted());
            }
            if (socketData.getStreamsSucceeded() != 0) {
                y0(socketData.getStreamsSucceeded());
            }
            if (socketData.getStreamsFailed() != 0) {
                v0(socketData.getStreamsFailed());
            }
            if (socketData.getMessagesSent() != 0) {
                u0(socketData.getMessagesSent());
            }
            if (socketData.getMessagesReceived() != 0) {
                t0(socketData.getMessagesReceived());
            }
            if (socketData.getKeepAlivesSent() != 0) {
                s0(socketData.getKeepAlivesSent());
            }
            if (socketData.hasLastLocalStreamCreatedTimestamp()) {
                j0(socketData.getLastLocalStreamCreatedTimestamp());
            }
            if (socketData.hasLastRemoteStreamCreatedTimestamp()) {
                m0(socketData.getLastRemoteStreamCreatedTimestamp());
            }
            if (socketData.hasLastMessageSentTimestamp()) {
                l0(socketData.getLastMessageSentTimestamp());
            }
            if (socketData.hasLastMessageReceivedTimestamp()) {
                k0(socketData.getLastMessageReceivedTimestamp());
            }
            if (socketData.hasLocalFlowControlWindow()) {
                n0(socketData.getLocalFlowControlWindow());
            }
            if (socketData.hasRemoteFlowControlWindow()) {
                o0(socketData.getRemoteFlowControlWindow());
            }
            if (this.f42207y == null) {
                if (!socketData.option_.isEmpty()) {
                    if (this.f42206x.isEmpty()) {
                        this.f42206x = socketData.option_;
                        this.f42187e &= -2;
                    } else {
                        a0();
                        this.f42206x.addAll(socketData.option_);
                    }
                    R();
                }
            } else if (!socketData.option_.isEmpty()) {
                if (this.f42207y.k()) {
                    this.f42207y.f();
                    this.f42207y = null;
                    this.f42206x = socketData.option_;
                    this.f42187e &= -2;
                    this.f42207y = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f42207y.b(socketData.option_);
                }
            }
            z(((GeneratedMessageV3) socketData).unknownFields);
            R();
            return this;
        }

        public b j0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42195m;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42194l;
                if (timestamp2 != null) {
                    this.f42194l = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42194l = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b k0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42201s;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42200r;
                if (timestamp2 != null) {
                    this.f42200r = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42200r = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b l0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42199q;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42198p;
                if (timestamp2 != null) {
                    this.f42198p = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42198p = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b m0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42197o;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42196n;
                if (timestamp2 != null) {
                    this.f42196n = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42196n = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b n0(Int64Value int64Value) {
            q2<Int64Value, Int64Value.b, s0> q2Var = this.f42203u;
            if (q2Var == null) {
                Int64Value int64Value2 = this.f42202t;
                if (int64Value2 != null) {
                    this.f42202t = Int64Value.newBuilder(int64Value2).e0(int64Value).I();
                } else {
                    this.f42202t = int64Value;
                }
                R();
            } else {
                q2Var.e(int64Value);
            }
            return this;
        }

        public b o0(Int64Value int64Value) {
            q2<Int64Value, Int64Value.b, s0> q2Var = this.f42205w;
            if (q2Var == null) {
                Int64Value int64Value2 = this.f42204v;
                if (int64Value2 != null) {
                    this.f42204v = Int64Value.newBuilder(int64Value2).e0(int64Value).I();
                } else {
                    this.f42204v = int64Value;
                }
                R();
            } else {
                q2Var.e(int64Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b s0(long j10) {
            this.f42193k = j10;
            R();
            return this;
        }

        public b t0(long j10) {
            this.f42192j = j10;
            R();
            return this;
        }

        public b u0(long j10) {
            this.f42191i = j10;
            R();
            return this;
        }

        public b v0(long j10) {
            this.f42190h = j10;
            R();
            return this;
        }

        public b x0(long j10) {
            this.f42188f = j10;
            R();
            return this;
        }

        public b y0(long j10) {
            this.f42189g = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: z0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f42206x = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42206x = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SocketData(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketData parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketData)) {
            return super.equals(obj);
        }
        SocketData socketData = (SocketData) obj;
        if (getStreamsStarted() == socketData.getStreamsStarted() && getStreamsSucceeded() == socketData.getStreamsSucceeded() && getStreamsFailed() == socketData.getStreamsFailed() && getMessagesSent() == socketData.getMessagesSent() && getMessagesReceived() == socketData.getMessagesReceived() && getKeepAlivesSent() == socketData.getKeepAlivesSent() && hasLastLocalStreamCreatedTimestamp() == socketData.hasLastLocalStreamCreatedTimestamp()) {
            if ((!hasLastLocalStreamCreatedTimestamp() || getLastLocalStreamCreatedTimestamp().equals(socketData.getLastLocalStreamCreatedTimestamp())) && hasLastRemoteStreamCreatedTimestamp() == socketData.hasLastRemoteStreamCreatedTimestamp()) {
                if ((!hasLastRemoteStreamCreatedTimestamp() || getLastRemoteStreamCreatedTimestamp().equals(socketData.getLastRemoteStreamCreatedTimestamp())) && hasLastMessageSentTimestamp() == socketData.hasLastMessageSentTimestamp()) {
                    if ((!hasLastMessageSentTimestamp() || getLastMessageSentTimestamp().equals(socketData.getLastMessageSentTimestamp())) && hasLastMessageReceivedTimestamp() == socketData.hasLastMessageReceivedTimestamp()) {
                        if ((!hasLastMessageReceivedTimestamp() || getLastMessageReceivedTimestamp().equals(socketData.getLastMessageReceivedTimestamp())) && hasLocalFlowControlWindow() == socketData.hasLocalFlowControlWindow()) {
                            if ((!hasLocalFlowControlWindow() || getLocalFlowControlWindow().equals(socketData.getLocalFlowControlWindow())) && hasRemoteFlowControlWindow() == socketData.hasRemoteFlowControlWindow()) {
                                return (!hasRemoteFlowControlWindow() || getRemoteFlowControlWindow().equals(socketData.getRemoteFlowControlWindow())) && getOptionList().equals(socketData.getOptionList()) && this.unknownFields.equals(socketData.unknownFields);
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

    public long getKeepAlivesSent() {
        return this.keepAlivesSent_;
    }

    public Timestamp getLastLocalStreamCreatedTimestamp() {
        Timestamp timestamp = this.lastLocalStreamCreatedTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastLocalStreamCreatedTimestampOrBuilder() {
        return getLastLocalStreamCreatedTimestamp();
    }

    public Timestamp getLastMessageReceivedTimestamp() {
        Timestamp timestamp = this.lastMessageReceivedTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastMessageReceivedTimestampOrBuilder() {
        return getLastMessageReceivedTimestamp();
    }

    public Timestamp getLastMessageSentTimestamp() {
        Timestamp timestamp = this.lastMessageSentTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastMessageSentTimestampOrBuilder() {
        return getLastMessageSentTimestamp();
    }

    public Timestamp getLastRemoteStreamCreatedTimestamp() {
        Timestamp timestamp = this.lastRemoteStreamCreatedTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastRemoteStreamCreatedTimestampOrBuilder() {
        return getLastRemoteStreamCreatedTimestamp();
    }

    public Int64Value getLocalFlowControlWindow() {
        Int64Value int64Value = this.localFlowControlWindow_;
        return int64Value == null ? Int64Value.getDefaultInstance() : int64Value;
    }

    public s0 getLocalFlowControlWindowOrBuilder() {
        return getLocalFlowControlWindow();
    }

    public long getMessagesReceived() {
        return this.messagesReceived_;
    }

    public long getMessagesSent() {
        return this.messagesSent_;
    }

    public SocketOption getOption(int i9) {
        return this.option_.get(i9);
    }

    public int getOptionCount() {
        return this.option_.size();
    }

    public List<SocketOption> getOptionList() {
        return this.option_;
    }

    public n getOptionOrBuilder(int i9) {
        return this.option_.get(i9);
    }

    public List<? extends n> getOptionOrBuilderList() {
        return this.option_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketData> getParserForType() {
        return PARSER;
    }

    public Int64Value getRemoteFlowControlWindow() {
        Int64Value int64Value = this.remoteFlowControlWindow_;
        return int64Value == null ? Int64Value.getDefaultInstance() : int64Value;
    }

    public s0 getRemoteFlowControlWindowOrBuilder() {
        return getRemoteFlowControlWindow();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.streamsStarted_;
        int z10 = j10 != 0 ? CodedOutputStream.z(1, j10) + 0 : 0;
        long j11 = this.streamsSucceeded_;
        if (j11 != 0) {
            z10 += CodedOutputStream.z(2, j11);
        }
        long j12 = this.streamsFailed_;
        if (j12 != 0) {
            z10 += CodedOutputStream.z(3, j12);
        }
        long j13 = this.messagesSent_;
        if (j13 != 0) {
            z10 += CodedOutputStream.z(4, j13);
        }
        long j14 = this.messagesReceived_;
        if (j14 != 0) {
            z10 += CodedOutputStream.z(5, j14);
        }
        long j15 = this.keepAlivesSent_;
        if (j15 != 0) {
            z10 += CodedOutputStream.z(6, j15);
        }
        if (this.lastLocalStreamCreatedTimestamp_ != null) {
            z10 += CodedOutputStream.G(7, getLastLocalStreamCreatedTimestamp());
        }
        if (this.lastRemoteStreamCreatedTimestamp_ != null) {
            z10 += CodedOutputStream.G(8, getLastRemoteStreamCreatedTimestamp());
        }
        if (this.lastMessageSentTimestamp_ != null) {
            z10 += CodedOutputStream.G(9, getLastMessageSentTimestamp());
        }
        if (this.lastMessageReceivedTimestamp_ != null) {
            z10 += CodedOutputStream.G(10, getLastMessageReceivedTimestamp());
        }
        if (this.localFlowControlWindow_ != null) {
            z10 += CodedOutputStream.G(11, getLocalFlowControlWindow());
        }
        if (this.remoteFlowControlWindow_ != null) {
            z10 += CodedOutputStream.G(12, getRemoteFlowControlWindow());
        }
        for (int i10 = 0; i10 < this.option_.size(); i10++) {
            z10 += CodedOutputStream.G(13, this.option_.get(i10));
        }
        int serializedSize = z10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public long getStreamsFailed() {
        return this.streamsFailed_;
    }

    public long getStreamsStarted() {
        return this.streamsStarted_;
    }

    public long getStreamsSucceeded() {
        return this.streamsSucceeded_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLastLocalStreamCreatedTimestamp() {
        return this.lastLocalStreamCreatedTimestamp_ != null;
    }

    public boolean hasLastMessageReceivedTimestamp() {
        return this.lastMessageReceivedTimestamp_ != null;
    }

    public boolean hasLastMessageSentTimestamp() {
        return this.lastMessageSentTimestamp_ != null;
    }

    public boolean hasLastRemoteStreamCreatedTimestamp() {
        return this.lastRemoteStreamCreatedTimestamp_ != null;
    }

    public boolean hasLocalFlowControlWindow() {
        return this.localFlowControlWindow_ != null;
    }

    public boolean hasRemoteFlowControlWindow() {
        return this.remoteFlowControlWindow_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getStreamsStarted())) * 37) + 2) * 53) + u0.i(getStreamsSucceeded())) * 37) + 3) * 53) + u0.i(getStreamsFailed())) * 37) + 4) * 53) + u0.i(getMessagesSent())) * 37) + 5) * 53) + u0.i(getMessagesReceived())) * 37) + 6) * 53) + u0.i(getKeepAlivesSent());
        if (hasLastLocalStreamCreatedTimestamp()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getLastLocalStreamCreatedTimestamp().hashCode();
        }
        if (hasLastRemoteStreamCreatedTimestamp()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getLastRemoteStreamCreatedTimestamp().hashCode();
        }
        if (hasLastMessageSentTimestamp()) {
            hashCode = (((hashCode * 37) + 9) * 53) + getLastMessageSentTimestamp().hashCode();
        }
        if (hasLastMessageReceivedTimestamp()) {
            hashCode = (((hashCode * 37) + 10) * 53) + getLastMessageReceivedTimestamp().hashCode();
        }
        if (hasLocalFlowControlWindow()) {
            hashCode = (((hashCode * 37) + 11) * 53) + getLocalFlowControlWindow().hashCode();
        }
        if (hasRemoteFlowControlWindow()) {
            hashCode = (((hashCode * 37) + 12) * 53) + getRemoteFlowControlWindow().hashCode();
        }
        if (getOptionCount() > 0) {
            hashCode = (((hashCode * 37) + 13) * 53) + getOptionList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.B.d(SocketData.class, b.class);
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
        return new SocketData();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j10 = this.streamsStarted_;
        if (j10 != 0) {
            codedOutputStream.J0(1, j10);
        }
        long j11 = this.streamsSucceeded_;
        if (j11 != 0) {
            codedOutputStream.J0(2, j11);
        }
        long j12 = this.streamsFailed_;
        if (j12 != 0) {
            codedOutputStream.J0(3, j12);
        }
        long j13 = this.messagesSent_;
        if (j13 != 0) {
            codedOutputStream.J0(4, j13);
        }
        long j14 = this.messagesReceived_;
        if (j14 != 0) {
            codedOutputStream.J0(5, j14);
        }
        long j15 = this.keepAlivesSent_;
        if (j15 != 0) {
            codedOutputStream.J0(6, j15);
        }
        if (this.lastLocalStreamCreatedTimestamp_ != null) {
            codedOutputStream.L0(7, getLastLocalStreamCreatedTimestamp());
        }
        if (this.lastRemoteStreamCreatedTimestamp_ != null) {
            codedOutputStream.L0(8, getLastRemoteStreamCreatedTimestamp());
        }
        if (this.lastMessageSentTimestamp_ != null) {
            codedOutputStream.L0(9, getLastMessageSentTimestamp());
        }
        if (this.lastMessageReceivedTimestamp_ != null) {
            codedOutputStream.L0(10, getLastMessageReceivedTimestamp());
        }
        if (this.localFlowControlWindow_ != null) {
            codedOutputStream.L0(11, getLocalFlowControlWindow());
        }
        if (this.remoteFlowControlWindow_ != null) {
            codedOutputStream.L0(12, getRemoteFlowControlWindow());
        }
        for (int i9 = 0; i9 < this.option_.size(); i9++) {
            codedOutputStream.L0(13, this.option_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketData(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SocketData socketData) {
        return DEFAULT_INSTANCE.toBuilder().i0(socketData);
    }

    public static SocketData parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketData(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketData parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static SocketData parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SocketData() {
        this.memoizedIsInitialized = (byte) -1;
        this.option_ = Collections.emptyList();
    }

    public static SocketData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SocketData parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SocketData parseFrom(InputStream inputStream) throws IOException {
        return (SocketData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SocketData(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            case 8:
                                this.streamsStarted_ = pVar.A();
                                continue;
                            case 16:
                                this.streamsSucceeded_ = pVar.A();
                                continue;
                            case 24:
                                this.streamsFailed_ = pVar.A();
                                continue;
                            case 32:
                                this.messagesSent_ = pVar.A();
                                continue;
                            case 40:
                                this.messagesReceived_ = pVar.A();
                                continue;
                            case 48:
                                this.keepAlivesSent_ = pVar.A();
                                continue;
                            case 58:
                                Timestamp timestamp = this.lastLocalStreamCreatedTimestamp_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastLocalStreamCreatedTimestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.lastLocalStreamCreatedTimestamp_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 66:
                                Timestamp timestamp3 = this.lastRemoteStreamCreatedTimestamp_;
                                Timestamp.b builder2 = timestamp3 != null ? timestamp3.toBuilder() : null;
                                Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastRemoteStreamCreatedTimestamp_ = timestamp4;
                                if (builder2 != null) {
                                    builder2.g0(timestamp4);
                                    this.lastRemoteStreamCreatedTimestamp_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 74:
                                Timestamp timestamp5 = this.lastMessageSentTimestamp_;
                                Timestamp.b builder3 = timestamp5 != null ? timestamp5.toBuilder() : null;
                                Timestamp timestamp6 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastMessageSentTimestamp_ = timestamp6;
                                if (builder3 != null) {
                                    builder3.g0(timestamp6);
                                    this.lastMessageSentTimestamp_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                Timestamp timestamp7 = this.lastMessageReceivedTimestamp_;
                                Timestamp.b builder4 = timestamp7 != null ? timestamp7.toBuilder() : null;
                                Timestamp timestamp8 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastMessageReceivedTimestamp_ = timestamp8;
                                if (builder4 != null) {
                                    builder4.g0(timestamp8);
                                    this.lastMessageReceivedTimestamp_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 90:
                                Int64Value int64Value = this.localFlowControlWindow_;
                                Int64Value.b builder5 = int64Value != null ? int64Value.toBuilder() : null;
                                Int64Value int64Value2 = (Int64Value) pVar.B(Int64Value.parser(), f0Var);
                                this.localFlowControlWindow_ = int64Value2;
                                if (builder5 != null) {
                                    builder5.e0(int64Value2);
                                    this.localFlowControlWindow_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                Int64Value int64Value3 = this.remoteFlowControlWindow_;
                                Int64Value.b builder6 = int64Value3 != null ? int64Value3.toBuilder() : null;
                                Int64Value int64Value4 = (Int64Value) pVar.B(Int64Value.parser(), f0Var);
                                this.remoteFlowControlWindow_ = int64Value4;
                                if (builder6 != null) {
                                    builder6.e0(int64Value4);
                                    this.remoteFlowControlWindow_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 106:
                                if (!(z11 & true)) {
                                    this.option_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.option_.add((SocketOption) pVar.B(SocketOption.parser(), f0Var));
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
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.option_ = Collections.unmodifiableList(this.option_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SocketData parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketData parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketData) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SocketData parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SocketData) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
