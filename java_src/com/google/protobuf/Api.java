package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Method;
import com.google.protobuf.Mixin;
import com.google.protobuf.Option;
import com.google.protobuf.SourceContext;
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
public final class Api extends GeneratedMessageV3 implements h {
    public static final int METHODS_FIELD_NUMBER = 2;
    public static final int MIXINS_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 7;
    public static final int VERSION_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Method> methods_;
    private List<Mixin> mixins_;
    private volatile Object name_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private volatile Object version_;
    private static final Api DEFAULT_INSTANCE = new Api();
    private static final e2<Api> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<Api> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Api m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Api(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f14275e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14276f;

        /* renamed from: g  reason: collision with root package name */
        private List<Method> f14277g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Method, Method.b, u1> f14278h;

        /* renamed from: i  reason: collision with root package name */
        private List<Option> f14279i;

        /* renamed from: j  reason: collision with root package name */
        private l2<Option, Option.b, d2> f14280j;

        /* renamed from: k  reason: collision with root package name */
        private Object f14281k;

        /* renamed from: l  reason: collision with root package name */
        private SourceContext f14282l;

        /* renamed from: m  reason: collision with root package name */
        private q2<SourceContext, SourceContext.b, s2> f14283m;

        /* renamed from: n  reason: collision with root package name */
        private List<Mixin> f14284n;

        /* renamed from: o  reason: collision with root package name */
        private l2<Mixin, Mixin.b, v1> f14285o;

        /* renamed from: p  reason: collision with root package name */
        private int f14286p;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f14275e & 1) == 0) {
                this.f14277g = new ArrayList(this.f14277g);
                this.f14275e |= 1;
            }
        }

        private void b0() {
            if ((this.f14275e & 4) == 0) {
                this.f14284n = new ArrayList(this.f14284n);
                this.f14275e |= 4;
            }
        }

        private void d0() {
            if ((this.f14275e & 2) == 0) {
                this.f14279i = new ArrayList(this.f14279i);
                this.f14275e |= 2;
            }
        }

        private l2<Method, Method.b, u1> g0() {
            if (this.f14278h == null) {
                this.f14278h = new l2<>(this.f14277g, (this.f14275e & 1) != 0, H(), O());
                this.f14277g = null;
            }
            return this.f14278h;
        }

        private l2<Mixin, Mixin.b, v1> h0() {
            if (this.f14285o == null) {
                this.f14285o = new l2<>(this.f14284n, (this.f14275e & 4) != 0, H(), O());
                this.f14284n = null;
            }
            return this.f14285o;
        }

        private l2<Option, Option.b, d2> i0() {
            if (this.f14280j == null) {
                this.f14280j = new l2<>(this.f14279i, (this.f14275e & 2) != 0, H(), O());
                this.f14279i = null;
            }
            return this.f14280j;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                i0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f15000b.d(Api.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Api build() {
            Api I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Api I() {
            Api api = new Api(this, (a) null);
            api.name_ = this.f14276f;
            l2<Method, Method.b, u1> l2Var = this.f14278h;
            if (l2Var == null) {
                if ((this.f14275e & 1) != 0) {
                    this.f14277g = Collections.unmodifiableList(this.f14277g);
                    this.f14275e &= -2;
                }
                api.methods_ = this.f14277g;
            } else {
                api.methods_ = l2Var.e();
            }
            l2<Option, Option.b, d2> l2Var2 = this.f14280j;
            if (l2Var2 == null) {
                if ((this.f14275e & 2) != 0) {
                    this.f14279i = Collections.unmodifiableList(this.f14279i);
                    this.f14275e &= -3;
                }
                api.options_ = this.f14279i;
            } else {
                api.options_ = l2Var2.e();
            }
            api.version_ = this.f14281k;
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14283m;
            if (q2Var == null) {
                api.sourceContext_ = this.f14282l;
            } else {
                api.sourceContext_ = q2Var.b();
            }
            l2<Mixin, Mixin.b, v1> l2Var3 = this.f14285o;
            if (l2Var3 == null) {
                if ((this.f14275e & 4) != 0) {
                    this.f14284n = Collections.unmodifiableList(this.f14284n);
                    this.f14275e &= -5;
                }
                api.mixins_ = this.f14284n;
            } else {
                api.mixins_ = l2Var3.e();
            }
            api.syntax_ = this.f14286p;
            Q();
            return api;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public Api getDefaultInstanceForType() {
            return Api.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f14999a;
        }

        public b k0(Api api) {
            if (api == Api.getDefaultInstance()) {
                return this;
            }
            if (!api.getName().isEmpty()) {
                this.f14276f = api.name_;
                R();
            }
            if (this.f14278h == null) {
                if (!api.methods_.isEmpty()) {
                    if (this.f14277g.isEmpty()) {
                        this.f14277g = api.methods_;
                        this.f14275e &= -2;
                    } else {
                        a0();
                        this.f14277g.addAll(api.methods_);
                    }
                    R();
                }
            } else if (!api.methods_.isEmpty()) {
                if (this.f14278h.k()) {
                    this.f14278h.f();
                    this.f14278h = null;
                    this.f14277g = api.methods_;
                    this.f14275e &= -2;
                    this.f14278h = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f14278h.b(api.methods_);
                }
            }
            if (this.f14280j == null) {
                if (!api.options_.isEmpty()) {
                    if (this.f14279i.isEmpty()) {
                        this.f14279i = api.options_;
                        this.f14275e &= -3;
                    } else {
                        d0();
                        this.f14279i.addAll(api.options_);
                    }
                    R();
                }
            } else if (!api.options_.isEmpty()) {
                if (this.f14280j.k()) {
                    this.f14280j.f();
                    this.f14280j = null;
                    this.f14279i = api.options_;
                    this.f14275e &= -3;
                    this.f14280j = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f14280j.b(api.options_);
                }
            }
            if (!api.getVersion().isEmpty()) {
                this.f14281k = api.version_;
                R();
            }
            if (api.hasSourceContext()) {
                n0(api.getSourceContext());
            }
            if (this.f14285o == null) {
                if (!api.mixins_.isEmpty()) {
                    if (this.f14284n.isEmpty()) {
                        this.f14284n = api.mixins_;
                        this.f14275e &= -5;
                    } else {
                        b0();
                        this.f14284n.addAll(api.mixins_);
                    }
                    R();
                }
            } else if (!api.mixins_.isEmpty()) {
                if (this.f14285o.k()) {
                    this.f14285o.f();
                    this.f14285o = null;
                    this.f14284n = api.mixins_;
                    this.f14275e &= -5;
                    this.f14285o = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f14285o.b(api.mixins_);
                }
            }
            if (api.syntax_ != 0) {
                r0(api.getSyntaxValue());
            }
            z(api.unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Api.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Api.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Api r3 = (com.google.protobuf.Api) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.protobuf.Api r4 = (com.google.protobuf.Api) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Api.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Api$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Api) {
                return k0((Api) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b n0(SourceContext sourceContext) {
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14283m;
            if (q2Var == null) {
                SourceContext sourceContext2 = this.f14282l;
                if (sourceContext2 != null) {
                    this.f14282l = SourceContext.newBuilder(sourceContext2).g0(sourceContext).I();
                } else {
                    this.f14282l = sourceContext;
                }
                R();
            } else {
                q2Var.e(sourceContext);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b r0(int i9) {
            this.f14286p = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14276f = "";
            this.f14277g = Collections.emptyList();
            this.f14279i = Collections.emptyList();
            this.f14281k = "";
            this.f14284n = Collections.emptyList();
            this.f14286p = 0;
            j0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14276f = "";
            this.f14277g = Collections.emptyList();
            this.f14279i = Collections.emptyList();
            this.f14281k = "";
            this.f14284n = Collections.emptyList();
            this.f14286p = 0;
            j0();
        }
    }

    /* synthetic */ Api(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Api getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f14999a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Api parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Api parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Api> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Api)) {
            return super.equals(obj);
        }
        Api api = (Api) obj;
        if (getName().equals(api.getName()) && getMethodsList().equals(api.getMethodsList()) && getOptionsList().equals(api.getOptionsList()) && getVersion().equals(api.getVersion()) && hasSourceContext() == api.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(api.getSourceContext())) && getMixinsList().equals(api.getMixinsList()) && this.syntax_ == api.syntax_ && this.unknownFields.equals(api.unknownFields);
        }
        return false;
    }

    public Method getMethods(int i9) {
        return this.methods_.get(i9);
    }

    public int getMethodsCount() {
        return this.methods_.size();
    }

    public List<Method> getMethodsList() {
        return this.methods_;
    }

    public u1 getMethodsOrBuilder(int i9) {
        return this.methods_.get(i9);
    }

    public List<? extends u1> getMethodsOrBuilderList() {
        return this.methods_;
    }

    public Mixin getMixins(int i9) {
        return this.mixins_.get(i9);
    }

    public int getMixinsCount() {
        return this.mixins_.size();
    }

    public List<Mixin> getMixinsList() {
        return this.mixins_;
    }

    public v1 getMixinsOrBuilder(int i9) {
        return this.mixins_.get(i9);
    }

    public List<? extends v1> getMixinsOrBuilderList() {
        return this.mixins_;
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
    public e2<Api> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.methods_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.methods_.get(i10));
        }
        for (int i11 = 0; i11 < this.options_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(3, this.options_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.version_);
        }
        if (this.sourceContext_ != null) {
            computeStringSize += CodedOutputStream.G(5, getSourceContext());
        }
        for (int i12 = 0; i12 < this.mixins_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(6, this.mixins_.get(i12));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.l(7, this.syntax_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SourceContext getSourceContext() {
        SourceContext sourceContext = this.sourceContext_;
        return sourceContext == null ? SourceContext.getDefaultInstance() : sourceContext;
    }

    public s2 getSourceContextOrBuilder() {
        return getSourceContext();
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

    public String getVersion() {
        Object obj = this.version_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.version_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getVersionBytes() {
        Object obj = this.version_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.version_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasSourceContext() {
        return this.sourceContext_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getMethodsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMethodsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 4) * 53) + getVersion().hashCode();
        if (hasSourceContext()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        if (getMixinsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getMixinsList().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 7) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f15000b.d(Api.class, b.class);
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
        return new Api();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.methods_.size(); i9++) {
            codedOutputStream.L0(2, this.methods_.get(i9));
        }
        for (int i10 = 0; i10 < this.options_.size(); i10++) {
            codedOutputStream.L0(3, this.options_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.version_);
        }
        if (this.sourceContext_ != null) {
            codedOutputStream.L0(5, getSourceContext());
        }
        for (int i11 = 0; i11 < this.mixins_.size(); i11++) {
            codedOutputStream.L0(6, this.mixins_.get(i11));
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.v0(7, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Api(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Api api) {
        return DEFAULT_INSTANCE.toBuilder().k0(api);
    }

    public static Api parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Api(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Api parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Api) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Api parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Api getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static Api parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Api() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.methods_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.version_ = "";
        this.mixins_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Api parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Api parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Api parseFrom(InputStream inputStream) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Api parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Api parseFrom(p pVar) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Api(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.methods_ = new ArrayList();
                                z11 |= true;
                            }
                            this.methods_.add(pVar.B(Method.parser(), f0Var));
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.options_ = new ArrayList();
                                z11 |= true;
                            }
                            this.options_.add(pVar.B(Option.parser(), f0Var));
                        } else if (L == 34) {
                            this.version_ = pVar.K();
                        } else if (L == 42) {
                            SourceContext sourceContext = this.sourceContext_;
                            SourceContext.b builder = sourceContext != null ? sourceContext.toBuilder() : null;
                            SourceContext sourceContext2 = (SourceContext) pVar.B(SourceContext.parser(), f0Var);
                            this.sourceContext_ = sourceContext2;
                            if (builder != null) {
                                builder.g0(sourceContext2);
                                this.sourceContext_ = builder.I();
                            }
                        } else if (L == 50) {
                            if (!(z11 & true)) {
                                this.mixins_ = new ArrayList();
                                z11 |= true;
                            }
                            this.mixins_.add(pVar.B(Mixin.parser(), f0Var));
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
                    this.methods_ = Collections.unmodifiableList(this.methods_);
                }
                if (z11 & true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                if (z11 & true) {
                    this.mixins_ = Collections.unmodifiableList(this.mixins_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Api parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Api) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
