package io.opencensus.proto.metrics.v1;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.opencensus.proto.metrics.v1.DistributionValue;
import io.opencensus.proto.metrics.v1.SummaryValue;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Point extends GeneratedMessageV3 implements g {
    public static final int DISTRIBUTION_VALUE_FIELD_NUMBER = 4;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 3;
    public static final int INT64_VALUE_FIELD_NUMBER = 2;
    public static final int SUMMARY_VALUE_FIELD_NUMBER = 5;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Timestamp timestamp_;
    private int valueCase_;
    private Object value_;
    private static final Point DEFAULT_INSTANCE = new Point();
    private static final e2<Point> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum ValueCase implements u0.c {
        INT64_VALUE(2),
        DOUBLE_VALUE(3),
        DISTRIBUTION_VALUE(4),
        SUMMARY_VALUE(5),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i9) {
            this.value = i9;
        }

        public static ValueCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return SUMMARY_VALUE;
                        }
                        return DISTRIBUTION_VALUE;
                    }
                    return DOUBLE_VALUE;
                }
                return INT64_VALUE;
            }
            return VALUE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ValueCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<Point> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Point m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Point(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51008a;

        static {
            int[] iArr = new int[ValueCase.values().length];
            f51008a = iArr;
            try {
                iArr[ValueCase.INT64_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51008a[ValueCase.DOUBLE_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51008a[ValueCase.DISTRIBUTION_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51008a[ValueCase.SUMMARY_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51008a[ValueCase.VALUE_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f51009e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51010f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f51011g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f51012h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DistributionValue, DistributionValue.e, io.opencensus.proto.metrics.v1.a> f51013i;

        /* renamed from: j  reason: collision with root package name */
        private q2<SummaryValue, SummaryValue.b, h> f51014j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f51048l.d(Point.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Point build() {
            Point I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Point I() {
            Point point = new Point(this, (a) null);
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51012h;
            if (q2Var == null) {
                point.timestamp_ = this.f51011g;
            } else {
                point.timestamp_ = q2Var.b();
            }
            if (this.f51009e == 2) {
                point.value_ = this.f51010f;
            }
            if (this.f51009e == 3) {
                point.value_ = this.f51010f;
            }
            if (this.f51009e == 4) {
                q2<DistributionValue, DistributionValue.e, io.opencensus.proto.metrics.v1.a> q2Var2 = this.f51013i;
                if (q2Var2 == null) {
                    point.value_ = this.f51010f;
                } else {
                    point.value_ = q2Var2.b();
                }
            }
            if (this.f51009e == 5) {
                q2<SummaryValue, SummaryValue.b, h> q2Var3 = this.f51014j;
                if (q2Var3 == null) {
                    point.value_ = this.f51010f;
                } else {
                    point.value_ = q2Var3.b();
                }
            }
            point.valueCase_ = this.f51009e;
            Q();
            return point;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Point getDefaultInstanceForType() {
            return Point.getDefaultInstance();
        }

        public c d0(DistributionValue distributionValue) {
            q2<DistributionValue, DistributionValue.e, io.opencensus.proto.metrics.v1.a> q2Var = this.f51013i;
            if (q2Var == null) {
                if (this.f51009e == 4 && this.f51010f != DistributionValue.getDefaultInstance()) {
                    this.f51010f = DistributionValue.newBuilder((DistributionValue) this.f51010f).j0(distributionValue).I();
                } else {
                    this.f51010f = distributionValue;
                }
                R();
            } else {
                if (this.f51009e == 4) {
                    q2Var.e(distributionValue);
                }
                this.f51013i.g(distributionValue);
            }
            this.f51009e = 4;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.metrics.v1.Point.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.Point.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.Point r3 = (io.opencensus.proto.metrics.v1.Point) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.metrics.v1.Point r4 = (io.opencensus.proto.metrics.v1.Point) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.Point.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.Point$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Point) {
                return h0((Point) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f51047k;
        }

        public c h0(Point point) {
            if (point == Point.getDefaultInstance()) {
                return this;
            }
            if (point.hasTimestamp()) {
                j0(point.getTimestamp());
            }
            int i9 = b.f51008a[point.getValueCase().ordinal()];
            if (i9 == 1) {
                n0(point.getInt64Value());
            } else if (i9 == 2) {
                l0(point.getDoubleValue());
            } else if (i9 == 3) {
                d0(point.getDistributionValue());
            } else if (i9 == 4) {
                i0(point.getSummaryValue());
            }
            z(((GeneratedMessageV3) point).unknownFields);
            R();
            return this;
        }

        public c i0(SummaryValue summaryValue) {
            q2<SummaryValue, SummaryValue.b, h> q2Var = this.f51014j;
            if (q2Var == null) {
                if (this.f51009e == 5 && this.f51010f != SummaryValue.getDefaultInstance()) {
                    this.f51010f = SummaryValue.newBuilder((SummaryValue) this.f51010f).h0(summaryValue).I();
                } else {
                    this.f51010f = summaryValue;
                }
                R();
            } else {
                if (this.f51009e == 5) {
                    q2Var.e(summaryValue);
                }
                this.f51014j.g(summaryValue);
            }
            this.f51009e = 5;
            return this;
        }

        public c j0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51012h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f51011g;
                if (timestamp2 != null) {
                    this.f51011g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f51011g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c l0(double d10) {
            this.f51009e = 3;
            this.f51010f = Double.valueOf(d10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c n0(long j10) {
            this.f51009e = 2;
            this.f51010f = Long.valueOf(j10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f51009e = 0;
            this.f51011g = null;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51009e = 0;
            this.f51011g = null;
            b0();
        }
    }

    /* synthetic */ Point(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Point getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f51047k;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Point parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Point) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Point parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Point> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0069, code lost:
        if (getSummaryValue().equals(r8.getSummaryValue()) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006b, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007d, code lost:
        if (getDistributionValue().equals(r8.getDistributionValue()) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0094, code lost:
        if (java.lang.Double.doubleToLongBits(getDoubleValue()) == java.lang.Double.doubleToLongBits(r8.getDoubleValue())) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a3, code lost:
        if (getInt64Value() == r8.getInt64Value()) goto L36;
     */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 != r7) goto L4
            return r0
        L4:
            boolean r1 = r8 instanceof io.opencensus.proto.metrics.v1.Point
            if (r1 != 0) goto Ld
            boolean r8 = super.equals(r8)
            return r8
        Ld:
            io.opencensus.proto.metrics.v1.Point r8 = (io.opencensus.proto.metrics.v1.Point) r8
            boolean r1 = r7.hasTimestamp()
            boolean r2 = r8.hasTimestamp()
            r3 = 0
            if (r1 != r2) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            boolean r2 = r7.hasTimestamp()
            if (r2 == 0) goto L36
            if (r1 == 0) goto L35
            com.google.protobuf.Timestamp r1 = r7.getTimestamp()
            com.google.protobuf.Timestamp r2 = r8.getTimestamp()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L35
            r1 = 1
            goto L36
        L35:
            r1 = 0
        L36:
            if (r1 == 0) goto L48
            io.opencensus.proto.metrics.v1.Point$ValueCase r1 = r7.getValueCase()
            io.opencensus.proto.metrics.v1.Point$ValueCase r2 = r8.getValueCase()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L48
            r1 = 1
            goto L49
        L48:
            r1 = 0
        L49:
            if (r1 != 0) goto L4c
            return r3
        L4c:
            int r2 = r7.valueCase_
            r4 = 2
            if (r2 == r4) goto L97
            r4 = 3
            if (r2 == r4) goto L80
            r4 = 4
            if (r2 == r4) goto L6f
            r4 = 5
            if (r2 == r4) goto L5b
            goto La6
        L5b:
            if (r1 == 0) goto L6d
            io.opencensus.proto.metrics.v1.SummaryValue r1 = r7.getSummaryValue()
            io.opencensus.proto.metrics.v1.SummaryValue r2 = r8.getSummaryValue()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L6d
        L6b:
            r1 = 1
            goto La6
        L6d:
            r1 = 0
            goto La6
        L6f:
            if (r1 == 0) goto L6d
            io.opencensus.proto.metrics.v1.DistributionValue r1 = r7.getDistributionValue()
            io.opencensus.proto.metrics.v1.DistributionValue r2 = r8.getDistributionValue()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L6d
            goto L6b
        L80:
            if (r1 == 0) goto L6d
            double r1 = r7.getDoubleValue()
            long r1 = java.lang.Double.doubleToLongBits(r1)
            double r4 = r8.getDoubleValue()
            long r4 = java.lang.Double.doubleToLongBits(r4)
            int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r6 != 0) goto L6d
            goto L6b
        L97:
            if (r1 == 0) goto L6d
            long r1 = r7.getInt64Value()
            long r4 = r8.getInt64Value()
            int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r6 != 0) goto L6d
            goto L6b
        La6:
            if (r1 == 0) goto Lb3
            com.google.protobuf.h3 r1 = r7.unknownFields
            com.google.protobuf.h3 r8 = r8.unknownFields
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto Lb3
            goto Lb4
        Lb3:
            r0 = 0
        Lb4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.Point.equals(java.lang.Object):boolean");
    }

    public DistributionValue getDistributionValue() {
        if (this.valueCase_ == 4) {
            return (DistributionValue) this.value_;
        }
        return DistributionValue.getDefaultInstance();
    }

    public io.opencensus.proto.metrics.v1.a getDistributionValueOrBuilder() {
        if (this.valueCase_ == 4) {
            return (DistributionValue) this.value_;
        }
        return DistributionValue.getDefaultInstance();
    }

    public double getDoubleValue() {
        if (this.valueCase_ == 3) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public long getInt64Value() {
        if (this.valueCase_ == 2) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Point> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.timestamp_ != null ? 0 + CodedOutputStream.G(1, getTimestamp()) : 0;
        if (this.valueCase_ == 2) {
            G += CodedOutputStream.z(2, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 3) {
            G += CodedOutputStream.j(3, ((Double) this.value_).doubleValue());
        }
        if (this.valueCase_ == 4) {
            G += CodedOutputStream.G(4, (DistributionValue) this.value_);
        }
        if (this.valueCase_ == 5) {
            G += CodedOutputStream.G(5, (SummaryValue) this.value_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SummaryValue getSummaryValue() {
        if (this.valueCase_ == 5) {
            return (SummaryValue) this.value_;
        }
        return SummaryValue.getDefaultInstance();
    }

    public h getSummaryValueOrBuilder() {
        if (this.valueCase_ == 5) {
            return (SummaryValue) this.value_;
        }
        return SummaryValue.getDefaultInstance();
    }

    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getTimestampOrBuilder() {
        return getTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasDistributionValue() {
        return this.valueCase_ == 4;
    }

    public boolean hasSummaryValue() {
        return this.valueCase_ == 5;
    }

    public boolean hasTimestamp() {
        return this.timestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int i10;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTimestamp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTimestamp().hashCode();
        }
        int i12 = this.valueCase_;
        if (i12 == 2) {
            i9 = ((hashCode * 37) + 2) * 53;
            i10 = u0.i(getInt64Value());
        } else if (i12 == 3) {
            i9 = ((hashCode * 37) + 3) * 53;
            i10 = u0.i(Double.doubleToLongBits(getDoubleValue()));
        } else if (i12 == 4) {
            i9 = ((hashCode * 37) + 4) * 53;
            i10 = getDistributionValue().hashCode();
        } else {
            if (i12 == 5) {
                i9 = ((hashCode * 37) + 5) * 53;
                i10 = getSummaryValue().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        hashCode = i9 + i10;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f51048l.d(Point.class, c.class);
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
        if (this.timestamp_ != null) {
            codedOutputStream.L0(1, getTimestamp());
        }
        if (this.valueCase_ == 2) {
            codedOutputStream.J0(2, ((Long) this.value_).longValue());
        }
        if (this.valueCase_ == 3) {
            codedOutputStream.t0(3, ((Double) this.value_).doubleValue());
        }
        if (this.valueCase_ == 4) {
            codedOutputStream.L0(4, (DistributionValue) this.value_);
        }
        if (this.valueCase_ == 5) {
            codedOutputStream.L0(5, (SummaryValue) this.value_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Point(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Point point) {
        return DEFAULT_INSTANCE.toBuilder().h0(point);
    }

    public static Point parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Point(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Point parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Point) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Point parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Point getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static Point parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Point parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Point() {
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Point parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Point parseFrom(InputStream inputStream) throws IOException {
        return (Point) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Point(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Timestamp timestamp = this.timestamp_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.timestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.timestamp_ = builder.I();
                                }
                            } else if (L == 16) {
                                this.valueCase_ = 2;
                                this.value_ = Long.valueOf(pVar.A());
                            } else if (L == 25) {
                                this.valueCase_ = 3;
                                this.value_ = Double.valueOf(pVar.t());
                            } else if (L == 34) {
                                DistributionValue.e builder2 = this.valueCase_ == 4 ? ((DistributionValue) this.value_).toBuilder() : null;
                                o1 B = pVar.B(DistributionValue.parser(), f0Var);
                                this.value_ = B;
                                if (builder2 != null) {
                                    builder2.j0((DistributionValue) B);
                                    this.value_ = builder2.I();
                                }
                                this.valueCase_ = 4;
                            } else if (L != 42) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                SummaryValue.b builder3 = this.valueCase_ == 5 ? ((SummaryValue) this.value_).toBuilder() : null;
                                o1 B2 = pVar.B(SummaryValue.parser(), f0Var);
                                this.value_ = B2;
                                if (builder3 != null) {
                                    builder3.h0((SummaryValue) B2);
                                    this.value_ = builder3.I();
                                }
                                this.valueCase_ = 5;
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

    public static Point parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Point) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Point parseFrom(p pVar) throws IOException {
        return (Point) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Point parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Point) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
