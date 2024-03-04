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
public final class TranscriptOutputConfig extends GeneratedMessageV3 implements q {
    public static final int GCS_URI_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int outputTypeCase_;
    private Object outputType_;
    private static final TranscriptOutputConfig DEFAULT_INSTANCE = new TranscriptOutputConfig();
    private static final e2<TranscriptOutputConfig> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum OutputTypeCase implements u0.c {
        GCS_URI(1),
        OUTPUTTYPE_NOT_SET(0);
        
        private final int value;

        OutputTypeCase(int i9) {
            this.value = i9;
        }

        public static OutputTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return GCS_URI;
            }
            return OUTPUTTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static OutputTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<TranscriptOutputConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TranscriptOutputConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TranscriptOutputConfig(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12243a;

        static {
            int[] iArr = new int[OutputTypeCase.values().length];
            f12243a = iArr;
            try {
                iArr[OutputTypeCase.GCS_URI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12243a[OutputTypeCase.OUTPUTTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements q {

        /* renamed from: e  reason: collision with root package name */
        private int f12244e;

        /* renamed from: f  reason: collision with root package name */
        private Object f12245f;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f12291f.d(TranscriptOutputConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TranscriptOutputConfig build() {
            TranscriptOutputConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TranscriptOutputConfig I() {
            TranscriptOutputConfig transcriptOutputConfig = new TranscriptOutputConfig(this, (a) null);
            if (this.f12244e == 1) {
                transcriptOutputConfig.outputType_ = this.f12245f;
            }
            transcriptOutputConfig.outputTypeCase_ = this.f12244e;
            Q();
            return transcriptOutputConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TranscriptOutputConfig getDefaultInstanceForType() {
            return TranscriptOutputConfig.getDefaultInstance();
        }

        public c d0(TranscriptOutputConfig transcriptOutputConfig) {
            if (transcriptOutputConfig == TranscriptOutputConfig.getDefaultInstance()) {
                return this;
            }
            if (b.f12243a[transcriptOutputConfig.getOutputTypeCase().ordinal()] == 1) {
                this.f12244e = 1;
                this.f12245f = transcriptOutputConfig.outputType_;
                R();
            }
            z(((GeneratedMessageV3) transcriptOutputConfig).unknownFields);
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
        public com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig r3 = (com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig r4 = (com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.TranscriptOutputConfig$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof TranscriptOutputConfig) {
                return d0((TranscriptOutputConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f12290e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f12244e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12244e = 0;
            b0();
        }
    }

    /* synthetic */ TranscriptOutputConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TranscriptOutputConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f12290e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TranscriptOutputConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TranscriptOutputConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TranscriptOutputConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TranscriptOutputConfig)) {
            return super.equals(obj);
        }
        TranscriptOutputConfig transcriptOutputConfig = (TranscriptOutputConfig) obj;
        if (getOutputTypeCase().equals(transcriptOutputConfig.getOutputTypeCase())) {
            return (this.outputTypeCase_ != 1 || getGcsUri().equals(transcriptOutputConfig.getGcsUri())) && this.unknownFields.equals(transcriptOutputConfig.unknownFields);
        }
        return false;
    }

    public String getGcsUri() {
        String str = this.outputTypeCase_ == 1 ? this.outputType_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.outputTypeCase_ == 1) {
            this.outputType_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getGcsUriBytes() {
        String str = this.outputTypeCase_ == 1 ? this.outputType_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.outputTypeCase_ == 1) {
                this.outputType_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public OutputTypeCase getOutputTypeCase() {
        return OutputTypeCase.forNumber(this.outputTypeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TranscriptOutputConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = (this.outputTypeCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.outputType_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = computeStringSize;
        return computeStringSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasGcsUri() {
        return this.outputTypeCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.outputTypeCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getGcsUri().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f12291f.d(TranscriptOutputConfig.class, c.class);
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
        return new TranscriptOutputConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.outputTypeCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.outputType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TranscriptOutputConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(TranscriptOutputConfig transcriptOutputConfig) {
        return DEFAULT_INSTANCE.toBuilder().d0(transcriptOutputConfig);
    }

    public static TranscriptOutputConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TranscriptOutputConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TranscriptOutputConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.outputTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TranscriptOutputConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TranscriptOutputConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).d0(this);
    }

    public static TranscriptOutputConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static TranscriptOutputConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private TranscriptOutputConfig() {
        this.outputTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TranscriptOutputConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TranscriptOutputConfig parseFrom(InputStream inputStream) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TranscriptOutputConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private TranscriptOutputConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            this.outputTypeCase_ = 1;
                            this.outputType_ = K;
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

    public static TranscriptOutputConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TranscriptOutputConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (TranscriptOutputConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
