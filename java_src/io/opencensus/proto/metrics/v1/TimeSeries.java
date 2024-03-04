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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.z2;
import io.opencensus.proto.metrics.v1.LabelValue;
import io.opencensus.proto.metrics.v1.Point;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class TimeSeries extends GeneratedMessageV3 implements i {
    public static final int LABEL_VALUES_FIELD_NUMBER = 2;
    public static final int POINTS_FIELD_NUMBER = 3;
    public static final int START_TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private List<LabelValue> labelValues_;
    private byte memoizedIsInitialized;
    private List<Point> points_;
    private Timestamp startTimestamp_;
    private static final TimeSeries DEFAULT_INSTANCE = new TimeSeries();
    private static final e2<TimeSeries> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<TimeSeries> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TimeSeries m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TimeSeries(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f51030e;

        /* renamed from: f  reason: collision with root package name */
        private Timestamp f51031f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f51032g;

        /* renamed from: h  reason: collision with root package name */
        private List<LabelValue> f51033h;

        /* renamed from: i  reason: collision with root package name */
        private l2<LabelValue, LabelValue.b, c> f51034i;

        /* renamed from: j  reason: collision with root package name */
        private List<Point> f51035j;

        /* renamed from: k  reason: collision with root package name */
        private l2<Point, Point.c, g> f51036k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f51030e & 2) != 2) {
                this.f51033h = new ArrayList(this.f51033h);
                this.f51030e |= 2;
            }
        }

        private void b0() {
            if ((this.f51030e & 4) != 4) {
                this.f51035j = new ArrayList(this.f51035j);
                this.f51030e |= 4;
            }
        }

        private l2<LabelValue, LabelValue.b, c> e0() {
            if (this.f51034i == null) {
                this.f51034i = new l2<>(this.f51033h, (this.f51030e & 2) == 2, H(), O());
                this.f51033h = null;
            }
            return this.f51034i;
        }

        private l2<Point, Point.c, g> g0() {
            if (this.f51036k == null) {
                this.f51036k = new l2<>(this.f51035j, (this.f51030e & 4) == 4, H(), O());
                this.f51035j = null;
            }
            return this.f51036k;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f51044h.d(TimeSeries.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TimeSeries build() {
            TimeSeries I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TimeSeries I() {
            TimeSeries timeSeries = new TimeSeries(this, (a) null);
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51032g;
            if (q2Var == null) {
                timeSeries.startTimestamp_ = this.f51031f;
            } else {
                timeSeries.startTimestamp_ = q2Var.b();
            }
            l2<LabelValue, LabelValue.b, c> l2Var = this.f51034i;
            if (l2Var == null) {
                if ((this.f51030e & 2) == 2) {
                    this.f51033h = Collections.unmodifiableList(this.f51033h);
                    this.f51030e &= -3;
                }
                timeSeries.labelValues_ = this.f51033h;
            } else {
                timeSeries.labelValues_ = l2Var.e();
            }
            l2<Point, Point.c, g> l2Var2 = this.f51036k;
            if (l2Var2 == null) {
                if ((this.f51030e & 4) == 4) {
                    this.f51035j = Collections.unmodifiableList(this.f51035j);
                    this.f51030e &= -5;
                }
                timeSeries.points_ = this.f51035j;
            } else {
                timeSeries.points_ = l2Var2.e();
            }
            timeSeries.bitField0_ = 0;
            Q();
            return timeSeries;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public TimeSeries getDefaultInstanceForType() {
            return TimeSeries.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f51043g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.metrics.v1.TimeSeries.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.TimeSeries.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.TimeSeries r3 = (io.opencensus.proto.metrics.v1.TimeSeries) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.opencensus.proto.metrics.v1.TimeSeries r4 = (io.opencensus.proto.metrics.v1.TimeSeries) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.TimeSeries.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.TimeSeries$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TimeSeries) {
                return k0((TimeSeries) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(TimeSeries timeSeries) {
            if (timeSeries == TimeSeries.getDefaultInstance()) {
                return this;
            }
            if (timeSeries.hasStartTimestamp()) {
                l0(timeSeries.getStartTimestamp());
            }
            if (this.f51034i == null) {
                if (!timeSeries.labelValues_.isEmpty()) {
                    if (this.f51033h.isEmpty()) {
                        this.f51033h = timeSeries.labelValues_;
                        this.f51030e &= -3;
                    } else {
                        a0();
                        this.f51033h.addAll(timeSeries.labelValues_);
                    }
                    R();
                }
            } else if (!timeSeries.labelValues_.isEmpty()) {
                if (this.f51034i.k()) {
                    this.f51034i.f();
                    this.f51034i = null;
                    this.f51033h = timeSeries.labelValues_;
                    this.f51030e &= -3;
                    this.f51034i = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f51034i.b(timeSeries.labelValues_);
                }
            }
            if (this.f51036k == null) {
                if (!timeSeries.points_.isEmpty()) {
                    if (this.f51035j.isEmpty()) {
                        this.f51035j = timeSeries.points_;
                        this.f51030e &= -5;
                    } else {
                        b0();
                        this.f51035j.addAll(timeSeries.points_);
                    }
                    R();
                }
            } else if (!timeSeries.points_.isEmpty()) {
                if (this.f51036k.k()) {
                    this.f51036k.f();
                    this.f51036k = null;
                    this.f51035j = timeSeries.points_;
                    this.f51030e &= -5;
                    this.f51036k = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f51036k.b(timeSeries.points_);
                }
            }
            z(((GeneratedMessageV3) timeSeries).unknownFields);
            R();
            return this;
        }

        public b l0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51032g;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f51031f;
                if (timestamp2 != null) {
                    this.f51031f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f51031f = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51031f = null;
            this.f51033h = Collections.emptyList();
            this.f51035j = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51031f = null;
            this.f51033h = Collections.emptyList();
            this.f51035j = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ TimeSeries(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TimeSeries getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f51043g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TimeSeries parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TimeSeries parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TimeSeries> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TimeSeries)) {
            return super.equals(obj);
        }
        TimeSeries timeSeries = (TimeSeries) obj;
        boolean z10 = hasStartTimestamp() == timeSeries.hasStartTimestamp();
        if (hasStartTimestamp()) {
            z10 = z10 && getStartTimestamp().equals(timeSeries.getStartTimestamp());
        }
        return ((z10 && getLabelValuesList().equals(timeSeries.getLabelValuesList())) && getPointsList().equals(timeSeries.getPointsList())) && this.unknownFields.equals(timeSeries.unknownFields);
    }

    public LabelValue getLabelValues(int i9) {
        return this.labelValues_.get(i9);
    }

    public int getLabelValuesCount() {
        return this.labelValues_.size();
    }

    public List<LabelValue> getLabelValuesList() {
        return this.labelValues_;
    }

    public c getLabelValuesOrBuilder(int i9) {
        return this.labelValues_.get(i9);
    }

    public List<? extends c> getLabelValuesOrBuilderList() {
        return this.labelValues_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TimeSeries> getParserForType() {
        return PARSER;
    }

    public Point getPoints(int i9) {
        return this.points_.get(i9);
    }

    public int getPointsCount() {
        return this.points_.size();
    }

    public List<Point> getPointsList() {
        return this.points_;
    }

    public g getPointsOrBuilder(int i9) {
        return this.points_.get(i9);
    }

    public List<? extends g> getPointsOrBuilderList() {
        return this.points_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.startTimestamp_ != null ? CodedOutputStream.G(1, getStartTimestamp()) + 0 : 0;
        for (int i10 = 0; i10 < this.labelValues_.size(); i10++) {
            G += CodedOutputStream.G(2, this.labelValues_.get(i10));
        }
        for (int i11 = 0; i11 < this.points_.size(); i11++) {
            G += CodedOutputStream.G(3, this.points_.get(i11));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Timestamp getStartTimestamp() {
        Timestamp timestamp = this.startTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getStartTimestampOrBuilder() {
        return getStartTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasStartTimestamp() {
        return this.startTimestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasStartTimestamp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStartTimestamp().hashCode();
        }
        if (getLabelValuesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLabelValuesList().hashCode();
        }
        if (getPointsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPointsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f51044h.d(TimeSeries.class, b.class);
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
        if (this.startTimestamp_ != null) {
            codedOutputStream.L0(1, getStartTimestamp());
        }
        for (int i9 = 0; i9 < this.labelValues_.size(); i9++) {
            codedOutputStream.L0(2, this.labelValues_.get(i9));
        }
        for (int i10 = 0; i10 < this.points_.size(); i10++) {
            codedOutputStream.L0(3, this.points_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TimeSeries(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TimeSeries timeSeries) {
        return DEFAULT_INSTANCE.toBuilder().k0(timeSeries);
    }

    public static TimeSeries parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TimeSeries(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TimeSeries parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TimeSeries parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TimeSeries getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static TimeSeries parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TimeSeries() {
        this.memoizedIsInitialized = (byte) -1;
        this.labelValues_ = Collections.emptyList();
        this.points_ = Collections.emptyList();
    }

    public static TimeSeries parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TimeSeries parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TimeSeries parseFrom(InputStream inputStream) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TimeSeries(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Timestamp timestamp = this.startTimestamp_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.startTimestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.startTimestamp_ = builder.I();
                                }
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.labelValues_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.labelValues_.add(pVar.B(LabelValue.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.points_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.points_.add(pVar.B(Point.parser(), f0Var));
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
                if (z11 & true) {
                    this.labelValues_ = Collections.unmodifiableList(this.labelValues_);
                }
                if (z11 & true) {
                    this.points_ = Collections.unmodifiableList(this.points_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static TimeSeries parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TimeSeries parseFrom(p pVar) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TimeSeries parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TimeSeries) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
