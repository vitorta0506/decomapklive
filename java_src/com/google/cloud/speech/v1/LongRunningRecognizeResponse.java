package com.google.cloud.speech.v1;

import com.google.cloud.speech.v1.SpeechRecognitionResult;
import com.google.cloud.speech.v1.TranscriptOutputConfig;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
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
public final class LongRunningRecognizeResponse extends GeneratedMessageV3 implements r1 {
    public static final int OUTPUT_CONFIG_FIELD_NUMBER = 6;
    public static final int OUTPUT_ERROR_FIELD_NUMBER = 7;
    public static final int RESULTS_FIELD_NUMBER = 2;
    public static final int TOTAL_BILLED_TIME_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private TranscriptOutputConfig outputConfig_;
    private Status outputError_;
    private List<SpeechRecognitionResult> results_;
    private Duration totalBilledTime_;
    private static final LongRunningRecognizeResponse DEFAULT_INSTANCE = new LongRunningRecognizeResponse();
    private static final e2<LongRunningRecognizeResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<LongRunningRecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LongRunningRecognizeResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LongRunningRecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f11842e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionResult> f11843f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> f11844g;

        /* renamed from: h  reason: collision with root package name */
        private Duration f11845h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f11846i;

        /* renamed from: j  reason: collision with root package name */
        private TranscriptOutputConfig f11847j;

        /* renamed from: k  reason: collision with root package name */
        private q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> f11848k;

