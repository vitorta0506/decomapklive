package io.opencensus.proto.stats.v1;

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
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Measure extends GeneratedMessageV3 implements d {
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 4;
    public static final int UNIT_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int type_;
    private volatile Object unit_;
    private static final Measure DEFAULT_INSTANCE = new Measure();
    private static final e2<Measure> PARSER = new a();

    /* loaded from: classes7.dex */
    public enum Type implements h2 {
        TYPE_UNSPECIFIED(0),
        INT64(1),
        DOUBLE(2),
        UNRECOGNIZED(-1);
        
        public static final int DOUBLE_VALUE = 2;
        public static final int INT64_VALUE = 1;
        public static final int TYPE_UNSPECIFIED_VALUE = 0;
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
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return DOUBLE;
                }
                return INT64;
            }
            return TYPE_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return Measure.getDescriptor().k().get(0);
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
    public static class a extends com.google.protobuf.c<Measure> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Measure m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Measure(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private Object f51073e;

        /* renamed from: f  reason: collision with root package name */
        private Object f51074f;

        /* renamed from: g  reason: collision with root package name */
        private Object f51075g;

        /* renamed from: h  reason: collision with root package name */
        private int f51076h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f51104d.d(Measure.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Measure build() {
            Measure I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Measure I() {
            Measure measure = new Measure(this, (a) null);
            measure.name_ = this.f51073e;
            measure.description_ = this.f51074f;
            measure.unit_ = this.f51075g;
            measure.type_ = this.f51076h;
            Q();
            return measure;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Measure getDefaultInstanceForType() {
            return Measure.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.stats.v1.Measure.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.stats.v1.Measure.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.stats.v1.Measure r3 = (io.opencensus.proto.stats.v1.Measure) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.stats.v1.Measure r4 = (io.opencensus.proto.stats.v1.Measure) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.stats.v1.Measure.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.stats.v1.Measure$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Measure) {
                return g0((Measure) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Measure measure) {
            if (measure == Measure.getDefaultInstance()) {
                return this;
            }
            if (!measure.getName().isEmpty()) {
                this.f51073e = measure.name_;
                R();
            }
            if (!measure.getDescription().isEmpty()) {
                this.f51074f = measure.description_;
                R();
            }
            if (!measure.getUnit().isEmpty()) {
                this.f51075g = measure.unit_;
                R();
            }
            if (measure.type_ != 0) {
                j0(measure.getTypeValue());
            }
            z(((GeneratedMessageV3) measure).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f51103c;
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
            this.f51076h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f51073e = "";
            this.f51074f = "";
            this.f51075g = "";
            this.f51076h = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51073e = "";
            this.f51074f = "";
            this.f51075g = "";
            this.f51076h = 0;
            b0();
        }
    }

    /* synthetic */ Measure(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Measure getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f51103c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Measure parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Measure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Measure parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Measure> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Measure)) {
            return super.equals(obj);
        }
        Measure measure = (Measure) obj;
        return ((((getName().equals(measure.getName())) && getDescription().equals(measure.getDescription())) && getUnit().equals(measure.getUnit())) && this.type_ == measure.type_) && this.unknownFields.equals(measure.unknownFields);
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
    public e2<Measure> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = getNameBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (!getDescriptionBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.description_);
        }
        if (!getUnitBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.unit_);
        }
        if (this.type_ != Type.TYPE_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(4, this.type_);
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
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 37) + 3) * 53) + getUnit().hashCode()) * 37) + 4) * 53) + this.type_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f51104d.d(Measure.class, b.class);
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
        if (this.type_ != Type.TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.type_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Measure(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Measure measure) {
        return DEFAULT_INSTANCE.toBuilder().g0(measure);
    }

    public static Measure parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Measure(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Measure parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Measure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Measure parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Measure getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Measure parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Measure() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.description_ = "";
        this.unit_ = "";
        this.type_ = 0;
    }

    public static Measure parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Measure parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Measure parseFrom(InputStream inputStream) throws IOException {
        return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Measure parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Measure(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                        } else if (L == 18) {
                            this.description_ = pVar.K();
                        } else if (L == 26) {
                            this.unit_ = pVar.K();
                        } else if (L != 32) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.type_ = pVar.u();
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

    public static Measure parseFrom(p pVar) throws IOException {
        return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Measure parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
