package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult;
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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecognizeResponse extends GeneratedMessageV3 implements r1 {
    private static final RecognizeResponse DEFAULT_INSTANCE = new RecognizeResponse();
    private static final e2<RecognizeResponse> PARSER = new a();
    public static final int RESULTS_FIELD_NUMBER = 2;
    public static final int TOTAL_BILLED_TIME_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<SpeechRecognitionResult> results_;
    private Duration totalBilledTime_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RecognizeResponse m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12182e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionResult> f12183f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> f12184g;

        /* renamed from: h  reason: collision with root package name */
        private Duration f12185h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f12186i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12182e & 1) == 0) {
                this.f12183f = new ArrayList(this.f12183f);
                this.f12182e |= 1;
            }
        }

        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> d0() {
            if (this.f12184g == null) {
                this.f12184g = new l2<>(this.f12183f, (this.f12182e & 1) != 0, H(), O());
                this.f12183f = null;
            }
            return this.f12184g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12307v.d(RecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RecognizeResponse build() {
            RecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RecognizeResponse I() {
            RecognizeResponse recognizeResponse = new RecognizeResponse(this, (a) null);
            int i9 = this.f12182e;
            l2<SpeechRecognitionResult, SpeechRecognitionResult.b, l> l2Var = this.f12184g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f12183f = Collections.unmodifiableList(this.f12183f);
                    this.f12182e &= -2;
                }
                recognizeResponse.results_ = this.f12183f;
            } else {
                recognizeResponse.results_ = l2Var.e();
            }
            q2<Duration, Duration.b, v> q2Var = this.f12186i;
            if (q2Var == null) {
                recognizeResponse.totalBilledTime_ = this.f12185h;
            } else {
                recognizeResponse.totalBilledTime_ = q2Var.b();
            }
            Q();
            return recognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public RecognizeResponse getDefaultInstanceForType() {
            return RecognizeResponse.getDefaultInstance();
        }

        public b g0(RecognizeResponse recognizeResponse) {
            if (recognizeResponse == RecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f12184g == null) {
                if (!recognizeResponse.results_.isEmpty()) {
                    if (this.f12183f.isEmpty()) {
                        this.f12183f = recognizeResponse.results_;
                        this.f12182e &= -2;
                    } else {
                        a0();
                        this.f12183f.addAll(recognizeResponse.results_);
                    }
                    R();
                }
            } else if (!recognizeResponse.results_.isEmpty()) {
                if (this.f12184g.k()) {
                    this.f12184g.f();
                    this.f12184g = null;
                    this.f12183f = recognizeResponse.results_;
                    this.f12182e &= -2;
                    this.f12184g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12184g.b(recognizeResponse.results_);
                }
            }
            if (recognizeResponse.hasTotalBilledTime()) {
                j0(recognizeResponse.getTotalBilledTime());
            }
            z(((GeneratedMessageV3) recognizeResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12306u;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.RecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.RecognizeResponse.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.RecognizeResponse r3 = (com.google.cloud.speech.v1p1beta1.RecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.RecognizeResponse r4 = (com.google.cloud.speech.v1p1beta1.RecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.RecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.RecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RecognizeResponse) {
                return g0((RecognizeResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f12186i;
            if (q2Var == null) {
                Duration duration2 = this.f12185h;
                if (duration2 != null) {
                    this.f12185h = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f12185h = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12183f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12183f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ RecognizeResponse(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12306u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecognizeResponse)) {
            return super.equals(obj);
        }
        RecognizeResponse recognizeResponse = (RecognizeResponse) obj;
        if (getResultsList().equals(recognizeResponse.getResultsList()) && hasTotalBilledTime() == recognizeResponse.hasTotalBilledTime()) {
            return (!hasTotalBilledTime() || getTotalBilledTime().equals(recognizeResponse.getTotalBilledTime())) && this.unknownFields.equals(recognizeResponse.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognizeResponse> getParserForType() {
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
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12307v.d(RecognizeResponse.class, b.class);
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
        return new RecognizeResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.results_.size(); i9++) {
            codedOutputStream.L0(2, this.results_.get(i9));
        }
        if (this.totalBilledTime_ != null) {
            codedOutputStream.L0(3, getTotalBilledTime());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RecognizeResponse recognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(recognizeResponse);
    }

    public static RecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
    }

    public static RecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RecognizeResponse(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                if (!(z11 & true)) {
                                    this.results_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.results_.add(pVar.B(SpeechRecognitionResult.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration = this.totalBilledTime_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.totalBilledTime_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.totalBilledTime_ = builder.I();
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

    public static RecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognizeResponse parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognizeResponse parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
