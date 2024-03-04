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
public final class SyncRecognizeResponse extends GeneratedMessageV3 implements r1 {
    private static final SyncRecognizeResponse DEFAULT_INSTANCE = new SyncRecognizeResponse();
    private static final e2<SyncRecognizeResponse> PARSER = new a();
    public static final int RESULTS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<SpeechRecognitionResult> results_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SyncRecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SyncRecognizeResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SyncRecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12053e;

        /* renamed from: f  reason: collision with root package name */
        private List<SpeechRecognitionResult> f12054f;

        /* renamed from: g  reason: collision with root package name */
        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> f12055g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12053e & 1) != 1) {
                this.f12054f = new ArrayList(this.f12054f);
                this.f12053e |= 1;
            }
        }

        private l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> d0() {
            if (this.f12055g == null) {
                this.f12055g = new l2<>(this.f12054f, (this.f12053e & 1) == 1, H(), O());
                this.f12054f = null;
            }
            return this.f12055g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12071p.d(SyncRecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SyncRecognizeResponse build() {
            SyncRecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SyncRecognizeResponse I() {
            SyncRecognizeResponse syncRecognizeResponse = new SyncRecognizeResponse(this, (a) null);
            int i9 = this.f12053e;
            l2<SpeechRecognitionResult, SpeechRecognitionResult.b, f> l2Var = this.f12055g;
            if (l2Var == null) {
                if ((i9 & 1) == 1) {
                    this.f12054f = Collections.unmodifiableList(this.f12054f);
                    this.f12053e &= -2;
                }
                syncRecognizeResponse.results_ = this.f12054f;
            } else {
                syncRecognizeResponse.results_ = l2Var.e();
            }
            Q();
            return syncRecognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SyncRecognizeResponse getDefaultInstanceForType() {
            return SyncRecognizeResponse.getDefaultInstance();
        }

        public b g0(SyncRecognizeResponse syncRecognizeResponse) {
            if (syncRecognizeResponse == SyncRecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (this.f12055g == null) {
                if (!syncRecognizeResponse.results_.isEmpty()) {
                    if (this.f12054f.isEmpty()) {
                        this.f12054f = syncRecognizeResponse.results_;
                        this.f12053e &= -2;
                    } else {
                        a0();
                        this.f12054f.addAll(syncRecognizeResponse.results_);
                    }
                    R();
                }
            } else if (!syncRecognizeResponse.results_.isEmpty()) {
                if (this.f12055g.k()) {
                    this.f12055g.f();
                    this.f12055g = null;
                    this.f12054f = syncRecognizeResponse.results_;
                    this.f12053e &= -2;
                    this.f12055g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12055g.b(syncRecognizeResponse.results_);
                }
            }
            z(((GeneratedMessageV3) syncRecognizeResponse).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12070o;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1beta1.SyncRecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.SyncRecognizeResponse.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.SyncRecognizeResponse r3 = (com.google.cloud.speech.v1beta1.SyncRecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.SyncRecognizeResponse r4 = (com.google.cloud.speech.v1beta1.SyncRecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.SyncRecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.SyncRecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SyncRecognizeResponse) {
                return g0((SyncRecognizeResponse) l1Var);
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
            this.f12054f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12054f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SyncRecognizeResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SyncRecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12070o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SyncRecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SyncRecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SyncRecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SyncRecognizeResponse)) {
            return super.equals(obj);
        }
        SyncRecognizeResponse syncRecognizeResponse = (SyncRecognizeResponse) obj;
        return (getResultsList().equals(syncRecognizeResponse.getResultsList())) && this.unknownFields.equals(syncRecognizeResponse.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SyncRecognizeResponse> getParserForType() {
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
        return d.f12071p.d(SyncRecognizeResponse.class, b.class);
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

    /* synthetic */ SyncRecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SyncRecognizeResponse syncRecognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().g0(syncRecognizeResponse);
    }

    public static SyncRecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SyncRecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SyncRecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SyncRecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SyncRecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SyncRecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SyncRecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
    }

    public static SyncRecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SyncRecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SyncRecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SyncRecognizeResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

    public static SyncRecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SyncRecognizeResponse parseFrom(p pVar) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SyncRecognizeResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SyncRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
