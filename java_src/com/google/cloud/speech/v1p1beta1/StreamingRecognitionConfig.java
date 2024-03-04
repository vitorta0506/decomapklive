package com.google.cloud.speech.v1p1beta1;

import com.google.cloud.speech.v1p1beta1.RecognitionConfig;
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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class StreamingRecognitionConfig extends GeneratedMessageV3 implements n {
    public static final int CONFIG_FIELD_NUMBER = 1;
    public static final int INTERIM_RESULTS_FIELD_NUMBER = 3;
    public static final int SINGLE_UTTERANCE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private RecognitionConfig config_;
    private boolean interimResults_;
    private byte memoizedIsInitialized;
    private boolean singleUtterance_;
    private static final StreamingRecognitionConfig DEFAULT_INSTANCE = new StreamingRecognitionConfig();
    private static final e2<StreamingRecognitionConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<StreamingRecognitionConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StreamingRecognitionConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StreamingRecognitionConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n {

        /* renamed from: e  reason: collision with root package name */
        private RecognitionConfig f12212e;

        /* renamed from: f  reason: collision with root package name */
        private q2<RecognitionConfig, RecognitionConfig.b, d> f12213f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f12214g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f12215h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12295j.d(StreamingRecognitionConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StreamingRecognitionConfig build() {
            StreamingRecognitionConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StreamingRecognitionConfig I() {
            StreamingRecognitionConfig streamingRecognitionConfig = new StreamingRecognitionConfig(this, (a) null);
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12213f;
            if (q2Var == null) {
                streamingRecognitionConfig.config_ = this.f12212e;
            } else {
                streamingRecognitionConfig.config_ = q2Var.b();
            }
            streamingRecognitionConfig.singleUtterance_ = this.f12214g;
            streamingRecognitionConfig.interimResults_ = this.f12215h;
            Q();
            return streamingRecognitionConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StreamingRecognitionConfig getDefaultInstanceForType() {
            return StreamingRecognitionConfig.getDefaultInstance();
        }

        public b d0(RecognitionConfig recognitionConfig) {
            q2<RecognitionConfig, RecognitionConfig.b, d> q2Var = this.f12213f;
            if (q2Var == null) {
                RecognitionConfig recognitionConfig2 = this.f12212e;
                if (recognitionConfig2 != null) {
                    this.f12212e = RecognitionConfig.newBuilder(recognitionConfig2).l0(recognitionConfig).I();
                } else {
                    this.f12212e = recognitionConfig;
                }
                R();
            } else {
                q2Var.e(recognitionConfig);
            }
            return this;
        }

        public b e0(StreamingRecognitionConfig streamingRecognitionConfig) {
            if (streamingRecognitionConfig == StreamingRecognitionConfig.getDefaultInstance()) {
                return this;
            }
            if (streamingRecognitionConfig.hasConfig()) {
                d0(streamingRecognitionConfig.getConfig());
            }
            if (streamingRecognitionConfig.getSingleUtterance()) {
                l0(streamingRecognitionConfig.getSingleUtterance());
            }
            if (streamingRecognitionConfig.getInterimResults()) {
                k0(streamingRecognitionConfig.getInterimResults());
            }
            z(((GeneratedMessageV3) streamingRecognitionConfig).unknownFields);
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
        public com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig r3 = (com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig r4 = (com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.StreamingRecognitionConfig$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12294i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StreamingRecognitionConfig) {
                return e0((StreamingRecognitionConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b k0(boolean z10) {
            this.f12215h = z10;
            R();
            return this;
        }

        public b l0(boolean z10) {
            this.f12214g = z10;
            R();
            return this;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ StreamingRecognitionConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StreamingRecognitionConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12294i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StreamingRecognitionConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognitionConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StreamingRecognitionConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamingRecognitionConfig)) {
            return super.equals(obj);
        }
        StreamingRecognitionConfig streamingRecognitionConfig = (StreamingRecognitionConfig) obj;
        if (hasConfig() != streamingRecognitionConfig.hasConfig()) {
            return false;
        }
        return (!hasConfig() || getConfig().equals(streamingRecognitionConfig.getConfig())) && getSingleUtterance() == streamingRecognitionConfig.getSingleUtterance() && getInterimResults() == streamingRecognitionConfig.getInterimResults() && this.unknownFields.equals(streamingRecognitionConfig.unknownFields);
    }

    public RecognitionConfig getConfig() {
        RecognitionConfig recognitionConfig = this.config_;
        return recognitionConfig == null ? RecognitionConfig.getDefaultInstance() : recognitionConfig;
    }

    public d getConfigOrBuilder() {
        return getConfig();
    }

    public boolean getInterimResults() {
        return this.interimResults_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StreamingRecognitionConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.config_ != null ? 0 + CodedOutputStream.G(1, getConfig()) : 0;
        boolean z10 = this.singleUtterance_;
        if (z10) {
            G += CodedOutputStream.e(2, z10);
        }
        boolean z11 = this.interimResults_;
        if (z11) {
            G += CodedOutputStream.e(3, z11);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getSingleUtterance() {
        return this.singleUtterance_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfig() {
        return this.config_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConfig().hashCode();
        }
        int d10 = (((((((((hashCode * 37) + 2) * 53) + u0.d(getSingleUtterance())) * 37) + 3) * 53) + u0.d(getInterimResults())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12295j.d(StreamingRecognitionConfig.class, b.class);
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
        return new StreamingRecognitionConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.config_ != null) {
            codedOutputStream.L0(1, getConfig());
        }
        boolean z10 = this.singleUtterance_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        boolean z11 = this.interimResults_;
        if (z11) {
            codedOutputStream.n0(3, z11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StreamingRecognitionConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StreamingRecognitionConfig streamingRecognitionConfig) {
        return DEFAULT_INSTANCE.toBuilder().e0(streamingRecognitionConfig);
    }

    public static StreamingRecognitionConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognitionConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StreamingRecognitionConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognitionConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StreamingRecognitionConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static StreamingRecognitionConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StreamingRecognitionConfig() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognitionConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StreamingRecognitionConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private StreamingRecognitionConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            RecognitionConfig recognitionConfig = this.config_;
                            RecognitionConfig.b builder = recognitionConfig != null ? recognitionConfig.toBuilder() : null;
                            RecognitionConfig recognitionConfig2 = (RecognitionConfig) pVar.B(RecognitionConfig.parser(), f0Var);
                            this.config_ = recognitionConfig2;
                            if (builder != null) {
                                builder.l0(recognitionConfig2);
                                this.config_ = builder.I();
                            }
                        } else if (L == 16) {
                            this.singleUtterance_ = pVar.r();
                        } else if (L != 24) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.interimResults_ = pVar.r();
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

    public static StreamingRecognitionConfig parseFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognitionConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognitionConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StreamingRecognitionConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (StreamingRecognitionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
