package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.SpeechRecognitionAlternative;
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
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeechRecognitionResult extends GeneratedMessageV3 implements l {
    public static final int ALTERNATIVES_FIELD_NUMBER = 1;
    public static final int CHANNEL_TAG_FIELD_NUMBER = 2;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 5;
    public static final int RESULT_END_TIME_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<SpeechRecognitionAlternative> alternatives_;
    private int channelTag_;
    private volatile Object languageCode_;
    private byte memoizedIsInitialized;
    private Duration resultEndTime_;
    private static final SpeechRecognitionResult DEFAULT_INSTANCE = new SpeechRecognitionResult();
    private static final e2<SpeechRecognitionResult> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeechRecognitionResult> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeechRecognitionResult m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeechRecognitionResult(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l {

        /* renamed from: e  reason: collision with root package name */
        private int f12205e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionAlternative> f12206f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, k> f12207g;

        /* renamed from: h  reason: collision with root package name */
        private int f12208h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f12209i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f12210j;

        /* renamed from: k  reason: collision with root package name */
        private Object f12211k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12205e & 1) == 0) {
                this.f12206f = new ArrayList(this.f12206f);
                this.f12205e |= 1;
            }
        }

        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, k> b0() {
            if (this.f12207g == null) {
                this.f12207g = new l2<>(this.f12206f, (this.f12205e & 1) != 0, H(), O());
                this.f12206f = null;
            }
            return this.f12207g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.F.d(SpeechRecognitionResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SpeechRecognitionResult build() {
            SpeechRecognitionResult I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SpeechRecognitionResult I() {
            SpeechRecognitionResult speechRecognitionResult = new SpeechRecognitionResult(this, (a) null);
            int i9 = this.f12205e;
            l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, k> l2Var = this.f12207g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f12206f = Collections.unmodifiableList(this.f12206f);
                    this.f12205e &= -2;
                }
                speechRecognitionResult.alternatives_ = this.f12206f;
            } else {
                speechRecognitionResult.alternatives_ = l2Var.e();
            }
            speechRecognitionResult.channelTag_ = this.f12208h;
            q2<Duration, Duration.b, v> q2Var = this.f12210j;
            if (q2Var == null) {
                speechRecognitionResult.resultEndTime_ = this.f12209i;
            } else {
                speechRecognitionResult.resultEndTime_ = q2Var.b();
            }
            speechRecognitionResult.languageCode_ = this.f12211k;
            Q();
            return speechRecognitionResult;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public SpeechRecognitionResult getDefaultInstanceForType() {
            return SpeechRecognitionResult.getDefaultInstance();
        }

        public b g0(SpeechRecognitionResult speechRecognitionResult) {
            if (speechRecognitionResult == SpeechRecognitionResult.getDefaultInstance()) {
                return this;
            }
            if (this.f12207g == null) {
                if (!speechRecognitionResult.alternatives_.isEmpty()) {
                    if (this.f12206f.isEmpty()) {
                        this.f12206f = speechRecognitionResult.alternatives_;
                        this.f12205e &= -2;
                    } else {
                        a0();
                        this.f12206f.addAll(speechRecognitionResult.alternatives_);
                    }
                    R();
                }
            } else if (!speechRecognitionResult.alternatives_.isEmpty()) {
                if (this.f12207g.k()) {
                    this.f12207g.f();
                    this.f12207g = null;
                    this.f12206f = speechRecognitionResult.alternatives_;
                    this.f12205e &= -2;
                    this.f12207g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f12207g.b(speechRecognitionResult.alternatives_);
                }
            }
            if (speechRecognitionResult.getChannelTag() != 0) {
                l0(speechRecognitionResult.getChannelTag());
            }
            if (speechRecognitionResult.hasResultEndTime()) {
                j0(speechRecognitionResult.getResultEndTime());
            }
            if (!speechRecognitionResult.getLanguageCode().isEmpty()) {
                this.f12211k = speechRecognitionResult.languageCode_;
                R();
            }
            z(((GeneratedMessageV3) speechRecognitionResult).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.E;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult r3 = (com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult r4 = (com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.SpeechRecognitionResult$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SpeechRecognitionResult) {
                return g0((SpeechRecognitionResult) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f12210j;
            if (q2Var == null) {
                Duration duration2 = this.f12209i;
                if (duration2 != null) {
                    this.f12209i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f12209i = duration;
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

        public b l0(int i9) {
            this.f12208h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12206f = Collections.emptyList();
            this.f12211k = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12206f = Collections.emptyList();
            this.f12211k = "";
            e0();
        }
    }

    /* synthetic */ SpeechRecognitionResult(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeechRecognitionResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.E;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SpeechRecognitionResult parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SpeechRecognitionResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SpeechRecognitionResult> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpeechRecognitionResult)) {
            return super.equals(obj);
        }
        SpeechRecognitionResult speechRecognitionResult = (SpeechRecognitionResult) obj;
        if (getAlternativesList().equals(speechRecognitionResult.getAlternativesList()) && getChannelTag() == speechRecognitionResult.getChannelTag() && hasResultEndTime() == speechRecognitionResult.hasResultEndTime()) {
            return (!hasResultEndTime() || getResultEndTime().equals(speechRecognitionResult.getResultEndTime())) && getLanguageCode().equals(speechRecognitionResult.getLanguageCode()) && this.unknownFields.equals(speechRecognitionResult.unknownFields);
        }
        return false;
    }

    public SpeechRecognitionAlternative getAlternatives(int i9) {
        return this.alternatives_.get(i9);
    }

    public int getAlternativesCount() {
        return this.alternatives_.size();
    }

    public List<SpeechRecognitionAlternative> getAlternativesList() {
        return this.alternatives_;
    }

    public k getAlternativesOrBuilder(int i9) {
        return this.alternatives_.get(i9);
    }

    public List<? extends k> getAlternativesOrBuilderList() {
        return this.alternatives_;
    }

    public int getChannelTag() {
        return this.channelTag_;
    }

    public String getLanguageCode() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.languageCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLanguageCodeBytes() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.languageCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeechRecognitionResult> getParserForType() {
        return PARSER;
    }

    public Duration getResultEndTime() {
        Duration duration = this.resultEndTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getResultEndTimeOrBuilder() {
        return getResultEndTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.alternatives_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.alternatives_.get(i11));
        }
        int i12 = this.channelTag_;
        if (i12 != 0) {
            i10 += CodedOutputStream.x(2, i12);
        }
        if (this.resultEndTime_ != null) {
            i10 += CodedOutputStream.G(4, getResultEndTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
            i10 += GeneratedMessageV3.computeStringSize(5, this.languageCode_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasResultEndTime() {
        return this.resultEndTime_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getAlternativesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAlternativesList().hashCode();
        }
        int channelTag = (((hashCode * 37) + 2) * 53) + getChannelTag();
        if (hasResultEndTime()) {
            channelTag = (((channelTag * 37) + 4) * 53) + getResultEndTime().hashCode();
        }
        int hashCode2 = (((((channelTag * 37) + 5) * 53) + getLanguageCode().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.F.d(SpeechRecognitionResult.class, b.class);
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
        return new SpeechRecognitionResult();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.alternatives_.size(); i9++) {
            codedOutputStream.L0(1, this.alternatives_.get(i9));
        }
        int i10 = this.channelTag_;
        if (i10 != 0) {
            codedOutputStream.H0(2, i10);
        }
        if (this.resultEndTime_ != null) {
            codedOutputStream.L0(4, getResultEndTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.languageCode_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SpeechRecognitionResult(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SpeechRecognitionResult speechRecognitionResult) {
        return DEFAULT_INSTANCE.toBuilder().g0(speechRecognitionResult);
    }

    public static SpeechRecognitionResult parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechRecognitionResult parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SpeechRecognitionResult(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeechRecognitionResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SpeechRecognitionResult getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SpeechRecognitionResult parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SpeechRecognitionResult() {
        this.memoizedIsInitialized = (byte) -1;
        this.alternatives_ = Collections.emptyList();
        this.languageCode_ = "";
    }

    public static SpeechRecognitionResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SpeechRecognitionResult parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SpeechRecognitionResult parseFrom(InputStream inputStream) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SpeechRecognitionResult parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SpeechRecognitionResult(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            if (!(z11 & true)) {
                                this.alternatives_ = new ArrayList();
                                z11 |= true;
                            }
                            this.alternatives_.add(pVar.B(SpeechRecognitionAlternative.parser(), f0Var));
                        } else if (L == 16) {
                            this.channelTag_ = pVar.z();
                        } else if (L == 34) {
                            Duration duration = this.resultEndTime_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.resultEndTime_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.resultEndTime_ = builder.I();
                            }
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.languageCode_ = pVar.K();
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
                    this.alternatives_ = Collections.unmodifiableList(this.alternatives_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SpeechRecognitionResult parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SpeechRecognitionResult parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
