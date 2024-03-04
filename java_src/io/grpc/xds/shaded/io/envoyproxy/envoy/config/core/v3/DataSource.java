package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

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
/* loaded from: classes6.dex */
public final class DataSource extends GeneratedMessageV3 implements n {
    public static final int FILENAME_FIELD_NUMBER = 1;
    public static final int INLINE_BYTES_FIELD_NUMBER = 2;
    public static final int INLINE_STRING_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int specifierCase_;
    private Object specifier_;
    private static final DataSource DEFAULT_INSTANCE = new DataSource();
    private static final e2<DataSource> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum SpecifierCase implements u0.c {
        FILENAME(1),
        INLINE_BYTES(2),
        INLINE_STRING(3),
        SPECIFIER_NOT_SET(0);
        
        private final int value;

        SpecifierCase(int i9) {
            this.value = i9;
        }

        public static SpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return INLINE_STRING;
                    }
                    return INLINE_BYTES;
                }
                return FILENAME;
            }
            return SPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static SpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DataSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DataSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new DataSource(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47822a;

        static {
            int[] iArr = new int[SpecifierCase.values().length];
            f47822a = iArr;
            try {
                iArr[SpecifierCase.FILENAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47822a[SpecifierCase.INLINE_BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47822a[SpecifierCase.INLINE_STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47822a[SpecifierCase.SPECIFIER_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements n {

        /* renamed from: e  reason: collision with root package name */
        private int f47823e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47824f;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.H.d(DataSource.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DataSource build() {
            DataSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DataSource I() {
            DataSource dataSource = new DataSource(this, (a) null);
            if (this.f47823e == 1) {
                dataSource.specifier_ = this.f47824f;
            }
            if (this.f47823e == 2) {
                dataSource.specifier_ = this.f47824f;
            }
            if (this.f47823e == 3) {
                dataSource.specifier_ = this.f47824f;
            }
            dataSource.specifierCase_ = this.f47823e;
            Q();
            return dataSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DataSource getDefaultInstanceForType() {
            return DataSource.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof DataSource) {
                return g0((DataSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(DataSource dataSource) {
            if (dataSource == DataSource.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f47822a[dataSource.getSpecifierCase().ordinal()];
            if (i9 == 1) {
                this.f47823e = 1;
                this.f47824f = dataSource.specifier_;
                R();
            } else if (i9 == 2) {
                j0(dataSource.getInlineBytes());
            } else if (i9 == 3) {
                this.f47823e = 3;
                this.f47824f = dataSource.specifier_;
                R();
            }
            z(((GeneratedMessageV3) dataSource).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.G;
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

        public c j0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f47823e = 2;
            this.f47824f = byteString;
            R();
            return this;
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
            this.f47823e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47823e = 0;
            b0();
        }
    }

    /* synthetic */ DataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DataSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.G;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DataSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DataSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DataSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DataSource)) {
            return super.equals(obj);
        }
        DataSource dataSource = (DataSource) obj;
        if (getSpecifierCase().equals(dataSource.getSpecifierCase())) {
            int i9 = this.specifierCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3 && !getInlineString().equals(dataSource.getInlineString())) {
                        return false;
                    }
                } else if (!getInlineBytes().equals(dataSource.getInlineBytes())) {
                    return false;
                }
            } else if (!getFilename().equals(dataSource.getFilename())) {
                return false;
            }
            return this.unknownFields.equals(dataSource.unknownFields);
        }
        return false;
    }

    public String getFilename() {
        String str = this.specifierCase_ == 1 ? this.specifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.specifierCase_ == 1) {
            this.specifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getFilenameBytes() {
        String str = this.specifierCase_ == 1 ? this.specifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.specifierCase_ == 1) {
                this.specifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public ByteString getInlineBytes() {
        if (this.specifierCase_ == 2) {
            return (ByteString) this.specifier_;
        }
        return ByteString.EMPTY;
    }

    public String getInlineString() {
        String str = this.specifierCase_ == 3 ? this.specifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.specifierCase_ == 3) {
            this.specifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getInlineStringBytes() {
        String str = this.specifierCase_ == 3 ? this.specifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.specifierCase_ == 3) {
                this.specifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DataSource> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.specifierCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.specifier_) : 0;
        if (this.specifierCase_ == 2) {
            computeStringSize += CodedOutputStream.h(2, (ByteString) this.specifier_);
        }
        if (this.specifierCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.specifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SpecifierCase getSpecifierCase() {
        return SpecifierCase.forNumber(this.specifierCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFilename() {
        return this.specifierCase_ == 1;
    }

    public boolean hasInlineBytes() {
        return this.specifierCase_ == 2;
    }

    public boolean hasInlineString() {
        return this.specifierCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        int i11 = this.specifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getFilename().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getInlineBytes().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getInlineString().hashCode();
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
        return g.H.d(DataSource.class, c.class);
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
        return new DataSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.specifierCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.specifier_);
        }
        if (this.specifierCase_ == 2) {
            codedOutputStream.r0(2, (ByteString) this.specifier_);
        }
        if (this.specifierCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.specifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DataSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(DataSource dataSource) {
        return DEFAULT_INSTANCE.toBuilder().g0(dataSource);
    }

    public static DataSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DataSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.specifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DataSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (DataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DataSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DataSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static DataSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static DataSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private DataSource() {
        this.specifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DataSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DataSource parseFrom(InputStream inputStream) throws IOException {
        return (DataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private DataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            this.specifierCase_ = 1;
                            this.specifier_ = K;
                        } else if (L == 18) {
                            this.specifier_ = pVar.s();
                            this.specifierCase_ = 2;
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K2 = pVar.K();
                            this.specifierCase_ = 3;
                            this.specifier_ = K2;
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

    public static DataSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (DataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DataSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (DataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DataSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (DataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
