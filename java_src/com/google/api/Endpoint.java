package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Endpoint extends GeneratedMessageV3 implements z {
    public static final int ALIASES_FIELD_NUMBER = 2;
    public static final int ALLOW_CORS_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TARGET_FIELD_NUMBER = 101;
    private static final long serialVersionUID = 0;
    private com.google.protobuf.z0 aliases_;
    private boolean allowCors_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object target_;
    private static final Endpoint DEFAULT_INSTANCE = new Endpoint();
    private static final e2<Endpoint> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Endpoint> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Endpoint m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Endpoint(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements z {

        /* renamed from: e  reason: collision with root package name */
        private int f10752e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10753f;

        /* renamed from: g  reason: collision with root package name */
        private com.google.protobuf.z0 f10754g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10755h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f10756i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10752e & 1) == 0) {
                this.f10754g = new com.google.protobuf.y0(this.f10754g);
                this.f10752e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return a0.f10939b.d(Endpoint.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Endpoint build() {
            Endpoint I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Endpoint I() {
            Endpoint endpoint = new Endpoint(this, (a) null);
            endpoint.name_ = this.f10753f;
            if ((this.f10752e & 1) != 0) {
                this.f10754g = this.f10754g.V0();
                this.f10752e &= -2;
            }
            endpoint.aliases_ = this.f10754g;
            endpoint.target_ = this.f10755h;
            endpoint.allowCors_ = this.f10756i;
            Q();
            return endpoint;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Endpoint getDefaultInstanceForType() {
            return Endpoint.getDefaultInstance();
        }

        public b e0(Endpoint endpoint) {
            if (endpoint == Endpoint.getDefaultInstance()) {
                return this;
            }
            if (!endpoint.getName().isEmpty()) {
                this.f10753f = endpoint.name_;
                R();
            }
            if (!endpoint.aliases_.isEmpty()) {
                if (this.f10754g.isEmpty()) {
                    this.f10754g = endpoint.aliases_;
                    this.f10752e &= -2;
                } else {
                    a0();
                    this.f10754g.addAll(endpoint.aliases_);
                }
                R();
            }
            if (!endpoint.getTarget().isEmpty()) {
                this.f10755h = endpoint.target_;
                R();
            }
            if (endpoint.getAllowCors()) {
                j0(endpoint.getAllowCors());
            }
            z(((GeneratedMessageV3) endpoint).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Endpoint.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Endpoint.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Endpoint r3 = (com.google.api.Endpoint) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.e0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.Endpoint r4 = (com.google.api.Endpoint) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.e0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Endpoint.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Endpoint$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return a0.f10938a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Endpoint) {
                return e0((Endpoint) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(boolean z10) {
            this.f10756i = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10753f = "";
            this.f10754g = com.google.protobuf.y0.f15344d;
            this.f10755h = "";
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10753f = "";
            this.f10754g = com.google.protobuf.y0.f15344d;
            this.f10755h = "";
            d0();
        }
    }

    /* synthetic */ Endpoint(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Endpoint getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return a0.f10938a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Endpoint> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Endpoint)) {
            return super.equals(obj);
        }
        Endpoint endpoint = (Endpoint) obj;
        return getName().equals(endpoint.getName()) && m194getAliasesList().equals(endpoint.m194getAliasesList()) && getTarget().equals(endpoint.getTarget()) && getAllowCors() == endpoint.getAllowCors() && this.unknownFields.equals(endpoint.unknownFields);
    }

    @Deprecated
    public String getAliases(int i9) {
        return this.aliases_.get(i9);
    }

    @Deprecated
    public ByteString getAliasesBytes(int i9) {
        return this.aliases_.j0(i9);
    }

    @Deprecated
    public int getAliasesCount() {
        return this.aliases_.size();
    }

    public boolean getAllowCors() {
        return this.allowCors_;
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
    public e2<Endpoint> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.aliases_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.aliases_.c1(i11));
        }
        int size = computeStringSize + i10 + (m194getAliasesList().size() * 1);
        boolean z10 = this.allowCors_;
        if (z10) {
            size += CodedOutputStream.e(5, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.target_)) {
            size += GeneratedMessageV3.computeStringSize(101, this.target_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTarget() {
        Object obj = this.target_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.target_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTargetBytes() {
        Object obj = this.target_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.target_ = copyFromUtf8;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getAliasesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m194getAliasesList().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 101) * 53) + getTarget().hashCode()) * 37) + 5) * 53) + com.google.protobuf.u0.d(getAllowCors())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return a0.f10939b.d(Endpoint.class, b.class);
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
        return new Endpoint();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.aliases_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.aliases_.c1(i9));
        }
        boolean z10 = this.allowCors_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.target_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 101, this.target_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Endpoint(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Endpoint endpoint) {
        return DEFAULT_INSTANCE.toBuilder().e0(endpoint);
    }

    public static Endpoint parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    @Deprecated
    /* renamed from: getAliasesList */
    public i2 m194getAliasesList() {
        return this.aliases_;
    }

    private Endpoint(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Endpoint parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Endpoint getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
    }

    public static Endpoint parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Endpoint() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.aliases_ = com.google.protobuf.y0.f15344d;
        this.target_ = "";
    }

    public static Endpoint parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Endpoint parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Endpoint parseFrom(InputStream inputStream) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Endpoint parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Endpoint parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private Endpoint(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                        } else if (L == 18) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.aliases_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.aliases_.add(K);
                        } else if (L == 40) {
                            this.allowCors_ = pVar.r();
                        } else if (L != 810) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.target_ = pVar.K();
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
                    this.aliases_ = this.aliases_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Endpoint parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Endpoint) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
