package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class JwtLocation extends GeneratedMessageV3 implements h0 {
    public static final int HEADER_FIELD_NUMBER = 1;
    public static final int QUERY_FIELD_NUMBER = 2;
    public static final int VALUE_PREFIX_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int inCase_;
    private Object in_;
    private byte memoizedIsInitialized;
    private volatile Object valuePrefix_;
    private static final JwtLocation DEFAULT_INSTANCE = new JwtLocation();
    private static final e2<JwtLocation> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum InCase implements u0.c {
        HEADER(1),
        QUERY(2),
        IN_NOT_SET(0);
        
        private final int value;

        InCase(int i9) {
            this.value = i9;
        }

        public static InCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return QUERY;
                }
                return HEADER;
            }
            return IN_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static InCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<JwtLocation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public JwtLocation m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new JwtLocation(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10776a;

        static {
            int[] iArr = new int[InCase.values().length];
            f10776a = iArr;
            try {
                iArr[InCase.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10776a[InCase.QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10776a[InCase.IN_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10777e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10778f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10779g;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.api.c.f10960f.d(JwtLocation.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public JwtLocation build() {
            JwtLocation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public JwtLocation I() {
            JwtLocation jwtLocation = new JwtLocation(this, (a) null);
            if (this.f10777e == 1) {
                jwtLocation.in_ = this.f10778f;
            }
            if (this.f10777e == 2) {
                jwtLocation.in_ = this.f10778f;
            }
            jwtLocation.valuePrefix_ = this.f10779g;
            jwtLocation.inCase_ = this.f10777e;
            Q();
            return jwtLocation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public JwtLocation getDefaultInstanceForType() {
            return JwtLocation.getDefaultInstance();
        }

        public c d0(JwtLocation jwtLocation) {
            if (jwtLocation == JwtLocation.getDefaultInstance()) {
                return this;
            }
            if (!jwtLocation.getValuePrefix().isEmpty()) {
                this.f10779g = jwtLocation.valuePrefix_;
                R();
            }
            int i9 = b.f10776a[jwtLocation.getInCase().ordinal()];
            if (i9 == 1) {
                this.f10777e = 1;
                this.f10778f = jwtLocation.in_;
                R();
            } else if (i9 == 2) {
                this.f10777e = 2;
                this.f10778f = jwtLocation.in_;
                R();
            }
            z(((GeneratedMessageV3) jwtLocation).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.JwtLocation.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.JwtLocation.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.JwtLocation r3 = (com.google.api.JwtLocation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.JwtLocation r4 = (com.google.api.JwtLocation) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.JwtLocation.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.JwtLocation$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof JwtLocation) {
                return d0((JwtLocation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.api.c.f10959e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f10777e = 0;
            this.f10779g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10777e = 0;
            this.f10779g = "";
            b0();
        }
    }

    /* synthetic */ JwtLocation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static JwtLocation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.api.c.f10959e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static JwtLocation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static JwtLocation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<JwtLocation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JwtLocation)) {
            return super.equals(obj);
        }
        JwtLocation jwtLocation = (JwtLocation) obj;
        if (getValuePrefix().equals(jwtLocation.getValuePrefix()) && getInCase().equals(jwtLocation.getInCase())) {
            int i9 = this.inCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getQuery().equals(jwtLocation.getQuery())) {
                    return false;
                }
            } else if (!getHeader().equals(jwtLocation.getHeader())) {
                return false;
            }
            return this.unknownFields.equals(jwtLocation.unknownFields);
        }
        return false;
    }

    public String getHeader() {
        String str = this.inCase_ == 1 ? this.in_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.inCase_ == 1) {
            this.in_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getHeaderBytes() {
        String str = this.inCase_ == 1 ? this.in_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.inCase_ == 1) {
                this.in_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public InCase getInCase() {
        return InCase.forNumber(this.inCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<JwtLocation> getParserForType() {
        return PARSER;
    }

    public String getQuery() {
        String str = this.inCase_ == 2 ? this.in_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.inCase_ == 2) {
            this.in_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getQueryBytes() {
        String str = this.inCase_ == 2 ? this.in_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.inCase_ == 2) {
                this.in_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.inCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.in_) : 0;
        if (this.inCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.in_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.valuePrefix_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.valuePrefix_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getValuePrefix() {
        Object obj = this.valuePrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.valuePrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getValuePrefixBytes() {
        Object obj = this.valuePrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.valuePrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasHeader() {
        return this.inCase_ == 1;
    }

    public boolean hasQuery() {
        return this.inCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getValuePrefix().hashCode();
        int i11 = this.inCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getHeader().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getQuery().hashCode();
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
        return com.google.api.c.f10960f.d(JwtLocation.class, c.class);
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
        return new JwtLocation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.inCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.in_);
        }
        if (this.inCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.in_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.valuePrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.valuePrefix_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ JwtLocation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(JwtLocation jwtLocation) {
        return DEFAULT_INSTANCE.toBuilder().d0(jwtLocation);
    }

    public static JwtLocation parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static JwtLocation parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private JwtLocation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.inCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static JwtLocation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public JwtLocation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).d0(this);
    }

    public static JwtLocation parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static JwtLocation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private JwtLocation() {
        this.inCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.valuePrefix_ = "";
    }

    public static JwtLocation parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static JwtLocation parseFrom(InputStream inputStream) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static JwtLocation parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static JwtLocation parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private JwtLocation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.inCase_ = 1;
                                this.in_ = K;
                            } else if (L == 18) {
                                String K2 = pVar.K();
                                this.inCase_ = 2;
                                this.in_ = K2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.valuePrefix_ = pVar.K();
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

    public static JwtLocation parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (JwtLocation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
