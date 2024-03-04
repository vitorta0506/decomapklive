package io.opencensus.proto.metrics.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.u0;
import io.opencensus.proto.metrics.v1.LabelKey;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class MetricDescriptor extends GeneratedMessageV3 implements d {
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int LABEL_KEYS_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 4;
    public static final int UNIT_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int bitField0_;
    private volatile Object description_;
    private List<LabelKey> labelKeys_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int type_;
    private volatile Object unit_;
    private static final MetricDescriptor DEFAULT_INSTANCE = new MetricDescriptor();
    private static final e2<MetricDescriptor> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum Type implements h2 {
        UNSPECIFIED(0),
        GAUGE_INT64(1),
        GAUGE_DOUBLE(2),
        GAUGE_DISTRIBUTION(3),
        CUMULATIVE_INT64(4),
        CUMULATIVE_DOUBLE(5),
        CUMULATIVE_DISTRIBUTION(6),
        SUMMARY(7),
        UNRECOGNIZED(-1);
        
        public static final int CUMULATIVE_DISTRIBUTION_VALUE = 6;
        public static final int CUMULATIVE_DOUBLE_VALUE = 5;
        public static final int CUMULATIVE_INT64_VALUE = 4;
        public static final int GAUGE_DISTRIBUTION_VALUE = 3;
        public static final int GAUGE_DOUBLE_VALUE = 2;
        public static final int GAUGE_INT64_VALUE = 1;
        public static final int SUMMARY_VALUE = 7;
        public static final int UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<Type> internalValueMap = new a();
        private static final Type[] VALUES = values();

        /* loaded from: classes7.dex */
        static class a implements u0.d<Type> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Type a(int i9) {
                return Type.forNumber(i9);
            }
        }

        Type(int i9) {
            this.value = i9;
        }

        public static Type forNumber(int i9) {
            switch (i9) {
                case 0:
                    return UNSPECIFIED;
                case 1:
                    return GAUGE_INT64;
                case 2:
                    return GAUGE_DOUBLE;
                case 3:
                    return GAUGE_DISTRIBUTION;
                case 4:
                    return CUMULATIVE_INT64;
                case 5:
                    return CUMULATIVE_DOUBLE;
                case 6:
                    return CUMULATIVE_DISTRIBUTION;
                case 7:
                    return SUMMARY;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return MetricDescriptor.getDescriptor().k().get(0);
        }

        public static u0.d<Type> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static Type valueOf(int i9) {
            return forNumber(i9);
        }

        public static Type valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<MetricDescriptor> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetricDescriptor m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MetricDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f51001e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51002f;

        /* renamed from: g  reason: collision with root package name */
        private Object f51003g;

        /* renamed from: h  reason: collision with root package name */
        private Object f51004h;

        /* renamed from: i  reason: collision with root package name */
        private int f51005i;

        /* renamed from: j  reason: collision with root package name */
        private List<LabelKey> f51006j;

        /* renamed from: k  reason: collision with root package name */
        private l2<LabelKey, LabelKey.b, io.opencensus.proto.metrics.v1.b> f51007k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f51001e & 16) != 16) {
                this.f51006j = new ArrayList(this.f51006j);
                this.f51001e |= 16;
            }
        }

        private l2<LabelKey, LabelKey.b, io.opencensus.proto.metrics.v1.b> d0() {
            if (this.f51007k == null) {
                this.f51007k = new l2<>(this.f51006j, (this.f51001e & 16) == 16, H(), O());
                this.f51006j = null;
            }
            return this.f51007k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f51040d.d(MetricDescriptor.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetricDescriptor build() {
            MetricDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetricDescriptor I() {
            MetricDescriptor metricDescriptor = new MetricDescriptor(this, (a) null);
            metricDescriptor.name_ = this.f51002f;
            metricDescriptor.description_ = this.f51003g;
            metricDescriptor.unit_ = this.f51004h;
            metricDescriptor.type_ = this.f51005i;
            l2<LabelKey, LabelKey.b, io.opencensus.proto.metrics.v1.b> l2Var = this.f51007k;
            if (l2Var == null) {
                if ((this.f51001e & 16) == 16) {
                    this.f51006j = Collections.unmodifiableList(this.f51006j);
                    this.f51001e &= -17;
                }
                metricDescriptor.labelKeys_ = this.f51006j;
            } else {
                metricDescriptor.labelKeys_ = l2Var.e();
            }
            metricDescriptor.bitField0_ = 0;
            Q();
            return metricDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public MetricDescriptor getDefaultInstanceForType() {
            return MetricDescriptor.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.metrics.v1.MetricDescriptor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.metrics.v1.MetricDescriptor.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.metrics.v1.MetricDescriptor r3 = (io.opencensus.proto.metrics.v1.MetricDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.metrics.v1.MetricDescriptor r4 = (io.opencensus.proto.metrics.v1.MetricDescriptor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.metrics.v1.MetricDescriptor.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.metrics.v1.MetricDescriptor$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f51039c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof MetricDescriptor) {
                return i0((MetricDescriptor) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(MetricDescriptor metricDescriptor) {
            if (metricDescriptor == MetricDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!metricDescriptor.getName().isEmpty()) {
                this.f51002f = metricDescriptor.name_;
                R();
            }
            if (!metricDescriptor.getDescription().isEmpty()) {
                this.f51003g = metricDescriptor.description_;
                R();
            }
            if (!metricDescriptor.getUnit().isEmpty()) {
                this.f51004h = metricDescriptor.unit_;
                R();
            }
            if (metricDescriptor.type_ != 0) {
                l0(metricDescriptor.getTypeValue());
            }
            if (this.f51007k == null) {
                if (!metricDescriptor.labelKeys_.isEmpty()) {
                    if (this.f51006j.isEmpty()) {
                        this.f51006j = metricDescriptor.labelKeys_;
                        this.f51001e &= -17;
                    } else {
                        a0();
                        this.f51006j.addAll(metricDescriptor.labelKeys_);
                    }
                    R();
                }
            } else if (!metricDescriptor.labelKeys_.isEmpty()) {
                if (this.f51007k.k()) {
                    this.f51007k.f();
                    this.f51007k = null;
                    this.f51006j = metricDescriptor.labelKeys_;
                    this.f51001e &= -17;
                    this.f51007k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f51007k.b(metricDescriptor.labelKeys_);
                }
            }
            z(((GeneratedMessageV3) metricDescriptor).unknownFields);
            R();
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
            this.f51005i = i9;
            R();
            return this;
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
            this.f51002f = "";
            this.f51003g = "";
            this.f51004h = "";
            this.f51005i = 0;
            this.f51006j = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51002f = "";
            this.f51003g = "";
            this.f51004h = "";
            this.f51005i = 0;
            this.f51006j = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ MetricDescriptor(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetricDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f51039c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetricDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetricDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetricDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetricDescriptor)) {
            return super.equals(obj);
        }
        MetricDescriptor metricDescriptor = (MetricDescriptor) obj;
        return (((((getName().equals(metricDescriptor.getName())) && getDescription().equals(metricDescriptor.getDescription())) && getUnit().equals(metricDescriptor.getUnit())) && this.type_ == metricDescriptor.type_) && getLabelKeysList().equals(metricDescriptor.getLabelKeysList())) && this.unknownFields.equals(metricDescriptor.unknownFields);
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

    public LabelKey getLabelKeys(int i9) {
        return this.labelKeys_.get(i9);
    }

    public int getLabelKeysCount() {
        return this.labelKeys_.size();
    }

    public List<LabelKey> getLabelKeysList() {
        return this.labelKeys_;
    }

    public io.opencensus.proto.metrics.v1.b getLabelKeysOrBuilder(int i9) {
        return this.labelKeys_.get(i9);
    }

    public List<? extends io.opencensus.proto.metrics.v1.b> getLabelKeysOrBuilderList() {
        return this.labelKeys_;
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
    public e2<MetricDescriptor> getParserForType() {
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
        if (!getUnitBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.unit_);
        }
        if (this.type_ != Type.UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(4, this.type_);
        }
        for (int i10 = 0; i10 < this.labelKeys_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(5, this.labelKeys_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Type getType() {
        Type valueOf = Type.valueOf(this.type_);
        return valueOf == null ? Type.UNRECOGNIZED : valueOf;
    }

    public int getTypeValue() {
        return this.type_;
    }

    public String getUnit() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.unit_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUnitBytes() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.unit_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 37) + 3) * 53) + getUnit().hashCode()) * 37) + 4) * 53) + this.type_;
        if (getLabelKeysCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getLabelKeysList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f51040d.d(MetricDescriptor.class, b.class);
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
        if (!getUnitBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.unit_);
        }
        if (this.type_ != Type.UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.type_);
        }
        for (int i9 = 0; i9 < this.labelKeys_.size(); i9++) {
            codedOutputStream.L0(5, this.labelKeys_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetricDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MetricDescriptor metricDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().i0(metricDescriptor);
    }

    public static MetricDescriptor parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MetricDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetricDescriptor parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetricDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static MetricDescriptor parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MetricDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.description_ = "";
        this.unit_ = "";
        this.type_ = 0;
        this.labelKeys_ = Collections.emptyList();
    }

    public static MetricDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MetricDescriptor parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MetricDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static MetricDescriptor parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricDescriptor parseFrom(p pVar) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MetricDescriptor(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        } else if (L == 18) {
                            this.description_ = pVar.K();
                        } else if (L == 26) {
                            this.unit_ = pVar.K();
                        } else if (L == 32) {
                            this.type_ = pVar.u();
                        } else if (L != 42) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.labelKeys_ = new ArrayList();
                                z11 |= true;
                            }
                            this.labelKeys_.add(pVar.B(LabelKey.parser(), f0Var));
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
                    this.labelKeys_ = Collections.unmodifiableList(this.labelKeys_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static MetricDescriptor parseFrom(p pVar, f0 f0Var) throws IOException {
        return (MetricDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
