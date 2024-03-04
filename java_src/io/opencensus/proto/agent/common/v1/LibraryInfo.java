package io.opencensus.proto.agent.common.v1;

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
/* loaded from: classes4.dex */
public final class LibraryInfo extends GeneratedMessageV3 implements io.opencensus.proto.agent.common.v1.b {
    public static final int CORE_LIBRARY_VERSION_FIELD_NUMBER = 3;
    public static final int EXPORTER_VERSION_FIELD_NUMBER = 2;
    public static final int LANGUAGE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object coreLibraryVersion_;
    private volatile Object exporterVersion_;
    private int language_;
    private byte memoizedIsInitialized;
    private static final LibraryInfo DEFAULT_INSTANCE = new LibraryInfo();
    private static final e2<LibraryInfo> PARSER = new a();

    /* loaded from: classes4.dex */
    public enum Language implements h2 {
        LANGUAGE_UNSPECIFIED(0),
        CPP(1),
        C_SHARP(2),
        ERLANG(3),
        GO_LANG(4),
        JAVA(5),
        NODE_JS(6),
        PHP(7),
        PYTHON(8),
        RUBY(9),
        UNRECOGNIZED(-1);
        
        public static final int CPP_VALUE = 1;
        public static final int C_SHARP_VALUE = 2;
        public static final int ERLANG_VALUE = 3;
        public static final int GO_LANG_VALUE = 4;
        public static final int JAVA_VALUE = 5;
        public static final int LANGUAGE_UNSPECIFIED_VALUE = 0;
        public static final int NODE_JS_VALUE = 6;
        public static final int PHP_VALUE = 7;
        public static final int PYTHON_VALUE = 8;
        public static final int RUBY_VALUE = 9;
        private final int value;
        private static final u0.d<Language> internalValueMap = new a();
        private static final Language[] VALUES = values();

        /* loaded from: classes4.dex */
        static class a implements u0.d<Language> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Language a(int i9) {
                return Language.forNumber(i9);
            }
        }

        Language(int i9) {
            this.value = i9;
        }

        public static Language forNumber(int i9) {
            switch (i9) {
                case 0:
                    return LANGUAGE_UNSPECIFIED;
                case 1:
                    return CPP;
                case 2:
                    return C_SHARP;
                case 3:
                    return ERLANG;
                case 4:
                    return GO_LANG;
                case 5:
                    return JAVA;
                case 6:
                    return NODE_JS;
                case 7:
                    return PHP;
                case 8:
                    return PYTHON;
                case 9:
                    return RUBY;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return LibraryInfo.getDescriptor().k().get(0);
        }

        public static u0.d<Language> internalGetValueMap() {
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
        public static Language valueOf(int i9) {
            return forNumber(i9);
        }

        public static Language valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes4.dex */
    public static class a extends com.google.protobuf.c<LibraryInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LibraryInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LibraryInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.opencensus.proto.agent.common.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f50905e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50906f;

        /* renamed from: g  reason: collision with root package name */
        private Object f50907g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.agent.common.v1.a.f50928h.d(LibraryInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LibraryInfo build() {
            LibraryInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LibraryInfo I() {
            LibraryInfo libraryInfo = new LibraryInfo(this, (a) null);
            libraryInfo.language_ = this.f50905e;
            libraryInfo.exporterVersion_ = this.f50906f;
            libraryInfo.coreLibraryVersion_ = this.f50907g;
            Q();
            return libraryInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public LibraryInfo getDefaultInstanceForType() {
            return LibraryInfo.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.agent.common.v1.LibraryInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.agent.common.v1.LibraryInfo.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.agent.common.v1.LibraryInfo r3 = (io.opencensus.proto.agent.common.v1.LibraryInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.agent.common.v1.LibraryInfo r4 = (io.opencensus.proto.agent.common.v1.LibraryInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.agent.common.v1.LibraryInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.agent.common.v1.LibraryInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LibraryInfo) {
                return g0((LibraryInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(LibraryInfo libraryInfo) {
            if (libraryInfo == LibraryInfo.getDefaultInstance()) {
                return this;
            }
            if (libraryInfo.language_ != 0) {
                j0(libraryInfo.getLanguageValue());
            }
            if (!libraryInfo.getExporterVersion().isEmpty()) {
                this.f50906f = libraryInfo.exporterVersion_;
                R();
            }
            if (!libraryInfo.getCoreLibraryVersion().isEmpty()) {
                this.f50907g = libraryInfo.coreLibraryVersion_;
                R();
            }
            z(((GeneratedMessageV3) libraryInfo).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.agent.common.v1.a.f50927g;
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
            this.f50905e = i9;
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
            this.f50905e = 0;
            this.f50906f = "";
            this.f50907g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50905e = 0;
            this.f50906f = "";
            this.f50907g = "";
            b0();
        }
    }

    /* synthetic */ LibraryInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LibraryInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.agent.common.v1.a.f50927g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LibraryInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LibraryInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LibraryInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LibraryInfo)) {
            return super.equals(obj);
        }
        LibraryInfo libraryInfo = (LibraryInfo) obj;
        return (((this.language_ == libraryInfo.language_) && getExporterVersion().equals(libraryInfo.getExporterVersion())) && getCoreLibraryVersion().equals(libraryInfo.getCoreLibraryVersion())) && this.unknownFields.equals(libraryInfo.unknownFields);
    }

    public String getCoreLibraryVersion() {
        Object obj = this.coreLibraryVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.coreLibraryVersion_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCoreLibraryVersionBytes() {
        Object obj = this.coreLibraryVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.coreLibraryVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getExporterVersion() {
        Object obj = this.exporterVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.exporterVersion_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getExporterVersionBytes() {
        Object obj = this.exporterVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.exporterVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Language getLanguage() {
        Language valueOf = Language.valueOf(this.language_);
        return valueOf == null ? Language.UNRECOGNIZED : valueOf;
    }

    public int getLanguageValue() {
        return this.language_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LibraryInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.language_ != Language.LANGUAGE_UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.language_) : 0;
        if (!getExporterVersionBytes().isEmpty()) {
            l10 += GeneratedMessageV3.computeStringSize(2, this.exporterVersion_);
        }
        if (!getCoreLibraryVersionBytes().isEmpty()) {
            l10 += GeneratedMessageV3.computeStringSize(3, this.coreLibraryVersion_);
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.language_) * 37) + 2) * 53) + getExporterVersion().hashCode()) * 37) + 3) * 53) + getCoreLibraryVersion().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.agent.common.v1.a.f50928h.d(LibraryInfo.class, b.class);
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
        if (this.language_ != Language.LANGUAGE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(1, this.language_);
        }
        if (!getExporterVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.exporterVersion_);
        }
        if (!getCoreLibraryVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.coreLibraryVersion_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LibraryInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LibraryInfo libraryInfo) {
        return DEFAULT_INSTANCE.toBuilder().g0(libraryInfo);
    }

    public static LibraryInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LibraryInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LibraryInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LibraryInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LibraryInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static LibraryInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LibraryInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.language_ = 0;
        this.exporterVersion_ = "";
        this.coreLibraryVersion_ = "";
    }

    public static LibraryInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LibraryInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LibraryInfo parseFrom(InputStream inputStream) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LibraryInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private LibraryInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.language_ = pVar.u();
                        } else if (L == 18) {
                            this.exporterVersion_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.coreLibraryVersion_ = pVar.K();
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

    public static LibraryInfo parseFrom(p pVar) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LibraryInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LibraryInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
