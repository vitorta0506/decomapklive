package io.opencensus.proto.stats.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.opencensus.proto.stats.v1.CountAggregation;
import io.opencensus.proto.stats.v1.DistributionAggregation;
import io.opencensus.proto.stats.v1.LastValueAggregation;
import io.opencensus.proto.stats.v1.Measure;
import io.opencensus.proto.stats.v1.SumAggregation;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class View extends GeneratedMessageV3 implements r1 {
    public static final int COLUMNS_FIELD_NUMBER = 4;
    public static final int COUNT_AGGREGATION_FIELD_NUMBER = 5;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int DISTRIBUTION_AGGREGATION_FIELD_NUMBER = 8;
    public static final int LAST_VALUE_AGGREGATION_FIELD_NUMBER = 7;
    public static final int MEASURE_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SUM_AGGREGATION_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int aggregationCase_;
    private Object aggregation_;
    private int bitField0_;
    private z0 columns_;
    private volatile Object description_;
    private Measure measure_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final View DEFAULT_INSTANCE = new View();
    private static final e2<View> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum AggregationCase implements u0.c {
        COUNT_AGGREGATION(5),
        SUM_AGGREGATION(6),
        LAST_VALUE_AGGREGATION(7),
        DISTRIBUTION_AGGREGATION(8),
        AGGREGATION_NOT_SET(0);
        
        private final int value;

        AggregationCase(int i9) {
            this.value = i9;
        }

        public static AggregationCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 5) {
                    if (i9 != 6) {
                        if (i9 != 7) {
                            if (i9 != 8) {
                                return null;
                            }
                            return DISTRIBUTION_AGGREGATION;
                        }
                        return LAST_VALUE_AGGREGATION;
                    }
                    return SUM_AGGREGATION;
                }
                return COUNT_AGGREGATION;
            }
            return AGGREGATION_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AggregationCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<View> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public View m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new View(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51088a;

        static {
            int[] iArr = new int[AggregationCase.values().length];
            f51088a = iArr;
            try {
                iArr[AggregationCase.COUNT_AGGREGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51088a[AggregationCase.SUM_AGGREGATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51088a[AggregationCase.LAST_VALUE_AGGREGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51088a[AggregationCase.DISTRIBUTION_AGGREGATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51088a[AggregationCase.AGGREGATION_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f51089e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51090f;

        /* renamed from: g  reason: collision with root package name */
        private int f51091g;

        /* renamed from: h  reason: collision with root package name */
        private Object f51092h;

        /* renamed from: i  reason: collision with root package name */
        private Object f51093i;

        /* renamed from: j  reason: collision with root package name */
        private Measure f51094j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Measure, Measure.b, d> f51095k;

        /* renamed from: l  reason: collision with root package name */
        private z0 f51096l;

        /* renamed from: m  reason: collision with root package name */
        private q2<CountAggregation, CountAggregation.b, io.opencensus.proto.stats.v1.a> f51097m;

        /* renamed from: n  reason: collision with root package name */
        private q2<SumAggregation, SumAggregation.b, f> f51098n;

        /* renamed from: o  reason: collision with root package name */
        private q2<LastValueAggregation, LastValueAggregation.b, io.opencensus.proto.stats.v1.c> f51099o;

        /* renamed from: p  reason: collision with root package name */
        private q2<DistributionAggregation, DistributionAggregation.b, io.opencensus.proto.stats.v1.b> f51100p;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f51091g & 8) != 8) {
                this.f51096l = new y0(this.f51096l);
                this.f51091g |= 8;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f51106f.d(View.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public View build() {
            View I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public View I() {
            View view = new View(this, (a) null);
            view.name_ = this.f51092h;
            view.description_ = this.f51093i;
            q2<Measure, Measure.b, d> q2Var = this.f51095k;
            if (q2Var == null) {
                view.measure_ = this.f51094j;
            } else {
                view.measure_ = q2Var.b();
            }
            if ((this.f51091g & 8) == 8) {
                this.f51096l = this.f51096l.V0();
                this.f51091g &= -9;
            }
            view.columns_ = this.f51096l;
            if (this.f51089e == 5) {
                q2<CountAggregation, CountAggregation.b, io.opencensus.proto.stats.v1.a> q2Var2 = this.f51097m;
                if (q2Var2 == null) {
                    view.aggregation_ = this.f51090f;
                } else {
                    view.aggregation_ = q2Var2.b();
                }
            }
            if (this.f51089e == 6) {
                q2<SumAggregation, SumAggregation.b, f> q2Var3 = this.f51098n;
                if (q2Var3 == null) {
                    view.aggregation_ = this.f51090f;
                } else {
                    view.aggregation_ = q2Var3.b();
                }
            }
            if (this.f51089e == 7) {
                q2<LastValueAggregation, LastValueAggregation.b, io.opencensus.proto.stats.v1.c> q2Var4 = this.f51099o;
                if (q2Var4 == null) {
                    view.aggregation_ = this.f51090f;
                } else {
                    view.aggregation_ = q2Var4.b();
                }
            }
            if (this.f51089e == 8) {
                q2<DistributionAggregation, DistributionAggregation.b, io.opencensus.proto.stats.v1.b> q2Var5 = this.f51100p;
                if (q2Var5 == null) {
                    view.aggregation_ = this.f51090f;
                } else {
                    view.aggregation_ = q2Var5.b();
                }
            }
            view.bitField0_ = 0;
            view.aggregationCase_ = this.f51089e;
            Q();
            return view;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public View getDefaultInstanceForType() {
            return View.getDefaultInstance();
        }

        public c e0(CountAggregation countAggregation) {
            q2<CountAggregation, CountAggregation.b, io.opencensus.proto.stats.v1.a> q2Var = this.f51097m;
            if (q2Var == null) {
                if (this.f51089e == 5 && this.f51090f != CountAggregation.getDefaultInstance()) {
                    this.f51090f = CountAggregation.newBuilder((CountAggregation) this.f51090f).g0(countAggregation).I();
                } else {
                    this.f51090f = countAggregation;
                }
                R();
            } else {
                if (this.f51089e == 5) {
                    q2Var.e(countAggregation);
                }
                this.f51097m.g(countAggregation);
            }
            this.f51089e = 5;
            return this;
        }

        public c g0(DistributionAggregation distributionAggregation) {
            q2<DistributionAggregation, DistributionAggregation.b, io.opencensus.proto.stats.v1.b> q2Var = this.f51100p;
            if (q2Var == null) {
                if (this.f51089e == 8 && this.f51090f != DistributionAggregation.getDefaultInstance()) {
                    this.f51090f = DistributionAggregation.newBuilder((DistributionAggregation) this.f51090f).h0(distributionAggregation).I();
                } else {
                    this.f51090f = distributionAggregation;
                }
                R();
            } else {
                if (this.f51089e == 8) {
                    q2Var.e(distributionAggregation);
                }
                this.f51100p.g(distributionAggregation);
            }
            this.f51089e = 8;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f51105e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.stats.v1.View.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.stats.v1.View.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.stats.v1.View r3 = (io.opencensus.proto.stats.v1.View) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.stats.v1.View r4 = (io.opencensus.proto.stats.v1.View) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.View.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.stats.v1.View$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof View) {
                return j0((View) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(View view) {
            if (view == View.getDefaultInstance()) {
                return this;
            }
            if (!view.getName().isEmpty()) {
                this.f51092h = view.name_;
                R();
            }
            if (!view.getDescription().isEmpty()) {
                this.f51093i = view.description_;
                R();
            }
            if (view.hasMeasure()) {
                l0(view.getMeasure());
            }
            if (!view.columns_.isEmpty()) {
                if (this.f51096l.isEmpty()) {
                    this.f51096l = view.columns_;
                    this.f51091g &= -9;
                } else {
                    a0();
                    this.f51096l.addAll(view.columns_);
                }
                R();
            }
            int i9 = b.f51088a[view.getAggregationCase().ordinal()];
            if (i9 == 1) {
                e0(view.getCountAggregation());
            } else if (i9 == 2) {
                m0(view.getSumAggregation());
            } else if (i9 == 3) {
                k0(view.getLastValueAggregation());
            } else if (i9 == 4) {
                g0(view.getDistributionAggregation());
            }
            z(((GeneratedMessageV3) view).unknownFields);
            R();
            return this;
        }

        public c k0(LastValueAggregation lastValueAggregation) {
            q2<LastValueAggregation, LastValueAggregation.b, io.opencensus.proto.stats.v1.c> q2Var = this.f51099o;
            if (q2Var == null) {
                if (this.f51089e == 7 && this.f51090f != LastValueAggregation.getDefaultInstance()) {
                    this.f51090f = LastValueAggregation.newBuilder((LastValueAggregation) this.f51090f).g0(lastValueAggregation).I();
                } else {
                    this.f51090f = lastValueAggregation;
                }
                R();
            } else {
                if (this.f51089e == 7) {
                    q2Var.e(lastValueAggregation);
                }
                this.f51099o.g(lastValueAggregation);
            }
            this.f51089e = 7;
            return this;
        }

        public c l0(Measure measure) {
            q2<Measure, Measure.b, d> q2Var = this.f51095k;
            if (q2Var == null) {
                Measure measure2 = this.f51094j;
                if (measure2 != null) {
                    this.f51094j = Measure.newBuilder(measure2).g0(measure).I();
                } else {
                    this.f51094j = measure;
                }
                R();
            } else {
                q2Var.e(measure);
            }
            return this;
        }

        public c m0(SumAggregation sumAggregation) {
            q2<SumAggregation, SumAggregation.b, f> q2Var = this.f51098n;
            if (q2Var == null) {
                if (this.f51089e == 6 && this.f51090f != SumAggregation.getDefaultInstance()) {
                    this.f51090f = SumAggregation.newBuilder((SumAggregation) this.f51090f).g0(sumAggregation).I();
                } else {
                    this.f51090f = sumAggregation;
                }
                R();
            } else {
                if (this.f51089e == 6) {
                    q2Var.e(sumAggregation);
                }
                this.f51098n.g(sumAggregation);
            }
            this.f51089e = 6;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f51089e = 0;
            this.f51092h = "";
            this.f51093i = "";
            this.f51094j = null;
            this.f51096l = y0.f15344d;
            d0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51089e = 0;
            this.f51092h = "";
            this.f51093i = "";
            this.f51094j = null;
            this.f51096l = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ View(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static View getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f51105e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static View parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (View) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static View parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<View> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
        if (getDistributionAggregation().equals(r6.getDistributionAggregation()) != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a5, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b7, code lost:
        if (getLastValueAggregation().equals(r6.getLastValueAggregation()) != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c8, code lost:
        if (getSumAggregation().equals(r6.getSumAggregation()) != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d9, code lost:
        if (getCountAggregation().equals(r6.getCountAggregation()) != false) goto L48;
     */
    @Override // com.google.protobuf.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.View.equals(java.lang.Object):boolean");
    }

    public AggregationCase getAggregationCase() {
        return AggregationCase.forNumber(this.aggregationCase_);
    }

    public String getColumns(int i9) {
        return this.columns_.get(i9);
    }

    public ByteString getColumnsBytes(int i9) {
        return this.columns_.j0(i9);
    }

    public int getColumnsCount() {
        return this.columns_.size();
    }

    public CountAggregation getCountAggregation() {
        if (this.aggregationCase_ == 5) {
            return (CountAggregation) this.aggregation_;
        }
        return CountAggregation.getDefaultInstance();
    }

    public io.opencensus.proto.stats.v1.a getCountAggregationOrBuilder() {
        if (this.aggregationCase_ == 5) {
            return (CountAggregation) this.aggregation_;
        }
        return CountAggregation.getDefaultInstance();
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public DistributionAggregation getDistributionAggregation() {
        if (this.aggregationCase_ == 8) {
            return (DistributionAggregation) this.aggregation_;
        }
        return DistributionAggregation.getDefaultInstance();
    }

    public io.opencensus.proto.stats.v1.b getDistributionAggregationOrBuilder() {
        if (this.aggregationCase_ == 8) {
            return (DistributionAggregation) this.aggregation_;
        }
        return DistributionAggregation.getDefaultInstance();
    }

    public LastValueAggregation getLastValueAggregation() {
        if (this.aggregationCase_ == 7) {
            return (LastValueAggregation) this.aggregation_;
        }
        return LastValueAggregation.getDefaultInstance();
    }

    public io.opencensus.proto.stats.v1.c getLastValueAggregationOrBuilder() {
        if (this.aggregationCase_ == 7) {
            return (LastValueAggregation) this.aggregation_;
        }
        return LastValueAggregation.getDefaultInstance();
    }

    public Measure getMeasure() {
        Measure measure = this.measure_;
        return measure == null ? Measure.getDefaultInstance() : measure;
    }

    public d getMeasureOrBuilder() {
        return getMeasure();
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<View> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!getDescriptionBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.description_);
        }
        if (this.measure_ != null) {
            computeStringSize += CodedOutputStream.G(3, getMeasure());
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.columns_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.columns_.c1(i11));
        }
        int size = computeStringSize + i10 + (m1652getColumnsList().size() * 1);
        if (this.aggregationCase_ == 5) {
            size += CodedOutputStream.G(5, (CountAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 6) {
            size += CodedOutputStream.G(6, (SumAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 7) {
            size += CodedOutputStream.G(7, (LastValueAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 8) {
            size += CodedOutputStream.G(8, (DistributionAggregation) this.aggregation_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SumAggregation getSumAggregation() {
        if (this.aggregationCase_ == 6) {
            return (SumAggregation) this.aggregation_;
        }
        return SumAggregation.getDefaultInstance();
    }

    public f getSumAggregationOrBuilder() {
        if (this.aggregationCase_ == 6) {
            return (SumAggregation) this.aggregation_;
        }
        return SumAggregation.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCountAggregation() {
        return this.aggregationCase_ == 5;
    }

    public boolean hasDistributionAggregation() {
        return this.aggregationCase_ == 8;
    }

    public boolean hasLastValueAggregation() {
        return this.aggregationCase_ == 7;
    }

    public boolean hasMeasure() {
        return this.measure_ != null;
    }

    public boolean hasSumAggregation() {
        return this.aggregationCase_ == 6;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDescription().hashCode();
        if (hasMeasure()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getMeasure().hashCode();
        }
        if (getColumnsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + m1652getColumnsList().hashCode();
        }
        int i11 = this.aggregationCase_;
        if (i11 == 5) {
            i9 = ((hashCode2 * 37) + 5) * 53;
            hashCode = getCountAggregation().hashCode();
        } else if (i11 == 6) {
            i9 = ((hashCode2 * 37) + 6) * 53;
            hashCode = getSumAggregation().hashCode();
        } else if (i11 == 7) {
            i9 = ((hashCode2 * 37) + 7) * 53;
            hashCode = getLastValueAggregation().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getDistributionAggregation().hashCode();
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
        return e.f51106f.d(View.class, c.class);
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
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!getDescriptionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
        }
        if (this.measure_ != null) {
            codedOutputStream.L0(3, getMeasure());
        }
        for (int i9 = 0; i9 < this.columns_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.columns_.c1(i9));
        }
        if (this.aggregationCase_ == 5) {
            codedOutputStream.L0(5, (CountAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 6) {
            codedOutputStream.L0(6, (SumAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 7) {
            codedOutputStream.L0(7, (LastValueAggregation) this.aggregation_);
        }
        if (this.aggregationCase_ == 8) {
            codedOutputStream.L0(8, (DistributionAggregation) this.aggregation_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ View(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(View view) {
        return DEFAULT_INSTANCE.toBuilder().j0(view);
    }

    public static View parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getColumnsList */
    public i2 m1652getColumnsList() {
        return this.columns_;
    }

    private View(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.aggregationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static View parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (View) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static View parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public View getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static View parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static View parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private View() {
        this.aggregationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.description_ = "";
        this.columns_ = y0.f15344d;
    }

    public static View parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static View parseFrom(InputStream inputStream) throws IOException {
        return (View) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static View parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (View) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static View parseFrom(p pVar) throws IOException {
        return (View) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private View(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                        } else if (L != 18) {
                            if (L == 26) {
                                Measure measure = this.measure_;
                                Measure.b builder = measure != null ? measure.toBuilder() : null;
                                Measure measure2 = (Measure) pVar.B(Measure.parser(), f0Var);
                                this.measure_ = measure2;
                                if (builder != null) {
                                    builder.g0(measure2);
                                    this.measure_ = builder.I();
                                }
                            } else if (L == 34) {
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.columns_ = new y0();
                                    z11 |= true;
                                }
                                this.columns_.add(K);
                            } else if (L == 42) {
                                CountAggregation.b builder2 = this.aggregationCase_ == 5 ? ((CountAggregation) this.aggregation_).toBuilder() : null;
                                o1 B = pVar.B(CountAggregation.parser(), f0Var);
                                this.aggregation_ = B;
                                if (builder2 != null) {
                                    builder2.g0((CountAggregation) B);
                                    this.aggregation_ = builder2.I();
                                }
                                this.aggregationCase_ = 5;
                            } else if (L == 50) {
                                SumAggregation.b builder3 = this.aggregationCase_ == 6 ? ((SumAggregation) this.aggregation_).toBuilder() : null;
                                o1 B2 = pVar.B(SumAggregation.parser(), f0Var);
                                this.aggregation_ = B2;
                                if (builder3 != null) {
                                    builder3.g0((SumAggregation) B2);
                                    this.aggregation_ = builder3.I();
                                }
                                this.aggregationCase_ = 6;
                            } else if (L == 58) {
                                LastValueAggregation.b builder4 = this.aggregationCase_ == 7 ? ((LastValueAggregation) this.aggregation_).toBuilder() : null;
                                o1 B3 = pVar.B(LastValueAggregation.parser(), f0Var);
                                this.aggregation_ = B3;
                                if (builder4 != null) {
                                    builder4.g0((LastValueAggregation) B3);
                                    this.aggregation_ = builder4.I();
                                }
                                this.aggregationCase_ = 7;
                            } else if (L != 66) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                DistributionAggregation.b builder5 = this.aggregationCase_ == 8 ? ((DistributionAggregation) this.aggregation_).toBuilder() : null;
                                o1 B4 = pVar.B(DistributionAggregation.parser(), f0Var);
                                this.aggregation_ = B4;
                                if (builder5 != null) {
                                    builder5.h0((DistributionAggregation) B4);
                                    this.aggregation_ = builder5.I();
                                }
                                this.aggregationCase_ = 8;
                            }
                        } else {
                            this.description_ = pVar.K();
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
                    this.columns_ = this.columns_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static View parseFrom(p pVar, f0 f0Var) throws IOException {
        return (View) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
