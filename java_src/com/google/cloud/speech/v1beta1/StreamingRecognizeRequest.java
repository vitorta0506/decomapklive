package com.google.cloud.speech.v1beta1;

import com.google.cloud.speech.v1beta1.StreamingRecognitionConfig;
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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class StreamingRecognizeRequest extends GeneratedMessageV3 implements r1 {
    public static final int AUDIO_CONTENT_FIELD_NUMBER = 2;
    private static final StreamingRecognizeRequest DEFAULT_INSTANCE = new StreamingRecognizeRequest();
    private static final e2<StreamingRecognizeRequest> PARSER = new a();
    public static final int STREAMING_CONFIG_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int streamingRequestCase_;
    private Object streamingRequest_;

    /* loaded from: classes2.dex */
    public enum StreamingRequestCase implements u0.c {
        STREAMING_CONFIG(1),
        AUDIO_CONTENT(2),
        STREAMINGREQUEST_NOT_SET(0);
        
        private final int value;

        StreamingRequestCase(int i9) {
            this.value = i9;
        }

        public static StreamingRequestCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return AUDIO_CONTENT;
                }
                return STREAMING_CONFIG;
            }
            return STREAMINGREQUEST_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static StreamingRequestCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<StreamingRecognizeRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StreamingRecognizeRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StreamingRecognizeRequest(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12038a;

        static {
            int[] iArr = new int[StreamingRequestCase.values().length];
            f12038a = iArr;
            try {
                iArr[StreamingRequestCase.STREAMING_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12038a[StreamingRequestCase.AUDIO_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12038a[StreamingRequestCase.STREAMINGREQUEST_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12039e;

        /* renamed from: f  reason: collision with root package name */
        private Object f12040f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StreamingRecognitionConfig, StreamingRecognitionConfig.b, g> f12041g;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12061f.d(StreamingRecognizeRequest.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StreamingRecognizeRequest build() {
            StreamingRecognizeRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StreamingRecognizeRequest I() {
            StreamingRecognizeRequest streamingRecognizeRequest = new StreamingRecognizeRequest(this, (a) null);
            if (this.f12039e == 1) {
                q2<StreamingRecognitionConfig, StreamingRecognitionConfig.b, g> q2Var = this.f12041g;
                if (q2Var == null) {
                    streamingRecognizeRequest.streamingRequest_ = this.f12040f;
                } else {
                    streamingRecognizeRequest.streamingRequest_ = q2Var.b();
                }
            }
            if (this.f12039e == 2) {
                streamingRecognizeRequest.streamingRequest_ = this.f12040f;
            }
            streamingRecognizeRequest.streamingRequestCase_ = this.f12039e;
            Q();
            return streamingRecognizeRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StreamingRecognizeRequest getDefaultInstanceForType() {
            return StreamingRecognizeRequest.getDefaultInstance();
        }

        public c d0(StreamingRecognizeRequest streamingRecognizeRequest) {
            if (streamingRecognizeRequest == StreamingRecognizeRequest.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f12038a[streamingRecognizeRequest.getStreamingRequestCase().ordinal()];
            if (i9 == 1) {
                h0(streamingRecognizeRequest.getStreamingConfig());
            } else if (i9 == 2) {
                j0(streamingRecognizeRequest.getAudioContent());
            }
            z(((GeneratedMessageV3) streamingRecognizeRequest).unknownFields);
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
        public com.google.cloud.speech.v1beta1.StreamingRecognizeRequest.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.StreamingRecognizeRequest.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.StreamingRecognizeRequest r3 = (com.google.cloud.speech.v1beta1.StreamingRecognizeRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.StreamingRecognizeRequest r4 = (com.google.cloud.speech.v1beta1.StreamingRecognizeRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.StreamingRecognizeRequest.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.StreamingRecognizeRequest$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof StreamingRecognizeRequest) {
                return d0((StreamingRecognizeRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12060e;
        }

        public c h0(StreamingRecognitionConfig streamingRecognitionConfig) {
            q2<StreamingRecognitionConfig, StreamingRecognitionConfig.b, g> q2Var = this.f12041g;
            if (q2Var == null) {
                if (this.f12039e == 1 && this.f12040f != StreamingRecognitionConfig.getDefaultInstance()) {
                    this.f12040f = StreamingRecognitionConfig.newBuilder((StreamingRecognitionConfig) this.f12040f).e0(streamingRecognitionConfig).I();
                } else {
                    this.f12040f = streamingRecognitionConfig;
                }
                R();
            } else {
                if (this.f12039e == 1) {
                    q2Var.e(streamingRecognitionConfig);
                }
                this.f12041g.g(streamingRecognitionConfig);
            }
            this.f12039e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c j0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f12039e = 2;
            this.f12040f = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f12039e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12039e = 0;
            b0();
        }
    }

    /* synthetic */ StreamingRecognizeRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StreamingRecognizeRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12060e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StreamingRecognizeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StreamingRecognizeRequest> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
        if (getAudioContent().equals(r6.getAudioContent()) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004e, code lost:
        if (getStreamingConfig().equals(r6.getStreamingConfig()) != false) goto L21;
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
            boolean r1 = r6 instanceof com.google.cloud.speech.v1beta1.StreamingRecognizeRequest
            if (r1 != 0) goto Ld
            boolean r6 = super.equals(r6)
            return r6
        Ld:
            com.google.cloud.speech.v1beta1.StreamingRecognizeRequest r6 = (com.google.cloud.speech.v1beta1.StreamingRecognizeRequest) r6
            com.google.cloud.speech.v1beta1.StreamingRecognizeRequest$StreamingRequestCase r1 = r5.getStreamingRequestCase()
            com.google.cloud.speech.v1beta1.StreamingRecognizeRequest$StreamingRequestCase r2 = r6.getStreamingRequestCase()
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
            int r3 = r5.streamingRequestCase_
            if (r3 == r0) goto L40
            r4 = 2
            if (r3 == r4) goto L2c
            goto L51
        L2c:
            if (r1 == 0) goto L3e
            com.google.protobuf.ByteString r1 = r5.getAudioContent()
            com.google.protobuf.ByteString r3 = r6.getAudioContent()
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
            com.google.cloud.speech.v1beta1.StreamingRecognitionConfig r1 = r5.getStreamingConfig()
            com.google.cloud.speech.v1beta1.StreamingRecognitionConfig r3 = r6.getStreamingConfig()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.StreamingRecognizeRequest.equals(java.lang.Object):boolean");
    }

    public ByteString getAudioContent() {
        if (this.streamingRequestCase_ == 2) {
            return (ByteString) this.streamingRequest_;
        }
        return ByteString.EMPTY;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StreamingRecognizeRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.streamingRequestCase_ == 1 ? 0 + CodedOutputStream.G(1, (StreamingRecognitionConfig) this.streamingRequest_) : 0;
        if (this.streamingRequestCase_ == 2) {
            G += CodedOutputStream.h(2, (ByteString) this.streamingRequest_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StreamingRecognitionConfig getStreamingConfig() {
        if (this.streamingRequestCase_ == 1) {
            return (StreamingRecognitionConfig) this.streamingRequest_;
        }
        return StreamingRecognitionConfig.getDefaultInstance();
    }

    public g getStreamingConfigOrBuilder() {
        if (this.streamingRequestCase_ == 1) {
            return (StreamingRecognitionConfig) this.streamingRequest_;
        }
        return StreamingRecognitionConfig.getDefaultInstance();
    }

    public StreamingRequestCase getStreamingRequestCase() {
        return StreamingRequestCase.forNumber(this.streamingRequestCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasStreamingConfig() {
        return this.streamingRequestCase_ == 1;
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
        int i11 = this.streamingRequestCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getStreamingConfig().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getAudioContent().hashCode();
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
        return d.f12061f.d(StreamingRecognizeRequest.class, c.class);
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
        if (this.streamingRequestCase_ == 1) {
            codedOutputStream.L0(1, (StreamingRecognitionConfig) this.streamingRequest_);
        }
        if (this.streamingRequestCase_ == 2) {
            codedOutputStream.r0(2, (ByteString) this.streamingRequest_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StreamingRecognizeRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(StreamingRecognizeRequest streamingRecognizeRequest) {
        return DEFAULT_INSTANCE.toBuilder().d0(streamingRecognizeRequest);
    }

    public static StreamingRecognizeRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognizeRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StreamingRecognizeRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.streamingRequestCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognizeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StreamingRecognizeRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).d0(this);
    }

    public static StreamingRecognizeRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static StreamingRecognizeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private StreamingRecognizeRequest() {
        this.streamingRequestCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognizeRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StreamingRecognizeRequest parseFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private StreamingRecognizeRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            StreamingRecognitionConfig.b builder = this.streamingRequestCase_ == 1 ? ((StreamingRecognitionConfig) this.streamingRequest_).toBuilder() : null;
                            o1 B = pVar.B(StreamingRecognitionConfig.parser(), f0Var);
                            this.streamingRequest_ = B;
                            if (builder != null) {
                                builder.e0((StreamingRecognitionConfig) B);
                                this.streamingRequest_ = builder.I();
                            }
                            this.streamingRequestCase_ = 1;
                        } else if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.streamingRequestCase_ = 2;
                            this.streamingRequest_ = pVar.s();
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

    public static StreamingRecognizeRequest parseFrom(p pVar) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StreamingRecognizeRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StreamingRecognizeRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
