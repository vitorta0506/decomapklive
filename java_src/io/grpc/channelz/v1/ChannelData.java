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
import io.grpc.channelz.v1.ChannelConnectivityState;
import io.grpc.channelz.v1.ChannelTrace;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ChannelData extends GeneratedMessageV3 implements c {
    public static final int CALLS_FAILED_FIELD_NUMBER = 6;
    public static final int CALLS_STARTED_FIELD_NUMBER = 4;
    public static final int CALLS_SUCCEEDED_FIELD_NUMBER = 5;
    public static final int LAST_CALL_STARTED_TIMESTAMP_FIELD_NUMBER = 7;
    public static final int STATE_FIELD_NUMBER = 1;
    public static final int TARGET_FIELD_NUMBER = 2;
    public static final int TRACE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private long callsFailed_;
    private long callsStarted_;
    private long callsSucceeded_;
    private Timestamp lastCallStartedTimestamp_;
    private byte memoizedIsInitialized;
    private ChannelConnectivityState state_;
    private volatile Object target_;
    private ChannelTrace trace_;
    private static final ChannelData DEFAULT_INSTANCE = new ChannelData();
    private static final e2<ChannelData> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ChannelData> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ChannelData m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ChannelData(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private ChannelConnectivityState f42088e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ChannelConnectivityState, ChannelConnectivityState.b, io.grpc.channelz.v1.b> f42089f;

        /* renamed from: g  reason: collision with root package name */
        private Object f42090g;

        /* renamed from: h  reason: collision with root package name */
        private ChannelTrace f42091h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ChannelTrace, ChannelTrace.b, g> f42092i;

        /* renamed from: j  reason: collision with root package name */
        private long f42093j;

        /* renamed from: k  reason: collision with root package name */
        private long f42094k;

        /* renamed from: l  reason: collision with root package name */
        private long f42095l;

        /* renamed from: m  reason: collision with root package name */
        private Timestamp f42096m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42097n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42268h.d(ChannelData.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ChannelData build() {
            ChannelData I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ChannelData I() {
            ChannelData channelData = new ChannelData(this, (a) null);
            q2<ChannelConnectivityState, ChannelConnectivityState.b, io.grpc.channelz.v1.b> q2Var = this.f42089f;
            if (q2Var == null) {
                channelData.state_ = this.f42088e;
            } else {
                channelData.state_ = q2Var.b();
            }
            channelData.target_ = this.f42090g;
            q2<ChannelTrace, ChannelTrace.b, g> q2Var2 = this.f42092i;
            if (q2Var2 == null) {
                channelData.trace_ = this.f42091h;
            } else {
                channelData.trace_ = q2Var2.b();
            }
            channelData.callsStarted_ = this.f42093j;
            channelData.callsSucceeded_ = this.f42094k;
            channelData.callsFailed_ = this.f42095l;
            q2<Timestamp, Timestamp.b, z2> q2Var3 = this.f42097n;
            if (q2Var3 == null) {
                channelData.lastCallStartedTimestamp_ = this.f42096m;
            } else {
                channelData.lastCallStartedTimestamp_ = q2Var3.b();
            }
            Q();
            return channelData;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ChannelData getDefaultInstanceForType() {
            return ChannelData.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.ChannelData.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.ChannelData.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.ChannelData r3 = (io.grpc.channelz.v1.ChannelData) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.ChannelData r4 = (io.grpc.channelz.v1.ChannelData) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.ChannelData.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.ChannelData$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ChannelData) {
                return g0((ChannelData) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ChannelData channelData) {
            if (channelData == ChannelData.getDefaultInstance()) {
                return this;
            }
            if (channelData.hasState()) {
                i0(channelData.getState());
            }
            if (!channelData.getTarget().isEmpty()) {
                this.f42090g = channelData.target_;
                R();
            }
            if (channelData.hasTrace()) {
                j0(channelData.getTrace());
            }
            if (channelData.getCallsStarted() != 0) {
                m0(channelData.getCallsStarted());
            }
            if (channelData.getCallsSucceeded() != 0) {
                n0(channelData.getCallsSucceeded());
            }
            if (channelData.getCallsFailed() != 0) {
                l0(channelData.getCallsFailed());
            }
            if (channelData.hasLastCallStartedTimestamp()) {
                h0(channelData.getLastCallStartedTimestamp());
            }
            z(((GeneratedMessageV3) channelData).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42266g;
        }

        public b h0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42097n;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42096m;
                if (timestamp2 != null) {
                    this.f42096m = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42096m = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b i0(ChannelConnectivityState channelConnectivityState) {
            q2<ChannelConnectivityState, ChannelConnectivityState.b, io.grpc.channelz.v1.b> q2Var = this.f42089f;
            if (q2Var == null) {
                ChannelConnectivityState channelConnectivityState2 = this.f42088e;
                if (channelConnectivityState2 != null) {
                    this.f42088e = ChannelConnectivityState.newBuilder(channelConnectivityState2).g0(channelConnectivityState).I();
                } else {
                    this.f42088e = channelConnectivityState;
                }
                R();
            } else {
                q2Var.e(channelConnectivityState);
            }
            return this;
        }

        public b j0(ChannelTrace channelTrace) {
            q2<ChannelTrace, ChannelTrace.b, g> q2Var = this.f42092i;
            if (q2Var == null) {
                ChannelTrace channelTrace2 = this.f42091h;
                if (channelTrace2 != null) {
                    this.f42091h = ChannelTrace.newBuilder(channelTrace2).j0(channelTrace).I();
                } else {
                    this.f42091h = channelTrace;
                }
                R();
            } else {
                q2Var.e(channelTrace);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(long j10) {
            this.f42095l = j10;
            R();
            return this;
        }

        public b m0(long j10) {
            this.f42093j = j10;
            R();
            return this;
        }

        public b n0(long j10) {
            this.f42094k = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            this.f42090g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42090g = "";
            b0();
        }
    }

    /* synthetic */ ChannelData(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ChannelData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42266g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChannelData parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ChannelData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ChannelData> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelData)) {
            return super.equals(obj);
        }
        ChannelData channelData = (ChannelData) obj;
        if (hasState() != channelData.hasState()) {
            return false;
        }
        if ((!hasState() || getState().equals(channelData.getState())) && getTarget().equals(channelData.getTarget()) && hasTrace() == channelData.hasTrace()) {
            if ((!hasTrace() || getTrace().equals(channelData.getTrace())) && getCallsStarted() == channelData.getCallsStarted() && getCallsSucceeded() == channelData.getCallsSucceeded() && getCallsFailed() == channelData.getCallsFailed() && hasLastCallStartedTimestamp() == channelData.hasLastCallStartedTimestamp()) {
                return (!hasLastCallStartedTimestamp() || getLastCallStartedTimestamp().equals(channelData.getLastCallStartedTimestamp())) && this.unknownFields.equals(channelData.unknownFields);
            }
            return false;
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
    public e2<ChannelData> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.state_ != null ? 0 + CodedOutputStream.G(1, getState()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.target_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.target_);
        }
        if (this.trace_ != null) {
            G += CodedOutputStream.G(3, getTrace());
        }
        long j10 = this.callsStarted_;
        if (j10 != 0) {
            G += CodedOutputStream.z(4, j10);
        }
        long j11 = this.callsSucceeded_;
        if (j11 != 0) {
            G += CodedOutputStream.z(5, j11);
        }
        long j12 = this.callsFailed_;
        if (j12 != 0) {
            G += CodedOutputStream.z(6, j12);
        }
        if (this.lastCallStartedTimestamp_ != null) {
            G += CodedOutputStream.G(7, getLastCallStartedTimestamp());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ChannelConnectivityState getState() {
        ChannelConnectivityState channelConnectivityState = this.state_;
        return channelConnectivityState == null ? ChannelConnectivityState.getDefaultInstance() : channelConnectivityState;
    }

    public io.grpc.channelz.v1.b getStateOrBuilder() {
        return getState();
    }

    public String getTarget() {
        Object obj = this.target_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.target_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTargetBytes() {
        Object obj = this.target_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.target_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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

    public boolean hasState() {
        return this.state_ != null;
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
        if (hasState()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getState().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 2) * 53) + getTarget().hashCode();
        if (hasTrace()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getTrace().hashCode();
        }
        int i10 = (((((((((((hashCode2 * 37) + 4) * 53) + u0.i(getCallsStarted())) * 37) + 5) * 53) + u0.i(getCallsSucceeded())) * 37) + 6) * 53) + u0.i(getCallsFailed());
        if (hasLastCallStartedTimestamp()) {
            i10 = (((i10 * 37) + 7) * 53) + getLastCallStartedTimestamp().hashCode();
        }
        int hashCode3 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42268h.d(ChannelData.class, b.class);
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
        return new ChannelData();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.state_ != null) {
            codedOutputStream.L0(1, getState());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.target_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.target_);
        }
        if (this.trace_ != null) {
            codedOutputStream.L0(3, getTrace());
        }
        long j10 = this.callsStarted_;
        if (j10 != 0) {
            codedOutputStream.J0(4, j10);
        }
        long j11 = this.callsSucceeded_;
        if (j11 != 0) {
            codedOutputStream.J0(5, j11);
        }
        long j12 = this.callsFailed_;
        if (j12 != 0) {
            codedOutputStream.J0(6, j12);
        }
        if (this.lastCallStartedTimestamp_ != null) {
            codedOutputStream.L0(7, getLastCallStartedTimestamp());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ChannelData(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ChannelData channelData) {
        return DEFAULT_INSTANCE.toBuilder().g0(channelData);
    }

    public static ChannelData parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ChannelData(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChannelData parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ChannelData getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ChannelData parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ChannelData() {
        this.memoizedIsInitialized = (byte) -1;
        this.target_ = "";
    }

    public static ChannelData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ChannelData parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ChannelData parseFrom(InputStream inputStream) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ChannelData(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            ChannelConnectivityState channelConnectivityState = this.state_;
                            ChannelConnectivityState.b builder = channelConnectivityState != null ? channelConnectivityState.toBuilder() : null;
                            ChannelConnectivityState channelConnectivityState2 = (ChannelConnectivityState) pVar.B(ChannelConnectivityState.parser(), f0Var);
                            this.state_ = channelConnectivityState2;
                            if (builder != null) {
                                builder.g0(channelConnectivityState2);
                                this.state_ = builder.I();
                            }
                        } else if (L == 18) {
                            this.target_ = pVar.K();
                        } else if (L == 26) {
                            ChannelTrace channelTrace = this.trace_;
                            ChannelTrace.b builder2 = channelTrace != null ? channelTrace.toBuilder() : null;
                            ChannelTrace channelTrace2 = (ChannelTrace) pVar.B(ChannelTrace.parser(), f0Var);
                            this.trace_ = channelTrace2;
                            if (builder2 != null) {
                                builder2.j0(channelTrace2);
                                this.trace_ = builder2.I();
                            }
                        } else if (L == 32) {
                            this.callsStarted_ = pVar.A();
                        } else if (L == 40) {
                            this.callsSucceeded_ = pVar.A();
                        } else if (L == 48) {
                            this.callsFailed_ = pVar.A();
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Timestamp timestamp = this.lastCallStartedTimestamp_;
                            Timestamp.b builder3 = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.lastCallStartedTimestamp_ = timestamp2;
                            if (builder3 != null) {
                                builder3.g0(timestamp2);
                                this.lastCallStartedTimestamp_ = builder3.I();
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

    public static ChannelData parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelData parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ChannelData parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ChannelData) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
