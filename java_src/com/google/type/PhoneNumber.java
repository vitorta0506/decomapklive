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
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class PhoneNumber extends GeneratedMessageV3 implements r1 {
    public static final int E164_NUMBER_FIELD_NUMBER = 1;
    public static final int EXTENSION_FIELD_NUMBER = 3;
    public static final int SHORT_CODE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object extension_;
    private int kindCase_;
    private Object kind_;
    private byte memoizedIsInitialized;
    private static final PhoneNumber DEFAULT_INSTANCE = new PhoneNumber();
    private static final e2<PhoneNumber> PARSER = new a();

    /* loaded from: classes3.dex */
    public enum KindCase implements u0.c {
        E164_NUMBER(1),
        SHORT_CODE(2),
        KIND_NOT_SET(0);
        
        private final int value;

        KindCase(int i9) {
            this.value = i9;
        }

        public static KindCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return SHORT_CODE;
                }
                return E164_NUMBER;
            }
            return KIND_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static KindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes3.dex */
    public static final class ShortCode extends GeneratedMessageV3 implements d {
        public static final int NUMBER_FIELD_NUMBER = 2;
        public static final int REGION_CODE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object number_;
        private volatile Object regionCode_;
        private static final ShortCode DEFAULT_INSTANCE = new ShortCode();
        private static final e2<ShortCode> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<ShortCode> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ShortCode m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ShortCode(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f15760e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15761f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f15827d.d(ShortCode.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ShortCode build() {
                ShortCode I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ShortCode I() {
                ShortCode shortCode = new ShortCode(this, (a) null);
                shortCode.regionCode_ = this.f15760e;
                shortCode.number_ = this.f15761f;
                Q();
                return shortCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ShortCode getDefaultInstanceForType() {
                return ShortCode.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.type.PhoneNumber.ShortCode.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.type.PhoneNumber.ShortCode.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.type.PhoneNumber$ShortCode r3 = (com.google.type.PhoneNumber.ShortCode) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.type.PhoneNumber$ShortCode r4 = (com.google.type.PhoneNumber.ShortCode) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.type.PhoneNumber.ShortCode.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.PhoneNumber$ShortCode$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ShortCode) {
                    return g0((ShortCode) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(ShortCode shortCode) {
                if (shortCode == ShortCode.getDefaultInstance()) {
                    return this;
                }
                if (!shortCode.getRegionCode().isEmpty()) {
                    this.f15760e = shortCode.regionCode_;
                    R();
                }
                if (!shortCode.getNumber().isEmpty()) {
                    this.f15761f = shortCode.number_;
                    R();
                }
                z(((GeneratedMessageV3) shortCode).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.f15826c;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f15760e = "";
                this.f15761f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15760e = "";
                this.f15761f = "";
                b0();
            }
        }

        /* synthetic */ ShortCode(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ShortCode getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.f15826c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ShortCode parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ShortCode parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ShortCode> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShortCode)) {
                return super.equals(obj);
            }
            ShortCode shortCode = (ShortCode) obj;
            return getRegionCode().equals(shortCode.getRegionCode()) && getNumber().equals(shortCode.getNumber()) && this.unknownFields.equals(shortCode.unknownFields);
        }

        public String getNumber() {
            Object obj = this.number_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.number_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getNumberBytes() {
            Object obj = this.number_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.number_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ShortCode> getParserForType() {
            return PARSER;
        }

        public String getRegionCode() {
            Object obj = this.regionCode_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.regionCode_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getRegionCodeBytes() {
            Object obj = this.regionCode_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.regionCode_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.regionCode_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.regionCode_);
            if (!GeneratedMessageV3.isStringEmpty(this.number_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.number_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRegionCode().hashCode()) * 37) + 2) * 53) + getNumber().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.f15827d.d(ShortCode.class, b.class);
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
            return new ShortCode();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.regionCode_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.regionCode_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.number_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.number_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ShortCode(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ShortCode shortCode) {
            return DEFAULT_INSTANCE.toBuilder().g0(shortCode);
        }

        public static ShortCode parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ShortCode parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ShortCode(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ShortCode parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ShortCode getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static ShortCode parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ShortCode() {
            this.memoizedIsInitialized = (byte) -1;
            this.regionCode_ = "";
            this.number_ = "";
        }

        public static ShortCode parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ShortCode parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ShortCode parseFrom(InputStream inputStream) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ShortCode parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private ShortCode(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.regionCode_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.number_ = pVar.K();
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

        public static ShortCode parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ShortCode parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (ShortCode) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<PhoneNumber> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PhoneNumber m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PhoneNumber(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15762a;

        static {
            int[] iArr = new int[KindCase.values().length];
            f15762a = iArr;
            try {
                iArr[KindCase.E164_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15762a[KindCase.SHORT_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15762a[KindCase.KIND_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15763e;

        /* renamed from: f  reason: collision with root package name */
        private Object f15764f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ShortCode, ShortCode.b, d> f15765g;

        /* renamed from: h  reason: collision with root package name */
        private Object f15766h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f15825b.d(PhoneNumber.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PhoneNumber build() {
            PhoneNumber I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PhoneNumber I() {
            PhoneNumber phoneNumber = new PhoneNumber(this, (a) null);
            if (this.f15763e == 1) {
                phoneNumber.kind_ = this.f15764f;
            }
            if (this.f15763e == 2) {
                q2<ShortCode, ShortCode.b, d> q2Var = this.f15765g;
                if (q2Var == null) {
                    phoneNumber.kind_ = this.f15764f;
                } else {
                    phoneNumber.kind_ = q2Var.b();
                }
            }
            phoneNumber.extension_ = this.f15766h;
            phoneNumber.kindCase_ = this.f15763e;
            Q();
            return phoneNumber;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public PhoneNumber getDefaultInstanceForType() {
            return PhoneNumber.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.PhoneNumber.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.PhoneNumber.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.PhoneNumber r3 = (com.google.type.PhoneNumber) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.PhoneNumber r4 = (com.google.type.PhoneNumber) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.PhoneNumber.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.PhoneNumber$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof PhoneNumber) {
                return g0((PhoneNumber) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(PhoneNumber phoneNumber) {
            if (phoneNumber == PhoneNumber.getDefaultInstance()) {
                return this;
            }
            if (!phoneNumber.getExtension().isEmpty()) {
                this.f15766h = phoneNumber.extension_;
                R();
            }
            int i9 = b.f15762a[phoneNumber.getKindCase().ordinal()];
            if (i9 == 1) {
                this.f15763e = 1;
                this.f15764f = phoneNumber.kind_;
                R();
            } else if (i9 == 2) {
                h0(phoneNumber.getShortCode());
            }
            z(((GeneratedMessageV3) phoneNumber).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f15824a;
        }

        public c h0(ShortCode shortCode) {
            q2<ShortCode, ShortCode.b, d> q2Var = this.f15765g;
            if (q2Var == null) {
                if (this.f15763e == 2 && this.f15764f != ShortCode.getDefaultInstance()) {
                    this.f15764f = ShortCode.newBuilder((ShortCode) this.f15764f).g0(shortCode).I();
                } else {
                    this.f15764f = shortCode;
                }
                R();
            } else {
                if (this.f15763e == 2) {
                    q2Var.e(shortCode);
                }
                this.f15765g.g(shortCode);
            }
            this.f15763e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f15763e = 0;
            this.f15766h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15763e = 0;
            this.f15766h = "";
            b0();
        }
    }

    /* loaded from: classes3.dex */
    public interface d extends r1 {
    }

    /* synthetic */ PhoneNumber(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PhoneNumber getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f15824a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PhoneNumber parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PhoneNumber parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PhoneNumber> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PhoneNumber)) {
            return super.equals(obj);
        }
        PhoneNumber phoneNumber = (PhoneNumber) obj;
        if (getExtension().equals(phoneNumber.getExtension()) && getKindCase().equals(phoneNumber.getKindCase())) {
            int i9 = this.kindCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getShortCode().equals(phoneNumber.getShortCode())) {
                    return false;
                }
            } else if (!getE164Number().equals(phoneNumber.getE164Number())) {
                return false;
            }
            return this.unknownFields.equals(phoneNumber.unknownFields);
        }
        return false;
    }

    public String getE164Number() {
        String str = this.kindCase_ == 1 ? this.kind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.kindCase_ == 1) {
            this.kind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getE164NumberBytes() {
        String str = this.kindCase_ == 1 ? this.kind_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.kindCase_ == 1) {
                this.kind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public String getExtension() {
        Object obj = this.extension_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.extension_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getExtensionBytes() {
        Object obj = this.extension_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.extension_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public KindCase getKindCase() {
        return KindCase.forNumber(this.kindCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PhoneNumber> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.kindCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.kind_) : 0;
        if (this.kindCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (ShortCode) this.kind_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.extension_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.extension_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ShortCode getShortCode() {
        if (this.kindCase_ == 2) {
            return (ShortCode) this.kind_;
        }
        return ShortCode.getDefaultInstance();
    }

    public d getShortCodeOrBuilder() {
        if (this.kindCase_ == 2) {
            return (ShortCode) this.kind_;
        }
        return ShortCode.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasE164Number() {
        return this.kindCase_ == 1;
    }

    public boolean hasShortCode() {
        return this.kindCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getExtension().hashCode();
        int i11 = this.kindCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getE164Number().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getShortCode().hashCode();
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
        return o.f15825b.d(PhoneNumber.class, c.class);
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
        return new PhoneNumber();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kindCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.kind_);
        }
        if (this.kindCase_ == 2) {
            codedOutputStream.L0(2, (ShortCode) this.kind_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.extension_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.extension_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PhoneNumber(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(PhoneNumber phoneNumber) {
        return DEFAULT_INSTANCE.toBuilder().g0(phoneNumber);
    }

    public static PhoneNumber parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PhoneNumber parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PhoneNumber(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PhoneNumber parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PhoneNumber getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static PhoneNumber parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static PhoneNumber parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private PhoneNumber() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.extension_ = "";
    }

    public static PhoneNumber parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PhoneNumber parseFrom(InputStream inputStream) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static PhoneNumber parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static PhoneNumber parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private PhoneNumber(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                this.kindCase_ = 1;
                                this.kind_ = K;
                            } else if (L == 18) {
                                ShortCode.b builder = this.kindCase_ == 2 ? ((ShortCode) this.kind_).toBuilder() : null;
                                o1 B = pVar.B(ShortCode.parser(), f0Var);
                                this.kind_ = B;
                                if (builder != null) {
                                    builder.g0((ShortCode) B);
                                    this.kind_ = builder.I();
                                }
                                this.kindCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.extension_ = pVar.K();
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

    public static PhoneNumber parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (PhoneNumber) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
