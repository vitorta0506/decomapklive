package com.google.cloud.speech.v1beta1;

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
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RecognitionAudio extends GeneratedMessageV3 implements com.google.cloud.speech.v1beta1.a {
    public static final int CONTENT_FIELD_NUMBER = 1;
    private static final RecognitionAudio DEFAULT_INSTANCE = new RecognitionAudio();
    private static final e2<RecognitionAudio> PARSER = new a();
    public static final int URI_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int audioSourceCase_;
    private Object audioSource_;
    private byte memoizedIsInitialized;

    /* loaded from: classes2.dex */
    public enum AudioSourceCase implements u0.c {
        CONTENT(1),
        URI(2),
        AUDIOSOURCE_NOT_SET(0);
        
        private final int value;

        AudioSourceCase(int i9) {
            this.value = i9;
        }

        public static AudioSourceCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return URI;
                }
                return CONTENT;
            }
            return AUDIOSOURCE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AudioSourceCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RecognitionAudio> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RecognitionAudio m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RecognitionAudio(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12012a;

        static {
            int[] iArr = new int[AudioSourceCase.values().length];
            f12012a = iArr;
            try {
                iArr[AudioSourceCase.CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12012a[AudioSourceCase.URI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12012a[AudioSourceCase.AUDIOSOURCE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements com.google.cloud.speech.v1beta1.a {

        /* renamed from: e  reason: collision with root package name */
        private int f12013e;

        /* renamed from: f  reason: collision with root package name */
        private Object f12014f;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12069n.d(RecognitionAudio.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RecognitionAudio build() {
            RecognitionAudio I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RecognitionAudio I() {
            RecognitionAudio recognitionAudio = new RecognitionAudio(this, (a) null);
            if (this.f12013e == 1) {
                recognitionAudio.audioSource_ = this.f12014f;
            }
            if (this.f12013e == 2) {
                recognitionAudio.audioSource_ = this.f12014f;
            }
            recognitionAudio.audioSourceCase_ = this.f12013e;
            Q();
            return recognitionAudio;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RecognitionAudio getDefaultInstanceForType() {
            return RecognitionAudio.getDefaultInstance();
        }

        public c d0(RecognitionAudio recognitionAudio) {
            if (recognitionAudio == RecognitionAudio.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f12012a[recognitionAudio.getAudioSourceCase().ordinal()];
            if (i9 == 1) {
                i0(recognitionAudio.getContent());
            } else if (i9 == 2) {
                this.f12013e = 2;
                this.f12014f = recognitionAudio.audioSource_;
                R();
            }
            z(((GeneratedMessageV3) recognitionAudio).unknownFields);
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
        public com.google.cloud.speech.v1beta1.RecognitionAudio.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.RecognitionAudio.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.RecognitionAudio r3 = (com.google.cloud.speech.v1beta1.RecognitionAudio) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.RecognitionAudio r4 = (com.google.cloud.speech.v1beta1.RecognitionAudio) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.RecognitionAudio.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.RecognitionAudio$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RecognitionAudio) {
                return d0((RecognitionAudio) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12068m;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c i0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f12013e = 1;
            this.f12014f = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f12013e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12013e = 0;
            b0();
        }
    }

    /* synthetic */ RecognitionAudio(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RecognitionAudio getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12068m;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RecognitionAudio parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RecognitionAudio parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RecognitionAudio> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
        if (getUri().equals(r6.getUri()) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004e, code lost:
        if (getContent().equals(r6.getContent()) != false) goto L21;
     */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof com.google.cloud.speech.v1beta1.RecognitionAudio
            if (r1 != 0) goto Ld
            boolean r6 = super.equals(r6)
            return r6
        Ld:
            com.google.cloud.speech.v1beta1.RecognitionAudio r6 = (com.google.cloud.speech.v1beta1.RecognitionAudio) r6
            com.google.cloud.speech.v1beta1.RecognitionAudio$AudioSourceCase r1 = r5.getAudioSourceCase()
            com.google.cloud.speech.v1beta1.RecognitionAudio$AudioSourceCase r2 = r6.getAudioSourceCase()
            boolean r1 = r1.equals(r2)
            r2 = 0
            if (r1 == 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 != 0) goto L24
            return r2
        L24:
            int r3 = r5.audioSourceCase_
            if (r3 == r0) goto L40
            r4 = 2
            if (r3 == r4) goto L2c
            goto L51
        L2c:
            if (r1 == 0) goto L3e
            java.lang.String r1 = r5.getUri()
            java.lang.String r3 = r6.getUri()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L3e
        L3c:
            r1 = 1
            goto L51
        L3e:
            r1 = 0
            goto L51
        L40:
            if (r1 == 0) goto L3e
            com.google.protobuf.ByteString r1 = r5.getContent()
            com.google.protobuf.ByteString r3 = r6.getContent()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L3e
            goto L3c
        L51:
            if (r1 == 0) goto L5e
            com.google.protobuf.h3 r1 = r5.unknownFields
            com.google.protobuf.h3 r6 = r6.unknownFields
            boolean r6 = r1.equals(r6)
            if (r6 == 0) goto L5e
            goto L5f
        L5e:
            r0 = 0
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.RecognitionAudio.equals(java.lang.Object):boolean");
    }

    public AudioSourceCase getAudioSourceCase() {
        return AudioSourceCase.forNumber(this.audioSourceCase_);
    }

    public ByteString getContent() {
        if (this.audioSourceCase_ == 1) {
            return (ByteString) this.audioSource_;
        }
        return ByteString.EMPTY;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RecognitionAudio> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int h10 = this.audioSourceCase_ == 1 ? 0 + CodedOutputStream.h(1, (ByteString) this.audioSource_) : 0;
        if (this.audioSourceCase_ == 2) {
            h10 += GeneratedMessageV3.computeStringSize(2, this.audioSource_);
        }
        int serializedSize = h10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getUri() {
        String str = this.audioSourceCase_ == 2 ? this.audioSource_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.audioSourceCase_ == 2) {
            this.audioSource_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getUriBytes() {
        String str = this.audioSourceCase_ == 2 ? this.audioSource_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.audioSourceCase_ == 2) {
                this.audioSource_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        int i11 = this.audioSourceCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getContent().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getUri().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12069n.d(RecognitionAudio.class, c.class);
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
        if (this.audioSourceCase_ == 1) {
            codedOutputStream.r0(1, (ByteString) this.audioSource_);
        }
        if (this.audioSourceCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.audioSource_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RecognitionAudio(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RecognitionAudio recognitionAudio) {
        return DEFAULT_INSTANCE.toBuilder().d0(recognitionAudio);
    }

    public static RecognitionAudio parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RecognitionAudio parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RecognitionAudio(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.audioSourceCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognitionAudio parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RecognitionAudio getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).d0(this);
    }

    public static RecognitionAudio parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RecognitionAudio parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private RecognitionAudio() {
        this.audioSourceCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RecognitionAudio parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RecognitionAudio parseFrom(InputStream inputStream) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RecognitionAudio parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private RecognitionAudio(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.audioSourceCase_ = 1;
                            this.audioSource_ = pVar.s();
                        } else if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K = pVar.K();
                            this.audioSourceCase_ = 2;
                            this.audioSource_ = K;
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

    public static RecognitionAudio parseFrom(p pVar) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RecognitionAudio parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RecognitionAudio) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
