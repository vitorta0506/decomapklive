package com.google.cloud.speech.v1p1beta1;

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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeakerDiarizationConfig extends GeneratedMessageV3 implements f {
    public static final int ENABLE_SPEAKER_DIARIZATION_FIELD_NUMBER = 1;
    public static final int MAX_SPEAKER_COUNT_FIELD_NUMBER = 3;
    public static final int MIN_SPEAKER_COUNT_FIELD_NUMBER = 2;
    public static final int SPEAKER_TAG_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private boolean enableSpeakerDiarization_;
    private int maxSpeakerCount_;
    private byte memoizedIsInitialized;
    private int minSpeakerCount_;
    private int speakerTag_;
    private static final SpeakerDiarizationConfig DEFAULT_INSTANCE = new SpeakerDiarizationConfig();
    private static final e2<SpeakerDiarizationConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeakerDiarizationConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeakerDiarizationConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeakerDiarizationConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private boolean f12187e;

        /* renamed from: f  reason: collision with root package name */
        private int f12188f;

        /* renamed from: g  reason: collision with root package name */
        private int f12189g;

        /* renamed from: h  reason: collision with root package name */
        private int f12190h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12299n.d(SpeakerDiarizationConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SpeakerDiarizationConfig build() {
            SpeakerDiarizationConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SpeakerDiarizationConfig I() {
            SpeakerDiarizationConfig speakerDiarizationConfig = new SpeakerDiarizationConfig(this, (a) null);
            speakerDiarizationConfig.enableSpeakerDiarization_ = this.f12187e;
            speakerDiarizationConfig.minSpeakerCount_ = this.f12188f;
            speakerDiarizationConfig.maxSpeakerCount_ = this.f12189g;
            speakerDiarizationConfig.speakerTag_ = this.f12190h;
            Q();
            return speakerDiarizationConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SpeakerDiarizationConfig getDefaultInstanceForType() {
            return SpeakerDiarizationConfig.getDefaultInstance();
        }

        public b d0(SpeakerDiarizationConfig speakerDiarizationConfig) {
            if (speakerDiarizationConfig == SpeakerDiarizationConfig.getDefaultInstance()) {
                return this;
            }
            if (speakerDiarizationConfig.getEnableSpeakerDiarization()) {
                i0(speakerDiarizationConfig.getEnableSpeakerDiarization());
            }
            if (speakerDiarizationConfig.getMinSpeakerCount() != 0) {
                l0(speakerDiarizationConfig.getMinSpeakerCount());
            }
            if (speakerDiarizationConfig.getMaxSpeakerCount() != 0) {
                k0(speakerDiarizationConfig.getMaxSpeakerCount());
            }
            if (speakerDiarizationConfig.getSpeakerTag() != 0) {
                m0(speakerDiarizationConfig.getSpeakerTag());
            }
            z(((GeneratedMessageV3) speakerDiarizationConfig).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig r3 = (com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig r4 = (com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.SpeakerDiarizationConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SpeakerDiarizationConfig) {
                return d0((SpeakerDiarizationConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12298m;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(boolean z10) {
            this.f12187e = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(int i9) {
            this.f12189g = i9;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f12188f = i9;
            R();
            return this;
        }

        @Deprecated
        public b m0(int i9) {
            this.f12190h = i9;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ SpeakerDiarizationConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeakerDiarizationConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12298m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SpeakerDiarizationConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SpeakerDiarizationConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SpeakerDiarizationConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpeakerDiarizationConfig)) {
            return super.equals(obj);
        }
        SpeakerDiarizationConfig speakerDiarizationConfig = (SpeakerDiarizationConfig) obj;
        return getEnableSpeakerDiarization() == speakerDiarizationConfig.getEnableSpeakerDiarization() && getMinSpeakerCount() == speakerDiarizationConfig.getMinSpeakerCount() && getMaxSpeakerCount() == speakerDiarizationConfig.getMaxSpeakerCount() && getSpeakerTag() == speakerDiarizationConfig.getSpeakerTag() && this.unknownFields.equals(speakerDiarizationConfig.unknownFields);
    }

    public boolean getEnableSpeakerDiarization() {
        return this.enableSpeakerDiarization_;
    }

    public int getMaxSpeakerCount() {
        return this.maxSpeakerCount_;
    }

    public int getMinSpeakerCount() {
        return this.minSpeakerCount_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeakerDiarizationConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        boolean z10 = this.enableSpeakerDiarization_;
        int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
        int i10 = this.minSpeakerCount_;
        if (i10 != 0) {
            e10 += CodedOutputStream.x(2, i10);
        }
        int i11 = this.maxSpeakerCount_;
        if (i11 != 0) {
            e10 += CodedOutputStream.x(3, i11);
        }
        int i12 = this.speakerTag_;
        if (i12 != 0) {
            e10 += CodedOutputStream.x(5, i12);
        }
        int serializedSize = e10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public int getSpeakerTag() {
        return this.speakerTag_;
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
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getEnableSpeakerDiarization())) * 37) + 2) * 53) + getMinSpeakerCount()) * 37) + 3) * 53) + getMaxSpeakerCount()) * 37) + 5) * 53) + getSpeakerTag()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12299n.d(SpeakerDiarizationConfig.class, b.class);
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
        return new SpeakerDiarizationConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z10 = this.enableSpeakerDiarization_;
        if (z10) {
            codedOutputStream.n0(1, z10);
        }
        int i9 = this.minSpeakerCount_;
        if (i9 != 0) {
            codedOutputStream.H0(2, i9);
        }
        int i10 = this.maxSpeakerCount_;
        if (i10 != 0) {
            codedOutputStream.H0(3, i10);
        }
        int i11 = this.speakerTag_;
        if (i11 != 0) {
            codedOutputStream.H0(5, i11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SpeakerDiarizationConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SpeakerDiarizationConfig speakerDiarizationConfig) {
        return DEFAULT_INSTANCE.toBuilder().d0(speakerDiarizationConfig);
    }

    public static SpeakerDiarizationConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeakerDiarizationConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SpeakerDiarizationConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeakerDiarizationConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SpeakerDiarizationConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static SpeakerDiarizationConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SpeakerDiarizationConfig() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeakerDiarizationConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SpeakerDiarizationConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private SpeakerDiarizationConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.enableSpeakerDiarization_ = pVar.r();
                        } else if (L == 16) {
                            this.minSpeakerCount_ = pVar.z();
                        } else if (L == 24) {
                            this.maxSpeakerCount_ = pVar.z();
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

    public static SpeakerDiarizationConfig parseFrom(InputStream inputStream) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SpeakerDiarizationConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeakerDiarizationConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SpeakerDiarizationConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SpeakerDiarizationConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
