package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Field;
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
public final class Type extends GeneratedMessageV3 implements b3 {
    public static final int FIELDS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int ONEOFS_FIELD_NUMBER = 3;
    public static final int OPTIONS_FIELD_NUMBER = 4;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 5;
    public static final int SYNTAX_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private List<Field> fields_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private z0 oneofs_;
    private List<Option> options_;
    private SourceContext sourceContext_;
    private int syntax_;
    private static final Type DEFAULT_INSTANCE = new Type();
    private static final e2<Type> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<Type> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Type m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Type(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements b3 {

        /* renamed from: e  reason: collision with root package name */
        private int f14825e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14826f;

        /* renamed from: g  reason: collision with root package name */
        private List<Field> f14827g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Field, Field.b, n0> f14828h;

        /* renamed from: i  reason: collision with root package name */
        private z0 f14829i;

        /* renamed from: j  reason: collision with root package name */
        private List<Option> f14830j;

        /* renamed from: k  reason: collision with root package name */
        private l2<Option, Option.b, d2> f14831k;

        /* renamed from: l  reason: collision with root package name */
        private SourceContext f14832l;

        /* renamed from: m  reason: collision with root package name */
        private q2<SourceContext, SourceContext.b, s2> f14833m;

        /* renamed from: n  reason: collision with root package name */
        private int f14834n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f14825e & 1) == 0) {
                this.f14827g = new ArrayList(this.f14827g);
                this.f14825e |= 1;
            }
        }

        private void b0() {
            if ((this.f14825e & 2) == 0) {
                this.f14829i = new y0(this.f14829i);
                this.f14825e |= 2;
            }
        }

        private void d0() {
            if ((this.f14825e & 4) == 0) {
                this.f14830j = new ArrayList(this.f14830j);
                this.f14825e |= 4;
            }
        }

        private l2<Field, Field.b, n0> g0() {
            if (this.f14828h == null) {
                this.f14828h = new l2<>(this.f14827g, (this.f14825e & 1) != 0, H(), O());
                this.f14827g = null;
            }
            return this.f14828h;
        }

        private l2<Option, Option.b, d2> h0() {
            if (this.f14831k == null) {
                this.f14831k = new l2<>(this.f14830j, (this.f14825e & 4) != 0, H(), O());
                this.f14830j = null;
            }
            return this.f14831k;
        }

        private void i0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c3.f14871b.d(Type.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Type build() {
            Type I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Type I() {
            Type type = new Type(this, (a) null);
            type.name_ = this.f14826f;
            l2<Field, Field.b, n0> l2Var = this.f14828h;
            if (l2Var == null) {
                if ((this.f14825e & 1) != 0) {
                    this.f14827g = Collections.unmodifiableList(this.f14827g);
                    this.f14825e &= -2;
                }
                type.fields_ = this.f14827g;
            } else {
                type.fields_ = l2Var.e();
            }
            if ((this.f14825e & 2) != 0) {
                this.f14829i = this.f14829i.V0();
                this.f14825e &= -3;
            }
            type.oneofs_ = this.f14829i;
            l2<Option, Option.b, d2> l2Var2 = this.f14831k;
            if (l2Var2 == null) {
                if ((this.f14825e & 4) != 0) {
                    this.f14830j = Collections.unmodifiableList(this.f14830j);
                    this.f14825e &= -5;
                }
                type.options_ = this.f14830j;
            } else {
                type.options_ = l2Var2.e();
            }
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14833m;
            if (q2Var == null) {
                type.sourceContext_ = this.f14832l;
            } else {
                type.sourceContext_ = q2Var.b();
            }
            type.syntax_ = this.f14834n;
            Q();
            return type;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public Type getDefaultInstanceForType() {
            return Type.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c3.f14870a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.Type.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.Type.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.Type r3 = (com.google.protobuf.Type) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.protobuf.Type r4 = (com.google.protobuf.Type) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Type.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.Type$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Type) {
                return l0((Type) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(Type type) {
            if (type == Type.getDefaultInstance()) {
                return this;
            }
            if (!type.getName().isEmpty()) {
                this.f14826f = type.name_;
                R();
            }
            if (this.f14828h == null) {
                if (!type.fields_.isEmpty()) {
                    if (this.f14827g.isEmpty()) {
                        this.f14827g = type.fields_;
                        this.f14825e &= -2;
                    } else {
                        a0();
                        this.f14827g.addAll(type.fields_);
                    }
                    R();
                }
            } else if (!type.fields_.isEmpty()) {
                if (this.f14828h.k()) {
                    this.f14828h.f();
                    this.f14828h = null;
                    this.f14827g = type.fields_;
                    this.f14825e &= -2;
                    this.f14828h = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f14828h.b(type.fields_);
                }
            }
            if (!type.oneofs_.isEmpty()) {
                if (this.f14829i.isEmpty()) {
                    this.f14829i = type.oneofs_;
                    this.f14825e &= -3;
                } else {
                    b0();
                    this.f14829i.addAll(type.oneofs_);
                }
                R();
            }
            if (this.f14831k == null) {
                if (!type.options_.isEmpty()) {
                    if (this.f14830j.isEmpty()) {
                        this.f14830j = type.options_;
                        this.f14825e &= -5;
                    } else {
                        d0();
                        this.f14830j.addAll(type.options_);
                    }
                    R();
                }
            } else if (!type.options_.isEmpty()) {
                if (this.f14831k.k()) {
                    this.f14831k.f();
                    this.f14831k = null;
                    this.f14830j = type.options_;
                    this.f14825e &= -5;
                    this.f14831k = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f14831k.b(type.options_);
                }
            }
            if (type.hasSourceContext()) {
                m0(type.getSourceContext());
            }
            if (type.syntax_ != 0) {
                q0(type.getSyntaxValue());
            }
            z(type.unknownFields);
            R();
            return this;
        }

        public b m0(SourceContext sourceContext) {
            q2<SourceContext, SourceContext.b, s2> q2Var = this.f14833m;
            if (q2Var == null) {
                SourceContext sourceContext2 = this.f14832l;
                if (sourceContext2 != null) {
                    this.f14832l = SourceContext.newBuilder(sourceContext2).g0(sourceContext).I();
                } else {
                    this.f14832l = sourceContext;
                }
                R();
            } else {
                q2Var.e(sourceContext);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b q0(int i9) {
            this.f14834n = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f14826f = "";
            this.f14827g = Collections.emptyList();
            this.f14829i = y0.f15344d;
            this.f14830j = Collections.emptyList();
            this.f14834n = 0;
            i0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14826f = "";
            this.f14827g = Collections.emptyList();
            this.f14829i = y0.f15344d;
            this.f14830j = Collections.emptyList();
            this.f14834n = 0;
            i0();
        }
    }

    /* synthetic */ Type(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Type getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c3.f14870a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Type parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Type) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Type parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Type> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Type)) {
            return super.equals(obj);
        }
        Type type = (Type) obj;
        if (getName().equals(type.getName()) && getFieldsList().equals(type.getFieldsList()) && m219getOneofsList().equals(type.m219getOneofsList()) && getOptionsList().equals(type.getOptionsList()) && hasSourceContext() == type.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(type.getSourceContext())) && this.syntax_ == type.syntax_ && this.unknownFields.equals(type.unknownFields);
        }
        return false;
    }

    public Field getFields(int i9) {
        return this.fields_.get(i9);
    }

    public int getFieldsCount() {
        return this.fields_.size();
    }

    public List<Field> getFieldsList() {
        return this.fields_;
    }

    public n0 getFieldsOrBuilder(int i9) {
        return this.fields_.get(i9);
    }

    public List<? extends n0> getFieldsOrBuilderList() {
        return this.fields_;
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

    public String getOneofs(int i9) {
        return this.oneofs_.get(i9);
    }

    public ByteString getOneofsBytes(int i9) {
        return this.oneofs_.j0(i9);
    }

    public int getOneofsCount() {
        return this.oneofs_.size();
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
    public e2<Type> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.fields_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.fields_.get(i10));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.oneofs_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.oneofs_.c1(i12));
        }
        int size = computeStringSize + i11 + (m219getOneofsList().size() * 1);
        for (int i13 = 0; i13 < this.options_.size(); i13++) {
            size += CodedOutputStream.G(4, this.options_.get(i13));
        }
        if (this.sourceContext_ != null) {
            size += CodedOutputStream.G(5, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            size += CodedOutputStream.l(6, this.syntax_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
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
        if (getFieldsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getFieldsList().hashCode();
        }
        if (getOneofsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m219getOneofsList().hashCode();
        }
        if (getOptionsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSourceContext().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 6) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c3.f14871b.d(Type.class, b.class);
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
        return new Type();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.fields_.size(); i9++) {
            codedOutputStream.L0(2, this.fields_.get(i9));
        }
        for (int i10 = 0; i10 < this.oneofs_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.oneofs_.c1(i10));
        }
        for (int i11 = 0; i11 < this.options_.size(); i11++) {
            codedOutputStream.L0(4, this.options_.get(i11));
        }
        if (this.sourceContext_ != null) {
            codedOutputStream.L0(5, getSourceContext());
        }
        if (this.syntax_ != Syntax.SYNTAX_PROTO2.getNumber()) {
            codedOutputStream.v0(6, this.syntax_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Type(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Type type) {
        return DEFAULT_INSTANCE.toBuilder().l0(type);
    }

    public static Type parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getOneofsList */
    public i2 m219getOneofsList() {
        return this.oneofs_;
    }

    private Type(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Type parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Type) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Type parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Type getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static Type parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Type() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.fields_ = Collections.emptyList();
        this.oneofs_ = y0.f15344d;
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Type parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Type parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Type parseFrom(InputStream inputStream) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Type parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Type parseFrom(p pVar) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Type(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.fields_ = new ArrayList();
                                z11 |= true;
                            }
                            this.fields_.add(pVar.B(Field.parser(), f0Var));
                        } else if (L == 26) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.oneofs_ = new y0();
                                z11 |= true;
                            }
                            this.oneofs_.add(K);
                        } else if (L == 34) {
                            if (!(z11 & true)) {
                                this.options_ = new ArrayList();
                                z11 |= true;
                            }
                            this.options_.add(pVar.B(Option.parser(), f0Var));
                        } else if (L == 42) {
                            SourceContext sourceContext = this.sourceContext_;
                            SourceContext.b builder = sourceContext != null ? sourceContext.toBuilder() : null;
                            SourceContext sourceContext2 = (SourceContext) pVar.B(SourceContext.parser(), f0Var);
                            this.sourceContext_ = sourceContext2;
                            if (builder != null) {
                                builder.g0(sourceContext2);
                                this.sourceContext_ = builder.I();
                            }
                        } else if (L != 48) {
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
                    this.fields_ = Collections.unmodifiableList(this.fields_);
                }
                if (z11 & true) {
                    this.oneofs_ = this.oneofs_.V0();
                }
                if (z11 & true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Type parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
