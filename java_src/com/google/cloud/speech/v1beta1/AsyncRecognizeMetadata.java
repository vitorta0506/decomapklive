package com.google.cloud.speech.v1beta1;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class AsyncRecognizeMetadata extends GeneratedMessageV3 implements r1 {
    public static final int LAST_UPDATE_TIME_FIELD_NUMBER = 3;
    public static final int PROGRESS_PERCENT_FIELD_NUMBER = 1;
    public static final int START_TIME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Timestamp lastUpdateTime_;
    private byte memoizedIsInitialized;
    private int progressPercent_;
    private Timestamp startTime_;
    private static final AsyncRecognizeMetadata DEFAULT_INSTANCE = new AsyncRecognizeMetadata();
    private static final e2<AsyncRecognizeMetadata> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<AsyncRecognizeMetadata> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AsyncRecognizeMetadata m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new AsyncRecognizeMetadata(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f12000e;

        /* renamed from: f  reason: collision with root package name */
        private Timestamp f12001f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f12002g;

        /* renamed from: h  reason: collision with root package name */
        private Timestamp f12003h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f12004i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f12075t.d(AsyncRecognizeMetadata.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AsyncRecognizeMetadata build() {
            AsyncRecognizeMetadata I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AsyncRecognizeMetadata I() {
            AsyncRecognizeMetadata asyncRecognizeMetadata = new AsyncRecognizeMetadata(this, (a) null);
            asyncRecognizeMetadata.progressPercent_ = this.f12000e;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f12002g;
            if (q2Var == null) {
                asyncRecognizeMetadata.startTime_ = this.f12001f;
            } else {
                asyncRecognizeMetadata.startTime_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f12004i;
            if (q2Var2 == null) {
                asyncRecognizeMetadata.lastUpdateTime_ = this.f12003h;
            } else {
                asyncRecognizeMetadata.lastUpdateTime_ = q2Var2.b();
            }
            Q();
            return asyncRecognizeMetadata;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AsyncRecognizeMetadata getDefaultInstanceForType() {
            return AsyncRecognizeMetadata.getDefaultInstance();
        }

        public b d0(AsyncRecognizeMetadata asyncRecognizeMetadata) {
            if (asyncRecognizeMetadata == AsyncRecognizeMetadata.getDefaultInstance()) {
                return this;
            }
            if (asyncRecognizeMetadata.getProgressPercent() != 0) {
                l0(asyncRecognizeMetadata.getProgressPercent());
            }
            if (asyncRecognizeMetadata.hasStartTime()) {
                i0(asyncRecognizeMetadata.getStartTime());
            }
            if (asyncRecognizeMetadata.hasLastUpdateTime()) {
                h0(asyncRecognizeMetadata.getLastUpdateTime());
            }
            z(((GeneratedMessageV3) asyncRecognizeMetadata).unknownFields);
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
        public com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata r3 = (com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata r4 = (com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1beta1.AsyncRecognizeMetadata$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof AsyncRecognizeMetadata) {
                return d0((AsyncRecognizeMetadata) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f12074s;
        }

        public b h0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f12004i;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f12003h;
                if (timestamp2 != null) {
                    this.f12003h = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f12003h = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public b i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f12002g;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f12001f;
                if (timestamp2 != null) {
                    this.f12001f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f12001f = timestamp;
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
            this.f12000e = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12001f = null;
            this.f12003h = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12001f = null;
            this.f12003h = null;
            b0();
        }
    }

    /* synthetic */ AsyncRecognizeMetadata(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AsyncRecognizeMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f12074s;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AsyncRecognizeMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AsyncRecognizeMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AsyncRecognizeMetadata> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AsyncRecognizeMetadata)) {
            return super.equals(obj);
        }
        AsyncRecognizeMetadata asyncRecognizeMetadata = (AsyncRecognizeMetadata) obj;
        boolean z10 = (getProgressPercent() == asyncRecognizeMetadata.getProgressPercent()) && hasStartTime() == asyncRecognizeMetadata.hasStartTime();
        if (hasStartTime()) {
            z10 = z10 && getStartTime().equals(asyncRecognizeMetadata.getStartTime());
        }
        boolean z11 = z10 && hasLastUpdateTime() == asyncRecognizeMetadata.hasLastUpdateTime();
        if (hasLastUpdateTime()) {
            z11 = z11 && getLastUpdateTime().equals(asyncRecognizeMetadata.getLastUpdateTime());
        }
        return z11 && this.unknownFields.equals(asyncRecognizeMetadata.unknownFields);
    }

    public Timestamp getLastUpdateTime() {
        Timestamp timestamp = this.lastUpdateTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastUpdateTimeOrBuilder() {
        return getLastUpdateTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AsyncRecognizeMetadata> getParserForType() {
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
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f12075t.d(AsyncRecognizeMetadata.class, b.class);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AsyncRecognizeMetadata(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(AsyncRecognizeMetadata asyncRecognizeMetadata) {
        return DEFAULT_INSTANCE.toBuilder().d0(asyncRecognizeMetadata);
    }

    public static AsyncRecognizeMetadata parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncRecognizeMetadata parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AsyncRecognizeMetadata(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AsyncRecognizeMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AsyncRecognizeMetadata getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static AsyncRecognizeMetadata parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private AsyncRecognizeMetadata() {
        this.memoizedIsInitialized = (byte) -1;
        this.progressPercent_ = 0;
    }

    public static AsyncRecognizeMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static AsyncRecognizeMetadata parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AsyncRecognizeMetadata parseFrom(InputStream inputStream) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private AsyncRecognizeMetadata(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                } else if (L != 26) {
                                    if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Timestamp timestamp3 = this.lastUpdateTime_;
                                    builder = timestamp3 != null ? timestamp3.toBuilder() : null;
                                    Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.lastUpdateTime_ = timestamp4;
                                    if (builder != null) {
                                        builder.g0(timestamp4);
                                        this.lastUpdateTime_ = builder.I();
                                    }
                                }
                            } else {
                                this.progressPercent_ = pVar.z();
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static AsyncRecognizeMetadata parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncRecognizeMetadata parseFrom(p pVar) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AsyncRecognizeMetadata parseFrom(p pVar, f0 f0Var) throws IOException {
        return (AsyncRecognizeMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
