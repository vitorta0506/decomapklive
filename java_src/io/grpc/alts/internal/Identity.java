package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Identity extends GeneratedMessageV3 implements v {
    public static final int ATTRIBUTES_FIELD_NUMBER = 3;
    public static final int HOSTNAME_FIELD_NUMBER = 2;
    public static final int SERVICE_ACCOUNT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private g1<String, String> attributes_;
    private int identityOneofCase_;
    private Object identityOneof_;
    private byte memoizedIsInitialized;
    private static final Identity DEFAULT_INSTANCE = new Identity();
    private static final e2<Identity> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum IdentityOneofCase implements u0.c {
        SERVICE_ACCOUNT(1),
        HOSTNAME(2),
        IDENTITYONEOF_NOT_SET(0);
        
        private final int value;

        IdentityOneofCase(int i9) {
            this.value = i9;
        }

        public static IdentityOneofCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return HOSTNAME;
                }
                return SERVICE_ACCOUNT;
            }
            return IDENTITYONEOF_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static IdentityOneofCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Identity> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Identity m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Identity(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41788a;

        static {
            int[] iArr = new int[IdentityOneofCase.values().length];
            f41788a = iArr;
            try {
                iArr[IdentityOneofCase.SERVICE_ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41788a[IdentityOneofCase.HOSTNAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41788a[IdentityOneofCase.IDENTITYONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f41789a;

        static {
            Descriptors.b bVar = r.f41950e;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f41789a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* loaded from: classes5.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements v {

        /* renamed from: e  reason: collision with root package name */
        private int f41790e;

        /* renamed from: f  reason: collision with root package name */
        private Object f41791f;

        /* renamed from: g  reason: collision with root package name */
        private g1<String, String> f41792g;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, String> b0() {
            g1<String, String> g1Var = this.f41792g;
            return g1Var == null ? g1.g(c.f41789a) : g1Var;
        }

        private g1<String, String> d0() {
            R();
            if (this.f41792g == null) {
                this.f41792g = g1.p(c.f41789a);
            }
            if (!this.f41792g.m()) {
                this.f41792g = this.f41792g.f();
            }
            return this.f41792g;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return r.f41949d.d(Identity.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 3) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 3) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Identity build() {
            Identity I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Identity I() {
            Identity identity = new Identity(this, (a) null);
            if (this.f41790e == 1) {
                identity.identityOneof_ = this.f41791f;
            }
            if (this.f41790e == 2) {
                identity.identityOneof_ = this.f41791f;
            }
            identity.attributes_ = b0();
            identity.attributes_.n();
            identity.identityOneofCase_ = this.f41790e;
            Q();
            return identity;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Identity getDefaultInstanceForType() {
            return Identity.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.Identity.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.Identity.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.Identity r3 = (io.grpc.alts.internal.Identity) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.Identity r4 = (io.grpc.alts.internal.Identity) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.Identity.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.Identity$d");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return r.f41948c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof Identity) {
                return i0((Identity) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d i0(Identity identity) {
            if (identity == Identity.getDefaultInstance()) {
                return this;
            }
            d0().o(identity.internalGetAttributes());
            int i9 = b.f41788a[identity.getIdentityOneofCase().ordinal()];
            if (i9 == 1) {
                this.f41790e = 1;
                this.f41791f = identity.identityOneof_;
                R();
            } else if (i9 == 2) {
                this.f41790e = 2;
                this.f41791f = identity.identityOneof_;
                R();
            }
            z(((GeneratedMessageV3) identity).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        public d l0(String str) {
            Objects.requireNonNull(str);
            this.f41790e = 1;
            this.f41791f = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f41790e = 0;
            e0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f41790e = 0;
            e0();
        }
    }

    /* synthetic */ Identity(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Identity getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return r.f41948c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetAttributes() {
        g1<String, String> g1Var = this.attributes_;
        return g1Var == null ? g1.g(c.f41789a) : g1Var;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Identity parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Identity) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Identity parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Identity> parser() {
        return PARSER;
    }

    public boolean containsAttributes(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetAttributes().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Identity)) {
            return super.equals(obj);
        }
        Identity identity = (Identity) obj;
        if (internalGetAttributes().equals(identity.internalGetAttributes()) && getIdentityOneofCase().equals(identity.getIdentityOneofCase())) {
            int i9 = this.identityOneofCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getHostname().equals(identity.getHostname())) {
                    return false;
                }
            } else if (!getServiceAccount().equals(identity.getServiceAccount())) {
                return false;
            }
            return this.unknownFields.equals(identity.unknownFields);
        }
        return false;
    }

    @Deprecated
    public Map<String, String> getAttributes() {
        return getAttributesMap();
    }

    public int getAttributesCount() {
        return internalGetAttributes().i().size();
    }

    public Map<String, String> getAttributesMap() {
        return internalGetAttributes().i();
    }

    public String getAttributesOrDefault(String str, String str2) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetAttributes().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getAttributesOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, String> i9 = internalGetAttributes().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public String getHostname() {
        String str = this.identityOneofCase_ == 2 ? this.identityOneof_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.identityOneofCase_ == 2) {
            this.identityOneof_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getHostnameBytes() {
        String str = this.identityOneofCase_ == 2 ? this.identityOneof_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.identityOneofCase_ == 2) {
                this.identityOneof_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public IdentityOneofCase getIdentityOneofCase() {
        return IdentityOneofCase.forNumber(this.identityOneofCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Identity> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.identityOneofCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.identityOneof_) : 0;
        if (this.identityOneofCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.identityOneof_);
        }
        for (Map.Entry<String, String> entry : internalGetAttributes().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(3, c.f41789a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getServiceAccount() {
        String str = this.identityOneofCase_ == 1 ? this.identityOneof_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.identityOneofCase_ == 1) {
            this.identityOneof_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getServiceAccountBytes() {
        String str = this.identityOneofCase_ == 1 ? this.identityOneof_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.identityOneofCase_ == 1) {
                this.identityOneof_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHostname() {
        return this.identityOneofCase_ == 2;
    }

    public boolean hasServiceAccount() {
        return this.identityOneofCase_ == 1;
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
        if (!internalGetAttributes().i().isEmpty()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + internalGetAttributes().hashCode();
        }
        int i11 = this.identityOneofCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getServiceAccount().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getHostname().hashCode();
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
        return r.f41949d.d(Identity.class, d.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 3) {
            return internalGetAttributes();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new Identity();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.identityOneofCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.identityOneof_);
        }
        if (this.identityOneofCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.identityOneof_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAttributes(), c.f41789a, 3);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Identity(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(Identity identity) {
        return DEFAULT_INSTANCE.toBuilder().i0(identity);
    }

    public static Identity parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Identity(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.identityOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Identity parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Identity) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Identity parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Identity getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).i0(this);
    }

    public static Identity parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    public static Identity parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    private Identity() {
        this.identityOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Identity parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Identity parseFrom(InputStream inputStream) throws IOException {
        return (Identity) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Identity(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            String K = pVar.K();
                            this.identityOneofCase_ = 1;
                            this.identityOneof_ = K;
                        } else if (L == 18) {
                            String K2 = pVar.K();
                            this.identityOneofCase_ = 2;
                            this.identityOneof_ = K2;
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.attributes_ = g1.p(c.f41789a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f41789a.getParserForType(), f0Var);
                            this.attributes_.l().put((String) e1Var.f(), (String) e1Var.h());
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

    public static Identity parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Identity) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Identity parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Identity) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Identity parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Identity) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
