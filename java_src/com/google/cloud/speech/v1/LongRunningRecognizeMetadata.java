package com.google.cloud.speech.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LongRunningRecognizeMetadata extends GeneratedMessageV3 implements r1 {
    public static final int LAST_UPDATE_TIME_FIELD_NUMBER = 3;
    public static final int PROGRESS_PERCENT_FIELD_NUMBER = 1;
    public static final int START_TIME_FIELD_NUMBER = 2;
    public static final int URI_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private Timestamp lastUpdateTime_;
    private byte memoizedIsInitialized;
    private int progressPercent_;
    private Timestamp startTime_;
    private volatile Object uri_;
    private static final LongRunningRecognizeMetadata DEFAULT_INSTANCE = new LongRunningRecognizeMetadata();
    private static final e2<LongRunningRecognizeMetadata> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<LongRunningRecognizeMetadata> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LongRunningRecognizeMetadata m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LongRunningRecognizeMetadata(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f11830e;

        /* renamed from: f  reason: collision with root package name */
        private Timestamp f11831f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f11832g;

        /* renamed from: h  reason: collision with root package name */
        private Timestamp f11833h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f11834i;

        /* renamed from: j  reason: collision with root package name */
        private Object f11835j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f11988z.d(LongRunningRecognizeMetadata.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LongRunningRecognizeMetadata build() {
            LongRunningRecognizeMetadata I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LongRunningRecognizeMetadata I() {
            LongRunningRecognizeMetadata longRunningRecognizeMetadata = new LongRunningRecognizeMetadata(this, (a) null);
            longRunningRecognizeMetadata.progressPercent_ = this.f11830e;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f11832g;
            if (q2Var == null) {
                longRunningRecognizeMetadata.startTime_ = this.f11831f;
            } else {
                longRunningRecognizeMetadata.startTime_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f11834i;
            if (q2Var2 == null) {
                longRunningRecognizeMetadata.lastUpdateTime_ = this.f11833h;
            } else {
                longRunningRecognizeMetadata.lastUpdateTime_ = q2Var2.b();
            }
            longRunningRecognizeMetadata.uri_ = this.f11835j;
            Q();
            return longRunningRecognizeMetadata;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LongRunningRecognizeMetadata getDefaultInstanceForType() {
            return LongRunningRecognizeMetadata.getDefaultInstance();
        }

        public b d0(LongRunningRecognizeMetadata longRunningRecognizeMetadata) {
            if (longRunningRecognizeMetadata == LongRunningRecognizeMetadata.getDefaultInstance()) {
                return this;
            }
            if (longRunningRecognizeMetadata.getProgressPercent() != 0) {
                l0(longRunningRecognizeMetadata.getProgressPercent());
            }
            if (longRunningRecognizeMetadata.hasStartTime()) {
                i0(longRunningRecognizeMetadata.getStartTime());
            }
            if (longRunningRecognizeMetadata.hasLastUpdateTime()) {
                h0(longRunningRecognizeMetadata.getLastUpdateTime());
            }
            if (!longRunningRecognizeMetadata.getUri().isEmpty()) {
                this.f11835j = longRunningRecognizeMetadata.uri_;
                R();
            }
            z(((GeneratedMessageV3) longRunningRecognizeMetadata).unknownFields);
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
        public com.google.cloud.speech.v1.LongRunningRecognizeMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.LongRunningRecognizeMetadata.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.LongRunningRecognizeMetadata r3 = (com.google.cloud.speech.v1.LongRunningRecognizeMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1.LongRunningRecognizeMetadata r4 = (com.google.cloud.speech.v1.LongRunningRecognizeMetadata) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.LongRunningRecognizeMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.LongRunningRecognizeMetadata$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LongRunningRecognizeMetadata) {
                return d0((LongRunningRecognizeMetadata) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f11987y;
        }

        public b h0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f11834i;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f11833h;
                if (timestamp2 != null) {
                    this.f11833h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f11833h = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f11832g;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f11831f;
                if (timestamp2 != null) {
                    this.f11831f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f11831f = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
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

        public b l0(int i9) {
            this.f11830e = i9;
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
            this.f11835j = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11835j = "";
            b0();
        }
    }

    /* synthetic */ LongRunningRecognizeMetadata(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LongRunningRecognizeMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f11987y;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LongRunningRecognizeMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LongRunningRecognizeMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LongRunningRecognizeMetadata> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongRunningRecognizeMetadata)) {
            return super.equals(obj);
        }
        LongRunningRecognizeMetadata longRunningRecognizeMetadata = (LongRunningRecognizeMetadata) obj;
        if (getProgressPercent() == longRunningRecognizeMetadata.getProgressPercent() && hasStartTime() == longRunningRecognizeMetadata.hasStartTime()) {
            if ((!hasStartTime() || getStartTime().equals(longRunningRecognizeMetadata.getStartTime())) && hasLastUpdateTime() == longRunningRecognizeMetadata.hasLastUpdateTime()) {
                return (!hasLastUpdateTime() || getLastUpdateTime().equals(longRunningRecognizeMetadata.getLastUpdateTime())) && getUri().equals(longRunningRecognizeMetadata.getUri()) && this.unknownFields.equals(longRunningRecognizeMetadata.unknownFields);
            }
            return false;
        }
        return false;
    }

    public Timestamp getLastUpdateTime() {
        Timestamp timestamp = this.lastUpdateTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastUpdateTimeOrBuilder() {
        return getLastUpdateTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LongRunningRecognizeMetadata> getParserForType() {
        return PARSER;
    }

    public int getProgressPercent() {
        return this.progressPercent_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.progressPercent_;
        int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
        if (this.startTime_ != null) {
            x10 += CodedOutputStream.G(2, getStartTime());
        }
        if (this.lastUpdateTime_ != null) {
            x10 += CodedOutputStream.G(3, getLastUpdateTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.uri_)) {
            x10 += GeneratedMessageV3.computeStringSize(4, this.uri_);
        }
        int serializedSize = x10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Timestamp getStartTime() {
        Timestamp timestamp = this.startTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getStartTimeOrBuilder() {
        return getStartTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getUri() {
        Object obj = this.uri_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.uri_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUriBytes() {
        Object obj = this.uri_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uri_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasLastUpdateTime() {
        return this.lastUpdateTime_ != null;
    }

    public boolean hasStartTime() {
        return this.startTime_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getProgressPercent();
        if (hasStartTime()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStartTime().hashCode();
        }
        if (hasLastUpdateTime()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getLastUpdateTime().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 4) * 53) + getUri().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f11988z.d(LongRunningRecognizeMetadata.class, b.class);
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
        return new LongRunningRecognizeMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.progressPercent_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        if (this.startTime_ != null) {
            codedOutputStream.L0(2, getStartTime());
        }
        if (this.lastUpdateTime_ != null) {
            codedOutputStream.L0(3, getLastUpdateTime());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.uri_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.uri_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LongRunningRecognizeMetadata(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LongRunningRecognizeMetadata longRunningRecognizeMetadata) {
        return DEFAULT_INSTANCE.toBuilder().d0(longRunningRecognizeMetadata);
    }

    public static LongRunningRecognizeMetadata parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeMetadata parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LongRunningRecognizeMetadata(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LongRunningRecognizeMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LongRunningRecognizeMetadata getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static LongRunningRecognizeMetadata parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LongRunningRecognizeMetadata() {
        this.memoizedIsInitialized = (byte) -1;
        this.uri_ = "";
    }

    public static LongRunningRecognizeMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LongRunningRecognizeMetadata parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LongRunningRecognizeMetadata parseFrom(InputStream inputStream) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LongRunningRecognizeMetadata(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Timestamp.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (L == 18) {
                                    Timestamp timestamp = this.startTime_;
                                    builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.startTime_ = timestamp2;
                                    if (builder != null) {
                                        builder.g0(timestamp2);
                                        this.startTime_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    Timestamp timestamp3 = this.lastUpdateTime_;
                                    builder = timestamp3 != null ? timestamp3.toBuilder() : null;
                                    Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.lastUpdateTime_ = timestamp4;
                                    if (builder != null) {
                                        builder.g0(timestamp4);
                                        this.lastUpdateTime_ = builder.I();
                                    }
                                } else if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.uri_ = pVar.K();
                                }
                            } else {
                                this.progressPercent_ = pVar.z();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LongRunningRecognizeMetadata parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LongRunningRecognizeMetadata parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LongRunningRecognizeMetadata parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (LongRunningRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
