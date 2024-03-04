package com.google.type;

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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class TimeOfDay extends GeneratedMessageV3 implements r1 {
    public static final int HOURS_FIELD_NUMBER = 1;
    public static final int MINUTES_FIELD_NUMBER = 2;
    public static final int NANOS_FIELD_NUMBER = 4;
    public static final int SECONDS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int hours_;
    private byte memoizedIsInitialized;
    private int minutes_;
    private int nanos_;
    private int seconds_;
    private static final TimeOfDay DEFAULT_INSTANCE = new TimeOfDay();
    private static final e2<TimeOfDay> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<TimeOfDay> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TimeOfDay m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TimeOfDay(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15783e;

        /* renamed from: f  reason: collision with root package name */
        private int f15784f;

        /* renamed from: g  reason: collision with root package name */
        private int f15785g;

        /* renamed from: h  reason: collision with root package name */
        private int f15786h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f15836b.d(TimeOfDay.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TimeOfDay build() {
            TimeOfDay I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TimeOfDay I() {
            TimeOfDay timeOfDay = new TimeOfDay(this, (a) null);
            timeOfDay.hours_ = this.f15783e;
            timeOfDay.minutes_ = this.f15784f;
            timeOfDay.seconds_ = this.f15785g;
            timeOfDay.nanos_ = this.f15786h;
            Q();
            return timeOfDay;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TimeOfDay getDefaultInstanceForType() {
            return TimeOfDay.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.TimeOfDay.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.TimeOfDay.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.TimeOfDay r3 = (com.google.type.TimeOfDay) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.TimeOfDay r4 = (com.google.type.TimeOfDay) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.TimeOfDay.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.TimeOfDay$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TimeOfDay) {
                return g0((TimeOfDay) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(TimeOfDay timeOfDay) {
            if (timeOfDay == TimeOfDay.getDefaultInstance()) {
                return this;
            }
            if (timeOfDay.getHours() != 0) {
                j0(timeOfDay.getHours());
            }
            if (timeOfDay.getMinutes() != 0) {
                k0(timeOfDay.getMinutes());
            }
            if (timeOfDay.getSeconds() != 0) {
                m0(timeOfDay.getSeconds());
            }
            if (timeOfDay.getNanos() != 0) {
                l0(timeOfDay.getNanos());
            }
            z(((GeneratedMessageV3) timeOfDay).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f15835a;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b j0(int i9) {
            this.f15783e = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f15784f = i9;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f15786h = i9;
            R();
            return this;
        }

        public b m0(int i9) {
            this.f15785g = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
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

    /* synthetic */ TimeOfDay(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TimeOfDay getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f15835a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TimeOfDay parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TimeOfDay parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TimeOfDay> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TimeOfDay)) {
            return super.equals(obj);
        }
        TimeOfDay timeOfDay = (TimeOfDay) obj;
        return getHours() == timeOfDay.getHours() && getMinutes() == timeOfDay.getMinutes() && getSeconds() == timeOfDay.getSeconds() && getNanos() == timeOfDay.getNanos() && this.unknownFields.equals(timeOfDay.unknownFields);
    }

    public int getHours() {
        return this.hours_;
    }

    public int getMinutes() {
        return this.minutes_;
    }

    public int getNanos() {
        return this.nanos_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TimeOfDay> getParserForType() {
        return PARSER;
    }

    public int getSeconds() {
        return this.seconds_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.hours_;
        int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
        int i11 = this.minutes_;
        if (i11 != 0) {
            x10 += CodedOutputStream.x(2, i11);
        }
        int i12 = this.seconds_;
        if (i12 != 0) {
            x10 += CodedOutputStream.x(3, i12);
        }
        int i13 = this.nanos_;
        if (i13 != 0) {
            x10 += CodedOutputStream.x(4, i13);
        }
        int serializedSize = x10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHours()) * 37) + 2) * 53) + getMinutes()) * 37) + 3) * 53) + getSeconds()) * 37) + 4) * 53) + getNanos()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return r.f15836b.d(TimeOfDay.class, b.class);
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
        return new TimeOfDay();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.hours_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        int i10 = this.minutes_;
        if (i10 != 0) {
            codedOutputStream.H0(2, i10);
        }
        int i11 = this.seconds_;
        if (i11 != 0) {
            codedOutputStream.H0(3, i11);
        }
        int i12 = this.nanos_;
        if (i12 != 0) {
            codedOutputStream.H0(4, i12);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TimeOfDay(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TimeOfDay timeOfDay) {
        return DEFAULT_INSTANCE.toBuilder().g0(timeOfDay);
    }

    public static TimeOfDay parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TimeOfDay parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TimeOfDay(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TimeOfDay parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TimeOfDay getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TimeOfDay parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TimeOfDay() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TimeOfDay parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TimeOfDay parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private TimeOfDay(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.hours_ = pVar.z();
                        } else if (L == 16) {
                            this.minutes_ = pVar.z();
                        } else if (L == 24) {
                            this.seconds_ = pVar.z();
                        } else if (L != 32) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.nanos_ = pVar.z();
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

    public static TimeOfDay parseFrom(InputStream inputStream) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TimeOfDay parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TimeOfDay parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TimeOfDay parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (TimeOfDay) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
