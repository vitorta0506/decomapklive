package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

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
/* loaded from: classes6.dex */
public final class CustomInlineHeader extends GeneratedMessageV3 implements e {
    public static final int INLINE_HEADER_NAME_FIELD_NUMBER = 1;
    public static final int INLINE_HEADER_TYPE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object inlineHeaderName_;
    private int inlineHeaderType_;
    private byte memoizedIsInitialized;
    private static final CustomInlineHeader DEFAULT_INSTANCE = new CustomInlineHeader();
    private static final e2<CustomInlineHeader> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum InlineHeaderType implements h2 {
        REQUEST_HEADER(0),
        REQUEST_TRAILER(1),
        RESPONSE_HEADER(2),
        RESPONSE_TRAILER(3),
        UNRECOGNIZED(-1);
        
        public static final int REQUEST_HEADER_VALUE = 0;
        public static final int REQUEST_TRAILER_VALUE = 1;
        public static final int RESPONSE_HEADER_VALUE = 2;
        public static final int RESPONSE_TRAILER_VALUE = 3;
        private final int value;
        private static final u0.d<InlineHeaderType> internalValueMap = new a();
        private static final InlineHeaderType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<InlineHeaderType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public InlineHeaderType a(int i9) {
                return InlineHeaderType.forNumber(i9);
            }
        }

        InlineHeaderType(int i9) {
            this.value = i9;
        }

        public static InlineHeaderType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return RESPONSE_TRAILER;
                    }
                    return RESPONSE_HEADER;
                }
                return REQUEST_TRAILER;
            }
            return REQUEST_HEADER;
        }

        public static final Descriptors.d getDescriptor() {
            return CustomInlineHeader.getDescriptor().k().get(0);
        }

        public static u0.d<InlineHeaderType> internalGetValueMap() {
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static InlineHeaderType valueOf(int i9) {
            return forNumber(i9);
        }

        public static InlineHeaderType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<CustomInlineHeader> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CustomInlineHeader m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CustomInlineHeader(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private Object f47476e;

        /* renamed from: f  reason: collision with root package name */
        private int f47477f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.J.d(CustomInlineHeader.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CustomInlineHeader build() {
            CustomInlineHeader I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CustomInlineHeader I() {
            CustomInlineHeader customInlineHeader = new CustomInlineHeader(this, (a) null);
            customInlineHeader.inlineHeaderName_ = this.f47476e;
            customInlineHeader.inlineHeaderType_ = this.f47477f;
            Q();
            return customInlineHeader;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CustomInlineHeader getDefaultInstanceForType() {
            return CustomInlineHeader.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.CustomInlineHeader$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CustomInlineHeader) {
                return g0((CustomInlineHeader) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(CustomInlineHeader customInlineHeader) {
            if (customInlineHeader == CustomInlineHeader.getDefaultInstance()) {
                return this;
            }
            if (!customInlineHeader.getInlineHeaderName().isEmpty()) {
                this.f47476e = customInlineHeader.inlineHeaderName_;
                R();
            }
            if (customInlineHeader.inlineHeaderType_ != 0) {
                j0(customInlineHeader.getInlineHeaderTypeValue());
            }
            z(((GeneratedMessageV3) customInlineHeader).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.I;
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
            this.f47477f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47476e = "";
            this.f47477f = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47476e = "";
            this.f47477f = 0;
            b0();
        }
    }

    /* synthetic */ CustomInlineHeader(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CustomInlineHeader getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.I;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CustomInlineHeader parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CustomInlineHeader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CustomInlineHeader> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomInlineHeader)) {
            return super.equals(obj);
        }
        CustomInlineHeader customInlineHeader = (CustomInlineHeader) obj;
        return getInlineHeaderName().equals(customInlineHeader.getInlineHeaderName()) && this.inlineHeaderType_ == customInlineHeader.inlineHeaderType_ && this.unknownFields.equals(customInlineHeader.unknownFields);
    }

    public String getInlineHeaderName() {
        Object obj = this.inlineHeaderName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.inlineHeaderName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getInlineHeaderNameBytes() {
        Object obj = this.inlineHeaderName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.inlineHeaderName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public InlineHeaderType getInlineHeaderType() {
        InlineHeaderType valueOf = InlineHeaderType.valueOf(this.inlineHeaderType_);
        return valueOf == null ? InlineHeaderType.UNRECOGNIZED : valueOf;
    }

    public int getInlineHeaderTypeValue() {
        return this.inlineHeaderType_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CustomInlineHeader> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.inlineHeaderName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.inlineHeaderName_);
        if (this.inlineHeaderType_ != InlineHeaderType.REQUEST_HEADER.getNumber()) {
            computeStringSize += CodedOutputStream.l(2, this.inlineHeaderType_);
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
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getInlineHeaderName().hashCode()) * 37) + 2) * 53) + this.inlineHeaderType_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.J.d(CustomInlineHeader.class, b.class);
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
        return new CustomInlineHeader();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.inlineHeaderName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.inlineHeaderName_);
        }
        if (this.inlineHeaderType_ != InlineHeaderType.REQUEST_HEADER.getNumber()) {
            codedOutputStream.v0(2, this.inlineHeaderType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CustomInlineHeader(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CustomInlineHeader customInlineHeader) {
        return DEFAULT_INSTANCE.toBuilder().g0(customInlineHeader);
    }

    public static CustomInlineHeader parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CustomInlineHeader(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CustomInlineHeader parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CustomInlineHeader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CustomInlineHeader getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static CustomInlineHeader parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CustomInlineHeader() {
        this.memoizedIsInitialized = (byte) -1;
        this.inlineHeaderName_ = "";
        this.inlineHeaderType_ = 0;
    }

    public static CustomInlineHeader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CustomInlineHeader parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CustomInlineHeader parseFrom(InputStream inputStream) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private CustomInlineHeader(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.inlineHeaderName_ = pVar.K();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.inlineHeaderType_ = pVar.u();
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

    public static CustomInlineHeader parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CustomInlineHeader parseFrom(p pVar) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CustomInlineHeader parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CustomInlineHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
