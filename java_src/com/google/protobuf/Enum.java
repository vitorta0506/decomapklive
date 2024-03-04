package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.EnumValue;
import com.google.protobuf.GeneratedMessageV3;
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
public final class Enum extends GeneratedMessageV3 implements a0 {
    public static final int ENUMVALUE_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private List<EnumValue> enumvalue_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private static final Enum DEFAULT_INSTANCE = new Enum();
    private static final e2<Enum> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<Enum> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Enum m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Enum(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements a0 {

        /* renamed from: e  reason: collision with root package name */
        private int f14627e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14628f;

        /* renamed from: g  reason: collision with root package name */
        private List<EnumValue> f14629g;

        /* renamed from: h  reason: collision with root package name */
        private l2<EnumValue, EnumValue.b, b0> f14630h;

        /* renamed from: i  reason: collision with root package name */
        private List<Option> f14631i;

        /* renamed from: j  reason: collision with root package name */
        private l2<Option, Option.b, d2> f14632j;

        /* renamed from: k  reason: collision with root package name */
        private SourceContext f14633k;

        /* renamed from: l  reason: collision with root package name */
        private q2<SourceContext, SourceContext.b, s2> f14634l;

        /* renamed from: m  reason: collision with root package name */
        private int f14635m;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f14627e & 1) == 0) {
                this.f14629g = new ArrayList(this.f14629g);
                this.f14627e |= 1;
            }
        }

        private void b0() {
            if ((this.f14627e & 2) == 0) {
                this.f14631i = new ArrayList(this.f14631i);
                this.f14627e |= 2;
            }
        }

        private l2<EnumValue, EnumValue.b, b0> e0() {
            if (this.f14630h == null) {
                this.f14630h = new l2<>(this.f14629g, (this.f14627e & 1) != 0, H(), O());
                this.f14629g = null;
            }
            return this.f14630h;
        }

        private l2<Option, Option.b, d2> g0() {
            if (this.f14632j == null) {
                this.f14632j = new l2<>(this.f14631i, (this.f14627e & 2) != 0, H(), O());
                this.f14631i = null;
            }
            return this.f14632j;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c3.f14875f.d(Enum.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Enum build() {
            Enum I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Enum I() {
            Enum r02 = new Enum(this, (a) null);
            r02.name_ = this.f14628f;
            l2<EnumValue, EnumValue.b, b0> l2Var = this.f14630h;
            if (l2Var == null) {
                if ((this.f14627e & 1) != 0) {
                    this.f14629g = Collections.unmodifiableList(this.f14629g);
                    this.f14627e &= -2;
                }
                r02.enumvalue_ = this.f14629g;
            } else {
                r02.enumvalue_ = l2Var.e();
            }
            l2<Option, Option.b, d2> l2Var2 = this.f14632j;
            if (l2Var2 == null) {
                if ((this.f14627e & 2) != 0) {
                    this.f14631i = Collections.unmodifiableList(this.f14631i);
                    this.f14627e &= -3;
                }
                r02.options_ = this.f14631i;
            } else {
                r02.options_ = l2Var2.e();
            }
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14634l;
            if (q2Var == null) {
                r02.sourceContext_ = this.f14633k;
            } else {
                r02.sourceContext_ = q2Var.b();
            }
            r02.syntax_ = this.f14635m;
            Q();
            return r02;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Enum getDefaultInstanceForType() {
            return Enum.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c3.f14874e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Enum.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Enum.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Enum r3 = (com.google.protobuf.Enum) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.protobuf.Enum r4 = (com.google.protobuf.Enum) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Enum.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Enum$b");
        }

        public b j0(Enum r42) {
            if (r42 == Enum.getDefaultInstance()) {
                return this;
            }
            if (!r42.getName().isEmpty()) {
                this.f14628f = r42.name_;
                R();
            }
            if (this.f14630h == null) {
                if (!r42.enumvalue_.isEmpty()) {
                    if (this.f14629g.isEmpty()) {
                        this.f14629g = r42.enumvalue_;
                        this.f14627e &= -2;
                    } else {
                        a0();
                        this.f14629g.addAll(r42.enumvalue_);
                    }
                    R();
                }
            } else if (!r42.enumvalue_.isEmpty()) {
                if (this.f14630h.k()) {
                    this.f14630h.f();
                    this.f14630h = null;
                    this.f14629g = r42.enumvalue_;
                    this.f14627e &= -2;
                    this.f14630h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f14630h.b(r42.enumvalue_);
                }
            }
            if (this.f14632j == null) {
                if (!r42.options_.isEmpty()) {
                    if (this.f14631i.isEmpty()) {
                        this.f14631i = r42.options_;
                        this.f14627e &= -3;
                    } else {
                        b0();
                        this.f14631i.addAll(r42.options_);
                    }
                    R();
                }
            } else if (!r42.options_.isEmpty()) {
                if (this.f14632j.k()) {
                    this.f14632j.f();
                    this.f14632j = null;
                    this.f14631i = r42.options_;
                    this.f14627e &= -3;
                    this.f14632j = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f14632j.b(r42.options_);
                }
            }
            if (r42.hasSourceContext()) {
                l0(r42.getSourceContext());
            }
            if (r42.syntax_ != 0) {
                o0(r42.getSyntaxValue());
            }
            z(r42.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Enum) {
                return j0((Enum) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(SourceContext sourceContext) {
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14634l;
            if (q2Var == null) {
                SourceContext sourceContext2 = this.f14633k;
                if (sourceContext2 != null) {
                    this.f14633k = SourceContext.newBuilder(sourceContext2).g0(sourceContext).I();
                } else {
                    this.f14633k = sourceContext;
                }
                R();
            } else {
                q2Var.e(sourceContext);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(int i9) {
            this.f14635m = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14628f = "";
            this.f14629g = Collections.emptyList();
            this.f14631i = Collections.emptyList();
            this.f14635m = 0;
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14628f = "";
            this.f14629g = Collections.emptyList();
            this.f14631i = Collections.emptyList();
            this.f14635m = 0;
            h0();
        }
    }

    /* synthetic */ Enum(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Enum getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c3.f14874e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Enum parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Enum) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Enum parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Enum> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Enum)) {
            return super.equals(obj);
        }
        Enum r52 = (Enum) obj;
        if (getName().equals(r52.getName()) && getEnumvalueList().equals(r52.getEnumvalueList()) && getOptionsList().equals(r52.getOptionsList()) && hasSourceContext() == r52.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(r52.getSourceContext())) && this.syntax_ == r52.syntax_ && this.unknownFields.equals(r52.unknownFields);
        }
        return false;
    }

    public EnumValue getEnumvalue(int i9) {
        return this.enumvalue_.get(i9);
    }

    public int getEnumvalueCount() {
        return this.enumvalue_.size();
    }

    public List<EnumValue> getEnumvalueList() {
        return this.enumvalue_;
    }

    public b0 getEnumvalueOrBuilder(int i9) {
        return this.enumvalue_.get(i9);
    }

    public List<? extends b0> getEnumvalueOrBuilderList() {
        return this.enumvalue_;
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
    public e2<Enum> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.enumvalue_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.enumvalue_.get(i10));
        }
        for (int i11 = 0; i11 < this.options_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(3, this.options_.get(i11));
        }
        if (this.sourceContext_ != null) {
            computeStringSize += CodedOutputStream.G(4, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.l(5, this.syntax_);
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
        if (getEnumvalueCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getEnumvalueList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getSourceContext().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 5) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c3.f14875f.d(Enum.class, b.class);
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
        return new Enum();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.enumvalue_.size(); i9++) {
            codedOutputStream.L0(2, this.enumvalue_.get(i9));
        }
        for (int i10 = 0; i10 < this.options_.size(); i10++) {
            codedOutputStream.L0(3, this.options_.get(i10));
        }
        if (this.sourceContext_ != null) {
            codedOutputStream.L0(4, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.v0(5, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Enum(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Enum r12) {
        return DEFAULT_INSTANCE.toBuilder().j0(r12);
    }

    public static Enum parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Enum(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Enum parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Enum) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Enum parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Enum getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static Enum parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Enum() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.enumvalue_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Enum parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Enum parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Enum parseFrom(InputStream inputStream) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Enum parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Enum(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.enumvalue_ = new ArrayList();
                                z11 |= true;
                            }
                            this.enumvalue_.add(pVar.B(EnumValue.parser(), f0Var));
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.options_ = new ArrayList();
                                z11 |= true;
                            }
                            this.options_.add(pVar.B(Option.parser(), f0Var));
                        } else if (L == 34) {
                            SourceContext sourceContext = this.sourceContext_;
                            SourceContext.b builder = sourceContext != null ? sourceContext.toBuilder() : null;
                            SourceContext sourceContext2 = (SourceContext) pVar.B(SourceContext.parser(), f0Var);
                            this.sourceContext_ = sourceContext2;
                            if (builder != null) {
                                builder.g0(sourceContext2);
                                this.sourceContext_ = builder.I();
                            }
                        } else if (L != 40) {
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
                    this.enumvalue_ = Collections.unmodifiableList(this.enumvalue_);
                }
                if (z11 & true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Enum parseFrom(p pVar) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Enum parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Enum) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
