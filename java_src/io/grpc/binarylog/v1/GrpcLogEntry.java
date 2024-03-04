package io.grpc.binarylog.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.binarylog.v1.Address;
import io.grpc.binarylog.v1.ClientHeader;
import io.grpc.binarylog.v1.Message;
import io.grpc.binarylog.v1.ServerHeader;
import io.grpc.binarylog.v1.Trailer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class GrpcLogEntry extends GeneratedMessageV3 implements r1 {
    public static final int CALL_ID_FIELD_NUMBER = 2;
    public static final int CLIENT_HEADER_FIELD_NUMBER = 6;
    public static final int LOGGER_FIELD_NUMBER = 5;
    public static final int MESSAGE_FIELD_NUMBER = 8;
    public static final int PAYLOAD_TRUNCATED_FIELD_NUMBER = 10;
    public static final int PEER_FIELD_NUMBER = 11;
    public static final int SEQUENCE_ID_WITHIN_CALL_FIELD_NUMBER = 3;
    public static final int SERVER_HEADER_FIELD_NUMBER = 7;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    public static final int TRAILER_FIELD_NUMBER = 9;
    public static final int TYPE_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private long callId_;
    private int logger_;
    private byte memoizedIsInitialized;
    private int payloadCase_;
    private boolean payloadTruncated_;
    private Object payload_;
    private Address peer_;
    private long sequenceIdWithinCall_;
    private Timestamp timestamp_;
    private int type_;
    private static final GrpcLogEntry DEFAULT_INSTANCE = new GrpcLogEntry();
    private static final e2<GrpcLogEntry> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum EventType implements h2 {
        EVENT_TYPE_UNKNOWN(0),
        EVENT_TYPE_CLIENT_HEADER(1),
        EVENT_TYPE_SERVER_HEADER(2),
        EVENT_TYPE_CLIENT_MESSAGE(3),
        EVENT_TYPE_SERVER_MESSAGE(4),
        EVENT_TYPE_CLIENT_HALF_CLOSE(5),
        EVENT_TYPE_SERVER_TRAILER(6),
        EVENT_TYPE_CANCEL(7),
        UNRECOGNIZED(-1);
        
        public static final int EVENT_TYPE_CANCEL_VALUE = 7;
        public static final int EVENT_TYPE_CLIENT_HALF_CLOSE_VALUE = 5;
        public static final int EVENT_TYPE_CLIENT_HEADER_VALUE = 1;
        public static final int EVENT_TYPE_CLIENT_MESSAGE_VALUE = 3;
        public static final int EVENT_TYPE_SERVER_HEADER_VALUE = 2;
        public static final int EVENT_TYPE_SERVER_MESSAGE_VALUE = 4;
        public static final int EVENT_TYPE_SERVER_TRAILER_VALUE = 6;
        public static final int EVENT_TYPE_UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<EventType> internalValueMap = new a();
        private static final EventType[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<EventType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public EventType a(int i9) {
                return EventType.forNumber(i9);
            }
        }

        EventType(int i9) {
            this.value = i9;
        }

        public static EventType forNumber(int i9) {
            switch (i9) {
                case 0:
                    return EVENT_TYPE_UNKNOWN;
                case 1:
                    return EVENT_TYPE_CLIENT_HEADER;
                case 2:
                    return EVENT_TYPE_SERVER_HEADER;
                case 3:
                    return EVENT_TYPE_CLIENT_MESSAGE;
                case 4:
                    return EVENT_TYPE_SERVER_MESSAGE;
                case 5:
                    return EVENT_TYPE_CLIENT_HALF_CLOSE;
                case 6:
                    return EVENT_TYPE_SERVER_TRAILER;
                case 7:
                    return EVENT_TYPE_CANCEL;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return GrpcLogEntry.getDescriptor().k().get(0);
        }

        public static u0.d<EventType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static EventType valueOf(int i9) {
            return forNumber(i9);
        }

        public static EventType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes5.dex */
    public enum Logger implements h2 {
        LOGGER_UNKNOWN(0),
        LOGGER_CLIENT(1),
        LOGGER_SERVER(2),
        UNRECOGNIZED(-1);
        
        public static final int LOGGER_CLIENT_VALUE = 1;
        public static final int LOGGER_SERVER_VALUE = 2;
        public static final int LOGGER_UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<Logger> internalValueMap = new a();
        private static final Logger[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<Logger> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Logger a(int i9) {
                return Logger.forNumber(i9);
            }
        }

        Logger(int i9) {
            this.value = i9;
        }

        public static Logger forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return LOGGER_SERVER;
                }
                return LOGGER_CLIENT;
            }
            return LOGGER_UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return GrpcLogEntry.getDescriptor().k().get(1);
        }

        public static u0.d<Logger> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Logger valueOf(int i9) {
            return forNumber(i9);
        }

        public static Logger valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes5.dex */
    public enum PayloadCase implements u0.c {
        CLIENT_HEADER(6),
        SERVER_HEADER(7),
        MESSAGE(8),
        TRAILER(9),
        PAYLOAD_NOT_SET(0);
        
        private final int value;

        PayloadCase(int i9) {
            this.value = i9;
        }

        public static PayloadCase forNumber(int i9) {
            if (i9 != 0) {
                switch (i9) {
                    case 6:
                        return CLIENT_HEADER;
                    case 7:
                        return SERVER_HEADER;
                    case 8:
                        return MESSAGE;
                    case 9:
                        return TRAILER;
                    default:
                        return null;
                }
            }
            return PAYLOAD_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PayloadCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<GrpcLogEntry> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GrpcLogEntry m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new GrpcLogEntry(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41990a;

        static {
            int[] iArr = new int[PayloadCase.values().length];
            f41990a = iArr;
            try {
                iArr[PayloadCase.CLIENT_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41990a[PayloadCase.SERVER_HEADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41990a[PayloadCase.MESSAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41990a[PayloadCase.TRAILER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f41990a[PayloadCase.PAYLOAD_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f41991e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41992f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f41993g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f41994h;

        /* renamed from: i  reason: collision with root package name */
        private long f41995i;

        /* renamed from: j  reason: collision with root package name */
        private long f41996j;

        /* renamed from: k  reason: collision with root package name */
        private int f41997k;

        /* renamed from: l  reason: collision with root package name */
        private int f41998l;

        /* renamed from: m  reason: collision with root package name */
        private q2<ClientHeader, ClientHeader.b, io.grpc.binarylog.v1.c> f41999m;

        /* renamed from: n  reason: collision with root package name */
        private q2<ServerHeader, ServerHeader.b, g> f42000n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Message, Message.b, d> f42001o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Trailer, Trailer.b, h> f42002p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f42003q;

        /* renamed from: r  reason: collision with root package name */
        private Address f42004r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Address, Address.b, io.grpc.binarylog.v1.a> f42005s;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.binarylog.v1.b.f42021b.d(GrpcLogEntry.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GrpcLogEntry build() {
            GrpcLogEntry I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GrpcLogEntry I() {
            GrpcLogEntry grpcLogEntry = new GrpcLogEntry(this, (a) null);
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f41994h;
            if (q2Var == null) {
                grpcLogEntry.timestamp_ = this.f41993g;
            } else {
                grpcLogEntry.timestamp_ = q2Var.b();
            }
            grpcLogEntry.callId_ = this.f41995i;
            grpcLogEntry.sequenceIdWithinCall_ = this.f41996j;
            grpcLogEntry.type_ = this.f41997k;
            grpcLogEntry.logger_ = this.f41998l;
            if (this.f41991e == 6) {
                q2<ClientHeader, ClientHeader.b, io.grpc.binarylog.v1.c> q2Var2 = this.f41999m;
                if (q2Var2 == null) {
                    grpcLogEntry.payload_ = this.f41992f;
                } else {
                    grpcLogEntry.payload_ = q2Var2.b();
                }
            }
            if (this.f41991e == 7) {
                q2<ServerHeader, ServerHeader.b, g> q2Var3 = this.f42000n;
                if (q2Var3 == null) {
                    grpcLogEntry.payload_ = this.f41992f;
                } else {
                    grpcLogEntry.payload_ = q2Var3.b();
                }
            }
            if (this.f41991e == 8) {
                q2<Message, Message.b, d> q2Var4 = this.f42001o;
                if (q2Var4 == null) {
                    grpcLogEntry.payload_ = this.f41992f;
                } else {
                    grpcLogEntry.payload_ = q2Var4.b();
                }
            }
            if (this.f41991e == 9) {
                q2<Trailer, Trailer.b, h> q2Var5 = this.f42002p;
                if (q2Var5 == null) {
                    grpcLogEntry.payload_ = this.f41992f;
                } else {
                    grpcLogEntry.payload_ = q2Var5.b();
                }
            }
            grpcLogEntry.payloadTruncated_ = this.f42003q;
            q2<Address, Address.b, io.grpc.binarylog.v1.a> q2Var6 = this.f42005s;
            if (q2Var6 == null) {
                grpcLogEntry.peer_ = this.f42004r;
            } else {
                grpcLogEntry.peer_ = q2Var6.b();
            }
            grpcLogEntry.payloadCase_ = this.f41991e;
            Q();
            return grpcLogEntry;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public GrpcLogEntry getDefaultInstanceForType() {
            return GrpcLogEntry.getDefaultInstance();
        }

        public c d0(ClientHeader clientHeader) {
            q2<ClientHeader, ClientHeader.b, io.grpc.binarylog.v1.c> q2Var = this.f41999m;
            if (q2Var == null) {
                if (this.f41991e == 6 && this.f41992f != ClientHeader.getDefaultInstance()) {
                    this.f41992f = ClientHeader.newBuilder((ClientHeader) this.f41992f).g0(clientHeader).I();
                } else {
                    this.f41992f = clientHeader;
                }
                R();
            } else {
                if (this.f41991e == 6) {
                    q2Var.e(clientHeader);
                }
                this.f41999m.g(clientHeader);
            }
            this.f41991e = 6;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.binarylog.v1.GrpcLogEntry.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.binarylog.v1.GrpcLogEntry.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.binarylog.v1.GrpcLogEntry r3 = (io.grpc.binarylog.v1.GrpcLogEntry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.binarylog.v1.GrpcLogEntry r4 = (io.grpc.binarylog.v1.GrpcLogEntry) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.binarylog.v1.GrpcLogEntry.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.binarylog.v1.GrpcLogEntry$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof GrpcLogEntry) {
                return h0((GrpcLogEntry) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.binarylog.v1.b.f42020a;
        }

        public c h0(GrpcLogEntry grpcLogEntry) {
            if (grpcLogEntry == GrpcLogEntry.getDefaultInstance()) {
                return this;
            }
            if (grpcLogEntry.hasTimestamp()) {
                l0(grpcLogEntry.getTimestamp());
            }
            if (grpcLogEntry.getCallId() != 0) {
                o0(grpcLogEntry.getCallId());
            }
            if (grpcLogEntry.getSequenceIdWithinCall() != 0) {
                t0(grpcLogEntry.getSequenceIdWithinCall());
            }
            if (grpcLogEntry.type_ != 0) {
                u0(grpcLogEntry.getTypeValue());
            }
            if (grpcLogEntry.logger_ != 0) {
                r0(grpcLogEntry.getLoggerValue());
            }
            if (grpcLogEntry.getPayloadTruncated()) {
                s0(grpcLogEntry.getPayloadTruncated());
            }
            if (grpcLogEntry.hasPeer()) {
                j0(grpcLogEntry.getPeer());
            }
            int i9 = b.f41990a[grpcLogEntry.getPayloadCase().ordinal()];
            if (i9 == 1) {
                d0(grpcLogEntry.getClientHeader());
            } else if (i9 == 2) {
                k0(grpcLogEntry.getServerHeader());
            } else if (i9 == 3) {
                i0(grpcLogEntry.getMessage());
            } else if (i9 == 4) {
                m0(grpcLogEntry.getTrailer());
            }
            z(((GeneratedMessageV3) grpcLogEntry).unknownFields);
            R();
            return this;
        }

        public c i0(Message message) {
            q2<Message, Message.b, d> q2Var = this.f42001o;
            if (q2Var == null) {
                if (this.f41991e == 8 && this.f41992f != Message.getDefaultInstance()) {
                    this.f41992f = Message.newBuilder((Message) this.f41992f).g0(message).I();
                } else {
                    this.f41992f = message;
                }
                R();
            } else {
                if (this.f41991e == 8) {
                    q2Var.e(message);
                }
                this.f42001o.g(message);
            }
            this.f41991e = 8;
            return this;
        }

        public c j0(Address address) {
            q2<Address, Address.b, io.grpc.binarylog.v1.a> q2Var = this.f42005s;
            if (q2Var == null) {
                Address address2 = this.f42004r;
                if (address2 != null) {
                    this.f42004r = Address.newBuilder(address2).g0(address).I();
                } else {
                    this.f42004r = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        public c k0(ServerHeader serverHeader) {
            q2<ServerHeader, ServerHeader.b, g> q2Var = this.f42000n;
            if (q2Var == null) {
                if (this.f41991e == 7 && this.f41992f != ServerHeader.getDefaultInstance()) {
                    this.f41992f = ServerHeader.newBuilder((ServerHeader) this.f41992f).g0(serverHeader).I();
                } else {
                    this.f41992f = serverHeader;
                }
                R();
            } else {
                if (this.f41991e == 7) {
                    q2Var.e(serverHeader);
                }
                this.f42000n.g(serverHeader);
            }
            this.f41991e = 7;
            return this;
        }

        public c l0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f41994h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f41993g;
                if (timestamp2 != null) {
                    this.f41993g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f41993g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public c m0(Trailer trailer) {
            q2<Trailer, Trailer.b, h> q2Var = this.f42002p;
            if (q2Var == null) {
                if (this.f41991e == 9 && this.f41992f != Trailer.getDefaultInstance()) {
                    this.f41992f = Trailer.newBuilder((Trailer) this.f41992f).g0(trailer).I();
                } else {
                    this.f41992f = trailer;
                }
                R();
            } else {
                if (this.f41991e == 9) {
                    q2Var.e(trailer);
                }
                this.f42002p.g(trailer);
            }
            this.f41991e = 9;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c o0(long j10) {
            this.f41995i = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c r0(int i9) {
            this.f41998l = i9;
            R();
            return this;
        }

        public c s0(boolean z10) {
            this.f42003q = z10;
            R();
            return this;
        }

        public c t0(long j10) {
            this.f41996j = j10;
            R();
            return this;
        }

        public c u0(int i9) {
            this.f41997k = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f41991e = 0;
            this.f41997k = 0;
            this.f41998l = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41991e = 0;
            this.f41997k = 0;
            this.f41998l = 0;
            b0();
        }
    }

    /* synthetic */ GrpcLogEntry(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GrpcLogEntry getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.binarylog.v1.b.f42020a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GrpcLogEntry parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GrpcLogEntry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GrpcLogEntry> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GrpcLogEntry)) {
            return super.equals(obj);
        }
        GrpcLogEntry grpcLogEntry = (GrpcLogEntry) obj;
        if (hasTimestamp() != grpcLogEntry.hasTimestamp()) {
            return false;
        }
        if ((!hasTimestamp() || getTimestamp().equals(grpcLogEntry.getTimestamp())) && getCallId() == grpcLogEntry.getCallId() && getSequenceIdWithinCall() == grpcLogEntry.getSequenceIdWithinCall() && this.type_ == grpcLogEntry.type_ && this.logger_ == grpcLogEntry.logger_ && getPayloadTruncated() == grpcLogEntry.getPayloadTruncated() && hasPeer() == grpcLogEntry.hasPeer()) {
            if ((!hasPeer() || getPeer().equals(grpcLogEntry.getPeer())) && getPayloadCase().equals(grpcLogEntry.getPayloadCase())) {
                switch (this.payloadCase_) {
                    case 6:
                        if (!getClientHeader().equals(grpcLogEntry.getClientHeader())) {
                            return false;
                        }
                        break;
                    case 7:
                        if (!getServerHeader().equals(grpcLogEntry.getServerHeader())) {
                            return false;
                        }
                        break;
                    case 8:
                        if (!getMessage().equals(grpcLogEntry.getMessage())) {
                            return false;
                        }
                        break;
                    case 9:
                        if (!getTrailer().equals(grpcLogEntry.getTrailer())) {
                            return false;
                        }
                        break;
                }
                return this.unknownFields.equals(grpcLogEntry.unknownFields);
            }
            return false;
        }
        return false;
    }

    public long getCallId() {
        return this.callId_;
    }

    public ClientHeader getClientHeader() {
        if (this.payloadCase_ == 6) {
            return (ClientHeader) this.payload_;
        }
        return ClientHeader.getDefaultInstance();
    }

    public io.grpc.binarylog.v1.c getClientHeaderOrBuilder() {
        if (this.payloadCase_ == 6) {
            return (ClientHeader) this.payload_;
        }
        return ClientHeader.getDefaultInstance();
    }

    public Logger getLogger() {
        Logger valueOf = Logger.valueOf(this.logger_);
        return valueOf == null ? Logger.UNRECOGNIZED : valueOf;
    }

    public int getLoggerValue() {
        return this.logger_;
    }

    public Message getMessage() {
        if (this.payloadCase_ == 8) {
            return (Message) this.payload_;
        }
        return Message.getDefaultInstance();
    }

    public d getMessageOrBuilder() {
        if (this.payloadCase_ == 8) {
            return (Message) this.payload_;
        }
        return Message.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GrpcLogEntry> getParserForType() {
        return PARSER;
    }

    public PayloadCase getPayloadCase() {
        return PayloadCase.forNumber(this.payloadCase_);
    }

    public boolean getPayloadTruncated() {
        return this.payloadTruncated_;
    }

    public Address getPeer() {
        Address address = this.peer_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.binarylog.v1.a getPeerOrBuilder() {
        return getPeer();
    }

    public long getSequenceIdWithinCall() {
        return this.sequenceIdWithinCall_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.timestamp_ != null ? 0 + CodedOutputStream.G(1, getTimestamp()) : 0;
        long j10 = this.callId_;
        if (j10 != 0) {
            G += CodedOutputStream.a0(2, j10);
        }
        long j11 = this.sequenceIdWithinCall_;
        if (j11 != 0) {
            G += CodedOutputStream.a0(3, j11);
        }
        if (this.type_ != EventType.EVENT_TYPE_UNKNOWN.getNumber()) {
            G += CodedOutputStream.l(4, this.type_);
        }
        if (this.logger_ != Logger.LOGGER_UNKNOWN.getNumber()) {
            G += CodedOutputStream.l(5, this.logger_);
        }
        if (this.payloadCase_ == 6) {
            G += CodedOutputStream.G(6, (ClientHeader) this.payload_);
        }
        if (this.payloadCase_ == 7) {
            G += CodedOutputStream.G(7, (ServerHeader) this.payload_);
        }
        if (this.payloadCase_ == 8) {
            G += CodedOutputStream.G(8, (Message) this.payload_);
        }
        if (this.payloadCase_ == 9) {
            G += CodedOutputStream.G(9, (Trailer) this.payload_);
        }
        boolean z10 = this.payloadTruncated_;
        if (z10) {
            G += CodedOutputStream.e(10, z10);
        }
        if (this.peer_ != null) {
            G += CodedOutputStream.G(11, getPeer());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServerHeader getServerHeader() {
        if (this.payloadCase_ == 7) {
            return (ServerHeader) this.payload_;
        }
        return ServerHeader.getDefaultInstance();
    }

    public g getServerHeaderOrBuilder() {
        if (this.payloadCase_ == 7) {
            return (ServerHeader) this.payload_;
        }
        return ServerHeader.getDefaultInstance();
    }

    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getTimestampOrBuilder() {
        return getTimestamp();
    }

    public Trailer getTrailer() {
        if (this.payloadCase_ == 9) {
            return (Trailer) this.payload_;
        }
        return Trailer.getDefaultInstance();
    }

    public h getTrailerOrBuilder() {
        if (this.payloadCase_ == 9) {
            return (Trailer) this.payload_;
        }
        return Trailer.getDefaultInstance();
    }

    public EventType getType() {
        EventType valueOf = EventType.valueOf(this.type_);
        return valueOf == null ? EventType.UNRECOGNIZED : valueOf;
    }

    public int getTypeValue() {
        return this.type_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClientHeader() {
        return this.payloadCase_ == 6;
    }

    public boolean hasMessage() {
        return this.payloadCase_ == 8;
    }

    public boolean hasPeer() {
        return this.peer_ != null;
    }

    public boolean hasServerHeader() {
        return this.payloadCase_ == 7;
    }

    public boolean hasTimestamp() {
        return this.timestamp_ != null;
    }

    public boolean hasTrailer() {
        return this.payloadCase_ == 9;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        if (hasTimestamp()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getTimestamp().hashCode();
        }
        int i11 = (((((((((((((((((((hashCode2 * 37) + 2) * 53) + u0.i(getCallId())) * 37) + 3) * 53) + u0.i(getSequenceIdWithinCall())) * 37) + 4) * 53) + this.type_) * 37) + 5) * 53) + this.logger_) * 37) + 10) * 53) + u0.d(getPayloadTruncated());
        if (hasPeer()) {
            i11 = (((i11 * 37) + 11) * 53) + getPeer().hashCode();
        }
        switch (this.payloadCase_) {
            case 6:
                i9 = ((i11 * 37) + 6) * 53;
                hashCode = getClientHeader().hashCode();
                i11 = i9 + hashCode;
                int hashCode3 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 7:
                i9 = ((i11 * 37) + 7) * 53;
                hashCode = getServerHeader().hashCode();
                i11 = i9 + hashCode;
                int hashCode32 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 8:
                i9 = ((i11 * 37) + 8) * 53;
                hashCode = getMessage().hashCode();
                i11 = i9 + hashCode;
                int hashCode322 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 9:
                i9 = ((i11 * 37) + 9) * 53;
                hashCode = getTrailer().hashCode();
                i11 = i9 + hashCode;
                int hashCode3222 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            default:
                int hashCode32222 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.binarylog.v1.b.f42021b.d(GrpcLogEntry.class, c.class);
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
        return new GrpcLogEntry();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.timestamp_ != null) {
            codedOutputStream.L0(1, getTimestamp());
        }
        long j10 = this.callId_;
        if (j10 != 0) {
            codedOutputStream.e1(2, j10);
        }
        long j11 = this.sequenceIdWithinCall_;
        if (j11 != 0) {
            codedOutputStream.e1(3, j11);
        }
        if (this.type_ != EventType.EVENT_TYPE_UNKNOWN.getNumber()) {
            codedOutputStream.v0(4, this.type_);
        }
        if (this.logger_ != Logger.LOGGER_UNKNOWN.getNumber()) {
            codedOutputStream.v0(5, this.logger_);
        }
        if (this.payloadCase_ == 6) {
            codedOutputStream.L0(6, (ClientHeader) this.payload_);
        }
        if (this.payloadCase_ == 7) {
            codedOutputStream.L0(7, (ServerHeader) this.payload_);
        }
        if (this.payloadCase_ == 8) {
            codedOutputStream.L0(8, (Message) this.payload_);
        }
        if (this.payloadCase_ == 9) {
            codedOutputStream.L0(9, (Trailer) this.payload_);
        }
        boolean z10 = this.payloadTruncated_;
        if (z10) {
            codedOutputStream.n0(10, z10);
        }
        if (this.peer_ != null) {
            codedOutputStream.L0(11, getPeer());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GrpcLogEntry(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(GrpcLogEntry grpcLogEntry) {
        return DEFAULT_INSTANCE.toBuilder().h0(grpcLogEntry);
    }

    public static GrpcLogEntry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GrpcLogEntry(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GrpcLogEntry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcLogEntry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GrpcLogEntry getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static GrpcLogEntry parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static GrpcLogEntry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private GrpcLogEntry() {
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = 0;
        this.logger_ = 0;
    }

    public static GrpcLogEntry parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static GrpcLogEntry parseFrom(InputStream inputStream) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GrpcLogEntry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private GrpcLogEntry(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        case 10:
                            Timestamp timestamp = this.timestamp_;
                            Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.timestamp_ = timestamp2;
                            if (builder != null) {
                                builder.g0(timestamp2);
                                this.timestamp_ = builder.I();
                            } else {
                                continue;
                            }
                        case 16:
                            this.callId_ = pVar.N();
                            continue;
                        case 24:
                            this.sequenceIdWithinCall_ = pVar.N();
                            continue;
                        case 32:
                            this.type_ = pVar.u();
                            continue;
                        case 40:
                            this.logger_ = pVar.u();
                            continue;
                        case 50:
                            ClientHeader.b builder2 = this.payloadCase_ == 6 ? ((ClientHeader) this.payload_).toBuilder() : null;
                            o1 B = pVar.B(ClientHeader.parser(), f0Var);
                            this.payload_ = B;
                            if (builder2 != null) {
                                builder2.g0((ClientHeader) B);
                                this.payload_ = builder2.I();
                            }
                            this.payloadCase_ = 6;
                            continue;
                        case 58:
                            ServerHeader.b builder3 = this.payloadCase_ == 7 ? ((ServerHeader) this.payload_).toBuilder() : null;
                            o1 B2 = pVar.B(ServerHeader.parser(), f0Var);
                            this.payload_ = B2;
                            if (builder3 != null) {
                                builder3.g0((ServerHeader) B2);
                                this.payload_ = builder3.I();
                            }
                            this.payloadCase_ = 7;
                            continue;
                        case 66:
                            Message.b builder4 = this.payloadCase_ == 8 ? ((Message) this.payload_).toBuilder() : null;
                            o1 B3 = pVar.B(Message.parser(), f0Var);
                            this.payload_ = B3;
                            if (builder4 != null) {
                                builder4.g0((Message) B3);
                                this.payload_ = builder4.I();
                            }
                            this.payloadCase_ = 8;
                            continue;
                        case 74:
                            Trailer.b builder5 = this.payloadCase_ == 9 ? ((Trailer) this.payload_).toBuilder() : null;
                            o1 B4 = pVar.B(Trailer.parser(), f0Var);
                            this.payload_ = B4;
                            if (builder5 != null) {
                                builder5.g0((Trailer) B4);
                                this.payload_ = builder5.I();
                            }
                            this.payloadCase_ = 9;
                            continue;
                        case 80:
                            this.payloadTruncated_ = pVar.r();
                            continue;
                        case 90:
                            Address address = this.peer_;
                            Address.b builder6 = address != null ? address.toBuilder() : null;
                            Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                            this.peer_ = address2;
                            if (builder6 != null) {
                                builder6.g0(address2);
                                this.peer_ = builder6.I();
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

    public static GrpcLogEntry parseFrom(p pVar) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GrpcLogEntry parseFrom(p pVar, f0 f0Var) throws IOException {
        return (GrpcLogEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
