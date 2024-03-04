package io.grpc.channelz.v1;

import com.google.protobuf.Any;
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
/* loaded from: classes5.dex */
public final class Security extends GeneratedMessageV3 implements i {
    public static final int OTHER_FIELD_NUMBER = 2;
    public static final int TLS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int modelCase_;
    private Object model_;
    private static final Security DEFAULT_INSTANCE = new Security();
    private static final e2<Security> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum ModelCase implements u0.c {
        TLS(1),
        OTHER(2),
        MODEL_NOT_SET(0);
        
        private final int value;

        ModelCase(int i9) {
            this.value = i9;
        }

        public static ModelCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return OTHER;
                }
                return TLS;
            }
            return MODEL_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ModelCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public static final class OtherSecurity extends GeneratedMessageV3 implements d {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any value_;
        private static final OtherSecurity DEFAULT_INSTANCE = new OtherSecurity();
        private static final e2<OtherSecurity> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<OtherSecurity> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OtherSecurity m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OtherSecurity(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f42147e;

            /* renamed from: f  reason: collision with root package name */
            private Any f42148f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f42149g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.P.d(OtherSecurity.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public OtherSecurity build() {
                OtherSecurity I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public OtherSecurity I() {
                OtherSecurity otherSecurity = new OtherSecurity(this, (a) null);
                otherSecurity.name_ = this.f42147e;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42149g;
                if (q2Var == null) {
                    otherSecurity.value_ = this.f42148f;
                } else {
                    otherSecurity.value_ = q2Var.b();
                }
                Q();
                return otherSecurity;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public OtherSecurity getDefaultInstanceForType() {
                return OtherSecurity.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.channelz.v1.Security.OtherSecurity.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Security.OtherSecurity.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.channelz.v1.Security$OtherSecurity r3 = (io.grpc.channelz.v1.Security.OtherSecurity) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.channelz.v1.Security$OtherSecurity r4 = (io.grpc.channelz.v1.Security.OtherSecurity) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Security.OtherSecurity.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Security$OtherSecurity$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof OtherSecurity) {
                    return g0((OtherSecurity) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(OtherSecurity otherSecurity) {
                if (otherSecurity == OtherSecurity.getDefaultInstance()) {
                    return this;
                }
                if (!otherSecurity.getName().isEmpty()) {
                    this.f42147e = otherSecurity.name_;
                    R();
                }
                if (otherSecurity.hasValue()) {
                    i0(otherSecurity.getValue());
                }
                z(((GeneratedMessageV3) otherSecurity).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.O;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f42149g;
                if (q2Var == null) {
                    Any any2 = this.f42148f;
                    if (any2 != null) {
                        this.f42148f = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f42148f = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f42147e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f42147e = "";
                b0();
            }
        }

        /* synthetic */ OtherSecurity(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OtherSecurity getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.O;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static OtherSecurity parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static OtherSecurity parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<OtherSecurity> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OtherSecurity)) {
                return super.equals(obj);
            }
            OtherSecurity otherSecurity = (OtherSecurity) obj;
            if (getName().equals(otherSecurity.getName()) && hasValue() == otherSecurity.hasValue()) {
                return (!hasValue() || getValue().equals(otherSecurity.getValue())) && this.unknownFields.equals(otherSecurity.unknownFields);
            }
            return false;
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
        public e2<OtherSecurity> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.value_ != null) {
                computeStringSize += CodedOutputStream.G(2, getValue());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Any getValue() {
            Any any = this.value_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getValueOrBuilder() {
            return getValue();
        }

        public boolean hasValue() {
            return this.value_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasValue()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return h.P.d(OtherSecurity.class, b.class);
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
            return new OtherSecurity();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.value_ != null) {
                codedOutputStream.L0(2, getValue());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ OtherSecurity(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(OtherSecurity otherSecurity) {
            return DEFAULT_INSTANCE.toBuilder().g0(otherSecurity);
        }

        public static OtherSecurity parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private OtherSecurity(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OtherSecurity parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static OtherSecurity parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public OtherSecurity getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static OtherSecurity parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private OtherSecurity() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static OtherSecurity parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static OtherSecurity parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static OtherSecurity parseFrom(InputStream inputStream) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private OtherSecurity(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Any any = this.value_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.value_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.value_ = builder.I();
                                }
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

        public static OtherSecurity parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static OtherSecurity parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OtherSecurity parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (OtherSecurity) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Tls extends GeneratedMessageV3 implements e {
        public static final int LOCAL_CERTIFICATE_FIELD_NUMBER = 3;
        public static final int OTHER_NAME_FIELD_NUMBER = 2;
        public static final int REMOTE_CERTIFICATE_FIELD_NUMBER = 4;
        public static final int STANDARD_NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int cipherSuiteCase_;
        private Object cipherSuite_;
        private ByteString localCertificate_;
        private byte memoizedIsInitialized;
        private ByteString remoteCertificate_;
        private static final Tls DEFAULT_INSTANCE = new Tls();
        private static final e2<Tls> PARSER = new a();

        /* loaded from: classes5.dex */
        public enum CipherSuiteCase implements u0.c {
            STANDARD_NAME(1),
            OTHER_NAME(2),
            CIPHERSUITE_NOT_SET(0);
            
            private final int value;

            CipherSuiteCase(int i9) {
                this.value = i9;
            }

            public static CipherSuiteCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return OTHER_NAME;
                    }
                    return STANDARD_NAME;
                }
                return CIPHERSUITE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static CipherSuiteCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Tls> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Tls m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Tls(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f42150e;

            /* renamed from: f  reason: collision with root package name */
            private Object f42151f;

            /* renamed from: g  reason: collision with root package name */
            private ByteString f42152g;

            /* renamed from: h  reason: collision with root package name */
            private ByteString f42153h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.N.d(Tls.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Tls build() {
                Tls I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Tls I() {
                Tls tls = new Tls(this, (a) null);
                if (this.f42150e == 1) {
                    tls.cipherSuite_ = this.f42151f;
                }
                if (this.f42150e == 2) {
                    tls.cipherSuite_ = this.f42151f;
                }
                tls.localCertificate_ = this.f42152g;
                tls.remoteCertificate_ = this.f42153h;
                tls.cipherSuiteCase_ = this.f42150e;
                Q();
                return tls;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Tls getDefaultInstanceForType() {
                return Tls.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.channelz.v1.Security.Tls.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Security.Tls.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.channelz.v1.Security$Tls r3 = (io.grpc.channelz.v1.Security.Tls) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.channelz.v1.Security$Tls r4 = (io.grpc.channelz.v1.Security.Tls) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Security.Tls.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Security$Tls$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Tls) {
                    return g0((Tls) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Tls tls) {
                if (tls == Tls.getDefaultInstance()) {
                    return this;
                }
                ByteString localCertificate = tls.getLocalCertificate();
                ByteString byteString = ByteString.EMPTY;
                if (localCertificate != byteString) {
                    j0(tls.getLocalCertificate());
                }
                if (tls.getRemoteCertificate() != byteString) {
                    k0(tls.getRemoteCertificate());
                }
                int i9 = b.f42154a[tls.getCipherSuiteCase().ordinal()];
                if (i9 == 1) {
                    this.f42150e = 1;
                    this.f42151f = tls.cipherSuite_;
                    R();
                } else if (i9 == 2) {
                    this.f42150e = 2;
                    this.f42151f = tls.cipherSuite_;
                    R();
                }
                z(((GeneratedMessageV3) tls).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.M;
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

            public b j0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f42152g = byteString;
                R();
                return this;
            }

            public b k0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f42153h = byteString;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f42150e = 0;
                ByteString byteString = ByteString.EMPTY;
                this.f42152g = byteString;
                this.f42153h = byteString;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f42150e = 0;
                ByteString byteString = ByteString.EMPTY;
                this.f42152g = byteString;
                this.f42153h = byteString;
                b0();
            }
        }

        /* synthetic */ Tls(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Tls getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.M;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Tls parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Tls) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Tls parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Tls> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Tls)) {
                return super.equals(obj);
            }
            Tls tls = (Tls) obj;
            if (getLocalCertificate().equals(tls.getLocalCertificate()) && getRemoteCertificate().equals(tls.getRemoteCertificate()) && getCipherSuiteCase().equals(tls.getCipherSuiteCase())) {
                int i9 = this.cipherSuiteCase_;
                if (i9 != 1) {
                    if (i9 == 2 && !getOtherName().equals(tls.getOtherName())) {
                        return false;
                    }
                } else if (!getStandardName().equals(tls.getStandardName())) {
                    return false;
                }
                return this.unknownFields.equals(tls.unknownFields);
            }
            return false;
        }

        public CipherSuiteCase getCipherSuiteCase() {
            return CipherSuiteCase.forNumber(this.cipherSuiteCase_);
        }

        public ByteString getLocalCertificate() {
            return this.localCertificate_;
        }

        public String getOtherName() {
            String str = this.cipherSuiteCase_ == 2 ? this.cipherSuite_ : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.cipherSuiteCase_ == 2) {
                this.cipherSuite_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getOtherNameBytes() {
            String str = this.cipherSuiteCase_ == 2 ? this.cipherSuite_ : "";
            if (str instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                if (this.cipherSuiteCase_ == 2) {
                    this.cipherSuite_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) str;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Tls> getParserForType() {
            return PARSER;
        }

        public ByteString getRemoteCertificate() {
            return this.remoteCertificate_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = this.cipherSuiteCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.cipherSuite_) : 0;
            if (this.cipherSuiteCase_ == 2) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.cipherSuite_);
            }
            if (!this.localCertificate_.isEmpty()) {
                computeStringSize += CodedOutputStream.h(3, this.localCertificate_);
            }
            if (!this.remoteCertificate_.isEmpty()) {
                computeStringSize += CodedOutputStream.h(4, this.remoteCertificate_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getStandardName() {
            String str = this.cipherSuiteCase_ == 1 ? this.cipherSuite_ : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.cipherSuiteCase_ == 1) {
                this.cipherSuite_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getStandardNameBytes() {
            String str = this.cipherSuiteCase_ == 1 ? this.cipherSuite_ : "";
            if (str instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                if (this.cipherSuiteCase_ == 1) {
                    this.cipherSuite_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) str;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasOtherName() {
            return this.cipherSuiteCase_ == 2;
        }

        public boolean hasStandardName() {
            return this.cipherSuiteCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getLocalCertificate().hashCode()) * 37) + 4) * 53) + getRemoteCertificate().hashCode();
            int i11 = this.cipherSuiteCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getStandardName().hashCode();
            } else {
                if (i11 == 2) {
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getOtherName().hashCode();
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
            return h.N.d(Tls.class, b.class);
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
            return new Tls();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.cipherSuiteCase_ == 1) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.cipherSuite_);
            }
            if (this.cipherSuiteCase_ == 2) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.cipherSuite_);
            }
            if (!this.localCertificate_.isEmpty()) {
                codedOutputStream.r0(3, this.localCertificate_);
            }
            if (!this.remoteCertificate_.isEmpty()) {
                codedOutputStream.r0(4, this.remoteCertificate_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Tls(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Tls tls) {
            return DEFAULT_INSTANCE.toBuilder().g0(tls);
        }

        public static Tls parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Tls(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.cipherSuiteCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Tls parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tls) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Tls parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Tls getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Tls parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Tls parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Tls() {
            this.cipherSuiteCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            ByteString byteString = ByteString.EMPTY;
            this.localCertificate_ = byteString;
            this.remoteCertificate_ = byteString;
        }

        public static Tls parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Tls parseFrom(InputStream inputStream) throws IOException {
            return (Tls) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Tls parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tls) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private Tls(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.cipherSuiteCase_ = 1;
                                this.cipherSuite_ = K;
                            } else if (L == 18) {
                                String K2 = pVar.K();
                                this.cipherSuiteCase_ = 2;
                                this.cipherSuite_ = K2;
                            } else if (L == 26) {
                                this.localCertificate_ = pVar.s();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.remoteCertificate_ = pVar.s();
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

        public static Tls parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Tls) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Tls parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Tls) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Security> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Security m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Security(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42154a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f42155b;

        static {
            int[] iArr = new int[ModelCase.values().length];
            f42155b = iArr;
            try {
                iArr[ModelCase.TLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42155b[ModelCase.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f42155b[ModelCase.MODEL_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Tls.CipherSuiteCase.values().length];
            f42154a = iArr2;
            try {
                iArr2[Tls.CipherSuiteCase.STANDARD_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f42154a[Tls.CipherSuiteCase.OTHER_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f42154a[Tls.CipherSuiteCase.CIPHERSUITE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f42156e;

        /* renamed from: f  reason: collision with root package name */
        private Object f42157f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Tls, Tls.b, e> f42158g;

        /* renamed from: h  reason: collision with root package name */
        private q2<OtherSecurity, OtherSecurity.b, d> f42159h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.L.d(Security.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Security build() {
            Security I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Security I() {
            Security security = new Security(this, (a) null);
            if (this.f42156e == 1) {
                q2<Tls, Tls.b, e> q2Var = this.f42158g;
                if (q2Var == null) {
                    security.model_ = this.f42157f;
                } else {
                    security.model_ = q2Var.b();
                }
            }
            if (this.f42156e == 2) {
                q2<OtherSecurity, OtherSecurity.b, d> q2Var2 = this.f42159h;
                if (q2Var2 == null) {
                    security.model_ = this.f42157f;
                } else {
                    security.model_ = q2Var2.b();
                }
            }
            security.modelCase_ = this.f42156e;
            Q();
            return security;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Security getDefaultInstanceForType() {
            return Security.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.Security.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Security.access$3000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.Security r3 = (io.grpc.channelz.v1.Security) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.Security r4 = (io.grpc.channelz.v1.Security) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Security.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Security$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Security) {
                return g0((Security) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Security security) {
            if (security == Security.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f42155b[security.getModelCase().ordinal()];
            if (i9 == 1) {
                i0(security.getTls());
            } else if (i9 == 2) {
                h0(security.getOther());
            }
            z(((GeneratedMessageV3) security).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.K;
        }

        public c h0(OtherSecurity otherSecurity) {
            q2<OtherSecurity, OtherSecurity.b, d> q2Var = this.f42159h;
            if (q2Var == null) {
                if (this.f42156e == 2 && this.f42157f != OtherSecurity.getDefaultInstance()) {
                    this.f42157f = OtherSecurity.newBuilder((OtherSecurity) this.f42157f).g0(otherSecurity).I();
                } else {
                    this.f42157f = otherSecurity;
                }
                R();
            } else {
                if (this.f42156e == 2) {
                    q2Var.e(otherSecurity);
                }
                this.f42159h.g(otherSecurity);
            }
            this.f42156e = 2;
            return this;
        }

        public c i0(Tls tls) {
            q2<Tls, Tls.b, e> q2Var = this.f42158g;
            if (q2Var == null) {
                if (this.f42156e == 1 && this.f42157f != Tls.getDefaultInstance()) {
                    this.f42157f = Tls.newBuilder((Tls) this.f42157f).g0(tls).I();
                } else {
                    this.f42157f = tls;
                }
                R();
            } else {
                if (this.f42156e == 1) {
                    q2Var.e(tls);
                }
                this.f42158g.g(tls);
            }
            this.f42156e = 1;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f42156e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42156e = 0;
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* synthetic */ Security(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Security getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.K;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Security parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Security) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Security parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Security> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Security)) {
            return super.equals(obj);
        }
        Security security = (Security) obj;
        if (getModelCase().equals(security.getModelCase())) {
            int i9 = this.modelCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getOther().equals(security.getOther())) {
                    return false;
                }
            } else if (!getTls().equals(security.getTls())) {
                return false;
            }
            return this.unknownFields.equals(security.unknownFields);
        }
        return false;
    }

    public ModelCase getModelCase() {
        return ModelCase.forNumber(this.modelCase_);
    }

    public OtherSecurity getOther() {
        if (this.modelCase_ == 2) {
            return (OtherSecurity) this.model_;
        }
        return OtherSecurity.getDefaultInstance();
    }

    public d getOtherOrBuilder() {
        if (this.modelCase_ == 2) {
            return (OtherSecurity) this.model_;
        }
        return OtherSecurity.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Security> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.modelCase_ == 1 ? 0 + CodedOutputStream.G(1, (Tls) this.model_) : 0;
        if (this.modelCase_ == 2) {
            G += CodedOutputStream.G(2, (OtherSecurity) this.model_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Tls getTls() {
        if (this.modelCase_ == 1) {
            return (Tls) this.model_;
        }
        return Tls.getDefaultInstance();
    }

    public e getTlsOrBuilder() {
        if (this.modelCase_ == 1) {
            return (Tls) this.model_;
        }
        return Tls.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasOther() {
        return this.modelCase_ == 2;
    }

    public boolean hasTls() {
        return this.modelCase_ == 1;
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
        int i11 = this.modelCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getTls().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getOther().hashCode();
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
        return h.L.d(Security.class, c.class);
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
        return new Security();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.modelCase_ == 1) {
            codedOutputStream.L0(1, (Tls) this.model_);
        }
        if (this.modelCase_ == 2) {
            codedOutputStream.L0(2, (OtherSecurity) this.model_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Security(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Security security) {
        return DEFAULT_INSTANCE.toBuilder().g0(security);
    }

    public static Security parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Security(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.modelCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Security parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Security) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Security parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Security getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Security parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Security parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Security() {
        this.modelCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Security parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Security parseFrom(InputStream inputStream) throws IOException {
        return (Security) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Security(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Tls.b builder = this.modelCase_ == 1 ? ((Tls) this.model_).toBuilder() : null;
                                o1 B = pVar.B(Tls.parser(), f0Var);
                                this.model_ = B;
                                if (builder != null) {
                                    builder.g0((Tls) B);
                                    this.model_ = builder.I();
                                }
                                this.modelCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                OtherSecurity.b builder2 = this.modelCase_ == 2 ? ((OtherSecurity) this.model_).toBuilder() : null;
                                o1 B2 = pVar.B(OtherSecurity.parser(), f0Var);
                                this.model_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((OtherSecurity) B2);
                                    this.model_ = builder2.I();
                                }
                                this.modelCase_ = 2;
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

    public static Security parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Security) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Security parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Security) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Security parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Security) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
