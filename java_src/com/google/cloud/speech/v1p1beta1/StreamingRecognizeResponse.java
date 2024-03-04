package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.StreamingRecognitionResult;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.google.rpc.Status;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class StreamingRecognizeResponse extends GeneratedMessageV3 implements r1 {
    public static final int ERROR_FIELD_NUMBER = 1;
    public static final int RESULTS_FIELD_NUMBER = 2;
    public static final int SPEECH_EVENT_TYPE_FIELD_NUMBER = 4;
    public static final int TOTAL_BILLED_TIME_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private Status error_;
    private byte memoizedIsInitialized;
    private List<StreamingRecognitionResult> results_;
    private int speechEventType_;
    private Duration totalBilledTime_;
    private static final StreamingRecognizeResponse DEFAULT_INSTANCE = new StreamingRecognizeResponse();
    private static final e2<StreamingRecognizeResponse> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum SpeechEventType implements h2 {
        SPEECH_EVENT_UNSPECIFIED(0),
        END_OF_SINGLE_UTTERANCE(1),
        UNRECOGNIZED(-1);
        
        public static final int END_OF_SINGLE_UTTERANCE_VALUE = 1;
        public static final int SPEECH_EVENT_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<SpeechEventType> internalValueMap = new a();
        private static final SpeechEventType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<SpeechEventType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public SpeechEventType a(int i9) {
                return SpeechEventType.forNumber(i9);
            }
        }

        SpeechEventType(int i9) {
            this.value = i9;
        }

        public static SpeechEventType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return END_OF_SINGLE_UTTERANCE;
            }
            return SPEECH_EVENT_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return StreamingRecognizeResponse.getDescriptor().k().get(0);
        }

        public static u0.d<SpeechEventType> internalGetValueMap() {
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
        public static SpeechEventType valueOf(int i9) {
            return forNumber(i9);
        }

        public static SpeechEventType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<StreamingRecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StreamingRecognizeResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StreamingRecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12229e;

        /* renamed from: f  reason: collision with root package name */
        private Status f12230f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f12231g;

        /* renamed from: h  reason: collision with root package name */
        private List<StreamingRecognitionResult> f12232h;

        /* renamed from: i  reason: collision with root package name */
        private l2<StreamingRecognitionResult, StreamingRecognitionResult.b, o> f12233i;

        /* renamed from: j  reason: collision with root package name */
        private int f12234j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f12235k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f12236l;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12229e & 1) == 0) {
                this.f12232h = new ArrayList(this.f12232h);
                this.f12229e |= 1;
            }
        }

        private l2<StreamingRecognitionResult, StreamingRecognitionResult.b, o> d0() {
            if (this.f12233i == null) {
                this.f12233i = new l2<>(this.f12232h, (this.f12229e & 1) != 0, H(), O());
                this.f12232h = null;
            }
            return this.f12233i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.B.d(StreamingRecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StreamingRecognizeResponse build() {
            StreamingRecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StreamingRecognizeResponse I() {
            StreamingRecognizeResponse streamingRecognizeResponse = new StreamingRecognizeResponse(this, (a) null);
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f12231g;
            if (q2Var == null) {
                streamingRecognizeResponse.error_ = this.f12230f;
            } else {
                streamingRecognizeResponse.error_ = q2Var.b();
            }
            l2<StreamingRecognitionResult, StreamingRecognitionResult.b, o> l2Var = this.f12233i;
            if (l2Var == null) {
                if ((this.f12229e & 1) != 0) {
                    this.f12232h = Collections.unmodifiableList(this.f12232h);
                    this.f12229e &= -2;
                }
                streamingRecognizeResponse.results_ = this.f12232h;
            } else {
                streamingRecognizeResponse.results_ = l2Var.e();
            }
            streamingRecognizeResponse.speechEventType_ = this.f12234j;
            q2<Duration, Duration.b, v> q2Var2 = this.f12236l;
            if (q2Var2 == null) {
                streamingRecognizeResponse.totalBilledTime_ = this.f12235k;
            } else {
                streamingRecognizeResponse.totalBilledTime_ = q2Var2.b();
            }
            Q();
            return streamingRecognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public StreamingRecognizeResponse getDefaultInstanceForType() {
            return StreamingRecognizeResponse.getDefaultInstance();
        }

        public b g0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f12231g;
            if (q2Var == null) {
                Status status2 = this.f12230f;
                if (status2 != null) {
                    this.f12230f = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f12230f = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.A;
        }

        public b h0(StreamingRecognizeResponse streamingRecognizeResponse) {
            if (streamingRecognizeResponse == StreamingRecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (streamingRecognizeResponse.hasError()) {
                g0(streamingRecognizeResponse.getError());
            }
            if (this.f12233i == null) {
                if (!streamingRecognizeResponse.results_.isEmpty()) {
                    if (this.f12232h.isEmpty()) {
                        this.f12232h = streamingRecognizeResponse.results_;
                        this.f12229e &= -2;
                    } else {
                        a0();
                        this.f12232h.addAll(streamingRecognizeResponse.results_);
                    }
                    R();
                }
            } else if (!streamingRecognizeResponse.results_.isEmpty()) {
                if (this.f12233i.k()) {
                    this.f12233i.f();
                    this.f12233i = null;
                    this.f12232h = streamingRecognizeResponse.results_;
                    this.f12229e &= -2;
                    this.f12233i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12233i.b(streamingRecognizeResponse.results_);
                }
            }
            if (streamingRecognizeResponse.speechEventType_ != 0) {
                n0(streamingRecognizeResponse.getSpeechEventTypeValue());
            }
            if (streamingRecognizeResponse.hasTotalBilledTime()) {
                k0(streamingRecognizeResponse.getTotalBilledTime());
            }
            z(((GeneratedMessageV3) streamingRecognizeResponse).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse r3 = (com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse r4 = (com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.StreamingRecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StreamingRecognizeResponse) {
                return h0((StreamingRecognizeResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f12236l;
            if (q2Var == null) {
                Duration duration2 = this.f12235k;
                if (duration2 != null) {
                    this.f12235k = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f12235k = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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

        public b n0(int i9) {
            this.f12234j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12232h = Collections.emptyList();
            this.f12234j = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12232h = Collections.emptyList();
            this.f12234j = 0;
            e0();
        }
    }

    /* synthetic */ StreamingRecognizeResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StreamingRecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StreamingRecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StreamingRecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamingRecognizeResponse)) {
            return super.equals(obj);
        }
        StreamingRecognizeResponse streamingRecognizeResponse = (StreamingRecognizeResponse) obj;
        if (hasError() != streamingRecognizeResponse.hasError()) {
            return false;
        }
        if ((!hasError() || getError().equals(streamingRecognizeResponse.getError())) && getResultsList().equals(streamingRecognizeResponse.getResultsList()) && this.speechEventType_ == streamingRecognizeResponse.speechEventType_ && hasTotalBilledTime() == streamingRecognizeResponse.hasTotalBilledTime()) {
            return (!hasTotalBilledTime() || getTotalBilledTime().equals(streamingRecognizeResponse.getTotalBilledTime())) && this.unknownFields.equals(streamingRecognizeResponse.unknownFields);
        }
        return false;
    }

    public Status getError() {
        Status status = this.error_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public com.google.rpc.c getErrorOrBuilder() {
        return getError();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StreamingRecognizeResponse> getParserForType() {
        return PARSER;
    }

    public StreamingRecognitionResult getResults(int i9) {
        return this.results_.get(i9);
    }

    public int getResultsCount() {
        return this.results_.size();
    }

    public List<StreamingRecognitionResult> getResultsList() {
        return this.results_;
    }

    public o getResultsOrBuilder(int i9) {
        return this.results_.get(i9);
    }

    public List<? extends o> getResultsOrBuilderList() {
        return this.results_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.error_ != null ? CodedOutputStream.G(1, getError()) + 0 : 0;
        for (int i10 = 0; i10 < this.results_.size(); i10++) {
            G += CodedOutputStream.G(2, this.results_.get(i10));
        }
        if (this.speechEventType_ != SpeechEventType.SPEECH_EVENT_UNSPECIFIED.getNumber()) {
            G += CodedOutputStream.l(4, this.speechEventType_);
        }
        if (this.totalBilledTime_ != null) {
            G += CodedOutputStream.G(5, getTotalBilledTime());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SpeechEventType getSpeechEventType() {
        SpeechEventType valueOf = SpeechEventType.valueOf(this.speechEventType_);
        return valueOf == null ? SpeechEventType.UNRECOGNIZED : valueOf;
    }

    public int getSpeechEventTypeValue() {
        return this.speechEventType_;
    }

    public Duration getTotalBilledTime() {
        Duration duration = this.totalBilledTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getTotalBilledTimeOrBuilder() {
        return getTotalBilledTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasError() {
        return this.error_ != null;
    }

    public boolean hasTotalBilledTime() {
        return this.totalBilledTime_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasError()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getError().hashCode();
        }
        if (getResultsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResultsList().hashCode();
        }
        int i10 = (((hashCode * 37) + 4) * 53) + this.speechEventType_;
        if (hasTotalBilledTime()) {
            i10 = (((i10 * 37) + 5) * 53) + getTotalBilledTime().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.B.d(StreamingRecognizeResponse.class, b.class);
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
        return new StreamingRecognizeResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.error_ != null) {
            codedOutputStream.L0(1, getError());
        }
        for (int i9 = 0; i9 < this.results_.size(); i9++) {
            codedOutputStream.L0(2, this.results_.get(i9));
        }
        if (this.speechEventType_ != SpeechEventType.SPEECH_EVENT_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.speechEventType_);
        }
        if (this.totalBilledTime_ != null) {
            codedOutputStream.L0(5, getTotalBilledTime());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StreamingRecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StreamingRecognizeResponse streamingRecognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(streamingRecognizeResponse);
    }

    public static StreamingRecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StreamingRecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StreamingRecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static StreamingRecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StreamingRecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
        this.speechEventType_ = 0;
    }

    public static StreamingRecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StreamingRecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StreamingRecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private StreamingRecognizeResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Status status = this.error_;
                                Status.b builder = status != null ? status.toBuilder() : null;
                                Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                                this.error_ = status2;
                                if (builder != null) {
                                    builder.i0(status2);
                                    this.error_ = builder.I();
                                }
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.results_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.results_.add(pVar.B(StreamingRecognitionResult.parser(), f0Var));
                            } else if (L == 32) {
                                this.speechEventType_ = pVar.u();
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration = this.totalBilledTime_;
                                Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.totalBilledTime_ = duration2;
                                if (builder2 != null) {
                                    builder2.e0(duration2);
                                    this.totalBilledTime_ = builder2.I();
                                }
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
                    this.results_ = Collections.unmodifiableList(this.results_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static StreamingRecognizeResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StreamingRecognizeResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
