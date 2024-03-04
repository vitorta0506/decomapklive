package com.google.cloud.speech.v1beta1;

import com.google.cloud.speech.v1beta1.StreamingRecognitionResult;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.rpc.Status;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class StreamingRecognizeResponse extends GeneratedMessageV3 implements r1 {
    public static final int ENDPOINTER_TYPE_FIELD_NUMBER = 4;
    public static final int ERROR_FIELD_NUMBER = 1;
    public static final int RESULTS_FIELD_NUMBER = 2;
    public static final int RESULT_INDEX_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private int endpointerType_;
    private Status error_;
    private byte memoizedIsInitialized;
    private int resultIndex_;
    private List<StreamingRecognitionResult> results_;
    private static final StreamingRecognizeResponse DEFAULT_INSTANCE = new StreamingRecognizeResponse();
    private static final e2<StreamingRecognizeResponse> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum EndpointerType implements h2 {
        ENDPOINTER_EVENT_UNSPECIFIED(0),
        START_OF_SPEECH(1),
        END_OF_SPEECH(2),
        END_OF_AUDIO(3),
        END_OF_UTTERANCE(4),
        UNRECOGNIZED(-1);
        
        public static final int ENDPOINTER_EVENT_UNSPECIFIED_VALUE = 0;
        public static final int END_OF_AUDIO_VALUE = 3;
        public static final int END_OF_SPEECH_VALUE = 2;
        public static final int END_OF_UTTERANCE_VALUE = 4;
        public static final int START_OF_SPEECH_VALUE = 1;
        private final int value;
        private static final u0.d<EndpointerType> internalValueMap = new a();
        private static final EndpointerType[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<EndpointerType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public EndpointerType a(int i9) {
                return EndpointerType.forNumber(i9);
            }
        }

        EndpointerType(int i9) {
            this.value = i9;
        }

        public static EndpointerType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return END_OF_UTTERANCE;
                        }
                        return END_OF_AUDIO;
                    }
                    return END_OF_SPEECH;
                }
                return START_OF_SPEECH;
            }
            return ENDPOINTER_EVENT_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return StreamingRecognizeResponse.getDescriptor().k().get(0);
        }

        public static u0.d<EndpointerType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static EndpointerType valueOf(int i9) {
            return forNumber(i9);
        }

        public static EndpointerType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<StreamingRecognizeResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StreamingRecognizeResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StreamingRecognizeResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12042e;

        /* renamed from: f  reason: collision with root package name */
        private Status f12043f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Status, Status.b, com.google.rpc.c> f12044g;

        /* renamed from: h  reason: collision with root package name */
        private List<StreamingRecognitionResult> f12045h;

        /* renamed from: i  reason: collision with root package name */
        private l2<StreamingRecognitionResult, StreamingRecognitionResult.b, h> f12046i;

        /* renamed from: j  reason: collision with root package name */
        private int f12047j;

        /* renamed from: k  reason: collision with root package name */
        private int f12048k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12042e & 2) != 2) {
                this.f12045h = new ArrayList(this.f12045h);
                this.f12042e |= 2;
            }
        }

        private l2<StreamingRecognitionResult, StreamingRecognitionResult.b, h> d0() {
            if (this.f12046i == null) {
                this.f12046i = new l2<>(this.f12045h, (this.f12042e & 2) == 2, H(), O());
                this.f12045h = null;
            }
            return this.f12046i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12077v.d(StreamingRecognizeResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StreamingRecognizeResponse build() {
            StreamingRecognizeResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StreamingRecognizeResponse I() {
            StreamingRecognizeResponse streamingRecognizeResponse = new StreamingRecognizeResponse(this, (a) null);
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f12044g;
            if (q2Var == null) {
                streamingRecognizeResponse.error_ = this.f12043f;
            } else {
                streamingRecognizeResponse.error_ = q2Var.b();
            }
            l2<StreamingRecognitionResult, StreamingRecognitionResult.b, h> l2Var = this.f12046i;
            if (l2Var == null) {
                if ((this.f12042e & 2) == 2) {
                    this.f12045h = Collections.unmodifiableList(this.f12045h);
                    this.f12042e &= -3;
                }
                streamingRecognizeResponse.results_ = this.f12045h;
            } else {
                streamingRecognizeResponse.results_ = l2Var.e();
            }
            streamingRecognizeResponse.resultIndex_ = this.f12047j;
            streamingRecognizeResponse.endpointerType_ = this.f12048k;
            streamingRecognizeResponse.bitField0_ = 0;
            Q();
            return streamingRecognizeResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public StreamingRecognizeResponse getDefaultInstanceForType() {
            return StreamingRecognizeResponse.getDefaultInstance();
        }

        public b g0(Status status) {
            q2<Status, Status.b, com.google.rpc.c> q2Var = this.f12044g;
            if (q2Var == null) {
                Status status2 = this.f12043f;
                if (status2 != null) {
                    this.f12043f = Status.newBuilder(status2).i0(status).I();
                } else {
                    this.f12043f = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12076u;
        }

        public b h0(StreamingRecognizeResponse streamingRecognizeResponse) {
            if (streamingRecognizeResponse == StreamingRecognizeResponse.getDefaultInstance()) {
                return this;
            }
            if (streamingRecognizeResponse.hasError()) {
                g0(streamingRecognizeResponse.getError());
            }
            if (this.f12046i == null) {
                if (!streamingRecognizeResponse.results_.isEmpty()) {
                    if (this.f12045h.isEmpty()) {
                        this.f12045h = streamingRecognizeResponse.results_;
                        this.f12042e &= -3;
                    } else {
                        a0();
                        this.f12045h.addAll(streamingRecognizeResponse.results_);
                    }
                    R();
                }
            } else if (!streamingRecognizeResponse.results_.isEmpty()) {
                if (this.f12046i.k()) {
                    this.f12046i.f();
                    this.f12046i = null;
                    this.f12045h = streamingRecognizeResponse.results_;
                    this.f12042e &= -3;
                    this.f12046i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12046i.b(streamingRecognizeResponse.results_);
                }
            }
            if (streamingRecognizeResponse.getResultIndex() != 0) {
                n0(streamingRecognizeResponse.getResultIndex());
            }
            if (streamingRecognizeResponse.endpointerType_ != 0) {
                l0(streamingRecognizeResponse.getEndpointerTypeValue());
            }
            z(((GeneratedMessageV3) streamingRecognizeResponse).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1beta1.StreamingRecognizeResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.StreamingRecognizeResponse.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.StreamingRecognizeResponse r3 = (com.google.cloud.speech.v1beta1.StreamingRecognizeResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.cloud.speech.v1beta1.StreamingRecognizeResponse r4 = (com.google.cloud.speech.v1beta1.StreamingRecognizeResponse) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.StreamingRecognizeResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.StreamingRecognizeResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StreamingRecognizeResponse) {
                return h0((StreamingRecognizeResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b l0(int i9) {
            this.f12048k = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b n0(int i9) {
            this.f12047j = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12043f = null;
            this.f12045h = Collections.emptyList();
            this.f12048k = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12043f = null;
            this.f12045h = Collections.emptyList();
            this.f12048k = 0;
            e0();
        }
    }

    /* synthetic */ StreamingRecognizeResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StreamingRecognizeResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12076u;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StreamingRecognizeResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StreamingRecognizeResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamingRecognizeResponse)) {
            return super.equals(obj);
        }
        StreamingRecognizeResponse streamingRecognizeResponse = (StreamingRecognizeResponse) obj;
        boolean z10 = hasError() == streamingRecognizeResponse.hasError();
        if (hasError()) {
            z10 = z10 && getError().equals(streamingRecognizeResponse.getError());
        }
        return (((z10 && getResultsList().equals(streamingRecognizeResponse.getResultsList())) && getResultIndex() == streamingRecognizeResponse.getResultIndex()) && this.endpointerType_ == streamingRecognizeResponse.endpointerType_) && this.unknownFields.equals(streamingRecognizeResponse.unknownFields);
    }

    public EndpointerType getEndpointerType() {
        EndpointerType valueOf = EndpointerType.valueOf(this.endpointerType_);
        return valueOf == null ? EndpointerType.UNRECOGNIZED : valueOf;
    }

    public int getEndpointerTypeValue() {
        return this.endpointerType_;
    }

    public Status getError() {
        Status status = this.error_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public com.google.rpc.c getErrorOrBuilder() {
        return getError();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StreamingRecognizeResponse> getParserForType() {
        return PARSER;
    }

    public int getResultIndex() {
        return this.resultIndex_;
    }

    public StreamingRecognitionResult getResults(int i9) {
        return this.results_.get(i9);
    }

    public int getResultsCount() {
        return this.results_.size();
    }

    public List<StreamingRecognitionResult> getResultsList() {
        return this.results_;
    }

    public h getResultsOrBuilder(int i9) {
        return this.results_.get(i9);
    }

    public List<? extends h> getResultsOrBuilderList() {
        return this.results_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.error_ != null ? CodedOutputStream.G(1, getError()) + 0 : 0;
        for (int i10 = 0; i10 < this.results_.size(); i10++) {
            G += CodedOutputStream.G(2, this.results_.get(i10));
        }
        int i11 = this.resultIndex_;
        if (i11 != 0) {
            G += CodedOutputStream.x(3, i11);
        }
        if (this.endpointerType_ != EndpointerType.ENDPOINTER_EVENT_UNSPECIFIED.getNumber()) {
            G += CodedOutputStream.l(4, this.endpointerType_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasError() {
        return this.error_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasError()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getError().hashCode();
        }
        if (getResultsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getResultsList().hashCode();
        }
        int resultIndex = (((((((((hashCode * 37) + 3) * 53) + getResultIndex()) * 37) + 4) * 53) + this.endpointerType_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = resultIndex;
        return resultIndex;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12077v.d(StreamingRecognizeResponse.class, b.class);
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
        if (this.error_ != null) {
            codedOutputStream.L0(1, getError());
        }
        for (int i9 = 0; i9 < this.results_.size(); i9++) {
            codedOutputStream.L0(2, this.results_.get(i9));
        }
        int i10 = this.resultIndex_;
        if (i10 != 0) {
            codedOutputStream.H0(3, i10);
        }
        if (this.endpointerType_ != EndpointerType.ENDPOINTER_EVENT_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.endpointerType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StreamingRecognizeResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StreamingRecognizeResponse streamingRecognizeResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(streamingRecognizeResponse);
    }

    public static StreamingRecognizeResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognizeResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StreamingRecognizeResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StreamingRecognizeResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StreamingRecognizeResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static StreamingRecognizeResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StreamingRecognizeResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.results_ = Collections.emptyList();
        this.resultIndex_ = 0;
        this.endpointerType_ = 0;
    }

    public static StreamingRecognizeResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StreamingRecognizeResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StreamingRecognizeResponse parseFrom(InputStream inputStream) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static StreamingRecognizeResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StreamingRecognizeResponse parseFrom(p pVar) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private StreamingRecognizeResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            Status status = this.error_;
                            Status.b builder = status != null ? status.toBuilder() : null;
                            Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                            this.error_ = status2;
                            if (builder != null) {
                                builder.i0(status2);
                                this.error_ = builder.I();
                            }
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.results_ = new ArrayList();
                                z11 |= true;
                            }
                            this.results_.add(pVar.B(StreamingRecognitionResult.parser(), f0Var));
                        } else if (L == 24) {
                            this.resultIndex_ = pVar.z();
                        } else if (L != 32) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.endpointerType_ = pVar.u();
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

    public static StreamingRecognizeResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StreamingRecognizeResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
