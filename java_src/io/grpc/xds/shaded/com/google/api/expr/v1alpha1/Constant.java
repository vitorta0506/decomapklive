package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.NullValue;
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
import com.google.protobuf.v;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Constant extends GeneratedMessageV3 implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b {
    public static final int BOOL_VALUE_FIELD_NUMBER = 2;
    public static final int BYTES_VALUE_FIELD_NUMBER = 7;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 5;
    public static final int DURATION_VALUE_FIELD_NUMBER = 8;
    public static final int INT64_VALUE_FIELD_NUMBER = 3;
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int STRING_VALUE_FIELD_NUMBER = 6;
    public static final int TIMESTAMP_VALUE_FIELD_NUMBER = 9;
    public static final int UINT64_VALUE_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int constantKindCase_;
    private Object constantKind_;
    private byte memoizedIsInitialized;
    private static final Constant DEFAULT_INSTANCE = new Constant();
    private static final e2<Constant> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum ConstantKindCase implements u0.c {
        NULL_VALUE(1),
        BOOL_VALUE(2),
        INT64_VALUE(3),
        UINT64_VALUE(4),
        DOUBLE_VALUE(5),
        STRING_VALUE(6),
        BYTES_VALUE(7),
        DURATION_VALUE(8),
        TIMESTAMP_VALUE(9),
        CONSTANTKIND_NOT_SET(0);
        
        private final int value;

        ConstantKindCase(int i9) {
            this.value = i9;
        }

        public static ConstantKindCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return CONSTANTKIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return BOOL_VALUE;
                case 3:
                    return INT64_VALUE;
                case 4:
                    return UINT64_VALUE;
                case 5:
                    return DOUBLE_VALUE;
                case 6:
                    return STRING_VALUE;
                case 7:
                    return BYTES_VALUE;
                case 8:
                    return DURATION_VALUE;
                case 9:
                    return TIMESTAMP_VALUE;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ConstantKindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Constant> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Constant m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Constant(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45567a;

        static {
            int[] iArr = new int[ConstantKindCase.values().length];
            f45567a = iArr;
            try {
                iArr[ConstantKindCase.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45567a[ConstantKindCase.BOOL_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45567a[ConstantKindCase.INT64_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45567a[ConstantKindCase.UINT64_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45567a[ConstantKindCase.DOUBLE_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45567a[ConstantKindCase.STRING_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f45567a[ConstantKindCase.BYTES_VALUE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f45567a[ConstantKindCase.DURATION_VALUE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f45567a[ConstantKindCase.TIMESTAMP_VALUE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f45567a[ConstantKindCase.CONSTANTKIND_NOT_SET.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f45568e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45569f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f45570g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f45571h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45734t.d(Constant.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Constant build() {
            Constant I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Constant I() {
            Constant constant = new Constant(this, (a) null);
            if (this.f45568e == 1) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 2) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 3) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 4) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 5) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 6) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 7) {
                constant.constantKind_ = this.f45569f;
            }
            if (this.f45568e == 8) {
                q2<Duration, Duration.b, v> q2Var = this.f45570g;
                if (q2Var == null) {
                    constant.constantKind_ = this.f45569f;
                } else {
                    constant.constantKind_ = q2Var.b();
                }
            }
            if (this.f45568e == 9) {
                q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45571h;
                if (q2Var2 == null) {
                    constant.constantKind_ = this.f45569f;
                } else {
                    constant.constantKind_ = q2Var2.b();
                }
            }
            constant.constantKindCase_ = this.f45568e;
            Q();
            return constant;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Constant getDefaultInstanceForType() {
            return Constant.getDefaultInstance();
        }

        @Deprecated
        public c d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f45570g;
            if (q2Var == null) {
                if (this.f45568e == 8 && this.f45569f != Duration.getDefaultInstance()) {
                    this.f45569f = Duration.newBuilder((Duration) this.f45569f).e0(duration).I();
                } else {
                    this.f45569f = duration;
                }
                R();
            } else {
                if (this.f45568e == 8) {
                    q2Var.e(duration);
                }
                this.f45570g.g(duration);
            }
            this.f45568e = 8;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Constant) {
                return h0((Constant) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45733s;
        }

        public c h0(Constant constant) {
            if (constant == Constant.getDefaultInstance()) {
                return this;
            }
            switch (b.f45567a[constant.getConstantKindCase().ordinal()]) {
                case 1:
                    q0(constant.getNullValueValue());
                    break;
                case 2:
                    k0(constant.getBoolValue());
                    break;
                case 3:
                    o0(constant.getInt64Value());
                    break;
                case 4:
                    r0(constant.getUint64Value());
                    break;
                case 5:
                    m0(constant.getDoubleValue());
                    break;
                case 6:
                    this.f45568e = 6;
                    this.f45569f = constant.constantKind_;
                    R();
                    break;
                case 7:
                    l0(constant.getBytesValue());
                    break;
                case 8:
                    d0(constant.getDurationValue());
                    break;
                case 9:
                    i0(constant.getTimestampValue());
                    break;
            }
            z(((GeneratedMessageV3) constant).unknownFields);
            R();
            return this;
        }

        @Deprecated
        public c i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f45571h;
            if (q2Var == null) {
                if (this.f45568e == 9 && this.f45569f != Timestamp.getDefaultInstance()) {
                    this.f45569f = Timestamp.newBuilder((Timestamp) this.f45569f).g0(timestamp).I();
                } else {
                    this.f45569f = timestamp;
                }
                R();
            } else {
                if (this.f45568e == 9) {
                    q2Var.e(timestamp);
                }
                this.f45571h.g(timestamp);
            }
            this.f45568e = 9;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c k0(boolean z10) {
            this.f45568e = 2;
            this.f45569f = Boolean.valueOf(z10);
            R();
            return this;
        }

        public c l0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f45568e = 7;
            this.f45569f = byteString;
            R();
            return this;
        }

        public c m0(double d10) {
            this.f45568e = 5;
            this.f45569f = Double.valueOf(d10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c o0(long j10) {
            this.f45568e = 3;
            this.f45569f = Long.valueOf(j10);
            R();
            return this;
        }

        public c q0(int i9) {
            this.f45568e = 1;
            this.f45569f = Integer.valueOf(i9);
            R();
            return this;
        }

        public c r0(long j10) {
            this.f45568e = 4;
            this.f45569f = Long.valueOf(j10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45568e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45568e = 0;
            b0();
        }
    }

    /* synthetic */ Constant(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Constant getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45733s;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Constant parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Constant) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Constant parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Constant> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Constant)) {
            return super.equals(obj);
        }
        Constant constant = (Constant) obj;
        if (getConstantKindCase().equals(constant.getConstantKindCase())) {
            switch (this.constantKindCase_) {
                case 1:
                    if (getNullValueValue() != constant.getNullValueValue()) {
                        return false;
                    }
                    break;
                case 2:
                    if (getBoolValue() != constant.getBoolValue()) {
                        return false;
                    }
                    break;
                case 3:
                    if (getInt64Value() != constant.getInt64Value()) {
                        return false;
                    }
                    break;
                case 4:
                    if (getUint64Value() != constant.getUint64Value()) {
                        return false;
                    }
                    break;
                case 5:
                    if (Double.doubleToLongBits(getDoubleValue()) != Double.doubleToLongBits(constant.getDoubleValue())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getStringValue().equals(constant.getStringValue())) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getBytesValue().equals(constant.getBytesValue())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getDurationValue().equals(constant.getDurationValue())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getTimestampValue().equals(constant.getTimestampValue())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(constant.unknownFields);
        }
        return false;
    }

    public boolean getBoolValue() {
        if (this.constantKindCase_ == 2) {
            return ((Boolean) this.constantKind_).booleanValue();
        }
        return false;
    }

    public ByteString getBytesValue() {
        if (this.constantKindCase_ == 7) {
            return (ByteString) this.constantKind_;
        }
        return ByteString.EMPTY;
    }

    public ConstantKindCase getConstantKindCase() {
        return ConstantKindCase.forNumber(this.constantKindCase_);
    }

    public double getDoubleValue() {
        if (this.constantKindCase_ == 5) {
            return ((Double) this.constantKind_).doubleValue();
        }
        return 0.0d;
    }

    @Deprecated
    public Duration getDurationValue() {
        if (this.constantKindCase_ == 8) {
            return (Duration) this.constantKind_;
        }
        return Duration.getDefaultInstance();
    }

    @Deprecated
    public v getDurationValueOrBuilder() {
        if (this.constantKindCase_ == 8) {
            return (Duration) this.constantKind_;
        }
        return Duration.getDefaultInstance();
    }

    public long getInt64Value() {
        if (this.constantKindCase_ == 3) {
            return ((Long) this.constantKind_).longValue();
        }
        return 0L;
    }

    public NullValue getNullValue() {
        if (this.constantKindCase_ == 1) {
            NullValue valueOf = NullValue.valueOf(((Integer) this.constantKind_).intValue());
            return valueOf == null ? NullValue.UNRECOGNIZED : valueOf;
        }
        return NullValue.NULL_VALUE;
    }

    public int getNullValueValue() {
        if (this.constantKindCase_ == 1) {
            return ((Integer) this.constantKind_).intValue();
        }
        return 0;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Constant> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.constantKindCase_ == 1 ? 0 + CodedOutputStream.l(1, ((Integer) this.constantKind_).intValue()) : 0;
        if (this.constantKindCase_ == 2) {
            l10 += CodedOutputStream.e(2, ((Boolean) this.constantKind_).booleanValue());
        }
        if (this.constantKindCase_ == 3) {
            l10 += CodedOutputStream.z(3, ((Long) this.constantKind_).longValue());
        }
        if (this.constantKindCase_ == 4) {
            l10 += CodedOutputStream.a0(4, ((Long) this.constantKind_).longValue());
        }
        if (this.constantKindCase_ == 5) {
            l10 += CodedOutputStream.j(5, ((Double) this.constantKind_).doubleValue());
        }
        if (this.constantKindCase_ == 6) {
            l10 += GeneratedMessageV3.computeStringSize(6, this.constantKind_);
        }
        if (this.constantKindCase_ == 7) {
            l10 += CodedOutputStream.h(7, (ByteString) this.constantKind_);
        }
        if (this.constantKindCase_ == 8) {
            l10 += CodedOutputStream.G(8, (Duration) this.constantKind_);
        }
        if (this.constantKindCase_ == 9) {
            l10 += CodedOutputStream.G(9, (Timestamp) this.constantKind_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getStringValue() {
        String str = this.constantKindCase_ == 6 ? this.constantKind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.constantKindCase_ == 6) {
            this.constantKind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getStringValueBytes() {
        String str = this.constantKindCase_ == 6 ? this.constantKind_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.constantKindCase_ == 6) {
                this.constantKind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Deprecated
    public Timestamp getTimestampValue() {
        if (this.constantKindCase_ == 9) {
            return (Timestamp) this.constantKind_;
        }
        return Timestamp.getDefaultInstance();
    }

    @Deprecated
    public z2 getTimestampValueOrBuilder() {
        if (this.constantKindCase_ == 9) {
            return (Timestamp) this.constantKind_;
        }
        return Timestamp.getDefaultInstance();
    }

    public long getUint64Value() {
        if (this.constantKindCase_ == 4) {
            return ((Long) this.constantKind_).longValue();
        }
        return 0L;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBoolValue() {
        return this.constantKindCase_ == 2;
    }

    public boolean hasBytesValue() {
        return this.constantKindCase_ == 7;
    }

    public boolean hasDoubleValue() {
        return this.constantKindCase_ == 5;
    }

    @Deprecated
    public boolean hasDurationValue() {
        return this.constantKindCase_ == 8;
    }

    public boolean hasInt64Value() {
        return this.constantKindCase_ == 3;
    }

    public boolean hasNullValue() {
        return this.constantKindCase_ == 1;
    }

    public boolean hasStringValue() {
        return this.constantKindCase_ == 6;
    }

    @Deprecated
    public boolean hasTimestampValue() {
        return this.constantKindCase_ == 9;
    }

    public boolean hasUint64Value() {
        return this.constantKindCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int nullValueValue;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        switch (this.constantKindCase_) {
            case 1:
                i9 = ((hashCode * 37) + 1) * 53;
                nullValueValue = getNullValueValue();
                hashCode = i9 + nullValueValue;
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            case 2:
                i9 = ((hashCode * 37) + 2) * 53;
                nullValueValue = u0.d(getBoolValue());
                hashCode = i9 + nullValueValue;
                int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22;
                return hashCode22;
            case 3:
                i9 = ((hashCode * 37) + 3) * 53;
                nullValueValue = u0.i(getInt64Value());
                hashCode = i9 + nullValueValue;
                int hashCode222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222;
                return hashCode222;
            case 4:
                i9 = ((hashCode * 37) + 4) * 53;
                nullValueValue = u0.i(getUint64Value());
                hashCode = i9 + nullValueValue;
                int hashCode2222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222;
                return hashCode2222;
            case 5:
                i9 = ((hashCode * 37) + 5) * 53;
                nullValueValue = u0.i(Double.doubleToLongBits(getDoubleValue()));
                hashCode = i9 + nullValueValue;
                int hashCode22222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22222;
                return hashCode22222;
            case 6:
                i9 = ((hashCode * 37) + 6) * 53;
                nullValueValue = getStringValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222222;
                return hashCode222222;
            case 7:
                i9 = ((hashCode * 37) + 7) * 53;
                nullValueValue = getBytesValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode2222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222222;
                return hashCode2222222;
            case 8:
                i9 = ((hashCode * 37) + 8) * 53;
                nullValueValue = getDurationValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode22222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22222222;
                return hashCode22222222;
            case 9:
                i9 = ((hashCode * 37) + 9) * 53;
                nullValueValue = getTimestampValue().hashCode();
                hashCode = i9 + nullValueValue;
                int hashCode222222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222222222;
                return hashCode222222222;
            default:
                int hashCode2222222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222222222;
                return hashCode2222222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f45734t.d(Constant.class, c.class);
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
        return new Constant();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.constantKindCase_ == 1) {
            codedOutputStream.v0(1, ((Integer) this.constantKind_).intValue());
        }
        if (this.constantKindCase_ == 2) {
            codedOutputStream.n0(2, ((Boolean) this.constantKind_).booleanValue());
        }
        if (this.constantKindCase_ == 3) {
            codedOutputStream.J0(3, ((Long) this.constantKind_).longValue());
        }
        if (this.constantKindCase_ == 4) {
            codedOutputStream.e1(4, ((Long) this.constantKind_).longValue());
        }
        if (this.constantKindCase_ == 5) {
            codedOutputStream.t0(5, ((Double) this.constantKind_).doubleValue());
        }
        if (this.constantKindCase_ == 6) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.constantKind_);
        }
        if (this.constantKindCase_ == 7) {
            codedOutputStream.r0(7, (ByteString) this.constantKind_);
        }
        if (this.constantKindCase_ == 8) {
            codedOutputStream.L0(8, (Duration) this.constantKind_);
        }
        if (this.constantKindCase_ == 9) {
            codedOutputStream.L0(9, (Timestamp) this.constantKind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Constant(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Constant constant) {
        return DEFAULT_INSTANCE.toBuilder().h0(constant);
    }

    public static Constant parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Constant(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.constantKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Constant parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Constant) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Constant parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Constant getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static Constant parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Constant parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Constant() {
        this.constantKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Constant parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Constant parseFrom(InputStream inputStream) throws IOException {
        return (Constant) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Constant(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 8) {
                                int u10 = pVar.u();
                                this.constantKindCase_ = 1;
                                this.constantKind_ = Integer.valueOf(u10);
                            } else if (L == 16) {
                                this.constantKind_ = Boolean.valueOf(pVar.r());
                                this.constantKindCase_ = 2;
                            } else if (L == 24) {
                                this.constantKind_ = Long.valueOf(pVar.A());
                                this.constantKindCase_ = 3;
                            } else if (L == 32) {
                                this.constantKind_ = Long.valueOf(pVar.N());
                                this.constantKindCase_ = 4;
                            } else if (L == 41) {
                                this.constantKind_ = Double.valueOf(pVar.t());
                                this.constantKindCase_ = 5;
                            } else if (L == 50) {
                                String K = pVar.K();
                                this.constantKindCase_ = 6;
                                this.constantKind_ = K;
                            } else if (L != 58) {
                                if (L == 66) {
                                    Duration.b builder = this.constantKindCase_ == 8 ? ((Duration) this.constantKind_).toBuilder() : null;
                                    o1 B = pVar.B(Duration.parser(), f0Var);
                                    this.constantKind_ = B;
                                    if (builder != null) {
                                        builder.e0((Duration) B);
                                        this.constantKind_ = builder.I();
                                    }
                                    this.constantKindCase_ = 8;
                                } else if (L != 74) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Timestamp.b builder2 = this.constantKindCase_ == 9 ? ((Timestamp) this.constantKind_).toBuilder() : null;
                                    o1 B2 = pVar.B(Timestamp.parser(), f0Var);
                                    this.constantKind_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((Timestamp) B2);
                                        this.constantKind_ = builder2.I();
                                    }
                                    this.constantKindCase_ = 9;
                                }
                            } else {
                                this.constantKind_ = pVar.s();
                                this.constantKindCase_ = 7;
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

    public static Constant parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Constant) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Constant parseFrom(p pVar) throws IOException {
        return (Constant) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Constant parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Constant) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
