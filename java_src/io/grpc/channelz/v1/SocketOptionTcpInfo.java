package io.grpc.channelz.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.r1;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SocketOptionTcpInfo extends GeneratedMessageV3 implements r1 {
    private static final SocketOptionTcpInfo DEFAULT_INSTANCE = new SocketOptionTcpInfo();
    private static final e2<SocketOptionTcpInfo> PARSER = new a();
    public static final int TCPI_ADVMSS_FIELD_NUMBER = 28;
    public static final int TCPI_ATO_FIELD_NUMBER = 10;
    public static final int TCPI_BACKOFF_FIELD_NUMBER = 5;
    public static final int TCPI_CA_STATE_FIELD_NUMBER = 2;
    public static final int TCPI_FACKETS_FIELD_NUMBER = 17;
    public static final int TCPI_LAST_ACK_RECV_FIELD_NUMBER = 21;
    public static final int TCPI_LAST_ACK_SENT_FIELD_NUMBER = 19;
    public static final int TCPI_LAST_DATA_RECV_FIELD_NUMBER = 20;
    public static final int TCPI_LAST_DATA_SENT_FIELD_NUMBER = 18;
    public static final int TCPI_LOST_FIELD_NUMBER = 15;
    public static final int TCPI_OPTIONS_FIELD_NUMBER = 6;
    public static final int TCPI_PMTU_FIELD_NUMBER = 22;
    public static final int TCPI_PROBES_FIELD_NUMBER = 4;
    public static final int TCPI_RCV_MSS_FIELD_NUMBER = 12;
    public static final int TCPI_RCV_SSTHRESH_FIELD_NUMBER = 23;
    public static final int TCPI_RCV_WSCALE_FIELD_NUMBER = 8;
    public static final int TCPI_REORDERING_FIELD_NUMBER = 29;
    public static final int TCPI_RETRANSMITS_FIELD_NUMBER = 3;
    public static final int TCPI_RETRANS_FIELD_NUMBER = 16;
    public static final int TCPI_RTO_FIELD_NUMBER = 9;
    public static final int TCPI_RTTVAR_FIELD_NUMBER = 25;
    public static final int TCPI_RTT_FIELD_NUMBER = 24;
    public static final int TCPI_SACKED_FIELD_NUMBER = 14;
    public static final int TCPI_SND_CWND_FIELD_NUMBER = 27;
    public static final int TCPI_SND_MSS_FIELD_NUMBER = 11;
    public static final int TCPI_SND_SSTHRESH_FIELD_NUMBER = 26;
    public static final int TCPI_SND_WSCALE_FIELD_NUMBER = 7;
    public static final int TCPI_STATE_FIELD_NUMBER = 1;
    public static final int TCPI_UNACKED_FIELD_NUMBER = 13;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int tcpiAdvmss_;
    private int tcpiAto_;
    private int tcpiBackoff_;
    private int tcpiCaState_;
    private int tcpiFackets_;
    private int tcpiLastAckRecv_;
    private int tcpiLastAckSent_;
    private int tcpiLastDataRecv_;
    private int tcpiLastDataSent_;
    private int tcpiLost_;
    private int tcpiOptions_;
    private int tcpiPmtu_;
    private int tcpiProbes_;
    private int tcpiRcvMss_;
    private int tcpiRcvSsthresh_;
    private int tcpiRcvWscale_;
    private int tcpiReordering_;
    private int tcpiRetrans_;
    private int tcpiRetransmits_;
    private int tcpiRto_;
    private int tcpiRtt_;
    private int tcpiRttvar_;
    private int tcpiSacked_;
    private int tcpiSndCwnd_;
    private int tcpiSndMss_;
    private int tcpiSndSsthresh_;
    private int tcpiSndWscale_;
    private int tcpiState_;
    private int tcpiUnacked_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SocketOptionTcpInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SocketOptionTcpInfo m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SocketOptionTcpInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {
        private int A;
        private int B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;

        /* renamed from: e  reason: collision with root package name */
        private int f42215e;

        /* renamed from: f  reason: collision with root package name */
        private int f42216f;

        /* renamed from: g  reason: collision with root package name */
        private int f42217g;

        /* renamed from: h  reason: collision with root package name */
        private int f42218h;

        /* renamed from: i  reason: collision with root package name */
        private int f42219i;

        /* renamed from: j  reason: collision with root package name */
        private int f42220j;

        /* renamed from: k  reason: collision with root package name */
        private int f42221k;

        /* renamed from: l  reason: collision with root package name */
        private int f42222l;

        /* renamed from: m  reason: collision with root package name */
        private int f42223m;

        /* renamed from: n  reason: collision with root package name */
        private int f42224n;

        /* renamed from: o  reason: collision with root package name */
        private int f42225o;

        /* renamed from: p  reason: collision with root package name */
        private int f42226p;

        /* renamed from: q  reason: collision with root package name */
        private int f42227q;

        /* renamed from: r  reason: collision with root package name */
        private int f42228r;

        /* renamed from: s  reason: collision with root package name */
        private int f42229s;

        /* renamed from: t  reason: collision with root package name */
        private int f42230t;

        /* renamed from: u  reason: collision with root package name */
        private int f42231u;

        /* renamed from: v  reason: collision with root package name */
        private int f42232v;

        /* renamed from: w  reason: collision with root package name */
        private int f42233w;

        /* renamed from: x  reason: collision with root package name */
        private int f42234x;

        /* renamed from: y  reason: collision with root package name */
        private int f42235y;

        /* renamed from: z  reason: collision with root package name */
        private int f42236z;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b B0(int i9) {
            this.f42222l = i9;
            R();
            return this;
        }

        public b D0(int i9) {
            this.G = i9;
            R();
            return this;
        }

        public b H0(int i9) {
            this.f42230t = i9;
            R();
            return this;
        }

        public b I0(int i9) {
            this.f42217g = i9;
            R();
            return this;
        }

        public b J0(int i9) {
            this.f42223m = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.X.d(SocketOptionTcpInfo.class, b.class);
        }

        public b K0(int i9) {
            this.B = i9;
            R();
            return this;
        }

        public b L0(int i9) {
            this.C = i9;
            R();
            return this;
        }

        public b M0(int i9) {
            this.f42228r = i9;
            R();
            return this;
        }

        public b N0(int i9) {
            this.E = i9;
            R();
            return this;
        }

        public b O0(int i9) {
            this.f42225o = i9;
            R();
            return this;
        }

        public b Q0(int i9) {
            this.D = i9;
            R();
            return this;
        }

        public b S0(int i9) {
            this.f42221k = i9;
            R();
            return this;
        }

        public b T0(int i9) {
            this.f42215e = i9;
            R();
            return this;
        }

        public b U0(int i9) {
            this.f42227q = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: V0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SocketOptionTcpInfo build() {
            SocketOptionTcpInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SocketOptionTcpInfo I() {
            SocketOptionTcpInfo socketOptionTcpInfo = new SocketOptionTcpInfo(this, (a) null);
            socketOptionTcpInfo.tcpiState_ = this.f42215e;
            socketOptionTcpInfo.tcpiCaState_ = this.f42216f;
            socketOptionTcpInfo.tcpiRetransmits_ = this.f42217g;
            socketOptionTcpInfo.tcpiProbes_ = this.f42218h;
            socketOptionTcpInfo.tcpiBackoff_ = this.f42219i;
            socketOptionTcpInfo.tcpiOptions_ = this.f42220j;
            socketOptionTcpInfo.tcpiSndWscale_ = this.f42221k;
            socketOptionTcpInfo.tcpiRcvWscale_ = this.f42222l;
            socketOptionTcpInfo.tcpiRto_ = this.f42223m;
            socketOptionTcpInfo.tcpiAto_ = this.f42224n;
            socketOptionTcpInfo.tcpiSndMss_ = this.f42225o;
            socketOptionTcpInfo.tcpiRcvMss_ = this.f42226p;
            socketOptionTcpInfo.tcpiUnacked_ = this.f42227q;
            socketOptionTcpInfo.tcpiSacked_ = this.f42228r;
            socketOptionTcpInfo.tcpiLost_ = this.f42229s;
            socketOptionTcpInfo.tcpiRetrans_ = this.f42230t;
            socketOptionTcpInfo.tcpiFackets_ = this.f42231u;
            socketOptionTcpInfo.tcpiLastDataSent_ = this.f42232v;
            socketOptionTcpInfo.tcpiLastAckSent_ = this.f42233w;
            socketOptionTcpInfo.tcpiLastDataRecv_ = this.f42234x;
            socketOptionTcpInfo.tcpiLastAckRecv_ = this.f42235y;
            socketOptionTcpInfo.tcpiPmtu_ = this.f42236z;
            socketOptionTcpInfo.tcpiRcvSsthresh_ = this.A;
            socketOptionTcpInfo.tcpiRtt_ = this.B;
            socketOptionTcpInfo.tcpiRttvar_ = this.C;
            socketOptionTcpInfo.tcpiSndSsthresh_ = this.D;
            socketOptionTcpInfo.tcpiSndCwnd_ = this.E;
            socketOptionTcpInfo.tcpiAdvmss_ = this.F;
            socketOptionTcpInfo.tcpiReordering_ = this.G;
            Q();
            return socketOptionTcpInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SocketOptionTcpInfo getDefaultInstanceForType() {
            return SocketOptionTcpInfo.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.SocketOptionTcpInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.SocketOptionTcpInfo.access$3400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.SocketOptionTcpInfo r3 = (io.grpc.channelz.v1.SocketOptionTcpInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.SocketOptionTcpInfo r4 = (io.grpc.channelz.v1.SocketOptionTcpInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.SocketOptionTcpInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.SocketOptionTcpInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SocketOptionTcpInfo) {
                return g0((SocketOptionTcpInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(SocketOptionTcpInfo socketOptionTcpInfo) {
            if (socketOptionTcpInfo == SocketOptionTcpInfo.getDefaultInstance()) {
                return this;
            }
            if (socketOptionTcpInfo.getTcpiState() != 0) {
                T0(socketOptionTcpInfo.getTcpiState());
            }
            if (socketOptionTcpInfo.getTcpiCaState() != 0) {
                m0(socketOptionTcpInfo.getTcpiCaState());
            }
            if (socketOptionTcpInfo.getTcpiRetransmits() != 0) {
                I0(socketOptionTcpInfo.getTcpiRetransmits());
            }
            if (socketOptionTcpInfo.getTcpiProbes() != 0) {
                x0(socketOptionTcpInfo.getTcpiProbes());
            }
            if (socketOptionTcpInfo.getTcpiBackoff() != 0) {
                l0(socketOptionTcpInfo.getTcpiBackoff());
            }
            if (socketOptionTcpInfo.getTcpiOptions() != 0) {
                u0(socketOptionTcpInfo.getTcpiOptions());
            }
            if (socketOptionTcpInfo.getTcpiSndWscale() != 0) {
                S0(socketOptionTcpInfo.getTcpiSndWscale());
            }
            if (socketOptionTcpInfo.getTcpiRcvWscale() != 0) {
                B0(socketOptionTcpInfo.getTcpiRcvWscale());
            }
            if (socketOptionTcpInfo.getTcpiRto() != 0) {
                J0(socketOptionTcpInfo.getTcpiRto());
            }
            if (socketOptionTcpInfo.getTcpiAto() != 0) {
                k0(socketOptionTcpInfo.getTcpiAto());
            }
            if (socketOptionTcpInfo.getTcpiSndMss() != 0) {
                O0(socketOptionTcpInfo.getTcpiSndMss());
            }
            if (socketOptionTcpInfo.getTcpiRcvMss() != 0) {
                y0(socketOptionTcpInfo.getTcpiRcvMss());
            }
            if (socketOptionTcpInfo.getTcpiUnacked() != 0) {
                U0(socketOptionTcpInfo.getTcpiUnacked());
            }
            if (socketOptionTcpInfo.getTcpiSacked() != 0) {
                M0(socketOptionTcpInfo.getTcpiSacked());
            }
            if (socketOptionTcpInfo.getTcpiLost() != 0) {
                t0(socketOptionTcpInfo.getTcpiLost());
            }
            if (socketOptionTcpInfo.getTcpiRetrans() != 0) {
                H0(socketOptionTcpInfo.getTcpiRetrans());
            }
            if (socketOptionTcpInfo.getTcpiFackets() != 0) {
                n0(socketOptionTcpInfo.getTcpiFackets());
            }
            if (socketOptionTcpInfo.getTcpiLastDataSent() != 0) {
                s0(socketOptionTcpInfo.getTcpiLastDataSent());
            }
            if (socketOptionTcpInfo.getTcpiLastAckSent() != 0) {
                q0(socketOptionTcpInfo.getTcpiLastAckSent());
            }
            if (socketOptionTcpInfo.getTcpiLastDataRecv() != 0) {
                r0(socketOptionTcpInfo.getTcpiLastDataRecv());
            }
            if (socketOptionTcpInfo.getTcpiLastAckRecv() != 0) {
                o0(socketOptionTcpInfo.getTcpiLastAckRecv());
            }
            if (socketOptionTcpInfo.getTcpiPmtu() != 0) {
                v0(socketOptionTcpInfo.getTcpiPmtu());
            }
            if (socketOptionTcpInfo.getTcpiRcvSsthresh() != 0) {
                z0(socketOptionTcpInfo.getTcpiRcvSsthresh());
            }
            if (socketOptionTcpInfo.getTcpiRtt() != 0) {
                K0(socketOptionTcpInfo.getTcpiRtt());
            }
            if (socketOptionTcpInfo.getTcpiRttvar() != 0) {
                L0(socketOptionTcpInfo.getTcpiRttvar());
            }
            if (socketOptionTcpInfo.getTcpiSndSsthresh() != 0) {
                Q0(socketOptionTcpInfo.getTcpiSndSsthresh());
            }
            if (socketOptionTcpInfo.getTcpiSndCwnd() != 0) {
                N0(socketOptionTcpInfo.getTcpiSndCwnd());
            }
            if (socketOptionTcpInfo.getTcpiAdvmss() != 0) {
                j0(socketOptionTcpInfo.getTcpiAdvmss());
            }
            if (socketOptionTcpInfo.getTcpiReordering() != 0) {
                D0(socketOptionTcpInfo.getTcpiReordering());
            }
            z(((GeneratedMessageV3) socketOptionTcpInfo).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.W;
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

        public b j0(int i9) {
            this.F = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f42224n = i9;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f42219i = i9;
            R();
            return this;
        }

        public b m0(int i9) {
            this.f42216f = i9;
            R();
            return this;
        }

        public b n0(int i9) {
            this.f42231u = i9;
            R();
            return this;
        }

        public b o0(int i9) {
            this.f42235y = i9;
            R();
            return this;
        }

        public b q0(int i9) {
            this.f42233w = i9;
            R();
            return this;
        }

        public b r0(int i9) {
            this.f42234x = i9;
            R();
            return this;
        }

        public b s0(int i9) {
            this.f42232v = i9;
            R();
            return this;
        }

        public b t0(int i9) {
            this.f42229s = i9;
            R();
            return this;
        }

        public b u0(int i9) {
            this.f42220j = i9;
            R();
            return this;
        }

        public b v0(int i9) {
            this.f42236z = i9;
            R();
            return this;
        }

        public b x0(int i9) {
            this.f42218h = i9;
            R();
            return this;
        }

        public b y0(int i9) {
            this.f42226p = i9;
            R();
            return this;
        }

        public b z0(int i9) {
            this.A = i9;
            R();
            return this;
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

    /* synthetic */ SocketOptionTcpInfo(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SocketOptionTcpInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.W;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SocketOptionTcpInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SocketOptionTcpInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SocketOptionTcpInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SocketOptionTcpInfo)) {
            return super.equals(obj);
        }
        SocketOptionTcpInfo socketOptionTcpInfo = (SocketOptionTcpInfo) obj;
        return getTcpiState() == socketOptionTcpInfo.getTcpiState() && getTcpiCaState() == socketOptionTcpInfo.getTcpiCaState() && getTcpiRetransmits() == socketOptionTcpInfo.getTcpiRetransmits() && getTcpiProbes() == socketOptionTcpInfo.getTcpiProbes() && getTcpiBackoff() == socketOptionTcpInfo.getTcpiBackoff() && getTcpiOptions() == socketOptionTcpInfo.getTcpiOptions() && getTcpiSndWscale() == socketOptionTcpInfo.getTcpiSndWscale() && getTcpiRcvWscale() == socketOptionTcpInfo.getTcpiRcvWscale() && getTcpiRto() == socketOptionTcpInfo.getTcpiRto() && getTcpiAto() == socketOptionTcpInfo.getTcpiAto() && getTcpiSndMss() == socketOptionTcpInfo.getTcpiSndMss() && getTcpiRcvMss() == socketOptionTcpInfo.getTcpiRcvMss() && getTcpiUnacked() == socketOptionTcpInfo.getTcpiUnacked() && getTcpiSacked() == socketOptionTcpInfo.getTcpiSacked() && getTcpiLost() == socketOptionTcpInfo.getTcpiLost() && getTcpiRetrans() == socketOptionTcpInfo.getTcpiRetrans() && getTcpiFackets() == socketOptionTcpInfo.getTcpiFackets() && getTcpiLastDataSent() == socketOptionTcpInfo.getTcpiLastDataSent() && getTcpiLastAckSent() == socketOptionTcpInfo.getTcpiLastAckSent() && getTcpiLastDataRecv() == socketOptionTcpInfo.getTcpiLastDataRecv() && getTcpiLastAckRecv() == socketOptionTcpInfo.getTcpiLastAckRecv() && getTcpiPmtu() == socketOptionTcpInfo.getTcpiPmtu() && getTcpiRcvSsthresh() == socketOptionTcpInfo.getTcpiRcvSsthresh() && getTcpiRtt() == socketOptionTcpInfo.getTcpiRtt() && getTcpiRttvar() == socketOptionTcpInfo.getTcpiRttvar() && getTcpiSndSsthresh() == socketOptionTcpInfo.getTcpiSndSsthresh() && getTcpiSndCwnd() == socketOptionTcpInfo.getTcpiSndCwnd() && getTcpiAdvmss() == socketOptionTcpInfo.getTcpiAdvmss() && getTcpiReordering() == socketOptionTcpInfo.getTcpiReordering() && this.unknownFields.equals(socketOptionTcpInfo.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SocketOptionTcpInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.tcpiState_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
        int i11 = this.tcpiCaState_;
        if (i11 != 0) {
            Y += CodedOutputStream.Y(2, i11);
        }
        int i12 = this.tcpiRetransmits_;
        if (i12 != 0) {
            Y += CodedOutputStream.Y(3, i12);
        }
        int i13 = this.tcpiProbes_;
        if (i13 != 0) {
            Y += CodedOutputStream.Y(4, i13);
        }
        int i14 = this.tcpiBackoff_;
        if (i14 != 0) {
            Y += CodedOutputStream.Y(5, i14);
        }
        int i15 = this.tcpiOptions_;
        if (i15 != 0) {
            Y += CodedOutputStream.Y(6, i15);
        }
        int i16 = this.tcpiSndWscale_;
        if (i16 != 0) {
            Y += CodedOutputStream.Y(7, i16);
        }
        int i17 = this.tcpiRcvWscale_;
        if (i17 != 0) {
            Y += CodedOutputStream.Y(8, i17);
        }
        int i18 = this.tcpiRto_;
        if (i18 != 0) {
            Y += CodedOutputStream.Y(9, i18);
        }
        int i19 = this.tcpiAto_;
        if (i19 != 0) {
            Y += CodedOutputStream.Y(10, i19);
        }
        int i20 = this.tcpiSndMss_;
        if (i20 != 0) {
            Y += CodedOutputStream.Y(11, i20);
        }
        int i21 = this.tcpiRcvMss_;
        if (i21 != 0) {
            Y += CodedOutputStream.Y(12, i21);
        }
        int i22 = this.tcpiUnacked_;
        if (i22 != 0) {
            Y += CodedOutputStream.Y(13, i22);
        }
        int i23 = this.tcpiSacked_;
        if (i23 != 0) {
            Y += CodedOutputStream.Y(14, i23);
        }
        int i24 = this.tcpiLost_;
        if (i24 != 0) {
            Y += CodedOutputStream.Y(15, i24);
        }
        int i25 = this.tcpiRetrans_;
        if (i25 != 0) {
            Y += CodedOutputStream.Y(16, i25);
        }
        int i26 = this.tcpiFackets_;
        if (i26 != 0) {
            Y += CodedOutputStream.Y(17, i26);
        }
        int i27 = this.tcpiLastDataSent_;
        if (i27 != 0) {
            Y += CodedOutputStream.Y(18, i27);
        }
        int i28 = this.tcpiLastAckSent_;
        if (i28 != 0) {
            Y += CodedOutputStream.Y(19, i28);
        }
        int i29 = this.tcpiLastDataRecv_;
        if (i29 != 0) {
            Y += CodedOutputStream.Y(20, i29);
        }
        int i30 = this.tcpiLastAckRecv_;
        if (i30 != 0) {
            Y += CodedOutputStream.Y(21, i30);
        }
        int i31 = this.tcpiPmtu_;
        if (i31 != 0) {
            Y += CodedOutputStream.Y(22, i31);
        }
        int i32 = this.tcpiRcvSsthresh_;
        if (i32 != 0) {
            Y += CodedOutputStream.Y(23, i32);
        }
        int i33 = this.tcpiRtt_;
        if (i33 != 0) {
            Y += CodedOutputStream.Y(24, i33);
        }
        int i34 = this.tcpiRttvar_;
        if (i34 != 0) {
            Y += CodedOutputStream.Y(25, i34);
        }
        int i35 = this.tcpiSndSsthresh_;
        if (i35 != 0) {
            Y += CodedOutputStream.Y(26, i35);
        }
        int i36 = this.tcpiSndCwnd_;
        if (i36 != 0) {
            Y += CodedOutputStream.Y(27, i36);
        }
        int i37 = this.tcpiAdvmss_;
        if (i37 != 0) {
            Y += CodedOutputStream.Y(28, i37);
        }
        int i38 = this.tcpiReordering_;
        if (i38 != 0) {
            Y += CodedOutputStream.Y(29, i38);
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public int getTcpiAdvmss() {
        return this.tcpiAdvmss_;
    }

    public int getTcpiAto() {
        return this.tcpiAto_;
    }

    public int getTcpiBackoff() {
        return this.tcpiBackoff_;
    }

    public int getTcpiCaState() {
        return this.tcpiCaState_;
    }

    public int getTcpiFackets() {
        return this.tcpiFackets_;
    }

    public int getTcpiLastAckRecv() {
        return this.tcpiLastAckRecv_;
    }

    public int getTcpiLastAckSent() {
        return this.tcpiLastAckSent_;
    }

    public int getTcpiLastDataRecv() {
        return this.tcpiLastDataRecv_;
    }

    public int getTcpiLastDataSent() {
        return this.tcpiLastDataSent_;
    }

    public int getTcpiLost() {
        return this.tcpiLost_;
    }

    public int getTcpiOptions() {
        return this.tcpiOptions_;
    }

    public int getTcpiPmtu() {
        return this.tcpiPmtu_;
    }

    public int getTcpiProbes() {
        return this.tcpiProbes_;
    }

    public int getTcpiRcvMss() {
        return this.tcpiRcvMss_;
    }

    public int getTcpiRcvSsthresh() {
        return this.tcpiRcvSsthresh_;
    }

    public int getTcpiRcvWscale() {
        return this.tcpiRcvWscale_;
    }

    public int getTcpiReordering() {
        return this.tcpiReordering_;
    }

    public int getTcpiRetrans() {
        return this.tcpiRetrans_;
    }

    public int getTcpiRetransmits() {
        return this.tcpiRetransmits_;
    }

    public int getTcpiRto() {
        return this.tcpiRto_;
    }

    public int getTcpiRtt() {
        return this.tcpiRtt_;
    }

    public int getTcpiRttvar() {
        return this.tcpiRttvar_;
    }

    public int getTcpiSacked() {
        return this.tcpiSacked_;
    }

    public int getTcpiSndCwnd() {
        return this.tcpiSndCwnd_;
    }

    public int getTcpiSndMss() {
        return this.tcpiSndMss_;
    }

    public int getTcpiSndSsthresh() {
        return this.tcpiSndSsthresh_;
    }

    public int getTcpiSndWscale() {
        return this.tcpiSndWscale_;
    }

    public int getTcpiState() {
        return this.tcpiState_;
    }

    public int getTcpiUnacked() {
        return this.tcpiUnacked_;
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
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTcpiState()) * 37) + 2) * 53) + getTcpiCaState()) * 37) + 3) * 53) + getTcpiRetransmits()) * 37) + 4) * 53) + getTcpiProbes()) * 37) + 5) * 53) + getTcpiBackoff()) * 37) + 6) * 53) + getTcpiOptions()) * 37) + 7) * 53) + getTcpiSndWscale()) * 37) + 8) * 53) + getTcpiRcvWscale()) * 37) + 9) * 53) + getTcpiRto()) * 37) + 10) * 53) + getTcpiAto()) * 37) + 11) * 53) + getTcpiSndMss()) * 37) + 12) * 53) + getTcpiRcvMss()) * 37) + 13) * 53) + getTcpiUnacked()) * 37) + 14) * 53) + getTcpiSacked()) * 37) + 15) * 53) + getTcpiLost()) * 37) + 16) * 53) + getTcpiRetrans()) * 37) + 17) * 53) + getTcpiFackets()) * 37) + 18) * 53) + getTcpiLastDataSent()) * 37) + 19) * 53) + getTcpiLastAckSent()) * 37) + 20) * 53) + getTcpiLastDataRecv()) * 37) + 21) * 53) + getTcpiLastAckRecv()) * 37) + 22) * 53) + getTcpiPmtu()) * 37) + 23) * 53) + getTcpiRcvSsthresh()) * 37) + 24) * 53) + getTcpiRtt()) * 37) + 25) * 53) + getTcpiRttvar()) * 37) + 26) * 53) + getTcpiSndSsthresh()) * 37) + 27) * 53) + getTcpiSndCwnd()) * 37) + 28) * 53) + getTcpiAdvmss()) * 37) + 29) * 53) + getTcpiReordering()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.X.d(SocketOptionTcpInfo.class, b.class);
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
        return new SocketOptionTcpInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.tcpiState_;
        if (i9 != 0) {
            codedOutputStream.c1(1, i9);
        }
        int i10 = this.tcpiCaState_;
        if (i10 != 0) {
            codedOutputStream.c1(2, i10);
        }
        int i11 = this.tcpiRetransmits_;
        if (i11 != 0) {
            codedOutputStream.c1(3, i11);
        }
        int i12 = this.tcpiProbes_;
        if (i12 != 0) {
            codedOutputStream.c1(4, i12);
        }
        int i13 = this.tcpiBackoff_;
        if (i13 != 0) {
            codedOutputStream.c1(5, i13);
        }
        int i14 = this.tcpiOptions_;
        if (i14 != 0) {
            codedOutputStream.c1(6, i14);
        }
        int i15 = this.tcpiSndWscale_;
        if (i15 != 0) {
            codedOutputStream.c1(7, i15);
        }
        int i16 = this.tcpiRcvWscale_;
        if (i16 != 0) {
            codedOutputStream.c1(8, i16);
        }
        int i17 = this.tcpiRto_;
        if (i17 != 0) {
            codedOutputStream.c1(9, i17);
        }
        int i18 = this.tcpiAto_;
        if (i18 != 0) {
            codedOutputStream.c1(10, i18);
        }
        int i19 = this.tcpiSndMss_;
        if (i19 != 0) {
            codedOutputStream.c1(11, i19);
        }
        int i20 = this.tcpiRcvMss_;
        if (i20 != 0) {
            codedOutputStream.c1(12, i20);
        }
        int i21 = this.tcpiUnacked_;
        if (i21 != 0) {
            codedOutputStream.c1(13, i21);
        }
        int i22 = this.tcpiSacked_;
        if (i22 != 0) {
            codedOutputStream.c1(14, i22);
        }
        int i23 = this.tcpiLost_;
        if (i23 != 0) {
            codedOutputStream.c1(15, i23);
        }
        int i24 = this.tcpiRetrans_;
        if (i24 != 0) {
            codedOutputStream.c1(16, i24);
        }
        int i25 = this.tcpiFackets_;
        if (i25 != 0) {
            codedOutputStream.c1(17, i25);
        }
        int i26 = this.tcpiLastDataSent_;
        if (i26 != 0) {
            codedOutputStream.c1(18, i26);
        }
        int i27 = this.tcpiLastAckSent_;
        if (i27 != 0) {
            codedOutputStream.c1(19, i27);
        }
        int i28 = this.tcpiLastDataRecv_;
        if (i28 != 0) {
            codedOutputStream.c1(20, i28);
        }
        int i29 = this.tcpiLastAckRecv_;
        if (i29 != 0) {
            codedOutputStream.c1(21, i29);
        }
        int i30 = this.tcpiPmtu_;
        if (i30 != 0) {
            codedOutputStream.c1(22, i30);
        }
        int i31 = this.tcpiRcvSsthresh_;
        if (i31 != 0) {
            codedOutputStream.c1(23, i31);
        }
        int i32 = this.tcpiRtt_;
        if (i32 != 0) {
            codedOutputStream.c1(24, i32);
        }
        int i33 = this.tcpiRttvar_;
        if (i33 != 0) {
            codedOutputStream.c1(25, i33);
        }
        int i34 = this.tcpiSndSsthresh_;
        if (i34 != 0) {
            codedOutputStream.c1(26, i34);
        }
        int i35 = this.tcpiSndCwnd_;
        if (i35 != 0) {
            codedOutputStream.c1(27, i35);
        }
        int i36 = this.tcpiAdvmss_;
        if (i36 != 0) {
            codedOutputStream.c1(28, i36);
        }
        int i37 = this.tcpiReordering_;
        if (i37 != 0) {
            codedOutputStream.c1(29, i37);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SocketOptionTcpInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SocketOptionTcpInfo socketOptionTcpInfo) {
        return DEFAULT_INSTANCE.toBuilder().g0(socketOptionTcpInfo);
    }

    public static SocketOptionTcpInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SocketOptionTcpInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOptionTcpInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOptionTcpInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SocketOptionTcpInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SocketOptionTcpInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SocketOptionTcpInfo() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SocketOptionTcpInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SocketOptionTcpInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private SocketOptionTcpInfo(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 8:
                            this.tcpiState_ = pVar.M();
                            continue;
                        case 16:
                            this.tcpiCaState_ = pVar.M();
                            continue;
                        case 24:
                            this.tcpiRetransmits_ = pVar.M();
                            continue;
                        case 32:
                            this.tcpiProbes_ = pVar.M();
                            continue;
                        case 40:
                            this.tcpiBackoff_ = pVar.M();
                            continue;
                        case 48:
                            this.tcpiOptions_ = pVar.M();
                            continue;
                        case 56:
                            this.tcpiSndWscale_ = pVar.M();
                            continue;
                        case 64:
                            this.tcpiRcvWscale_ = pVar.M();
                            continue;
                        case 72:
                            this.tcpiRto_ = pVar.M();
                            continue;
                        case 80:
                            this.tcpiAto_ = pVar.M();
                            continue;
                        case 88:
                            this.tcpiSndMss_ = pVar.M();
                            continue;
                        case 96:
                            this.tcpiRcvMss_ = pVar.M();
                            continue;
                        case 104:
                            this.tcpiUnacked_ = pVar.M();
                            continue;
                        case 112:
                            this.tcpiSacked_ = pVar.M();
                            continue;
                        case 120:
                            this.tcpiLost_ = pVar.M();
                            continue;
                        case 128:
                            this.tcpiRetrans_ = pVar.M();
                            continue;
                        case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                            this.tcpiFackets_ = pVar.M();
                            continue;
                        case 144:
                            this.tcpiLastDataSent_ = pVar.M();
                            continue;
                        case 152:
                            this.tcpiLastAckSent_ = pVar.M();
                            continue;
                        case 160:
                            this.tcpiLastDataRecv_ = pVar.M();
                            continue;
                        case 168:
                            this.tcpiLastAckRecv_ = pVar.M();
                            continue;
                        case 176:
                            this.tcpiPmtu_ = pVar.M();
                            continue;
                        case 184:
                            this.tcpiRcvSsthresh_ = pVar.M();
                            continue;
                        case 192:
                            this.tcpiRtt_ = pVar.M();
                            continue;
                        case 200:
                            this.tcpiRttvar_ = pVar.M();
                            continue;
                        case 208:
                            this.tcpiSndSsthresh_ = pVar.M();
                            continue;
                        case 216:
                            this.tcpiSndCwnd_ = pVar.M();
                            continue;
                        case 224:
                            this.tcpiAdvmss_ = pVar.M();
                            continue;
                        case 232:
                            this.tcpiReordering_ = pVar.M();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SocketOptionTcpInfo parseFrom(InputStream inputStream) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SocketOptionTcpInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SocketOptionTcpInfo parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SocketOptionTcpInfo parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SocketOptionTcpInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
