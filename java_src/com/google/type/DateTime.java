package com.google.type;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.google.type.TimeZone;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class DateTime extends GeneratedMessageV3 implements r1 {
    public static final int DAY_FIELD_NUMBER = 3;
    public static final int HOURS_FIELD_NUMBER = 4;
    public static final int MINUTES_FIELD_NUMBER = 5;
    public static final int MONTH_FIELD_NUMBER = 2;
    public static final int NANOS_FIELD_NUMBER = 7;
    public static final int SECONDS_FIELD_NUMBER = 6;
    public static final int TIME_ZONE_FIELD_NUMBER = 9;
    public static final int UTC_OFFSET_FIELD_NUMBER = 8;
    public static final int YEAR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int day_;
    private int hours_;
    private byte memoizedIsInitialized;
    private int minutes_;
    private int month_;
    private int nanos_;
    private int seconds_;
    private int timeOffsetCase_;
    private Object timeOffset_;
    private int year_;
    private static final DateTime DEFAULT_INSTANCE = new DateTime();
    private static final e2<DateTime> PARSER = new a();

    /* loaded from: classes3.dex */
    public enum TimeOffsetCase implements u0.c {
        UTC_OFFSET(8),
        TIME_ZONE(9),
        TIMEOFFSET_NOT_SET(0);
        
        private final int value;

        TimeOffsetCase(int i9) {
            this.value = i9;
        }

        public static TimeOffsetCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 8) {
                    if (i9 != 9) {
                        return null;
                    }
                    return TIME_ZONE;
                }
                return UTC_OFFSET;
            }
            return TIMEOFFSET_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TimeOffsetCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<DateTime> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DateTime m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DateTime(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15730a;

        static {
            int[] iArr = new int[TimeOffsetCase.values().length];
            f15730a = iArr;
            try {
                iArr[TimeOffsetCase.UTC_OFFSET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15730a[TimeOffsetCase.TIME_ZONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15730a[TimeOffsetCase.TIMEOFFSET_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15731e;

        /* renamed from: f  reason: collision with root package name */
        private Object f15732f;

        /* renamed from: g  reason: collision with root package name */
        private int f15733g;

        /* renamed from: h  reason: collision with root package name */
        private int f15734h;

        /* renamed from: i  reason: collision with root package name */
        private int f15735i;

        /* renamed from: j  reason: collision with root package name */
        private int f15736j;

        /* renamed from: k  reason: collision with root package name */
        private int f15737k;

        /* renamed from: l  reason: collision with root package name */
        private int f15738l;

        /* renamed from: m  reason: collision with root package name */
        private int f15739m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f15740n;

        /* renamed from: o  reason: collision with root package name */
        private q2<TimeZone, TimeZone.b, s> f15741o;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f15797b.d(DateTime.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DateTime build() {
            DateTime I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DateTime I() {
            DateTime dateTime = new DateTime(this, (a) null);
            dateTime.year_ = this.f15733g;
            dateTime.month_ = this.f15734h;
            dateTime.day_ = this.f15735i;
            dateTime.hours_ = this.f15736j;
            dateTime.minutes_ = this.f15737k;
            dateTime.seconds_ = this.f15738l;
            dateTime.nanos_ = this.f15739m;
            if (this.f15731e == 8) {
                q2<Duration, Duration.b, v> q2Var = this.f15740n;
                if (q2Var == null) {
                    dateTime.timeOffset_ = this.f15732f;
                } else {
                    dateTime.timeOffset_ = q2Var.b();
                }
            }
            if (this.f15731e == 9) {
                q2<TimeZone, TimeZone.b, s> q2Var2 = this.f15741o;
                if (q2Var2 == null) {
                    dateTime.timeOffset_ = this.f15732f;
                } else {
                    dateTime.timeOffset_ = q2Var2.b();
                }
            }
            dateTime.timeOffsetCase_ = this.f15731e;
            Q();
            return dateTime;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DateTime getDefaultInstanceForType() {
            return DateTime.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.DateTime.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.DateTime.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.DateTime r3 = (com.google.type.DateTime) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.DateTime r4 = (com.google.type.DateTime) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.DateTime.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.DateTime$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof DateTime) {
                return g0((DateTime) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(DateTime dateTime) {
            if (dateTime == DateTime.getDefaultInstance()) {
                return this;
            }
            if (dateTime.getYear() != 0) {
                t0(dateTime.getYear());
            }
            if (dateTime.getMonth() != 0) {
                o0(dateTime.getMonth());
            }
            if (dateTime.getDay() != 0) {
                k0(dateTime.getDay());
            }
            if (dateTime.getHours() != 0) {
                m0(dateTime.getHours());
            }
            if (dateTime.getMinutes() != 0) {
                n0(dateTime.getMinutes());
            }
            if (dateTime.getSeconds() != 0) {
                r0(dateTime.getSeconds());
            }
            if (dateTime.getNanos() != 0) {
                q0(dateTime.getNanos());
            }
            int i9 = b.f15730a[dateTime.getTimeOffsetCase().ordinal()];
            if (i9 == 1) {
                j0(dateTime.getUtcOffset());
            } else if (i9 == 2) {
                h0(dateTime.getTimeZone());
            }
            z(((GeneratedMessageV3) dateTime).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f15796a;
        }

        public c h0(TimeZone timeZone) {
            q2<TimeZone, TimeZone.b, s> q2Var = this.f15741o;
            if (q2Var == null) {
                if (this.f15731e == 9 && this.f15732f != TimeZone.getDefaultInstance()) {
                    this.f15732f = TimeZone.newBuilder((TimeZone) this.f15732f).g0(timeZone).I();
                } else {
                    this.f15732f = timeZone;
                }
                R();
            } else {
                if (this.f15731e == 9) {
                    q2Var.e(timeZone);
                }
                this.f15741o.g(timeZone);
            }
            this.f15731e = 9;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c j0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f15740n;
            if (q2Var == null) {
                if (this.f15731e == 8 && this.f15732f != Duration.getDefaultInstance()) {
                    this.f15732f = Duration.newBuilder((Duration) this.f15732f).e0(duration).I();
                } else {
                    this.f15732f = duration;
                }
                R();
            } else {
                if (this.f15731e == 8) {
                    q2Var.e(duration);
                }
                this.f15740n.g(duration);
            }
            this.f15731e = 8;
            return this;
        }

        public c k0(int i9) {
            this.f15735i = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(int i9) {
            this.f15736j = i9;
            R();
            return this;
        }

        public c n0(int i9) {
            this.f15737k = i9;
            R();
            return this;
        }

        public c o0(int i9) {
            this.f15734h = i9;
            R();
            return this;
        }

        public c q0(int i9) {
            this.f15739m = i9;
            R();
            return this;
        }

        public c r0(int i9) {
            this.f15738l = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        public c t0(int i9) {
            this.f15733g = i9;
            R();
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f15731e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15731e = 0;
            b0();
        }
    }

    /* synthetic */ DateTime(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DateTime getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f15796a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DateTime parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DateTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DateTime parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DateTime> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DateTime)) {
            return super.equals(obj);
        }
        DateTime dateTime = (DateTime) obj;
        if (getYear() == dateTime.getYear() && getMonth() == dateTime.getMonth() && getDay() == dateTime.getDay() && getHours() == dateTime.getHours() && getMinutes() == dateTime.getMinutes() && getSeconds() == dateTime.getSeconds() && getNanos() == dateTime.getNanos() && getTimeOffsetCase().equals(dateTime.getTimeOffsetCase())) {
            int i9 = this.timeOffsetCase_;
            if (i9 != 8) {
                if (i9 == 9 && !getTimeZone().equals(dateTime.getTimeZone())) {
                    return false;
                }
            } else if (!getUtcOffset().equals(dateTime.getUtcOffset())) {
                return false;
            }
            return this.unknownFields.equals(dateTime.unknownFields);
        }
        return false;
    }

    public int getDay() {
        return this.day_;
    }

    public int getHours() {
        return this.hours_;
    }

    public int getMinutes() {
        return this.minutes_;
    }

    public int getMonth() {
        return this.month_;
    }

    public int getNanos() {
        return this.nanos_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DateTime> getParserForType() {
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
        int i10 = this.year_;
        int x10 = i10 != 0 ? 0 + CodedOutputStream.x(1, i10) : 0;
        int i11 = this.month_;
        if (i11 != 0) {
            x10 += CodedOutputStream.x(2, i11);
        }
        int i12 = this.day_;
        if (i12 != 0) {
            x10 += CodedOutputStream.x(3, i12);
        }
        int i13 = this.hours_;
        if (i13 != 0) {
            x10 += CodedOutputStream.x(4, i13);
        }
        int i14 = this.minutes_;
        if (i14 != 0) {
            x10 += CodedOutputStream.x(5, i14);
        }
        int i15 = this.seconds_;
        if (i15 != 0) {
            x10 += CodedOutputStream.x(6, i15);
        }
        int i16 = this.nanos_;
        if (i16 != 0) {
            x10 += CodedOutputStream.x(7, i16);
        }
        if (this.timeOffsetCase_ == 8) {
            x10 += CodedOutputStream.G(8, (Duration) this.timeOffset_);
        }
        if (this.timeOffsetCase_ == 9) {
            x10 += CodedOutputStream.G(9, (TimeZone) this.timeOffset_);
        }
        int serializedSize = x10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TimeOffsetCase getTimeOffsetCase() {
        return TimeOffsetCase.forNumber(this.timeOffsetCase_);
    }

    public TimeZone getTimeZone() {
        if (this.timeOffsetCase_ == 9) {
            return (TimeZone) this.timeOffset_;
        }
        return TimeZone.getDefaultInstance();
    }

    public s getTimeZoneOrBuilder() {
        if (this.timeOffsetCase_ == 9) {
            return (TimeZone) this.timeOffset_;
        }
        return TimeZone.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Duration getUtcOffset() {
        if (this.timeOffsetCase_ == 8) {
            return (Duration) this.timeOffset_;
        }
        return Duration.getDefaultInstance();
    }

    public v getUtcOffsetOrBuilder() {
        if (this.timeOffsetCase_ == 8) {
            return (Duration) this.timeOffset_;
        }
        return Duration.getDefaultInstance();
    }

    public int getYear() {
        return this.year_;
    }

    public boolean hasTimeZone() {
        return this.timeOffsetCase_ == 9;
    }

    public boolean hasUtcOffset() {
        return this.timeOffsetCase_ == 8;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getYear()) * 37) + 2) * 53) + getMonth()) * 37) + 3) * 53) + getDay()) * 37) + 4) * 53) + getHours()) * 37) + 5) * 53) + getMinutes()) * 37) + 6) * 53) + getSeconds()) * 37) + 7) * 53) + getNanos();
        int i11 = this.timeOffsetCase_;
        if (i11 == 8) {
            i9 = ((hashCode2 * 37) + 8) * 53;
            hashCode = getUtcOffset().hashCode();
        } else {
            if (i11 == 9) {
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getTimeZone().hashCode();
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
        return d.f15797b.d(DateTime.class, c.class);
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
        return new DateTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.year_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        int i10 = this.month_;
        if (i10 != 0) {
            codedOutputStream.H0(2, i10);
        }
        int i11 = this.day_;
        if (i11 != 0) {
            codedOutputStream.H0(3, i11);
        }
        int i12 = this.hours_;
        if (i12 != 0) {
            codedOutputStream.H0(4, i12);
        }
        int i13 = this.minutes_;
        if (i13 != 0) {
            codedOutputStream.H0(5, i13);
        }
        int i14 = this.seconds_;
        if (i14 != 0) {
            codedOutputStream.H0(6, i14);
        }
        int i15 = this.nanos_;
        if (i15 != 0) {
            codedOutputStream.H0(7, i15);
        }
        if (this.timeOffsetCase_ == 8) {
            codedOutputStream.L0(8, (Duration) this.timeOffset_);
        }
        if (this.timeOffsetCase_ == 9) {
            codedOutputStream.L0(9, (TimeZone) this.timeOffset_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DateTime(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(DateTime dateTime) {
        return DEFAULT_INSTANCE.toBuilder().g0(dateTime);
    }

    public static DateTime parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DateTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DateTime parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DateTime(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.timeOffsetCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DateTime parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DateTime getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static DateTime parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static DateTime parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private DateTime() {
        this.timeOffsetCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DateTime parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DateTime parseFrom(InputStream inputStream) throws IOException {
        return (DateTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DateTime parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DateTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DateTime(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.year_ = pVar.z();
                        } else if (L == 16) {
                            this.month_ = pVar.z();
                        } else if (L == 24) {
                            this.day_ = pVar.z();
                        } else if (L == 32) {
                            this.hours_ = pVar.z();
                        } else if (L == 40) {
                            this.minutes_ = pVar.z();
                        } else if (L == 48) {
                            this.seconds_ = pVar.z();
                        } else if (L != 56) {
                            if (L == 66) {
                                Duration.b builder = this.timeOffsetCase_ == 8 ? ((Duration) this.timeOffset_).toBuilder() : null;
                                o1 B = pVar.B(Duration.parser(), f0Var);
                                this.timeOffset_ = B;
                                if (builder != null) {
                                    builder.e0((Duration) B);
                                    this.timeOffset_ = builder.I();
                                }
                                this.timeOffsetCase_ = 8;
                            } else if (L != 74) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                TimeZone.b builder2 = this.timeOffsetCase_ == 9 ? ((TimeZone) this.timeOffset_).toBuilder() : null;
                                o1 B2 = pVar.B(TimeZone.parser(), f0Var);
                                this.timeOffset_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((TimeZone) B2);
                                    this.timeOffset_ = builder2.I();
                                }
                                this.timeOffsetCase_ = 9;
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

    public static DateTime parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DateTime) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DateTime parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (DateTime) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
