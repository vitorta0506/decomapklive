package com.google.cloud.speech.v1beta1;

import com.google.cloud.speech.v1beta1.SpeechRecognitionAlternative;
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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class StreamingRecognitionResult extends GeneratedMessageV3 implements h {
    public static final int ALTERNATIVES_FIELD_NUMBER = 1;
    public static final int IS_FINAL_FIELD_NUMBER = 2;
    public static final int STABILITY_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private List<SpeechRecognitionAlternative> alternatives_;
    private int bitField0_;
    private boolean isFinal_;
    private byte memoizedIsInitialized;
    private float stability_;
    private static final StreamingRecognitionResult DEFAULT_INSTANCE = new StreamingRecognitionResult();
    private static final e2<StreamingRecognitionResult> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<StreamingRecognitionResult> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StreamingRecognitionResult m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StreamingRecognitionResult(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f12033e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionAlternative> f12034f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> f12035g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f12036h;

        /* renamed from: i  reason: collision with root package name */
        private float f12037i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12033e & 1) != 1) {
                this.f12034f = new ArrayList(this.f12034f);
                this.f12033e |= 1;
            }
        }

        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> b0() {
            if (this.f12035g == null) {
                this.f12035g = new l2<>(this.f12034f, (this.f12033e & 1) == 1, H(), O());
                this.f12034f = null;
            }
            return this.f12035g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12079x.d(StreamingRecognitionResult.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StreamingRecognitionResult build() {
            StreamingRecognitionResult I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StreamingRecognitionResult I() {
            StreamingRecognitionResult streamingRecognitionResult = new StreamingRecognitionResult(this, (a) null);
            int i9 = this.f12033e;
            l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> l2Var = this.f12035g;
            if (l2Var == null) {
                if ((i9 & 1) == 1) {
                    this.f12034f = Collections.unmodifiableList(this.f12034f);
                    this.f12033e &= -2;
                }
                streamingRecognitionResult.alternatives_ = this.f12034f;
            } else {
                streamingRecognitionResult.alternatives_ = l2Var.e();
            }
            streamingRecognitionResult.isFinal_ = this.f12036h;
            streamingRecognitionResult.stability_ = this.f12037i;
            streamingRecognitionResult.bitField0_ = 0;
            Q();
            return streamingRecognitionResult;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public StreamingRecognitionResult getDefaultInstanceForType() {
            return StreamingRecognitionResult.getDefaultInstance();
        }

        public b g0(StreamingRecognitionResult streamingRecognitionResult) {
            if (streamingRecognitionResult == StreamingRecognitionResult.getDefaultInstance()) {
                return this;
            }
            if (this.f12035g == null) {
                if (!streamingRecognitionResult.alternatives_.isEmpty()) {
                    if (this.f12034f.isEmpty()) {
                        this.f12034f = streamingRecognitionResult.alternatives_;
                        this.f12033e &= -2;
                    } else {
                        a0();
                        this.f12034f.addAll(streamingRecognitionResult.alternatives_);
                    }
                    R();
                }
            } else if (!streamingRecognitionResult.alternatives_.isEmpty()) {
                if (this.f12035g.k()) {
                    this.f12035g.f();
                    this.f12035g = null;
                    this.f12034f = streamingRecognitionResult.alternatives_;
                    this.f12033e &= -2;
                    this.f12035g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f12035g.b(streamingRecognitionResult.alternatives_);
                }
            }
            if (streamingRecognitionResult.getIsFinal()) {
                l0(streamingRecognitionResult.getIsFinal());
            }
            if (streamingRecognitionResult.getStability() != 0.0f) {
                m0(streamingRecognitionResult.getStability());
            }
            z(((GeneratedMessageV3) streamingRecognitionResult).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12078w;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1beta1.StreamingRecognitionResult.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.StreamingRecognitionResult.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.StreamingRecognitionResult r3 = (com.google.cloud.speech.v1beta1.StreamingRecognitionResult) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.StreamingRecognitionResult r4 = (com.google.cloud.speech.v1beta1.StreamingRecognitionResult) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.StreamingRecognitionResult.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.StreamingRecognitionResult$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StreamingRecognitionResult) {
                return g0((StreamingRecognitionResult) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b l0(boolean z10) {
            this.f12036h = z10;
            R();
            return this;
        }

        public b m0(float f10) {
            this.f12037i = f10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12034f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12034f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ StreamingRecognitionResult(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StreamingRecognitionResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12078w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StreamingRecognitionResult parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognitionResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StreamingRecognitionResult> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamingRecognitionResult)) {
            return super.equals(obj);
        }
        StreamingRecognitionResult streamingRecognitionResult = (StreamingRecognitionResult) obj;
        return (((getAlternativesList().equals(streamingRecognitionResult.getAlternativesList())) && getIsFinal() == streamingRecognitionResult.getIsFinal()) && Float.floatToIntBits(getStability()) == Float.floatToIntBits(streamingRecognitionResult.getStability())) && this.unknownFields.equals(streamingRecognitionResult.unknownFields);
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

    public e getAlternativesOrBuilder(int i9) {
        return this.alternatives_.get(i9);
    }

    public List<? extends e> getAlternativesOrBuilderList() {
        return this.alternatives_;
    }

    public boolean getIsFinal() {
        return this.isFinal_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StreamingRecognitionResult> getParserForType() {
        return PARSER;
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
        boolean z10 = this.isFinal_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
        }
        float f10 = this.stability_;
        if (f10 != 0.0f) {
            i10 += CodedOutputStream.r(3, f10);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public float getStability() {
        return this.stability_;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getAlternativesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAlternativesList().hashCode();
        }
        int d10 = (((((((((hashCode * 37) + 2) * 53) + u0.d(getIsFinal())) * 37) + 3) * 53) + Float.floatToIntBits(getStability())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12079x.d(StreamingRecognitionResult.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.alternatives_.size(); i9++) {
            codedOutputStream.L0(1, this.alternatives_.get(i9));
        }
        boolean z10 = this.isFinal_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        float f10 = this.stability_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(3, f10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StreamingRecognitionResult(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StreamingRecognitionResult streamingRecognitionResult) {
        return DEFAULT_INSTANCE.toBuilder().g0(streamingRecognitionResult);
    }

    public static StreamingRecognitionResult parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognitionResult parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StreamingRecognitionResult(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognitionResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StreamingRecognitionResult getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static StreamingRecognitionResult parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StreamingRecognitionResult() {
        this.memoizedIsInitialized = (byte) -1;
        this.alternatives_ = Collections.emptyList();
        this.isFinal_ = false;
        this.stability_ = 0.0f;
    }

    public static StreamingRecognitionResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StreamingRecognitionResult parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StreamingRecognitionResult parseFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognitionResult parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognitionResult parseFrom(p pVar) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private StreamingRecognitionResult(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            if (z10) {
                break;
            }
            try {
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
                                this.isFinal_ = pVar.r();
                            } else if (L != 29) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.stability_ = pVar.x();
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
                    this.alternatives_ = Collections.unmodifiableList(this.alternatives_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static StreamingRecognitionResult parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StreamingRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
