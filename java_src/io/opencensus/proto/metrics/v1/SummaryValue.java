package io.opencensus.proto.metrics.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DoubleValue;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Int64Value;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.s0;
import com.google.protobuf.u;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class SummaryValue extends GeneratedMessageV3 implements h {
    public static final int COUNT_FIELD_NUMBER = 1;
    private static final SummaryValue DEFAULT_INSTANCE = new SummaryValue();
    private static final e2<SummaryValue> PARSER = new a();
    public static final int SNAPSHOT_FIELD_NUMBER = 3;
    public static final int SUM_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Int64Value count_;
    private byte memoizedIsInitialized;
    private Snapshot snapshot_;
    private DoubleValue sum_;

    /* loaded from: classes7.dex */
    public static final class Snapshot extends GeneratedMessageV3 implements c {
        public static final int COUNT_FIELD_NUMBER = 1;
        private static final Snapshot DEFAULT_INSTANCE = new Snapshot();
        private static final e2<Snapshot> PARSER = new a();
        public static final int PERCENTILE_VALUES_FIELD_NUMBER = 3;
        public static final int SUM_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Int64Value count_;
        private byte memoizedIsInitialized;
        private List<ValueAtPercentile> percentileValues_;
        private DoubleValue sum_;

        /* loaded from: classes7.dex */
        public static final class ValueAtPercentile extends GeneratedMessageV3 implements c {
            private static final ValueAtPercentile DEFAULT_INSTANCE = new ValueAtPercentile();
            private static final e2<ValueAtPercentile> PARSER = new a();
            public static final int PERCENTILE_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private double percentile_;
            private double value_;

            /* loaded from: classes7.dex */
            static class a extends com.google.protobuf.c<ValueAtPercentile> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ValueAtPercentile m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ValueAtPercentile(pVar, f0Var, null);
                }
            }

            /* loaded from: classes7.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private double f51015e;

                /* renamed from: f  reason: collision with root package name */
                private double f51016f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return f.D.d(ValueAtPercentile.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ValueAtPercentile build() {
                    ValueAtPercentile I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ValueAtPercentile I() {
                    ValueAtPercentile valueAtPercentile = new ValueAtPercentile(this, (a) null);
                    valueAtPercentile.percentile_ = this.f51015e;
                    valueAtPercentile.value_ = this.f51016f;
                    Q();
                    return valueAtPercentile;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ValueAtPercentile getDefaultInstanceForType() {
                    return ValueAtPercentile.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.opencensus.proto.metrics.v1.SummaryValue$Snapshot$ValueAtPercentile r3 = (io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.opencensus.proto.metrics.v1.SummaryValue$Snapshot$ValueAtPercentile r4 = (io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.SummaryValue$Snapshot$ValueAtPercentile$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ValueAtPercentile) {
                        return g0((ValueAtPercentile) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ValueAtPercentile valueAtPercentile) {
                    if (valueAtPercentile == ValueAtPercentile.getDefaultInstance()) {
                        return this;
                    }
                    if (valueAtPercentile.getPercentile() != 0.0d) {
                        j0(valueAtPercentile.getPercentile());
                    }
                    if (valueAtPercentile.getValue() != 0.0d) {
                        l0(valueAtPercentile.getValue());
                    }
                    z(((GeneratedMessageV3) valueAtPercentile).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return f.C;
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

                public b j0(double d10) {
                    this.f51015e = d10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: k0 */
                public final b f1(h3 h3Var) {
                    return (b) super.V(h3Var);
                }

                public b l0(double d10) {
                    this.f51016f = d10;
                    R();
                    return this;
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

            /* synthetic */ ValueAtPercentile(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ValueAtPercentile getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return f.C;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ValueAtPercentile parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ValueAtPercentile parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ValueAtPercentile> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ValueAtPercentile)) {
                    return super.equals(obj);
                }
                ValueAtPercentile valueAtPercentile = (ValueAtPercentile) obj;
                return (((Double.doubleToLongBits(getPercentile()) > Double.doubleToLongBits(valueAtPercentile.getPercentile()) ? 1 : (Double.doubleToLongBits(getPercentile()) == Double.doubleToLongBits(valueAtPercentile.getPercentile()) ? 0 : -1)) == 0) && (Double.doubleToLongBits(getValue()) > Double.doubleToLongBits(valueAtPercentile.getValue()) ? 1 : (Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(valueAtPercentile.getValue()) ? 0 : -1)) == 0) && this.unknownFields.equals(valueAtPercentile.unknownFields);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ValueAtPercentile> getParserForType() {
                return PARSER;
            }

            public double getPercentile() {
                return this.percentile_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                double d10 = this.percentile_;
                int j10 = d10 != 0.0d ? 0 + CodedOutputStream.j(1, d10) : 0;
                double d11 = this.value_;
                if (d11 != 0.0d) {
                    j10 += CodedOutputStream.j(2, d11);
                }
                int serializedSize = j10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public double getValue() {
                return this.value_;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(Double.doubleToLongBits(getPercentile()))) * 37) + 2) * 53) + u0.i(Double.doubleToLongBits(getValue()))) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return f.D.d(ValueAtPercentile.class, b.class);
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
                double d10 = this.percentile_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(1, d10);
                }
                double d11 = this.value_;
                if (d11 != 0.0d) {
                    codedOutputStream.t0(2, d11);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ValueAtPercentile(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ValueAtPercentile valueAtPercentile) {
                return DEFAULT_INSTANCE.toBuilder().g0(valueAtPercentile);
            }

            public static ValueAtPercentile parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ValueAtPercentile(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ValueAtPercentile parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ValueAtPercentile parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ValueAtPercentile getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ValueAtPercentile parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ValueAtPercentile() {
                this.memoizedIsInitialized = (byte) -1;
                this.percentile_ = 0.0d;
                this.value_ = 0.0d;
            }

            public static ValueAtPercentile parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ValueAtPercentile parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static ValueAtPercentile parseFrom(InputStream inputStream) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private ValueAtPercentile(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (L == 9) {
                                        this.percentile_ = pVar.t();
                                    } else if (L != 17) {
                                        if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.value_ = pVar.t();
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

            public static ValueAtPercentile parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ValueAtPercentile parseFrom(p pVar) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ValueAtPercentile parseFrom(p pVar, f0 f0Var) throws IOException {
                return (ValueAtPercentile) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Snapshot> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Snapshot m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Snapshot(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f51017e;

            /* renamed from: f  reason: collision with root package name */
            private Int64Value f51018f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Int64Value, Int64Value.b, s0> f51019g;

            /* renamed from: h  reason: collision with root package name */
            private DoubleValue f51020h;

            /* renamed from: i  reason: collision with root package name */
            private q2<DoubleValue, DoubleValue.b, u> f51021i;

            /* renamed from: j  reason: collision with root package name */
            private List<ValueAtPercentile> f51022j;

            /* renamed from: k  reason: collision with root package name */
            private l2<ValueAtPercentile, ValueAtPercentile.b, c> f51023k;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f51017e & 4) != 4) {
                    this.f51022j = new ArrayList(this.f51022j);
                    this.f51017e |= 4;
                }
            }

            private l2<ValueAtPercentile, ValueAtPercentile.b, c> d0() {
                if (this.f51023k == null) {
                    this.f51023k = new l2<>(this.f51022j, (this.f51017e & 4) == 4, H(), O());
                    this.f51022j = null;
                }
                return this.f51023k;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return f.B.d(Snapshot.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Snapshot build() {
                Snapshot I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Snapshot I() {
                Snapshot snapshot = new Snapshot(this, (a) null);
                q2<Int64Value, Int64Value.b, s0> q2Var = this.f51019g;
                if (q2Var == null) {
                    snapshot.count_ = this.f51018f;
                } else {
                    snapshot.count_ = q2Var.b();
                }
                q2<DoubleValue, DoubleValue.b, u> q2Var2 = this.f51021i;
                if (q2Var2 == null) {
                    snapshot.sum_ = this.f51020h;
                } else {
                    snapshot.sum_ = q2Var2.b();
                }
                l2<ValueAtPercentile, ValueAtPercentile.b, c> l2Var = this.f51023k;
                if (l2Var == null) {
                    if ((this.f51017e & 4) == 4) {
                        this.f51022j = Collections.unmodifiableList(this.f51022j);
                        this.f51017e &= -5;
                    }
                    snapshot.percentileValues_ = this.f51022j;
                } else {
                    snapshot.percentileValues_ = l2Var.e();
                }
                snapshot.bitField0_ = 0;
                Q();
                return snapshot;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Snapshot getDefaultInstanceForType() {
                return Snapshot.getDefaultInstance();
            }

            public b g0(Int64Value int64Value) {
                q2<Int64Value, Int64Value.b, s0> q2Var = this.f51019g;
                if (q2Var == null) {
                    Int64Value int64Value2 = this.f51018f;
                    if (int64Value2 != null) {
                        this.f51018f = Int64Value.newBuilder(int64Value2).e0(int64Value).I();
                    } else {
                        this.f51018f = int64Value;
                    }
                    R();
                } else {
                    q2Var.e(int64Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return f.A;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.metrics.v1.SummaryValue$Snapshot r3 = (io.opencensus.proto.metrics.v1.SummaryValue.Snapshot) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.j0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.opencensus.proto.metrics.v1.SummaryValue$Snapshot r4 = (io.opencensus.proto.metrics.v1.SummaryValue.Snapshot) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.j0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.SummaryValue.Snapshot.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.SummaryValue$Snapshot$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Snapshot) {
                    return j0((Snapshot) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Snapshot snapshot) {
                if (snapshot == Snapshot.getDefaultInstance()) {
                    return this;
                }
                if (snapshot.hasCount()) {
                    g0(snapshot.getCount());
                }
                if (snapshot.hasSum()) {
                    k0(snapshot.getSum());
                }
                if (this.f51023k == null) {
                    if (!snapshot.percentileValues_.isEmpty()) {
                        if (this.f51022j.isEmpty()) {
                            this.f51022j = snapshot.percentileValues_;
                            this.f51017e &= -5;
                        } else {
                            a0();
                            this.f51022j.addAll(snapshot.percentileValues_);
                        }
                        R();
                    }
                } else if (!snapshot.percentileValues_.isEmpty()) {
                    if (this.f51023k.k()) {
                        this.f51023k.f();
                        this.f51023k = null;
                        this.f51022j = snapshot.percentileValues_;
                        this.f51017e &= -5;
                        this.f51023k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f51023k.b(snapshot.percentileValues_);
                    }
                }
                z(((GeneratedMessageV3) snapshot).unknownFields);
                R();
                return this;
            }

            public b k0(DoubleValue doubleValue) {
                q2<DoubleValue, DoubleValue.b, u> q2Var = this.f51021i;
                if (q2Var == null) {
                    DoubleValue doubleValue2 = this.f51020h;
                    if (doubleValue2 != null) {
                        this.f51020h = DoubleValue.newBuilder(doubleValue2).e0(doubleValue).I();
                    } else {
                        this.f51020h = doubleValue;
                    }
                    R();
                } else {
                    q2Var.e(doubleValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f51018f = null;
                this.f51020h = null;
                this.f51022j = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51018f = null;
                this.f51020h = null;
                this.f51022j = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes7.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Snapshot(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Snapshot getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return f.A;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Snapshot parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Snapshot parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Snapshot> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Snapshot)) {
                return super.equals(obj);
            }
            Snapshot snapshot = (Snapshot) obj;
            boolean z10 = hasCount() == snapshot.hasCount();
            if (hasCount()) {
                z10 = z10 && getCount().equals(snapshot.getCount());
            }
            boolean z11 = z10 && hasSum() == snapshot.hasSum();
            if (hasSum()) {
                z11 = z11 && getSum().equals(snapshot.getSum());
            }
            return (z11 && getPercentileValuesList().equals(snapshot.getPercentileValuesList())) && this.unknownFields.equals(snapshot.unknownFields);
        }

        public Int64Value getCount() {
            Int64Value int64Value = this.count_;
            return int64Value == null ? Int64Value.getDefaultInstance() : int64Value;
        }

        public s0 getCountOrBuilder() {
            return getCount();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Snapshot> getParserForType() {
            return PARSER;
        }

        public ValueAtPercentile getPercentileValues(int i9) {
            return this.percentileValues_.get(i9);
        }

        public int getPercentileValuesCount() {
            return this.percentileValues_.size();
        }

        public List<ValueAtPercentile> getPercentileValuesList() {
            return this.percentileValues_;
        }

        public c getPercentileValuesOrBuilder(int i9) {
            return this.percentileValues_.get(i9);
        }

        public List<? extends c> getPercentileValuesOrBuilderList() {
            return this.percentileValues_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.count_ != null ? CodedOutputStream.G(1, getCount()) + 0 : 0;
            if (this.sum_ != null) {
                G += CodedOutputStream.G(2, getSum());
            }
            for (int i10 = 0; i10 < this.percentileValues_.size(); i10++) {
                G += CodedOutputStream.G(3, this.percentileValues_.get(i10));
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public DoubleValue getSum() {
            DoubleValue doubleValue = this.sum_;
            return doubleValue == null ? DoubleValue.getDefaultInstance() : doubleValue;
        }

        public u getSumOrBuilder() {
            return getSum();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasCount() {
            return this.count_ != null;
        }

        public boolean hasSum() {
            return this.sum_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasCount()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getCount().hashCode();
            }
            if (hasSum()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getSum().hashCode();
            }
            if (getPercentileValuesCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getPercentileValuesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return f.B.d(Snapshot.class, b.class);
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
            if (this.count_ != null) {
                codedOutputStream.L0(1, getCount());
            }
            if (this.sum_ != null) {
                codedOutputStream.L0(2, getSum());
            }
            for (int i9 = 0; i9 < this.percentileValues_.size(); i9++) {
                codedOutputStream.L0(3, this.percentileValues_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Snapshot(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Snapshot snapshot) {
            return DEFAULT_INSTANCE.toBuilder().j0(snapshot);
        }

        public static Snapshot parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Snapshot(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Snapshot parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Snapshot parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Snapshot getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static Snapshot parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Snapshot() {
            this.memoizedIsInitialized = (byte) -1;
            this.percentileValues_ = Collections.emptyList();
        }

        public static Snapshot parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Snapshot parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Snapshot parseFrom(InputStream inputStream) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Snapshot(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Int64Value int64Value = this.count_;
                                Int64Value.b builder = int64Value != null ? int64Value.toBuilder() : null;
                                Int64Value int64Value2 = (Int64Value) pVar.B(Int64Value.parser(), f0Var);
                                this.count_ = int64Value2;
                                if (builder != null) {
                                    builder.e0(int64Value2);
                                    this.count_ = builder.I();
                                }
                            } else if (L == 18) {
                                DoubleValue doubleValue = this.sum_;
                                DoubleValue.b builder2 = doubleValue != null ? doubleValue.toBuilder() : null;
                                DoubleValue doubleValue2 = (DoubleValue) pVar.B(DoubleValue.parser(), f0Var);
                                this.sum_ = doubleValue2;
                                if (builder2 != null) {
                                    builder2.e0(doubleValue2);
                                    this.sum_ = builder2.I();
                                }
                            } else if (L != 26) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.percentileValues_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.percentileValues_.add(pVar.B(ValueAtPercentile.parser(), f0Var));
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
                        this.percentileValues_ = Collections.unmodifiableList(this.percentileValues_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Snapshot parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Snapshot parseFrom(p pVar) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Snapshot parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Snapshot) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<SummaryValue> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SummaryValue m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SummaryValue(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private Int64Value f51024e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Int64Value, Int64Value.b, s0> f51025f;

        /* renamed from: g  reason: collision with root package name */
        private DoubleValue f51026g;

        /* renamed from: h  reason: collision with root package name */
        private q2<DoubleValue, DoubleValue.b, u> f51027h;

        /* renamed from: i  reason: collision with root package name */
        private Snapshot f51028i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Snapshot, Snapshot.b, c> f51029j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f51062z.d(SummaryValue.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SummaryValue build() {
            SummaryValue I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SummaryValue I() {
            SummaryValue summaryValue = new SummaryValue(this, (a) null);
            q2<Int64Value, Int64Value.b, s0> q2Var = this.f51025f;
            if (q2Var == null) {
                summaryValue.count_ = this.f51024e;
            } else {
                summaryValue.count_ = q2Var.b();
            }
            q2<DoubleValue, DoubleValue.b, u> q2Var2 = this.f51027h;
            if (q2Var2 == null) {
                summaryValue.sum_ = this.f51026g;
            } else {
                summaryValue.sum_ = q2Var2.b();
            }
            q2<Snapshot, Snapshot.b, c> q2Var3 = this.f51029j;
            if (q2Var3 == null) {
                summaryValue.snapshot_ = this.f51028i;
            } else {
                summaryValue.snapshot_ = q2Var3.b();
            }
            Q();
            return summaryValue;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SummaryValue getDefaultInstanceForType() {
            return SummaryValue.getDefaultInstance();
        }

        public b d0(Int64Value int64Value) {
            q2<Int64Value, Int64Value.b, s0> q2Var = this.f51025f;
            if (q2Var == null) {
                Int64Value int64Value2 = this.f51024e;
                if (int64Value2 != null) {
                    this.f51024e = Int64Value.newBuilder(int64Value2).e0(int64Value).I();
                } else {
                    this.f51024e = int64Value;
                }
                R();
            } else {
                q2Var.e(int64Value);
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
        public io.opencensus.proto.metrics.v1.SummaryValue.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.SummaryValue.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.SummaryValue r3 = (io.opencensus.proto.metrics.v1.SummaryValue) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.metrics.v1.SummaryValue r4 = (io.opencensus.proto.metrics.v1.SummaryValue) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.SummaryValue.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.SummaryValue$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SummaryValue) {
                return h0((SummaryValue) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f51061y;
        }

        public b h0(SummaryValue summaryValue) {
            if (summaryValue == SummaryValue.getDefaultInstance()) {
                return this;
            }
            if (summaryValue.hasCount()) {
                d0(summaryValue.getCount());
            }
            if (summaryValue.hasSum()) {
                j0(summaryValue.getSum());
            }
            if (summaryValue.hasSnapshot()) {
                i0(summaryValue.getSnapshot());
            }
            z(((GeneratedMessageV3) summaryValue).unknownFields);
            R();
            return this;
        }

        public b i0(Snapshot snapshot) {
            q2<Snapshot, Snapshot.b, c> q2Var = this.f51029j;
            if (q2Var == null) {
                Snapshot snapshot2 = this.f51028i;
                if (snapshot2 != null) {
                    this.f51028i = Snapshot.newBuilder(snapshot2).j0(snapshot).I();
                } else {
                    this.f51028i = snapshot;
                }
                R();
            } else {
                q2Var.e(snapshot);
            }
            return this;
        }

        public b j0(DoubleValue doubleValue) {
            q2<DoubleValue, DoubleValue.b, u> q2Var = this.f51027h;
            if (q2Var == null) {
                DoubleValue doubleValue2 = this.f51026g;
                if (doubleValue2 != null) {
                    this.f51026g = DoubleValue.newBuilder(doubleValue2).e0(doubleValue).I();
                } else {
                    this.f51026g = doubleValue;
                }
                R();
            } else {
                q2Var.e(doubleValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51024e = null;
            this.f51026g = null;
            this.f51028i = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51024e = null;
            this.f51026g = null;
            this.f51028i = null;
            b0();
        }
    }

    /* loaded from: classes7.dex */
    public interface c extends r1 {
    }

    /* synthetic */ SummaryValue(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SummaryValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f51061y;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SummaryValue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SummaryValue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SummaryValue> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SummaryValue)) {
            return super.equals(obj);
        }
        SummaryValue summaryValue = (SummaryValue) obj;
        boolean z10 = hasCount() == summaryValue.hasCount();
        if (hasCount()) {
            z10 = z10 && getCount().equals(summaryValue.getCount());
        }
        boolean z11 = z10 && hasSum() == summaryValue.hasSum();
        if (hasSum()) {
            z11 = z11 && getSum().equals(summaryValue.getSum());
        }
        boolean z12 = z11 && hasSnapshot() == summaryValue.hasSnapshot();
        if (hasSnapshot()) {
            z12 = z12 && getSnapshot().equals(summaryValue.getSnapshot());
        }
        return z12 && this.unknownFields.equals(summaryValue.unknownFields);
    }

    public Int64Value getCount() {
        Int64Value int64Value = this.count_;
        return int64Value == null ? Int64Value.getDefaultInstance() : int64Value;
    }

    public s0 getCountOrBuilder() {
        return getCount();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SummaryValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.count_ != null ? 0 + CodedOutputStream.G(1, getCount()) : 0;
        if (this.sum_ != null) {
            G += CodedOutputStream.G(2, getSum());
        }
        if (this.snapshot_ != null) {
            G += CodedOutputStream.G(3, getSnapshot());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Snapshot getSnapshot() {
        Snapshot snapshot = this.snapshot_;
        return snapshot == null ? Snapshot.getDefaultInstance() : snapshot;
    }

    public c getSnapshotOrBuilder() {
        return getSnapshot();
    }

    public DoubleValue getSum() {
        DoubleValue doubleValue = this.sum_;
        return doubleValue == null ? DoubleValue.getDefaultInstance() : doubleValue;
    }

    public u getSumOrBuilder() {
        return getSum();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCount() {
        return this.count_ != null;
    }

    public boolean hasSnapshot() {
        return this.snapshot_ != null;
    }

    public boolean hasSum() {
        return this.sum_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasCount()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getCount().hashCode();
        }
        if (hasSum()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getSum().hashCode();
        }
        if (hasSnapshot()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getSnapshot().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f51062z.d(SummaryValue.class, b.class);
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
        if (this.count_ != null) {
            codedOutputStream.L0(1, getCount());
        }
        if (this.sum_ != null) {
            codedOutputStream.L0(2, getSum());
        }
        if (this.snapshot_ != null) {
            codedOutputStream.L0(3, getSnapshot());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SummaryValue(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SummaryValue summaryValue) {
        return DEFAULT_INSTANCE.toBuilder().h0(summaryValue);
    }

    public static SummaryValue parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SummaryValue(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SummaryValue parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SummaryValue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SummaryValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static SummaryValue parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SummaryValue() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SummaryValue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SummaryValue parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private SummaryValue(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Int64Value int64Value = this.count_;
                            Int64Value.b builder = int64Value != null ? int64Value.toBuilder() : null;
                            Int64Value int64Value2 = (Int64Value) pVar.B(Int64Value.parser(), f0Var);
                            this.count_ = int64Value2;
                            if (builder != null) {
                                builder.e0(int64Value2);
                                this.count_ = builder.I();
                            }
                        } else if (L == 18) {
                            DoubleValue doubleValue = this.sum_;
                            DoubleValue.b builder2 = doubleValue != null ? doubleValue.toBuilder() : null;
                            DoubleValue doubleValue2 = (DoubleValue) pVar.B(DoubleValue.parser(), f0Var);
                            this.sum_ = doubleValue2;
                            if (builder2 != null) {
                                builder2.e0(doubleValue2);
                                this.sum_ = builder2.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Snapshot snapshot = this.snapshot_;
                            Snapshot.b builder3 = snapshot != null ? snapshot.toBuilder() : null;
                            Snapshot snapshot2 = (Snapshot) pVar.B(Snapshot.parser(), f0Var);
                            this.snapshot_ = snapshot2;
                            if (builder3 != null) {
                                builder3.j0(snapshot2);
                                this.snapshot_ = builder3.I();
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

    public static SummaryValue parseFrom(InputStream inputStream) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SummaryValue parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SummaryValue parseFrom(p pVar) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SummaryValue parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SummaryValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
