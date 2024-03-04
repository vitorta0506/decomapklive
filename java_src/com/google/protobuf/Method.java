package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Option;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class Method extends GeneratedMessageV3 implements u1 {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 6;
    public static final int REQUEST_STREAMING_FIELD_NUMBER = 3;
    public static final int REQUEST_TYPE_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_STREAMING_FIELD_NUMBER = 5;
    public static final int RESPONSE_TYPE_URL_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Option> options_;
    private boolean requestStreaming_;
    private volatile Object requestTypeUrl_;
    private boolean responseStreaming_;
    private volatile Object responseTypeUrl_;
    private int syntax_;
    private static final Method DEFAULT_INSTANCE = new Method();
    private static final e2<Method> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<Method> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Method m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Method(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements u1 {

        /* renamed from: e  reason: collision with root package name */
        private int f14781e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14782f;

        /* renamed from: g  reason: collision with root package name */
        private Object f14783g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f14784h;

        /* renamed from: i  reason: collision with root package name */
        private Object f14785i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f14786j;

        /* renamed from: k  reason: collision with root package name */
        private List<Option> f14787k;

        /* renamed from: l  reason: collision with root package name */
        private l2<Option, Option.b, d2> f14788l;

        /* renamed from: m  reason: collision with root package name */
        private int f14789m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f14781e & 1) == 0) {
                this.f14787k = new ArrayList(this.f14787k);
                this.f14781e |= 1;
            }
        }

        private l2<Option, Option.b, d2> d0() {
            if (this.f14788l == null) {
                this.f14788l = new l2<>(this.f14787k, (this.f14781e & 1) != 0, H(), O());
                this.f14787k = null;
            }
            return this.f14788l;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f15002d.d(Method.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Method build() {
            Method I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Method I() {
            Method method = new Method(this, (a) null);
            method.name_ = this.f14782f;
            method.requestTypeUrl_ = this.f14783g;
            method.requestStreaming_ = this.f14784h;
            method.responseTypeUrl_ = this.f14785i;
            method.responseStreaming_ = this.f14786j;
            l2<Option, Option.b, d2> l2Var = this.f14788l;
            if (l2Var == null) {
                if ((this.f14781e & 1) != 0) {
                    this.f14787k = Collections.unmodifiableList(this.f14787k);
                    this.f14781e &= -2;
                }
                method.options_ = this.f14787k;
            } else {
                method.options_ = l2Var.e();
            }
            method.syntax_ = this.f14789m;
            Q();
            return method;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Method getDefaultInstanceForType() {
            return Method.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Method.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Method.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Method r3 = (com.google.protobuf.Method) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.Method r4 = (com.google.protobuf.Method) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Method.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Method$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f15001c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Method) {
                return i0((Method) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Method method) {
            if (method == Method.getDefaultInstance()) {
                return this;
            }
            if (!method.getName().isEmpty()) {
                this.f14782f = method.name_;
                R();
            }
            if (!method.getRequestTypeUrl().isEmpty()) {
                this.f14783g = method.requestTypeUrl_;
                R();
            }
            if (method.getRequestStreaming()) {
                l0(method.getRequestStreaming());
            }
            if (!method.getResponseTypeUrl().isEmpty()) {
                this.f14785i = method.responseTypeUrl_;
                R();
            }
            if (method.getResponseStreaming()) {
                m0(method.getResponseStreaming());
            }
            if (this.f14788l == null) {
                if (!method.options_.isEmpty()) {
                    if (this.f14787k.isEmpty()) {
                        this.f14787k = method.options_;
                        this.f14781e &= -2;
                    } else {
                        a0();
                        this.f14787k.addAll(method.options_);
                    }
                    R();
                }
            } else if (!method.options_.isEmpty()) {
                if (this.f14788l.k()) {
                    this.f14788l.f();
                    this.f14788l = null;
                    this.f14787k = method.options_;
                    this.f14781e &= -2;
                    this.f14788l = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f14788l.b(method.options_);
                }
            }
            if (method.syntax_ != 0) {
                n0(method.getSyntaxValue());
            }
            z(method.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b l0(boolean z10) {
            this.f14784h = z10;
            R();
            return this;
        }

        public b m0(boolean z10) {
            this.f14786j = z10;
            R();
            return this;
        }

        public b n0(int i9) {
            this.f14789m = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f14782f = "";
            this.f14783g = "";
            this.f14785i = "";
            this.f14787k = Collections.emptyList();
            this.f14789m = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14782f = "";
            this.f14783g = "";
            this.f14785i = "";
            this.f14787k = Collections.emptyList();
            this.f14789m = 0;
            e0();
        }
    }

    /* synthetic */ Method(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Method getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f15001c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Method parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Method parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Method> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Method)) {
            return super.equals(obj);
        }
        Method method = (Method) obj;
        return getName().equals(method.getName()) && getRequestTypeUrl().equals(method.getRequestTypeUrl()) && getRequestStreaming() == method.getRequestStreaming() && getResponseTypeUrl().equals(method.getResponseTypeUrl()) && getResponseStreaming() == method.getResponseStreaming() && getOptionsList().equals(method.getOptionsList()) && this.syntax_ == method.syntax_ && this.unknownFields.equals(method.unknownFields);
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

    public Option getOptions(int i9) {
        return this.options_.get(i9);
    }

    public int getOptionsCount() {
        return this.options_.size();
    }

    public List<Option> getOptionsList() {
        return this.options_;
    }

    public d2 getOptionsOrBuilder(int i9) {
        return this.options_.get(i9);
    }

    public List<? extends d2> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Method> getParserForType() {
        return PARSER;
    }

    public boolean getRequestStreaming() {
        return this.requestStreaming_;
    }

    public String getRequestTypeUrl() {
        Object obj = this.requestTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRequestTypeUrlBytes() {
        Object obj = this.requestTypeUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.requestTypeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getResponseStreaming() {
        return this.responseStreaming_;
    }

    public String getResponseTypeUrl() {
        Object obj = this.responseTypeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.responseTypeUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResponseTypeUrlBytes() {
        Object obj = this.responseTypeUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.responseTypeUrl_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.requestTypeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.requestTypeUrl_);
        }
        boolean z10 = this.requestStreaming_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseTypeUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.responseTypeUrl_);
        }
        boolean z11 = this.responseStreaming_;
        if (z11) {
            computeStringSize += CodedOutputStream.e(5, z11);
        }
        for (int i10 = 0; i10 < this.options_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(6, this.options_.get(i10));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.l(7, this.syntax_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Syntax getSyntax() {
        Syntax valueOf = Syntax.valueOf(this.syntax_);
        return valueOf == null ? Syntax.UNRECOGNIZED : valueOf;
    }

    public int getSyntaxValue() {
        return this.syntax_;
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
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRequestTypeUrl().hashCode()) * 37) + 3) * 53) + u0.d(getRequestStreaming())) * 37) + 4) * 53) + getResponseTypeUrl().hashCode()) * 37) + 5) * 53) + u0.d(getResponseStreaming());
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f15002d.d(Method.class, b.class);
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
        return new Method();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.requestTypeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.requestTypeUrl_);
        }
        boolean z10 = this.requestStreaming_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.responseTypeUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.responseTypeUrl_);
        }
        boolean z11 = this.responseStreaming_;
        if (z11) {
            codedOutputStream.n0(5, z11);
        }
        for (int i9 = 0; i9 < this.options_.size(); i9++) {
            codedOutputStream.L0(6, this.options_.get(i9));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.v0(7, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Method(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Method method) {
        return DEFAULT_INSTANCE.toBuilder().i0(method);
    }

    public static Method parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Method(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Method parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Method) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Method parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Method getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Method parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Method() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.requestTypeUrl_ = "";
        this.responseTypeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Method parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Method parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Method parseFrom(InputStream inputStream) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Method parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Method parseFrom(p pVar) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.requestTypeUrl_ = pVar.K();
                        } else if (L == 24) {
                            this.requestStreaming_ = pVar.r();
                        } else if (L == 34) {
                            this.responseTypeUrl_ = pVar.K();
                        } else if (L == 40) {
                            this.responseStreaming_ = pVar.r();
                        } else if (L == 50) {
                            if (!(z11 & true)) {
                                this.options_ = new ArrayList();
                                z11 |= true;
                            }
                            this.options_.add(pVar.B(Option.parser(), f0Var));
                        } else if (L != 56) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.syntax_ = pVar.u();
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
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Method parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Method) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
