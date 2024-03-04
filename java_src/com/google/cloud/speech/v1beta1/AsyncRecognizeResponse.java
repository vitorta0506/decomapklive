package com.google.cloud.speech.v1beta1;

import com.google.cloud.speech.v1beta1.SpeechRecognitionResult;
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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AsyncRecognizeResponse extends GeneratedMessageV3 implements r1 {
    private static final AsyncRecognizeResponse DEFAULT_INSTANCE = new AsyncRecognizeResponse();
    private static final e2<AsyncRecognizeResponse> PARSER = new a();
    public static final int RESULTS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<SpeechRecognitionResult> results_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AsyncRecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AsyncRecognizeResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AsyncRecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12009e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionResult> f12010f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> f12011g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12009e & 1) != 1) {
                this.f12010f = new ArrayList(this.f12010f);
                this.f12009e |= 1;
            }
        }

        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> d0() {
            if (this.f12011g == null) {
                this.f12011g = new l2<>(this.f12010f, (this.f12009e & 1) == 1, H(), O());
                this.f12010f = null;
            }
            return this.f12011g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12073r.d(AsyncRecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AsyncRecognizeResponse build() {
            AsyncRecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AsyncRecognizeResponse I() {
            AsyncRecognizeResponse asyncRecognizeResponse = new AsyncRecognizeResponse(this, (a) null);
            int i9 = this.f12009e;
            l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> l2Var = this.f12011g;
            if (l2Var == null) {
                if ((i9 & 1) == 1) {
                    this.f12010f = Collections.unmodifiableList(this.f12010f);
                    this.f12009e &= -2;
                }
                asyncRecognizeResponse.results_ = this.f12010f;
            } else {
                asyncRecognizeResponse.results_ = l2Var.e();
            }
            Q();
            return asyncRecognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public AsyncRecognizeResponse getDefaultInstanceForType() {
            return AsyncRecognizeResponse.getDefaultInstance();
        }

        public b g0(AsyncRecognizeResponse asyncRecognizeResponse) {
            if (asyncRecognizeResponse == AsyncRecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f12011g == null) {
                if (!asyncRecognizeResponse.results_.isEmpty()) {
                    if (this.f12010f.isEmpty()) {
                        this.f12010f = asyncRecognizeResponse.results_;
                        this.f12009e &= -2;
                    } else {
                        a0();
                        this.f12010f.addAll(asyncRecognizeResponse.results_);
                    }
                    R();
                }
            } else if (!asyncRecognizeResponse.results_.isEmpty()) {
                if (this.f12011g.k()) {
                    this.f12011g.f();
                    this.f12011g = null;
                    this.f12010f = asyncRecognizeResponse.results_;
                    this.f12009e &= -2;
                    this.f12011g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12011g.b(asyncRecognizeResponse.results_);
                }
            }
            z(((GeneratedMessageV3) asyncRecognizeResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12072q;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1beta1.AsyncRecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.AsyncRecognizeResponse.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.AsyncRecognizeResponse r3 = (com.google.cloud.speech.v1beta1.AsyncRecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.AsyncRecognizeResponse r4 = (com.google.cloud.speech.v1beta1.AsyncRecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.AsyncRecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.AsyncRecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AsyncRecognizeResponse) {
                return g0((AsyncRecognizeResponse) l1Var);
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
            this.f12010f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12010f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ AsyncRecognizeResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AsyncRecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12072q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AsyncRecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AsyncRecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AsyncRecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AsyncRecognizeResponse)) {
            return super.equals(obj);
        }
        AsyncRecognizeResponse asyncRecognizeResponse = (AsyncRecognizeResponse) obj;
        return (getResultsList().equals(asyncRecognizeResponse.getResultsList())) && this.unknownFields.equals(asyncRecognizeResponse.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AsyncRecognizeResponse> getParserForType() {
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

    public f getResultsOrBuilder(int i9) {
        return this.results_.get(i9);
    }

    public List<? extends f> getResultsOrBuilderList() {
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
        if (getResultsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResultsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12073r.d(AsyncRecognizeResponse.class, b.class);
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
        for (int i9 = 0; i9 < this.results_.size(); i9++) {
            codedOutputStream.L0(2, this.results_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AsyncRecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AsyncRecognizeResponse asyncRecognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(asyncRecognizeResponse);
    }

    public static AsyncRecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncRecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AsyncRecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AsyncRecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AsyncRecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static AsyncRecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AsyncRecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
    }

    public static AsyncRecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AsyncRecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AsyncRecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AsyncRecognizeResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 18) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.results_ = new ArrayList();
                                z11 |= true;
                            }
                            this.results_.add(pVar.B(SpeechRecognitionResult.parser(), f0Var));
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
                    this.results_ = Collections.unmodifiableList(this.results_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static AsyncRecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncRecognizeResponse parseFrom(p pVar) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AsyncRecognizeResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AsyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
