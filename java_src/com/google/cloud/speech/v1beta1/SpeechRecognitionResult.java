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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeechRecognitionResult extends GeneratedMessageV3 implements f {
    public static final int ALTERNATIVES_FIELD_NUMBER = 1;
    private static final SpeechRecognitionResult DEFAULT_INSTANCE = new SpeechRecognitionResult();
    private static final e2<SpeechRecognitionResult> PARSER = new a();
    private static final long serialVersionUID = 0;
    private List<SpeechRecognitionAlternative> alternatives_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeechRecognitionResult> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeechRecognitionResult m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeechRecognitionResult(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f12026e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionAlternative> f12027f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> f12028g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12026e & 1) != 1) {
                this.f12027f = new ArrayList(this.f12027f);
                this.f12026e |= 1;
            }
        }

        private l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> b0() {
            if (this.f12028g == null) {
                this.f12028g = new l2<>(this.f12027f, (this.f12026e & 1) == 1, H(), O());
                this.f12027f = null;
            }
            return this.f12028g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12081z.d(SpeechRecognitionResult.class, b.class);
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
            int i9 = this.f12026e;
            l2<SpeechRecognitionAlternative, SpeechRecognitionAlternative.b, e> l2Var = this.f12028g;
            if (l2Var == null) {
                if ((i9 & 1) == 1) {
                    this.f12027f = Collections.unmodifiableList(this.f12027f);
                    this.f12026e &= -2;
                }
                speechRecognitionResult.alternatives_ = this.f12027f;
            } else {
                speechRecognitionResult.alternatives_ = l2Var.e();
            }
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
            if (this.f12028g == null) {
                if (!speechRecognitionResult.alternatives_.isEmpty()) {
                    if (this.f12027f.isEmpty()) {
                        this.f12027f = speechRecognitionResult.alternatives_;
                        this.f12026e &= -2;
                    } else {
                        a0();
                        this.f12027f.addAll(speechRecognitionResult.alternatives_);
                    }
                    R();
                }
            } else if (!speechRecognitionResult.alternatives_.isEmpty()) {
                if (this.f12028g.k()) {
                    this.f12028g.f();
                    this.f12028g = null;
                    this.f12027f = speechRecognitionResult.alternatives_;
                    this.f12026e &= -2;
                    this.f12028g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f12028g.b(speechRecognitionResult.alternatives_);
                }
            }
            z(((GeneratedMessageV3) speechRecognitionResult).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12080y;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1beta1.SpeechRecognitionResult.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.SpeechRecognitionResult.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.SpeechRecognitionResult r3 = (com.google.cloud.speech.v1beta1.SpeechRecognitionResult) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.SpeechRecognitionResult r4 = (com.google.cloud.speech.v1beta1.SpeechRecognitionResult) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.SpeechRecognitionResult.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.SpeechRecognitionResult$b");
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12027f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12027f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SpeechRecognitionResult(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeechRecognitionResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12080y;
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
        return (getAlternativesList().equals(speechRecognitionResult.getAlternativesList())) && this.unknownFields.equals(speechRecognitionResult.unknownFields);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeechRecognitionResult> getParserForType() {
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
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12081z.d(SpeechRecognitionResult.class, b.class);
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

    /* JADX WARN: Multi-variable type inference failed */
    private SpeechRecognitionResult(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.alternatives_ = new ArrayList();
                                z11 |= true;
                            }
                            this.alternatives_.add(pVar.B(SpeechRecognitionAlternative.parser(), f0Var));
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

    public static SpeechRecognitionResult parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechRecognitionResult parseFrom(p pVar) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SpeechRecognitionResult parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SpeechRecognitionResult) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
