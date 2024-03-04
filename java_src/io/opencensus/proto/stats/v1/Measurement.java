package io.opencensus.proto.stats.v1;

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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.opencensus.proto.stats.v1.Tag;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Measurement extends GeneratedMessageV3 implements r1 {
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 3;
    public static final int INT_VALUE_FIELD_NUMBER = 4;
    public static final int MEASURE_NAME_FIELD_NUMBER = 2;
    public static final int TAGS_FIELD_NUMBER = 1;
    public static final int TIME_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private volatile Object measureName_;
    private byte memoizedIsInitialized;
    private List<Tag> tags_;
    private Timestamp time_;
    private int valueCase_;
    private Object value_;
    private static final Measurement DEFAULT_INSTANCE = new Measurement();
    private static final e2<Measurement> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum ValueCase implements u0.c {
        DOUBLE_VALUE(3),
        INT_VALUE(4),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i9) {
            this.value = i9;
        }

        public static ValueCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return INT_VALUE;
                }
                return DOUBLE_VALUE;
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
    public static class a extends com.google.protobuf.c<Measurement> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Measurement m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Measurement(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51077a;

        static {
            int[] iArr = new int[ValueCase.values().length];
            f51077a = iArr;
            try {
                iArr[ValueCase.DOUBLE_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51077a[ValueCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51077a[ValueCase.VALUE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f51078e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51079f;

        /* renamed from: g  reason: collision with root package name */
        private int f51080g;

        /* renamed from: h  reason: collision with root package name */
        private List<Tag> f51081h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Tag, Tag.b, g> f51082i;

        /* renamed from: j  reason: collision with root package name */
        private Object f51083j;

        /* renamed from: k  reason: collision with root package name */
        private Timestamp f51084k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f51085l;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f51080g & 1) != 1) {
                this.f51081h = new ArrayList(this.f51081h);
                this.f51080g |= 1;
            }
        }

        private l2<Tag, Tag.b, g> d0() {
            if (this.f51082i == null) {
                this.f51082i = new l2<>(this.f51081h, (this.f51080g & 1) == 1, H(), O());
                this.f51081h = null;
            }
            return this.f51082i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f51116p.d(Measurement.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Measurement build() {
            Measurement I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Measurement I() {
            Measurement measurement = new Measurement(this, (a) null);
            int i9 = this.f51080g;
            l2<Tag, Tag.b, g> l2Var = this.f51082i;
            if (l2Var == null) {
                if ((i9 & 1) == 1) {
                    this.f51081h = Collections.unmodifiableList(this.f51081h);
                    this.f51080g &= -2;
                }
                measurement.tags_ = this.f51081h;
            } else {
                measurement.tags_ = l2Var.e();
            }
            measurement.measureName_ = this.f51083j;
            if (this.f51078e == 3) {
                measurement.value_ = this.f51079f;
            }
            if (this.f51078e == 4) {
                measurement.value_ = this.f51079f;
            }
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51085l;
            if (q2Var == null) {
                measurement.time_ = this.f51084k;
            } else {
                measurement.time_ = q2Var.b();
            }
            measurement.bitField0_ = 0;
            measurement.valueCase_ = this.f51078e;
            Q();
            return measurement;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Measurement getDefaultInstanceForType() {
            return Measurement.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.stats.v1.Measurement.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.stats.v1.Measurement.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.stats.v1.Measurement r3 = (io.opencensus.proto.stats.v1.Measurement) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.opencensus.proto.stats.v1.Measurement r4 = (io.opencensus.proto.stats.v1.Measurement) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.Measurement.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.stats.v1.Measurement$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f51115o;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Measurement) {
                return i0((Measurement) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(Measurement measurement) {
            if (measurement == Measurement.getDefaultInstance()) {
                return this;
            }
            if (this.f51082i == null) {
                if (!measurement.tags_.isEmpty()) {
                    if (this.f51081h.isEmpty()) {
                        this.f51081h = measurement.tags_;
                        this.f51080g &= -2;
                    } else {
                        a0();
                        this.f51081h.addAll(measurement.tags_);
                    }
                    R();
                }
            } else if (!measurement.tags_.isEmpty()) {
                if (this.f51082i.k()) {
                    this.f51082i.f();
                    this.f51082i = null;
                    this.f51081h = measurement.tags_;
                    this.f51080g &= -2;
                    this.f51082i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f51082i.b(measurement.tags_);
                }
            }
            if (!measurement.getMeasureName().isEmpty()) {
                this.f51083j = measurement.measureName_;
                R();
            }
            if (measurement.hasTime()) {
                j0(measurement.getTime());
            }
            int i9 = b.f51077a[measurement.getValueCase().ordinal()];
            if (i9 == 1) {
                l0(measurement.getDoubleValue());
            } else if (i9 == 2) {
                n0(measurement.getIntValue());
            }
            z(((GeneratedMessageV3) measurement).unknownFields);
            R();
            return this;
        }

        public c j0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51085l;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f51084k;
                if (timestamp2 != null) {
                    this.f51084k = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f51084k = timestamp;
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
            this.f51078e = 3;
            this.f51079f = Double.valueOf(d10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c n0(long j10) {
            this.f51078e = 4;
            this.f51079f = Long.valueOf(j10);
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
            this.f51078e = 0;
            this.f51081h = Collections.emptyList();
            this.f51083j = "";
            this.f51084k = null;
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51078e = 0;
            this.f51081h = Collections.emptyList();
            this.f51083j = "";
            this.f51084k = null;
            e0();
        }
    }

    /* synthetic */ Measurement(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Measurement getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f51115o;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Measurement parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Measurement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Measurement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Measurement> parser() {
        return PARSER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0087, code lost:
        if (getIntValue() == r8.getIntValue()) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a1, code lost:
        if (java.lang.Double.doubleToLongBits(getDoubleValue()) == java.lang.Double.doubleToLongBits(r8.getDoubleValue())) goto L40;
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
            boolean r1 = r8 instanceof io.opencensus.proto.stats.v1.Measurement
            if (r1 != 0) goto Ld
            boolean r8 = super.equals(r8)
            return r8
        Ld:
            io.opencensus.proto.stats.v1.Measurement r8 = (io.opencensus.proto.stats.v1.Measurement) r8
            java.util.List r1 = r7.getTagsList()
            java.util.List r2 = r8.getTagsList()
            boolean r1 = r1.equals(r2)
            r2 = 0
            if (r1 == 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 == 0) goto L33
            java.lang.String r1 = r7.getMeasureName()
            java.lang.String r3 = r8.getMeasureName()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L33
            r1 = 1
            goto L34
        L33:
            r1 = 0
        L34:
            if (r1 == 0) goto L42
            boolean r1 = r7.hasTime()
            boolean r3 = r8.hasTime()
            if (r1 != r3) goto L42
            r1 = 1
            goto L43
        L42:
            r1 = 0
        L43:
            boolean r3 = r7.hasTime()
            if (r3 == 0) goto L5c
            if (r1 == 0) goto L5b
            com.google.protobuf.Timestamp r1 = r7.getTime()
            com.google.protobuf.Timestamp r3 = r8.getTime()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L5b
            r1 = 1
            goto L5c
        L5b:
            r1 = 0
        L5c:
            if (r1 == 0) goto L6e
            io.opencensus.proto.stats.v1.Measurement$ValueCase r1 = r7.getValueCase()
            io.opencensus.proto.stats.v1.Measurement$ValueCase r3 = r8.getValueCase()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L6e
            r1 = 1
            goto L6f
        L6e:
            r1 = 0
        L6f:
            if (r1 != 0) goto L72
            return r2
        L72:
            int r3 = r7.valueCase_
            r4 = 3
            if (r3 == r4) goto L8d
            r4 = 4
            if (r3 == r4) goto L7b
            goto La4
        L7b:
            if (r1 == 0) goto L8b
            long r3 = r7.getIntValue()
            long r5 = r8.getIntValue()
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L8b
        L89:
            r1 = 1
            goto La4
        L8b:
            r1 = 0
            goto La4
        L8d:
            if (r1 == 0) goto L8b
            double r3 = r7.getDoubleValue()
            long r3 = java.lang.Double.doubleToLongBits(r3)
            double r5 = r8.getDoubleValue()
            long r5 = java.lang.Double.doubleToLongBits(r5)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L8b
            goto L89
        La4:
            if (r1 == 0) goto Lb1
            com.google.protobuf.h3 r1 = r7.unknownFields
            com.google.protobuf.h3 r8 = r8.unknownFields
            boolean r8 = r1.equals(r8)
            if (r8 == 0) goto Lb1
            goto Lb2
        Lb1:
            r0 = 0
        Lb2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.Measurement.equals(java.lang.Object):boolean");
    }

    public double getDoubleValue() {
        if (this.valueCase_ == 3) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public long getIntValue() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public String getMeasureName() {
        Object obj = this.measureName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.measureName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMeasureNameBytes() {
        Object obj = this.measureName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.measureName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Measurement> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.tags_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.tags_.get(i11));
        }
        if (!getMeasureNameBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.measureName_);
        }
        if (this.valueCase_ == 3) {
            i10 += CodedOutputStream.j(3, ((Double) this.value_).doubleValue());
        }
        if (this.valueCase_ == 4) {
            i10 += CodedOutputStream.z(4, ((Long) this.value_).longValue());
        }
        if (this.time_ != null) {
            i10 += CodedOutputStream.G(5, getTime());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Tag getTags(int i9) {
        return this.tags_.get(i9);
    }

    public int getTagsCount() {
        return this.tags_.size();
    }

    public List<Tag> getTagsList() {
        return this.tags_;
    }

    public g getTagsOrBuilder(int i9) {
        return this.tags_.get(i9);
    }

    public List<? extends g> getTagsOrBuilderList() {
        return this.tags_;
    }

    public Timestamp getTime() {
        Timestamp timestamp = this.time_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getTimeOrBuilder() {
        return getTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasTime() {
        return this.time_ != null;
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
        if (getTagsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTagsList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 2) * 53) + getMeasureName().hashCode();
        if (hasTime()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getTime().hashCode();
        }
        int i12 = this.valueCase_;
        if (i12 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            i10 = u0.i(Double.doubleToLongBits(getDoubleValue()));
        } else {
            if (i12 == 4) {
                i9 = ((hashCode2 * 37) + 4) * 53;
                i10 = u0.i(getIntValue());
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + i10;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f51116p.d(Measurement.class, c.class);
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
        for (int i9 = 0; i9 < this.tags_.size(); i9++) {
            codedOutputStream.L0(1, this.tags_.get(i9));
        }
        if (!getMeasureNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.measureName_);
        }
        if (this.valueCase_ == 3) {
            codedOutputStream.t0(3, ((Double) this.value_).doubleValue());
        }
        if (this.valueCase_ == 4) {
            codedOutputStream.J0(4, ((Long) this.value_).longValue());
        }
        if (this.time_ != null) {
            codedOutputStream.L0(5, getTime());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Measurement(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Measurement measurement) {
        return DEFAULT_INSTANCE.toBuilder().i0(measurement);
    }

    public static Measurement parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Measurement(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Measurement parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Measurement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Measurement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Measurement getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static Measurement parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Measurement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Measurement() {
        this.valueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.tags_ = Collections.emptyList();
        this.measureName_ = "";
    }

    public static Measurement parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Measurement parseFrom(InputStream inputStream) throws IOException {
        return (Measurement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Measurement parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Measurement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Measurement(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!(z11 & true)) {
                                    this.tags_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.tags_.add(pVar.B(Tag.parser(), f0Var));
                            } else if (L == 18) {
                                this.measureName_ = pVar.K();
                            } else if (L == 25) {
                                this.valueCase_ = 3;
                                this.value_ = Double.valueOf(pVar.t());
                            } else if (L == 32) {
                                this.valueCase_ = 4;
                                this.value_ = Long.valueOf(pVar.A());
                            } else if (L != 42) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Timestamp timestamp = this.time_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.time_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.time_ = builder.I();
                                }
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
                    this.tags_ = Collections.unmodifiableList(this.tags_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Measurement parseFrom(p pVar) throws IOException {
        return (Measurement) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Measurement parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Measurement) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
