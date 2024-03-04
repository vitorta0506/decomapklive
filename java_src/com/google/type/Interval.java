package com.google.type;

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
/* loaded from: classes3.dex */
public final class Interval extends GeneratedMessageV3 implements r1 {
    public static final int END_TIME_FIELD_NUMBER = 2;
    public static final int START_TIME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Timestamp endTime_;
    private byte memoizedIsInitialized;
    private Timestamp startTime_;
    private static final Interval DEFAULT_INSTANCE = new Interval();
    private static final e2<Interval> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<Interval> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Interval m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Interval(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Timestamp f15749e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f15750f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f15751g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f15752h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f15812b.d(Interval.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Interval build() {
            Interval I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Interval I() {
            Interval interval = new Interval(this, (a) null);
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f15750f;
            if (q2Var == null) {
                interval.startTime_ = this.f15749e;
            } else {
                interval.startTime_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f15752h;
            if (q2Var2 == null) {
                interval.endTime_ = this.f15751g;
            } else {
                interval.endTime_ = q2Var2.b();
            }
            Q();
            return interval;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Interval getDefaultInstanceForType() {
            return Interval.getDefaultInstance();
        }

        public b d0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f15752h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f15751g;
                if (timestamp2 != null) {
                    this.f15751g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f15751g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.Interval.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.Interval.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.Interval r3 = (com.google.type.Interval) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.Interval r4 = (com.google.type.Interval) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.Interval.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.Interval$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Interval) {
                return h0((Interval) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f15811a;
        }

        public b h0(Interval interval) {
            if (interval == Interval.getDefaultInstance()) {
                return this;
            }
            if (interval.hasStartTime()) {
                i0(interval.getStartTime());
            }
            if (interval.hasEndTime()) {
                d0(interval.getEndTime());
            }
            z(((GeneratedMessageV3) interval).unknownFields);
            R();
            return this;
        }

        public b i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f15750f;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f15749e;
                if (timestamp2 != null) {
                    this.f15749e = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f15749e = timestamp;
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ Interval(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Interval getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f15811a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Interval parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Interval) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Interval parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Interval> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Interval)) {
            return super.equals(obj);
        }
        Interval interval = (Interval) obj;
        if (hasStartTime() != interval.hasStartTime()) {
            return false;
        }
        if ((!hasStartTime() || getStartTime().equals(interval.getStartTime())) && hasEndTime() == interval.hasEndTime()) {
            return (!hasEndTime() || getEndTime().equals(interval.getEndTime())) && this.unknownFields.equals(interval.unknownFields);
        }
        return false;
    }

    public Timestamp getEndTime() {
        Timestamp timestamp = this.endTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getEndTimeOrBuilder() {
        return getEndTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Interval> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.startTime_ != null ? 0 + CodedOutputStream.G(1, getStartTime()) : 0;
        if (this.endTime_ != null) {
            G += CodedOutputStream.G(2, getEndTime());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
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

    public boolean hasEndTime() {
        return this.endTime_ != null;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasStartTime()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStartTime().hashCode();
        }
        if (hasEndTime()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getEndTime().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f15812b.d(Interval.class, b.class);
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
        return new Interval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.startTime_ != null) {
            codedOutputStream.L0(1, getStartTime());
        }
        if (this.endTime_ != null) {
            codedOutputStream.L0(2, getEndTime());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Interval(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Interval interval) {
        return DEFAULT_INSTANCE.toBuilder().h0(interval);
    }

    public static Interval parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Interval) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Interval parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Interval(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Interval parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Interval getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Interval parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Interval() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Interval parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Interval parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Interval(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Timestamp.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Timestamp timestamp = this.startTime_;
                            builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.startTime_ = timestamp2;
                            if (builder != null) {
                                builder.g0(timestamp2);
                                this.startTime_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Timestamp timestamp3 = this.endTime_;
                            builder = timestamp3 != null ? timestamp3.toBuilder() : null;
                            Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.endTime_ = timestamp4;
                            if (builder != null) {
                                builder.g0(timestamp4);
                                this.endTime_ = builder.I();
                            }
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

    public static Interval parseFrom(InputStream inputStream) throws IOException {
        return (Interval) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Interval parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Interval) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Interval parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Interval) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Interval parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Interval) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