        /* renamed from: l  reason: collision with root package name */
        private Status f11849l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f11850m;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11842e & 1) == 0) {
                this.f11843f = new ArrayList(this.f11843f);
                this.f11842e |= 1;
            }
        }

        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> d0() {
            if (this.f11844g == null) {
                this.f11844g = new l2<>(this.f11843f, (this.f11842e & 1) != 0, H(), O());
                this.f11843f = null;
            }
            return this.f11844g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f11986x.d(LongRunningRecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LongRunningRecognizeResponse build() {
            LongRunningRecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LongRunningRecognizeResponse I() {
            LongRunningRecognizeResponse longRunningRecognizeResponse = new LongRunningRecognizeResponse(this, (a) null);
            int i9 = this.f11842e;
            l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> l2Var = this.f11844g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f11843f = Collections.unmodifiableList(this.f11843f);
                    this.f11842e &= -2;
                }
                longRunningRecognizeResponse.results_ = this.f11843f;
            } else {
                longRunningRecognizeResponse.results_ = l2Var.e();
            }
            q2<Duration, Duration.b, v> q2Var = this.f11846i;
            if (q2Var == null) {
                longRunningRecognizeResponse.totalBilledTime_ = this.f11845h;
            } else {
                longRunningRecognizeResponse.totalBilledTime_ = q2Var.b();
            }
            q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> q2Var2 = this.f11848k;
            if (q2Var2 == null) {
                longRunningRecognizeResponse.outputConfig_ = this.f11847j;
            } else {
                longRunningRecognizeResponse.outputConfig_ = q2Var2.b();
            }
            q2<Status, Status.b, com.google.rpc.c> q2Var3 = this.f11850m;
            if (q2Var3 == null) {
                longRunningRecognizeResponse.outputError_ = this.f11849l;
            } else {
                longRunningRecognizeResponse.outputError_ = q2Var3.b();
            }
            Q();
            return longRunningRecognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LongRunningRecognizeResponse getDefaultInstanceForType() {
            return LongRunningRecognizeResponse.getDefaultInstance();
        }

        public b g0(LongRunningRecognizeResponse longRunningRecognizeResponse) {
            if (longRunningRecognizeResponse == LongRunningRecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f11844g == null) {
                if (!longRunningRecognizeResponse.results_.isEmpty()) {
                    if (this.f11843f.isEmpty()) {
                        this.f11843f = longRunningRecognizeResponse.results_;
                        this.f11842e &= -2;
                    } else {
                        a0();
                        this.f11843f.addAll(longRunningRecognizeResponse.results_);
                    }
                    R();
                }
            } else if (!longRunningRecognizeResponse.results_.isEmpty()) {
                if (this.f11844g.k()) {
                    this.f11844g.f();
                    this.f11844g = null;
                    this.f11843f = longRunningRecognizeResponse.results_;
                    this.f11842e &= -2;
                    this.f11844g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f11844g.b(longRunningRecognizeResponse.results_);
                }
            }
            if (longRunningRecognizeResponse.hasTotalBilledTime()) {
                l0(longRunningRecognizeResponse.getTotalBilledTime());
            }
            if (longRunningRecognizeResponse.hasOutputConfig()) {
                j0(longRunningRecognizeResponse.getOutputConfig());
            }
            if (longRunningRecognizeResponse.hasOutputError()) {
                k0(longRunningRecognizeResponse.getOutputError());
            }
            z(((GeneratedMessageV3) longRunningRecognizeResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f11985w;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1.LongRunningRecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.LongRunningRecognizeResponse.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.LongRunningRecognizeResponse r3 = (com.google.cloud.speech.v1.LongRunningRecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1.LongRunningRecognizeResponse r4 = (com.google.cloud.speech.v1.LongRunningRecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.LongRunningRecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.LongRunningRecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LongRunningRecognizeResponse) {
                return g0((LongRunningRecognizeResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(TranscriptOutputConfig transcriptOutputConfig) {
            q2<TranscriptOutputConfig, TranscriptOutputConfig.c, q> q2Var = this.f11848k;
            if (q2Var == null) {
                TranscriptOutputConfig transcriptOutputConfig2 = this.f11847j;
                if (transcriptOutputConfig2 != null) {
                    this.f11847j = TranscriptOutputConfig.newBuilder(transcriptOutputConfig2).d0(transcriptOutputConfig).I();
                } else {
                    this.f11847j = transcriptOutputConfig;
                }
                R();
            } else {
                q2Var.e(transcriptOutputConfig);
            }
            return this;
        }

        public b k0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f11850m;
            if (q2Var == null) {
                Status status2 = this.f11849l;
                if (status2 != null) {
                    this.f11849l = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f11849l = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        public b l0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f11846i;
            if (q2Var == null) {
                Duration duration2 = this.f11845h;
                if (duration2 != null) {
                    this.f11845h = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f11845h = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11843f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11843f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ LongRunningRecognizeResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LongRunningRecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f11985w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LongRunningRecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LongRunningRecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LongRunningRecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongRunningRecognizeResponse)) {
            return super.equals(obj);
        }
        LongRunningRecognizeResponse longRunningRecognizeResponse = (LongRunningRecognizeResponse) obj;
        if (getResultsList().equals(longRunningRecognizeResponse.getResultsList()) && hasTotalBilledTime() == longRunningRecognizeResponse.hasTotalBilledTime()) {
            if ((!hasTotalBilledTime() || getTotalBilledTime().equals(longRunningRecognizeResponse.getTotalBilledTime())) && hasOutputConfig() == longRunningRecognizeResponse.hasOutputConfig()) {
                if ((!hasOutputConfig() || getOutputConfig().equals(longRunningRecognizeResponse.getOutputConfig())) && hasOutputError() == longRunningRecognizeResponse.hasOutputError()) {
                    return (!hasOutputError() || getOutputError().equals(longRunningRecognizeResponse.getOutputError())) && this.unknownFields.equals(longRunningRecognizeResponse.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public TranscriptOutputConfig getOutputConfig() {
        TranscriptOutputConfig transcriptOutputConfig = this.outputConfig_;
        return transcriptOutputConfig == null ? TranscriptOutputConfig.getDefaultInstance() : transcriptOutputConfig;
    }

    public q getOutputConfigOrBuilder() {
        return getOutputConfig();
    }

    public Status getOutputError() {
        Status status = this.outputError_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public com.google.rpc.c getOutputErrorOrBuilder() {
        return getOutputError();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LongRunningRecognizeResponse> getParserForType() {
        return PARSER;
    }

    public SpeechRecognitionResult getResults(int i9) {
        return this.results_.get(i9);
    }

    public int getResultsCount() {
        return this.results_.size();
    }

    public List<SpeechRecognitionResult> getResultsList() {
        return this.results_;
    }

    public l getResultsOrBuilder(int i9) {
        return this.results_.get(i9);
    }

    public List<? extends l> getResultsOrBuilderList() {
        return this.results_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.results_.size(); i11++) {
            i10 += CodedOutputStream.G(2, this.results_.get(i11));
        }
        if (this.totalBilledTime_ != null) {
            i10 += CodedOutputStream.G(3, getTotalBilledTime());
        }
        if (this.outputConfig_ != null) {
            i10 += CodedOutputStream.G(6, getOutputConfig());
        }
        if (this.outputError_ != null) {
            i10 += CodedOutputStream.G(7, getOutputError());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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

    public boolean hasOutputConfig() {
        return this.outputConfig_ != null;
    }

    public boolean hasOutputError() {
        return this.outputError_ != null;
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
        if (getResultsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResultsList().hashCode();
        }
        if (hasTotalBilledTime()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getTotalBilledTime().hashCode();
        }
        if (hasOutputConfig()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getOutputConfig().hashCode();
        }
        if (hasOutputError()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getOutputError().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f11986x.d(LongRunningRecognizeResponse.class, b.class);
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
        return new LongRunningRecognizeResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.results_.size(); i9++) {
            codedOutputStream.L0(2, this.results_.get(i9));
        }
        if (this.totalBilledTime_ != null) {
            codedOutputStream.L0(3, getTotalBilledTime());
        }
        if (this.outputConfig_ != null) {
            codedOutputStream.L0(6, getOutputConfig());
        }
        if (this.outputError_ != null) {
            codedOutputStream.L0(7, getOutputError());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LongRunningRecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LongRunningRecognizeResponse longRunningRecognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(longRunningRecognizeResponse);
    }

    public static LongRunningRecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LongRunningRecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LongRunningRecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LongRunningRecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static LongRunningRecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LongRunningRecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
    }

    public static LongRunningRecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LongRunningRecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LongRunningRecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LongRunningRecognizeResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 18) {
                            if (L == 26) {
                                Duration duration = this.totalBilledTime_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.totalBilledTime_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.totalBilledTime_ = builder.I();
                                }
                            } else if (L == 50) {
                                TranscriptOutputConfig transcriptOutputConfig = this.outputConfig_;
                                TranscriptOutputConfig.c builder2 = transcriptOutputConfig != null ? transcriptOutputConfig.toBuilder() : null;
                                TranscriptOutputConfig transcriptOutputConfig2 = (TranscriptOutputConfig) pVar.B(TranscriptOutputConfig.parser(), f0Var);
                                this.outputConfig_ = transcriptOutputConfig2;
                                if (builder2 != null) {
                                    builder2.d0(transcriptOutputConfig2);
                                    this.outputConfig_ = builder2.I();
                                }
                            } else if (L != 58) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Status status = this.outputError_;
                                Status.b builder3 = status != null ? status.toBuilder() : null;
                                Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                                this.outputError_ = status2;
                                if (builder3 != null) {
                                    builder3.i0(status2);
                                    this.outputError_ = builder3.I();
                                }
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.results_ = new ArrayList();
                                z11 |= true;
                            }
                            this.results_.add(pVar.B(SpeechRecognitionResult.parser(), f0Var));
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
                    this.results_ = Collections.unmodifiableList(this.results_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LongRunningRecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LongRunningRecognizeResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (LongRunningRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
