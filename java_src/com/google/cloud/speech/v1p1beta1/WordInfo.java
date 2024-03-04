package com.google.cloud.speech.v1p1beta1;

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
import com.google.protobuf.q2;
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class WordInfo extends GeneratedMessageV3 implements r {
    public static final int CONFIDENCE_FIELD_NUMBER = 4;
    public static final int END_TIME_FIELD_NUMBER = 2;
    public static final int SPEAKER_TAG_FIELD_NUMBER = 5;
    public static final int START_TIME_FIELD_NUMBER = 1;
    public static final int WORD_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private float confidence_;
    private Duration endTime_;
    private byte memoizedIsInitialized;
    private int speakerTag_;
    private Duration startTime_;
    private volatile Object word_;
    private static final WordInfo DEFAULT_INSTANCE = new WordInfo();
    private static final e2<WordInfo> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<WordInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public WordInfo m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new WordInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r {

        /* renamed from: e  reason: collision with root package name */
        private Duration f12254e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f12255f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f12256g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f12257h;

        /* renamed from: i  reason: collision with root package name */
        private Object f12258i;

        /* renamed from: j  reason: collision with root package name */
        private float f12259j;

        /* renamed from: k  reason: collision with root package name */
        private int f12260k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.J.d(WordInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public WordInfo build() {
            WordInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public WordInfo I() {
            WordInfo wordInfo = new WordInfo(this, (a) null);
            q2<Duration, Duration.b, v> q2Var = this.f12255f;
            if (q2Var == null) {
                wordInfo.startTime_ = this.f12254e;
            } else {
                wordInfo.startTime_ = q2Var.b();
            }
            q2<Duration, Duration.b, v> q2Var2 = this.f12257h;
            if (q2Var2 == null) {
                wordInfo.endTime_ = this.f12256g;
            } else {
                wordInfo.endTime_ = q2Var2.b();
            }
            wordInfo.word_ = this.f12258i;
            wordInfo.confidence_ = this.f12259j;
            wordInfo.speakerTag_ = this.f12260k;
            Q();
            return wordInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public WordInfo getDefaultInstanceForType() {
            return WordInfo.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f12257h;
            if (q2Var == null) {
                Duration duration2 = this.f12256g;
                if (duration2 != null) {
                    this.f12256g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f12256g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b e0(WordInfo wordInfo) {
            if (wordInfo == WordInfo.getDefaultInstance()) {
                return this;
            }
            if (wordInfo.hasStartTime()) {
                i0(wordInfo.getStartTime());
            }
            if (wordInfo.hasEndTime()) {
                d0(wordInfo.getEndTime());
            }
            if (!wordInfo.getWord().isEmpty()) {
                this.f12258i = wordInfo.word_;
                R();
            }
            if (wordInfo.getConfidence() != 0.0f) {
                k0(wordInfo.getConfidence());
            }
            if (wordInfo.getSpeakerTag() != 0) {
                m0(wordInfo.getSpeakerTag());
            }
            z(((GeneratedMessageV3) wordInfo).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.WordInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.WordInfo.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.WordInfo r3 = (com.google.cloud.speech.v1p1beta1.WordInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.e0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1p1beta1.WordInfo r4 = (com.google.cloud.speech.v1p1beta1.WordInfo) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.e0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.WordInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.WordInfo$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.I;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof WordInfo) {
                return e0((WordInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f12255f;
            if (q2Var == null) {
                Duration duration2 = this.f12254e;
                if (duration2 != null) {
                    this.f12254e = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f12254e = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(float f10) {
            this.f12259j = f10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(int i9) {
            this.f12260k = i9;
            R();
            return this;
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
            this.f12258i = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12258i = "";
            b0();
        }
    }

    /* synthetic */ WordInfo(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static WordInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.I;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static WordInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static WordInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<WordInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WordInfo)) {
            return super.equals(obj);
        }
        WordInfo wordInfo = (WordInfo) obj;
        if (hasStartTime() != wordInfo.hasStartTime()) {
            return false;
        }
        if ((!hasStartTime() || getStartTime().equals(wordInfo.getStartTime())) && hasEndTime() == wordInfo.hasEndTime()) {
            return (!hasEndTime() || getEndTime().equals(wordInfo.getEndTime())) && getWord().equals(wordInfo.getWord()) && Float.floatToIntBits(getConfidence()) == Float.floatToIntBits(wordInfo.getConfidence()) && getSpeakerTag() == wordInfo.getSpeakerTag() && this.unknownFields.equals(wordInfo.unknownFields);
        }
        return false;
    }

    public float getConfidence() {
        return this.confidence_;
    }

    public Duration getEndTime() {
        Duration duration = this.endTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getEndTimeOrBuilder() {
        return getEndTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<WordInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.startTime_ != null ? 0 + CodedOutputStream.G(1, getStartTime()) : 0;
        if (this.endTime_ != null) {
            G += CodedOutputStream.G(2, getEndTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.word_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.word_);
        }
        float f10 = this.confidence_;
        if (f10 != 0.0f) {
            G += CodedOutputStream.r(4, f10);
        }
        int i10 = this.speakerTag_;
        if (i10 != 0) {
            G += CodedOutputStream.x(5, i10);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public int getSpeakerTag() {
        return this.speakerTag_;
    }

    public Duration getStartTime() {
        Duration duration = this.startTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getStartTimeOrBuilder() {
        return getStartTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getWord() {
        Object obj = this.word_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.word_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getWordBytes() {
        Object obj = this.word_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.word_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasEndTime() {
        return this.endTime_ != null;
    }

    public boolean hasStartTime() {
        return this.startTime_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasStartTime()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStartTime().hashCode();
        }
        if (hasEndTime()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getEndTime().hashCode();
        }
        int hashCode2 = (((((((((((((hashCode * 37) + 3) * 53) + getWord().hashCode()) * 37) + 4) * 53) + Float.floatToIntBits(getConfidence())) * 37) + 5) * 53) + getSpeakerTag()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.J.d(WordInfo.class, b.class);
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
        return new WordInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.startTime_ != null) {
            codedOutputStream.L0(1, getStartTime());
        }
        if (this.endTime_ != null) {
            codedOutputStream.L0(2, getEndTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.word_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.word_);
        }
        float f10 = this.confidence_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(4, f10);
        }
        int i9 = this.speakerTag_;
        if (i9 != 0) {
            codedOutputStream.H0(5, i9);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ WordInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(WordInfo wordInfo) {
        return DEFAULT_INSTANCE.toBuilder().e0(wordInfo);
    }

    public static WordInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static WordInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private WordInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static WordInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public WordInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static WordInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private WordInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.word_ = "";
    }

    public static WordInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static WordInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static WordInfo parseFrom(InputStream inputStream) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private WordInfo(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Duration.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Duration duration = this.startTime_;
                            builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.startTime_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.startTime_ = builder.I();
                            }
                        } else if (L == 18) {
                            Duration duration3 = this.endTime_;
                            builder = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.endTime_ = duration4;
                            if (builder != null) {
                                builder.e0(duration4);
                                this.endTime_ = builder.I();
                            }
                        } else if (L == 26) {
                            this.word_ = pVar.K();
                        } else if (L == 37) {
                            this.confidence_ = pVar.x();
                        } else if (L != 40) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.speakerTag_ = pVar.z();
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

    public static WordInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static WordInfo parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static WordInfo parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (WordInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
