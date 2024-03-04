package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Empty;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.NullValue;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Type extends GeneratedMessageV3 implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g {
    public static final int ABSTRACT_TYPE_FIELD_NUMBER = 14;
    public static final int DYN_FIELD_NUMBER = 1;
    public static final int ERROR_FIELD_NUMBER = 12;
    public static final int FUNCTION_FIELD_NUMBER = 8;
    public static final int LIST_TYPE_FIELD_NUMBER = 6;
    public static final int MAP_TYPE_FIELD_NUMBER = 7;
    public static final int MESSAGE_TYPE_FIELD_NUMBER = 9;
    public static final int NULL_FIELD_NUMBER = 2;
    public static final int PRIMITIVE_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 11;
    public static final int TYPE_PARAM_FIELD_NUMBER = 10;
    public static final int WELL_KNOWN_FIELD_NUMBER = 5;
    public static final int WRAPPER_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int typeKindCase_;
    private Object typeKind_;
    private static final Type DEFAULT_INSTANCE = new Type();
    private static final e2<Type> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class AbstractType extends GeneratedMessageV3 implements c {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int PARAMETER_TYPES_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private List<Type> parameterTypes_;
        private static final AbstractType DEFAULT_INSTANCE = new AbstractType();
        private static final e2<AbstractType> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<AbstractType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public AbstractType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new AbstractType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f45664e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45665f;

            /* renamed from: g  reason: collision with root package name */
            private List<Type> f45666g;

            /* renamed from: h  reason: collision with root package name */
            private l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45667h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45664e & 1) == 0) {
                    this.f45666g = new ArrayList(this.f45666g);
                    this.f45664e |= 1;
                }
            }

            private l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> d0() {
                if (this.f45667h == null) {
                    this.f45667h = new l2<>(this.f45666g, (this.f45664e & 1) != 0, H(), O());
                    this.f45666g = null;
                }
                return this.f45667h;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45704p.d(AbstractType.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public AbstractType build() {
                AbstractType I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public AbstractType I() {
                AbstractType abstractType = new AbstractType(this, (a) null);
                abstractType.name_ = this.f45665f;
                l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> l2Var = this.f45667h;
                if (l2Var == null) {
                    if ((this.f45664e & 1) != 0) {
                        this.f45666g = Collections.unmodifiableList(this.f45666g);
                        this.f45664e &= -2;
                    }
                    abstractType.parameterTypes_ = this.f45666g;
                } else {
                    abstractType.parameterTypes_ = l2Var.e();
                }
                Q();
                return abstractType;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public AbstractType getDefaultInstanceForType() {
                return AbstractType.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.AbstractType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.AbstractType.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$AbstractType r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.AbstractType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$AbstractType r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.AbstractType) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.AbstractType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$AbstractType$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45703o;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof AbstractType) {
                    return i0((AbstractType) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(AbstractType abstractType) {
                if (abstractType == AbstractType.getDefaultInstance()) {
                    return this;
                }
                if (!abstractType.getName().isEmpty()) {
                    this.f45665f = abstractType.name_;
                    R();
                }
                if (this.f45667h == null) {
                    if (!abstractType.parameterTypes_.isEmpty()) {
                        if (this.f45666g.isEmpty()) {
                            this.f45666g = abstractType.parameterTypes_;
                            this.f45664e &= -2;
                        } else {
                            a0();
                            this.f45666g.addAll(abstractType.parameterTypes_);
                        }
                        R();
                    }
                } else if (!abstractType.parameterTypes_.isEmpty()) {
                    if (this.f45667h.k()) {
                        this.f45667h.f();
                        this.f45667h = null;
                        this.f45666g = abstractType.parameterTypes_;
                        this.f45664e &= -2;
                        this.f45667h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45667h.b(abstractType.parameterTypes_);
                    }
                }
                z(((GeneratedMessageV3) abstractType).unknownFields);
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45665f = "";
                this.f45666g = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45665f = "";
                this.f45666g = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ AbstractType(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static AbstractType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45703o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AbstractType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AbstractType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<AbstractType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractType)) {
                return super.equals(obj);
            }
            AbstractType abstractType = (AbstractType) obj;
            return getName().equals(abstractType.getName()) && getParameterTypesList().equals(abstractType.getParameterTypesList()) && this.unknownFields.equals(abstractType.unknownFields);
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

        public Type getParameterTypes(int i9) {
            return this.parameterTypes_.get(i9);
        }

        public int getParameterTypesCount() {
            return this.parameterTypes_.size();
        }

        public List<Type> getParameterTypesList() {
            return this.parameterTypes_;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getParameterTypesOrBuilder(int i9) {
            return this.parameterTypes_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> getParameterTypesOrBuilderList() {
            return this.parameterTypes_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<AbstractType> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
            for (int i10 = 0; i10 < this.parameterTypes_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(2, this.parameterTypes_.get(i10));
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (getParameterTypesCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getParameterTypesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45704p.d(AbstractType.class, b.class);
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
            return new AbstractType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            for (int i9 = 0; i9 < this.parameterTypes_.size(); i9++) {
                codedOutputStream.L0(2, this.parameterTypes_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ AbstractType(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(AbstractType abstractType) {
            return DEFAULT_INSTANCE.toBuilder().i0(abstractType);
        }

        public static AbstractType parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private AbstractType(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AbstractType parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static AbstractType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public AbstractType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static AbstractType parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private AbstractType() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.parameterTypes_ = Collections.emptyList();
        }

        public static AbstractType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static AbstractType parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static AbstractType parseFrom(InputStream inputStream) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private AbstractType(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.parameterTypes_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.parameterTypes_.add((Type) pVar.B(Type.parser(), f0Var));
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
                        this.parameterTypes_ = Collections.unmodifiableList(this.parameterTypes_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static AbstractType parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static AbstractType parseFrom(p pVar) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static AbstractType parseFrom(p pVar, f0 f0Var) throws IOException {
            return (AbstractType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class FunctionType extends GeneratedMessageV3 implements e {
        public static final int ARG_TYPES_FIELD_NUMBER = 2;
        private static final FunctionType DEFAULT_INSTANCE = new FunctionType();
        private static final e2<FunctionType> PARSER = new a();
        public static final int RESULT_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Type> argTypes_;
        private byte memoizedIsInitialized;
        private Type resultType_;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<FunctionType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FunctionType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FunctionType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f45668e;

            /* renamed from: f  reason: collision with root package name */
            private Type f45669f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45670g;

            /* renamed from: h  reason: collision with root package name */
            private List<Type> f45671h;

            /* renamed from: i  reason: collision with root package name */
            private l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45672i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45668e & 1) == 0) {
                    this.f45671h = new ArrayList(this.f45671h);
                    this.f45668e |= 1;
                }
            }

            private l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> b0() {
                if (this.f45672i == null) {
                    this.f45672i = new l2<>(this.f45671h, (this.f45668e & 1) != 0, H(), O());
                    this.f45671h = null;
                }
                return this.f45672i;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45702n.d(FunctionType.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FunctionType build() {
                FunctionType I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FunctionType I() {
                FunctionType functionType = new FunctionType(this, (a) null);
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45670g;
                if (q2Var == null) {
                    functionType.resultType_ = this.f45669f;
                } else {
                    functionType.resultType_ = q2Var.b();
                }
                l2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> l2Var = this.f45672i;
                if (l2Var == null) {
                    if ((this.f45668e & 1) != 0) {
                        this.f45671h = Collections.unmodifiableList(this.f45671h);
                        this.f45668e &= -2;
                    }
                    functionType.argTypes_ = this.f45671h;
                } else {
                    functionType.argTypes_ = l2Var.e();
                }
                Q();
                return functionType;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public FunctionType getDefaultInstanceForType() {
                return FunctionType.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.FunctionType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.FunctionType.access$2500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$FunctionType r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.FunctionType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$FunctionType r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.FunctionType) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.FunctionType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$FunctionType$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45701m;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FunctionType) {
                    return i0((FunctionType) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(FunctionType functionType) {
                if (functionType == FunctionType.getDefaultInstance()) {
                    return this;
                }
                if (functionType.hasResultType()) {
                    j0(functionType.getResultType());
                }
                if (this.f45672i == null) {
                    if (!functionType.argTypes_.isEmpty()) {
                        if (this.f45671h.isEmpty()) {
                            this.f45671h = functionType.argTypes_;
                            this.f45668e &= -2;
                        } else {
                            a0();
                            this.f45671h.addAll(functionType.argTypes_);
                        }
                        R();
                    }
                } else if (!functionType.argTypes_.isEmpty()) {
                    if (this.f45672i.k()) {
                        this.f45672i.f();
                        this.f45672i = null;
                        this.f45671h = functionType.argTypes_;
                        this.f45668e &= -2;
                        this.f45672i = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                    } else {
                        this.f45672i.b(functionType.argTypes_);
                    }
                }
                z(((GeneratedMessageV3) functionType).unknownFields);
                R();
                return this;
            }

            public b j0(Type type) {
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45670g;
                if (q2Var == null) {
                    Type type2 = this.f45669f;
                    if (type2 != null) {
                        this.f45669f = Type.newBuilder(type2).j0(type).I();
                    } else {
                        this.f45669f = type;
                    }
                    R();
                } else {
                    q2Var.e(type);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45671h = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45671h = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ FunctionType(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FunctionType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45701m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FunctionType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FunctionType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FunctionType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FunctionType)) {
                return super.equals(obj);
            }
            FunctionType functionType = (FunctionType) obj;
            if (hasResultType() != functionType.hasResultType()) {
                return false;
            }
            return (!hasResultType() || getResultType().equals(functionType.getResultType())) && getArgTypesList().equals(functionType.getArgTypesList()) && this.unknownFields.equals(functionType.unknownFields);
        }

        public Type getArgTypes(int i9) {
            return this.argTypes_.get(i9);
        }

        public int getArgTypesCount() {
            return this.argTypes_.size();
        }

        public List<Type> getArgTypesList() {
            return this.argTypes_;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getArgTypesOrBuilder(int i9) {
            return this.argTypes_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> getArgTypesOrBuilderList() {
            return this.argTypes_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FunctionType> getParserForType() {
            return PARSER;
        }

        public Type getResultType() {
            Type type = this.resultType_;
            return type == null ? Type.getDefaultInstance() : type;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getResultTypeOrBuilder() {
            return getResultType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.resultType_ != null ? CodedOutputStream.G(1, getResultType()) + 0 : 0;
            for (int i10 = 0; i10 < this.argTypes_.size(); i10++) {
                G += CodedOutputStream.G(2, this.argTypes_.get(i10));
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasResultType() {
            return this.resultType_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasResultType()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getResultType().hashCode();
            }
            if (getArgTypesCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getArgTypesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45702n.d(FunctionType.class, b.class);
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
            return new FunctionType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.resultType_ != null) {
                codedOutputStream.L0(1, getResultType());
            }
            for (int i9 = 0; i9 < this.argTypes_.size(); i9++) {
                codedOutputStream.L0(2, this.argTypes_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FunctionType(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FunctionType functionType) {
            return DEFAULT_INSTANCE.toBuilder().i0(functionType);
        }

        public static FunctionType parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FunctionType(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FunctionType parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FunctionType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FunctionType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static FunctionType parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FunctionType() {
            this.memoizedIsInitialized = (byte) -1;
            this.argTypes_ = Collections.emptyList();
        }

        public static FunctionType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FunctionType parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FunctionType parseFrom(InputStream inputStream) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FunctionType(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    Type type = this.resultType_;
                                    d builder = type != null ? type.toBuilder() : null;
                                    Type type2 = (Type) pVar.B(Type.parser(), f0Var);
                                    this.resultType_ = type2;
                                    if (builder != null) {
                                        builder.j0(type2);
                                        this.resultType_ = builder.I();
                                    }
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.argTypes_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.argTypes_.add((Type) pVar.B(Type.parser(), f0Var));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } finally {
                    if (z11 & true) {
                        this.argTypes_ = Collections.unmodifiableList(this.argTypes_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static FunctionType parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FunctionType parseFrom(p pVar) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FunctionType parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FunctionType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class ListType extends GeneratedMessageV3 implements f {
        public static final int ELEM_TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Type elemType_;
        private byte memoizedIsInitialized;
        private static final ListType DEFAULT_INSTANCE = new ListType();
        private static final e2<ListType> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<ListType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ListType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ListType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Type f45673e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45674f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45698j.d(ListType.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ListType build() {
                ListType I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ListType I() {
                ListType listType = new ListType(this, (a) null);
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45674f;
                if (q2Var == null) {
                    listType.elemType_ = this.f45673e;
                } else {
                    listType.elemType_ = q2Var.b();
                }
                Q();
                return listType;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ListType getDefaultInstanceForType() {
                return ListType.getDefaultInstance();
            }

            public b d0(Type type) {
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45674f;
                if (q2Var == null) {
                    Type type2 = this.f45673e;
                    if (type2 != null) {
                        this.f45673e = Type.newBuilder(type2).j0(type).I();
                    } else {
                        this.f45673e = type;
                    }
                    R();
                } else {
                    q2Var.e(type);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.ListType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.ListType.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$ListType r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.ListType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$ListType r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.ListType) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.ListType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$ListType$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ListType) {
                    return h0((ListType) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45697i;
            }

            public b h0(ListType listType) {
                if (listType == ListType.getDefaultInstance()) {
                    return this;
                }
                if (listType.hasElemType()) {
                    d0(listType.getElemType());
                }
                z(((GeneratedMessageV3) listType).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ ListType(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ListType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45697i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ListType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ListType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ListType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ListType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ListType)) {
                return super.equals(obj);
            }
            ListType listType = (ListType) obj;
            if (hasElemType() != listType.hasElemType()) {
                return false;
            }
            return (!hasElemType() || getElemType().equals(listType.getElemType())) && this.unknownFields.equals(listType.unknownFields);
        }

        public Type getElemType() {
            Type type = this.elemType_;
            return type == null ? Type.getDefaultInstance() : type;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getElemTypeOrBuilder() {
            return getElemType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ListType> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.elemType_ != null ? 0 + CodedOutputStream.G(1, getElemType()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasElemType() {
            return this.elemType_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasElemType()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getElemType().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45698j.d(ListType.class, b.class);
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
            return new ListType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.elemType_ != null) {
                codedOutputStream.L0(1, getElemType());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ListType(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ListType listType) {
            return DEFAULT_INSTANCE.toBuilder().h0(listType);
        }

        public static ListType parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ListType(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ListType parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ListType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ListType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ListType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static ListType parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ListType() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ListType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ListType parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private ListType(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Type type = this.elemType_;
                                    d builder = type != null ? type.toBuilder() : null;
                                    Type type2 = (Type) pVar.B(Type.parser(), f0Var);
                                    this.elemType_ = type2;
                                    if (builder != null) {
                                        builder.j0(type2);
                                        this.elemType_ = builder.I();
                                    }
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

        public static ListType parseFrom(InputStream inputStream) throws IOException {
            return (ListType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ListType parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ListType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ListType parseFrom(p pVar) throws IOException {
            return (ListType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ListType parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ListType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class MapType extends GeneratedMessageV3 implements g {
        public static final int KEY_TYPE_FIELD_NUMBER = 1;
        public static final int VALUE_TYPE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Type keyType_;
        private byte memoizedIsInitialized;
        private Type valueType_;
        private static final MapType DEFAULT_INSTANCE = new MapType();
        private static final e2<MapType> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<MapType> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public MapType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new MapType(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private Type f45675e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45676f;

            /* renamed from: g  reason: collision with root package name */
            private Type f45677g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45678h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45700l.d(MapType.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public MapType build() {
                MapType I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public MapType I() {
                MapType mapType = new MapType(this, (a) null);
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45676f;
                if (q2Var == null) {
                    mapType.keyType_ = this.f45675e;
                } else {
                    mapType.keyType_ = q2Var.b();
                }
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var2 = this.f45678h;
                if (q2Var2 == null) {
                    mapType.valueType_ = this.f45677g;
                } else {
                    mapType.valueType_ = q2Var2.b();
                }
                Q();
                return mapType;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public MapType getDefaultInstanceForType() {
                return MapType.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.MapType.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.MapType.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$MapType r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.MapType) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$MapType r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.MapType) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.MapType.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$MapType$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof MapType) {
                    return g0((MapType) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(MapType mapType) {
                if (mapType == MapType.getDefaultInstance()) {
                    return this;
                }
                if (mapType.hasKeyType()) {
                    h0(mapType.getKeyType());
                }
                if (mapType.hasValueType()) {
                    j0(mapType.getValueType());
                }
                z(((GeneratedMessageV3) mapType).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45699k;
            }

            public b h0(Type type) {
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45676f;
                if (q2Var == null) {
                    Type type2 = this.f45675e;
                    if (type2 != null) {
                        this.f45675e = Type.newBuilder(type2).j0(type).I();
                    } else {
                        this.f45675e = type;
                    }
                    R();
                } else {
                    q2Var.e(type);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(Type type) {
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45678h;
                if (q2Var == null) {
                    Type type2 = this.f45677g;
                    if (type2 != null) {
                        this.f45677g = Type.newBuilder(type2).j0(type).I();
                    } else {
                        this.f45677g = type;
                    }
                    R();
                } else {
                    q2Var.e(type);
                }
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ MapType(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static MapType getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45699k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MapType parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MapType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MapType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<MapType> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapType)) {
                return super.equals(obj);
            }
            MapType mapType = (MapType) obj;
            if (hasKeyType() != mapType.hasKeyType()) {
                return false;
            }
            if ((!hasKeyType() || getKeyType().equals(mapType.getKeyType())) && hasValueType() == mapType.hasValueType()) {
                return (!hasValueType() || getValueType().equals(mapType.getValueType())) && this.unknownFields.equals(mapType.unknownFields);
            }
            return false;
        }

        public Type getKeyType() {
            Type type = this.keyType_;
            return type == null ? Type.getDefaultInstance() : type;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getKeyTypeOrBuilder() {
            return getKeyType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<MapType> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.keyType_ != null ? 0 + CodedOutputStream.G(1, getKeyType()) : 0;
            if (this.valueType_ != null) {
                G += CodedOutputStream.G(2, getValueType());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Type getValueType() {
            Type type = this.valueType_;
            return type == null ? Type.getDefaultInstance() : type;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getValueTypeOrBuilder() {
            return getValueType();
        }

        public boolean hasKeyType() {
            return this.keyType_ != null;
        }

        public boolean hasValueType() {
            return this.valueType_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasKeyType()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getKeyType().hashCode();
            }
            if (hasValueType()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValueType().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45700l.d(MapType.class, b.class);
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
            return new MapType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.keyType_ != null) {
                codedOutputStream.L0(1, getKeyType());
            }
            if (this.valueType_ != null) {
                codedOutputStream.L0(2, getValueType());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ MapType(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(MapType mapType) {
            return DEFAULT_INSTANCE.toBuilder().g0(mapType);
        }

        public static MapType parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private MapType(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MapType parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MapType) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static MapType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public MapType getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static MapType parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private MapType() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MapType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static MapType parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private MapType(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            d builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                Type type = this.keyType_;
                                builder = type != null ? type.toBuilder() : null;
                                Type type2 = (Type) pVar.B(Type.parser(), f0Var);
                                this.keyType_ = type2;
                                if (builder != null) {
                                    builder.j0(type2);
                                    this.keyType_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Type type3 = this.valueType_;
                                builder = type3 != null ? type3.toBuilder() : null;
                                Type type4 = (Type) pVar.B(Type.parser(), f0Var);
                                this.valueType_ = type4;
                                if (builder != null) {
                                    builder.j0(type4);
                                    this.valueType_ = builder.I();
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

        public static MapType parseFrom(InputStream inputStream) throws IOException {
            return (MapType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MapType parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (MapType) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static MapType parseFrom(p pVar) throws IOException {
            return (MapType) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static MapType parseFrom(p pVar, f0 f0Var) throws IOException {
            return (MapType) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum PrimitiveType implements h2 {
        PRIMITIVE_TYPE_UNSPECIFIED(0),
        BOOL(1),
        INT64(2),
        UINT64(3),
        DOUBLE(4),
        STRING(5),
        BYTES(6),
        UNRECOGNIZED(-1);
        
        public static final int BOOL_VALUE = 1;
        public static final int BYTES_VALUE = 6;
        public static final int DOUBLE_VALUE = 4;
        public static final int INT64_VALUE = 2;
        public static final int PRIMITIVE_TYPE_UNSPECIFIED_VALUE = 0;
        public static final int STRING_VALUE = 5;
        public static final int UINT64_VALUE = 3;
        private final int value;
        private static final u0.d<PrimitiveType> internalValueMap = new a();
        private static final PrimitiveType[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<PrimitiveType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public PrimitiveType a(int i9) {
                return PrimitiveType.forNumber(i9);
            }
        }

        PrimitiveType(int i9) {
            this.value = i9;
        }

        public static PrimitiveType forNumber(int i9) {
            switch (i9) {
                case 0:
                    return PRIMITIVE_TYPE_UNSPECIFIED;
                case 1:
                    return BOOL;
                case 2:
                    return INT64;
                case 3:
                    return UINT64;
                case 4:
                    return DOUBLE;
                case 5:
                    return STRING;
                case 6:
                    return BYTES;
                default:
                    return null;
            }
        }

        public static final Descriptors.d getDescriptor() {
            return Type.getDescriptor().k().get(0);
        }

        public static u0.d<PrimitiveType> internalGetValueMap() {
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static PrimitiveType valueOf(int i9) {
            return forNumber(i9);
        }

        public static PrimitiveType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes5.dex */
    public enum TypeKindCase implements u0.c {
        DYN(1),
        NULL(2),
        PRIMITIVE(3),
        WRAPPER(4),
        WELL_KNOWN(5),
        LIST_TYPE(6),
        MAP_TYPE(7),
        FUNCTION(8),
        MESSAGE_TYPE(9),
        TYPE_PARAM(10),
        TYPE(11),
        ERROR(12),
        ABSTRACT_TYPE(14),
        TYPEKIND_NOT_SET(0);
        
        private final int value;

        TypeKindCase(int i9) {
            this.value = i9;
        }

        public static TypeKindCase forNumber(int i9) {
            switch (i9) {
                case 0:
                    return TYPEKIND_NOT_SET;
                case 1:
                    return DYN;
                case 2:
                    return NULL;
                case 3:
                    return PRIMITIVE;
                case 4:
                    return WRAPPER;
                case 5:
                    return WELL_KNOWN;
                case 6:
                    return LIST_TYPE;
                case 7:
                    return MAP_TYPE;
                case 8:
                    return FUNCTION;
                case 9:
                    return MESSAGE_TYPE;
                case 10:
                    return TYPE_PARAM;
                case 11:
                    return TYPE;
                case 12:
                    return ERROR;
                case 13:
                default:
                    return null;
                case 14:
                    return ABSTRACT_TYPE;
            }
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TypeKindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public enum WellKnownType implements h2 {
        WELL_KNOWN_TYPE_UNSPECIFIED(0),
        ANY(1),
        TIMESTAMP(2),
        DURATION(3),
        UNRECOGNIZED(-1);
        
        public static final int ANY_VALUE = 1;
        public static final int DURATION_VALUE = 3;
        public static final int TIMESTAMP_VALUE = 2;
        public static final int WELL_KNOWN_TYPE_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<WellKnownType> internalValueMap = new a();
        private static final WellKnownType[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<WellKnownType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public WellKnownType a(int i9) {
                return WellKnownType.forNumber(i9);
            }
        }

        WellKnownType(int i9) {
            this.value = i9;
        }

        public static WellKnownType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return DURATION;
                    }
                    return TIMESTAMP;
                }
                return ANY;
            }
            return WELL_KNOWN_TYPE_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return Type.getDescriptor().k().get(1);
        }

        public static u0.d<WellKnownType> internalGetValueMap() {
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static WellKnownType valueOf(int i9) {
            return forNumber(i9);
        }

        public static WellKnownType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Type> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Type m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Type(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45679a;

        static {
            int[] iArr = new int[TypeKindCase.values().length];
            f45679a = iArr;
            try {
                iArr[TypeKindCase.DYN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45679a[TypeKindCase.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45679a[TypeKindCase.PRIMITIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45679a[TypeKindCase.WRAPPER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45679a[TypeKindCase.WELL_KNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45679a[TypeKindCase.LIST_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f45679a[TypeKindCase.MAP_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f45679a[TypeKindCase.FUNCTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f45679a[TypeKindCase.MESSAGE_TYPE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f45679a[TypeKindCase.TYPE_PARAM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f45679a[TypeKindCase.TYPE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f45679a[TypeKindCase.ERROR.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f45679a[TypeKindCase.ABSTRACT_TYPE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f45679a[TypeKindCase.TYPEKIND_NOT_SET.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g {

        /* renamed from: e  reason: collision with root package name */
        private int f45680e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45681f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Empty, Empty.b, y> f45682g;

        /* renamed from: h  reason: collision with root package name */
        private q2<ListType, ListType.b, f> f45683h;

        /* renamed from: i  reason: collision with root package name */
        private q2<MapType, MapType.b, g> f45684i;

        /* renamed from: j  reason: collision with root package name */
        private q2<FunctionType, FunctionType.b, e> f45685j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> f45686k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Empty, Empty.b, y> f45687l;

        /* renamed from: m  reason: collision with root package name */
        private q2<AbstractType, AbstractType.b, c> f45688m;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45696h.d(Type.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
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
            if (this.f45680e == 1) {
                q2<Empty, Empty.b, y> q2Var = this.f45682g;
                if (q2Var == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var.b();
                }
            }
            if (this.f45680e == 2) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 3) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 4) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 5) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 6) {
                q2<ListType, ListType.b, f> q2Var2 = this.f45683h;
                if (q2Var2 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var2.b();
                }
            }
            if (this.f45680e == 7) {
                q2<MapType, MapType.b, g> q2Var3 = this.f45684i;
                if (q2Var3 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var3.b();
                }
            }
            if (this.f45680e == 8) {
                q2<FunctionType, FunctionType.b, e> q2Var4 = this.f45685j;
                if (q2Var4 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var4.b();
                }
            }
            if (this.f45680e == 9) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 10) {
                type.typeKind_ = this.f45681f;
            }
            if (this.f45680e == 11) {
                q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var5 = this.f45686k;
                if (q2Var5 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var5.b();
                }
            }
            if (this.f45680e == 12) {
                q2<Empty, Empty.b, y> q2Var6 = this.f45687l;
                if (q2Var6 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var6.b();
                }
            }
            if (this.f45680e == 14) {
                q2<AbstractType, AbstractType.b, c> q2Var7 = this.f45688m;
                if (q2Var7 == null) {
                    type.typeKind_ = this.f45681f;
                } else {
                    type.typeKind_ = q2Var7.b();
                }
            }
            type.typeKindCase_ = this.f45680e;
            Q();
            return type;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Type getDefaultInstanceForType() {
            return Type.getDefaultInstance();
        }

        public d d0(AbstractType abstractType) {
            q2<AbstractType, AbstractType.b, c> q2Var = this.f45688m;
            if (q2Var == null) {
                if (this.f45680e == 14 && this.f45681f != AbstractType.getDefaultInstance()) {
                    this.f45681f = AbstractType.newBuilder((AbstractType) this.f45681f).i0(abstractType).I();
                } else {
                    this.f45681f = abstractType;
                }
                R();
            } else {
                if (this.f45680e == 14) {
                    q2Var.e(abstractType);
                }
                this.f45688m.g(abstractType);
            }
            this.f45680e = 14;
            return this;
        }

        public d e0(Empty empty) {
            q2<Empty, Empty.b, y> q2Var = this.f45682g;
            if (q2Var == null) {
                if (this.f45680e == 1 && this.f45681f != Empty.getDefaultInstance()) {
                    this.f45681f = Empty.newBuilder((Empty) this.f45681f).e0(empty).I();
                } else {
                    this.f45681f = empty;
                }
                R();
            } else {
                if (this.f45680e == 1) {
                    q2Var.e(empty);
                }
                this.f45682g.g(empty);
            }
            this.f45680e = 1;
            return this;
        }

        public d g0(Empty empty) {
            q2<Empty, Empty.b, y> q2Var = this.f45687l;
            if (q2Var == null) {
                if (this.f45680e == 12 && this.f45681f != Empty.getDefaultInstance()) {
                    this.f45681f = Empty.newBuilder((Empty) this.f45681f).e0(empty).I();
                } else {
                    this.f45681f = empty;
                }
                R();
            } else {
                if (this.f45680e == 12) {
                    q2Var.e(empty);
                }
                this.f45687l.g(empty);
            }
            this.f45680e = 12;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45695g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.access$4500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type$d");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof Type) {
                return j0((Type) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d j0(Type type) {
            if (type == Type.getDefaultInstance()) {
                return this;
            }
            switch (b.f45679a[type.getTypeKindCase().ordinal()]) {
                case 1:
                    e0(type.getDyn());
                    break;
                case 2:
                    r0(type.getNullValue());
                    break;
                case 3:
                    s0(type.getPrimitiveValue());
                    break;
                case 4:
                    v0(type.getWrapperValue());
                    break;
                case 5:
                    u0(type.getWellKnownValue());
                    break;
                case 6:
                    l0(type.getListType());
                    break;
                case 7:
                    m0(type.getMapType());
                    break;
                case 8:
                    k0(type.getFunction());
                    break;
                case 9:
                    this.f45680e = 9;
                    this.f45681f = type.typeKind_;
                    R();
                    break;
                case 10:
                    this.f45680e = 10;
                    this.f45681f = type.typeKind_;
                    R();
                    break;
                case 11:
                    n0(type.getType());
                    break;
                case 12:
                    g0(type.getError());
                    break;
                case 13:
                    d0(type.getAbstractType());
                    break;
            }
            z(((GeneratedMessageV3) type).unknownFields);
            R();
            return this;
        }

        public d k0(FunctionType functionType) {
            q2<FunctionType, FunctionType.b, e> q2Var = this.f45685j;
            if (q2Var == null) {
                if (this.f45680e == 8 && this.f45681f != FunctionType.getDefaultInstance()) {
                    this.f45681f = FunctionType.newBuilder((FunctionType) this.f45681f).i0(functionType).I();
                } else {
                    this.f45681f = functionType;
                }
                R();
            } else {
                if (this.f45680e == 8) {
                    q2Var.e(functionType);
                }
                this.f45685j.g(functionType);
            }
            this.f45680e = 8;
            return this;
        }

        public d l0(ListType listType) {
            q2<ListType, ListType.b, f> q2Var = this.f45683h;
            if (q2Var == null) {
                if (this.f45680e == 6 && this.f45681f != ListType.getDefaultInstance()) {
                    this.f45681f = ListType.newBuilder((ListType) this.f45681f).h0(listType).I();
                } else {
                    this.f45681f = listType;
                }
                R();
            } else {
                if (this.f45680e == 6) {
                    q2Var.e(listType);
                }
                this.f45683h.g(listType);
            }
            this.f45680e = 6;
            return this;
        }

        public d m0(MapType mapType) {
            q2<MapType, MapType.b, g> q2Var = this.f45684i;
            if (q2Var == null) {
                if (this.f45680e == 7 && this.f45681f != MapType.getDefaultInstance()) {
                    this.f45681f = MapType.newBuilder((MapType) this.f45681f).g0(mapType).I();
                } else {
                    this.f45681f = mapType;
                }
                R();
            } else {
                if (this.f45680e == 7) {
                    q2Var.e(mapType);
                }
                this.f45684i.g(mapType);
            }
            this.f45680e = 7;
            return this;
        }

        public d n0(Type type) {
            q2<Type, d, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g> q2Var = this.f45686k;
            if (q2Var == null) {
                if (this.f45680e == 11 && this.f45681f != Type.getDefaultInstance()) {
                    this.f45681f = Type.newBuilder((Type) this.f45681f).j0(type).I();
                } else {
                    this.f45681f = type;
                }
                R();
            } else {
                if (this.f45680e == 11) {
                    q2Var.e(type);
                }
                this.f45686k.g(type);
            }
            this.f45680e = 11;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        public d r0(int i9) {
            this.f45680e = 2;
            this.f45681f = Integer.valueOf(i9);
            R();
            return this;
        }

        public d s0(int i9) {
            this.f45680e = 3;
            this.f45681f = Integer.valueOf(i9);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        public d u0(int i9) {
            this.f45680e = 5;
            this.f45681f = Integer.valueOf(i9);
            R();
            return this;
        }

        public d v0(int i9) {
            this.f45680e = 4;
            this.f45681f = Integer.valueOf(i9);
            R();
            return this;
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f45680e = 0;
            b0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45680e = 0;
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface g extends r1 {
    }

    /* synthetic */ Type(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Type getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45695g;
    }

    public static d newBuilder() {
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
        if (getTypeKindCase().equals(type.getTypeKindCase())) {
            switch (this.typeKindCase_) {
                case 1:
                    if (!getDyn().equals(type.getDyn())) {
                        return false;
                    }
                    break;
                case 2:
                    if (getNullValue() != type.getNullValue()) {
                        return false;
                    }
                    break;
                case 3:
                    if (getPrimitiveValue() != type.getPrimitiveValue()) {
                        return false;
                    }
                    break;
                case 4:
                    if (getWrapperValue() != type.getWrapperValue()) {
                        return false;
                    }
                    break;
                case 5:
                    if (getWellKnownValue() != type.getWellKnownValue()) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getListType().equals(type.getListType())) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getMapType().equals(type.getMapType())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getFunction().equals(type.getFunction())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getMessageType().equals(type.getMessageType())) {
                        return false;
                    }
                    break;
                case 10:
                    if (!getTypeParam().equals(type.getTypeParam())) {
                        return false;
                    }
                    break;
                case 11:
                    if (!getType().equals(type.getType())) {
                        return false;
                    }
                    break;
                case 12:
                    if (!getError().equals(type.getError())) {
                        return false;
                    }
                    break;
                case 14:
                    if (!getAbstractType().equals(type.getAbstractType())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(type.unknownFields);
        }
        return false;
    }

    public AbstractType getAbstractType() {
        if (this.typeKindCase_ == 14) {
            return (AbstractType) this.typeKind_;
        }
        return AbstractType.getDefaultInstance();
    }

    public c getAbstractTypeOrBuilder() {
        if (this.typeKindCase_ == 14) {
            return (AbstractType) this.typeKind_;
        }
        return AbstractType.getDefaultInstance();
    }

    public Empty getDyn() {
        if (this.typeKindCase_ == 1) {
            return (Empty) this.typeKind_;
        }
        return Empty.getDefaultInstance();
    }

    public y getDynOrBuilder() {
        if (this.typeKindCase_ == 1) {
            return (Empty) this.typeKind_;
        }
        return Empty.getDefaultInstance();
    }

    public Empty getError() {
        if (this.typeKindCase_ == 12) {
            return (Empty) this.typeKind_;
        }
        return Empty.getDefaultInstance();
    }

    public y getErrorOrBuilder() {
        if (this.typeKindCase_ == 12) {
            return (Empty) this.typeKind_;
        }
        return Empty.getDefaultInstance();
    }

    public FunctionType getFunction() {
        if (this.typeKindCase_ == 8) {
            return (FunctionType) this.typeKind_;
        }
        return FunctionType.getDefaultInstance();
    }

    public e getFunctionOrBuilder() {
        if (this.typeKindCase_ == 8) {
            return (FunctionType) this.typeKind_;
        }
        return FunctionType.getDefaultInstance();
    }

    public ListType getListType() {
        if (this.typeKindCase_ == 6) {
            return (ListType) this.typeKind_;
        }
        return ListType.getDefaultInstance();
    }

    public f getListTypeOrBuilder() {
        if (this.typeKindCase_ == 6) {
            return (ListType) this.typeKind_;
        }
        return ListType.getDefaultInstance();
    }

    public MapType getMapType() {
        if (this.typeKindCase_ == 7) {
            return (MapType) this.typeKind_;
        }
        return MapType.getDefaultInstance();
    }

    public g getMapTypeOrBuilder() {
        if (this.typeKindCase_ == 7) {
            return (MapType) this.typeKind_;
        }
        return MapType.getDefaultInstance();
    }

    public String getMessageType() {
        String str = this.typeKindCase_ == 9 ? this.typeKind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.typeKindCase_ == 9) {
            this.typeKind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getMessageTypeBytes() {
        String str = this.typeKindCase_ == 9 ? this.typeKind_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.typeKindCase_ == 9) {
                this.typeKind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public NullValue getNull() {
        if (this.typeKindCase_ == 2) {
            NullValue valueOf = NullValue.valueOf(((Integer) this.typeKind_).intValue());
            return valueOf == null ? NullValue.UNRECOGNIZED : valueOf;
        }
        return NullValue.NULL_VALUE;
    }

    public int getNullValue() {
        if (this.typeKindCase_ == 2) {
            return ((Integer) this.typeKind_).intValue();
        }
        return 0;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Type> getParserForType() {
        return PARSER;
    }

    public PrimitiveType getPrimitive() {
        if (this.typeKindCase_ == 3) {
            PrimitiveType valueOf = PrimitiveType.valueOf(((Integer) this.typeKind_).intValue());
            return valueOf == null ? PrimitiveType.UNRECOGNIZED : valueOf;
        }
        return PrimitiveType.PRIMITIVE_TYPE_UNSPECIFIED;
    }

    public int getPrimitiveValue() {
        if (this.typeKindCase_ == 3) {
            return ((Integer) this.typeKind_).intValue();
        }
        return 0;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.typeKindCase_ == 1 ? 0 + CodedOutputStream.G(1, (Empty) this.typeKind_) : 0;
        if (this.typeKindCase_ == 2) {
            G += CodedOutputStream.l(2, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 3) {
            G += CodedOutputStream.l(3, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 4) {
            G += CodedOutputStream.l(4, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 5) {
            G += CodedOutputStream.l(5, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 6) {
            G += CodedOutputStream.G(6, (ListType) this.typeKind_);
        }
        if (this.typeKindCase_ == 7) {
            G += CodedOutputStream.G(7, (MapType) this.typeKind_);
        }
        if (this.typeKindCase_ == 8) {
            G += CodedOutputStream.G(8, (FunctionType) this.typeKind_);
        }
        if (this.typeKindCase_ == 9) {
            G += GeneratedMessageV3.computeStringSize(9, this.typeKind_);
        }
        if (this.typeKindCase_ == 10) {
            G += GeneratedMessageV3.computeStringSize(10, this.typeKind_);
        }
        if (this.typeKindCase_ == 11) {
            G += CodedOutputStream.G(11, (Type) this.typeKind_);
        }
        if (this.typeKindCase_ == 12) {
            G += CodedOutputStream.G(12, (Empty) this.typeKind_);
        }
        if (this.typeKindCase_ == 14) {
            G += CodedOutputStream.G(14, (AbstractType) this.typeKind_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Type getType() {
        if (this.typeKindCase_ == 11) {
            return (Type) this.typeKind_;
        }
        return getDefaultInstance();
    }

    public TypeKindCase getTypeKindCase() {
        return TypeKindCase.forNumber(this.typeKindCase_);
    }

    public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.g getTypeOrBuilder() {
        if (this.typeKindCase_ == 11) {
            return (Type) this.typeKind_;
        }
        return getDefaultInstance();
    }

    public String getTypeParam() {
        String str = this.typeKindCase_ == 10 ? this.typeKind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.typeKindCase_ == 10) {
            this.typeKind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getTypeParamBytes() {
        String str = this.typeKindCase_ == 10 ? this.typeKind_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.typeKindCase_ == 10) {
                this.typeKind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public WellKnownType getWellKnown() {
        if (this.typeKindCase_ == 5) {
            WellKnownType valueOf = WellKnownType.valueOf(((Integer) this.typeKind_).intValue());
            return valueOf == null ? WellKnownType.UNRECOGNIZED : valueOf;
        }
        return WellKnownType.WELL_KNOWN_TYPE_UNSPECIFIED;
    }

    public int getWellKnownValue() {
        if (this.typeKindCase_ == 5) {
            return ((Integer) this.typeKind_).intValue();
        }
        return 0;
    }

    public PrimitiveType getWrapper() {
        if (this.typeKindCase_ == 4) {
            PrimitiveType valueOf = PrimitiveType.valueOf(((Integer) this.typeKind_).intValue());
            return valueOf == null ? PrimitiveType.UNRECOGNIZED : valueOf;
        }
        return PrimitiveType.PRIMITIVE_TYPE_UNSPECIFIED;
    }

    public int getWrapperValue() {
        if (this.typeKindCase_ == 4) {
            return ((Integer) this.typeKind_).intValue();
        }
        return 0;
    }

    public boolean hasAbstractType() {
        return this.typeKindCase_ == 14;
    }

    public boolean hasDyn() {
        return this.typeKindCase_ == 1;
    }

    public boolean hasError() {
        return this.typeKindCase_ == 12;
    }

    public boolean hasFunction() {
        return this.typeKindCase_ == 8;
    }

    public boolean hasListType() {
        return this.typeKindCase_ == 6;
    }

    public boolean hasMapType() {
        return this.typeKindCase_ == 7;
    }

    public boolean hasMessageType() {
        return this.typeKindCase_ == 9;
    }

    public boolean hasNull() {
        return this.typeKindCase_ == 2;
    }

    public boolean hasPrimitive() {
        return this.typeKindCase_ == 3;
    }

    public boolean hasType() {
        return this.typeKindCase_ == 11;
    }

    public boolean hasTypeParam() {
        return this.typeKindCase_ == 10;
    }

    public boolean hasWellKnown() {
        return this.typeKindCase_ == 5;
    }

    public boolean hasWrapper() {
        return this.typeKindCase_ == 4;
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
        switch (this.typeKindCase_) {
            case 1:
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getDyn().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 2:
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getNullValue();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getPrimitiveValue();
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getWrapperValue();
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getWellKnownValue();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getListType().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getMapType().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            case 8:
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getFunction().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getMessageType().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222;
                return hashCode322222222;
            case 10:
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getTypeParam().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222;
                return hashCode3222222222;
            case 11:
                i9 = ((hashCode2 * 37) + 11) * 53;
                hashCode = getType().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222222;
                return hashCode32222222222;
            case 12:
                i9 = ((hashCode2 * 37) + 12) * 53;
                hashCode = getError().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222222222;
                return hashCode322222222222;
            case 13:
            default:
                int hashCode3222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222222222;
                return hashCode3222222222222;
            case 14:
                i9 = ((hashCode2 * 37) + 14) * 53;
                hashCode = getAbstractType().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222222222;
                return hashCode32222222222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45696h.d(Type.class, d.class);
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
        if (this.typeKindCase_ == 1) {
            codedOutputStream.L0(1, (Empty) this.typeKind_);
        }
        if (this.typeKindCase_ == 2) {
            codedOutputStream.v0(2, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 3) {
            codedOutputStream.v0(3, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 4) {
            codedOutputStream.v0(4, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 5) {
            codedOutputStream.v0(5, ((Integer) this.typeKind_).intValue());
        }
        if (this.typeKindCase_ == 6) {
            codedOutputStream.L0(6, (ListType) this.typeKind_);
        }
        if (this.typeKindCase_ == 7) {
            codedOutputStream.L0(7, (MapType) this.typeKind_);
        }
        if (this.typeKindCase_ == 8) {
            codedOutputStream.L0(8, (FunctionType) this.typeKind_);
        }
        if (this.typeKindCase_ == 9) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.typeKind_);
        }
        if (this.typeKindCase_ == 10) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.typeKind_);
        }
        if (this.typeKindCase_ == 11) {
            codedOutputStream.L0(11, (Type) this.typeKind_);
        }
        if (this.typeKindCase_ == 12) {
            codedOutputStream.L0(12, (Empty) this.typeKind_);
        }
        if (this.typeKindCase_ == 14) {
            codedOutputStream.L0(14, (AbstractType) this.typeKind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Type(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(Type type) {
        return DEFAULT_INSTANCE.toBuilder().j0(type);
    }

    public static Type parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Type(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.typeKindCase_ = 0;
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
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).j0(this);
    }

    public static Type parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    public static Type parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    private Type() {
        this.typeKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Type parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Type parseFrom(InputStream inputStream) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Type(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            Empty.b builder = this.typeKindCase_ == 1 ? ((Empty) this.typeKind_).toBuilder() : null;
                            o1 B = pVar.B(Empty.parser(), f0Var);
                            this.typeKind_ = B;
                            if (builder != null) {
                                builder.e0((Empty) B);
                                this.typeKind_ = builder.I();
                            }
                            this.typeKindCase_ = 1;
                            continue;
                        case 16:
                            int u10 = pVar.u();
                            this.typeKindCase_ = 2;
                            this.typeKind_ = Integer.valueOf(u10);
                            continue;
                        case 24:
                            int u11 = pVar.u();
                            this.typeKindCase_ = 3;
                            this.typeKind_ = Integer.valueOf(u11);
                            continue;
                        case 32:
                            int u12 = pVar.u();
                            this.typeKindCase_ = 4;
                            this.typeKind_ = Integer.valueOf(u12);
                            continue;
                        case 40:
                            int u13 = pVar.u();
                            this.typeKindCase_ = 5;
                            this.typeKind_ = Integer.valueOf(u13);
                            continue;
                        case 50:
                            ListType.b builder2 = this.typeKindCase_ == 6 ? ((ListType) this.typeKind_).toBuilder() : null;
                            o1 B2 = pVar.B(ListType.parser(), f0Var);
                            this.typeKind_ = B2;
                            if (builder2 != null) {
                                builder2.h0((ListType) B2);
                                this.typeKind_ = builder2.I();
                            }
                            this.typeKindCase_ = 6;
                            continue;
                        case 58:
                            MapType.b builder3 = this.typeKindCase_ == 7 ? ((MapType) this.typeKind_).toBuilder() : null;
                            o1 B3 = pVar.B(MapType.parser(), f0Var);
                            this.typeKind_ = B3;
                            if (builder3 != null) {
                                builder3.g0((MapType) B3);
                                this.typeKind_ = builder3.I();
                            }
                            this.typeKindCase_ = 7;
                            continue;
                        case 66:
                            FunctionType.b builder4 = this.typeKindCase_ == 8 ? ((FunctionType) this.typeKind_).toBuilder() : null;
                            o1 B4 = pVar.B(FunctionType.parser(), f0Var);
                            this.typeKind_ = B4;
                            if (builder4 != null) {
                                builder4.i0((FunctionType) B4);
                                this.typeKind_ = builder4.I();
                            }
                            this.typeKindCase_ = 8;
                            continue;
                        case 74:
                            String K = pVar.K();
                            this.typeKindCase_ = 9;
                            this.typeKind_ = K;
                            continue;
                        case 82:
                            String K2 = pVar.K();
                            this.typeKindCase_ = 10;
                            this.typeKind_ = K2;
                            continue;
                        case 90:
                            d builder5 = this.typeKindCase_ == 11 ? ((Type) this.typeKind_).toBuilder() : null;
                            o1 B5 = pVar.B(parser(), f0Var);
                            this.typeKind_ = B5;
                            if (builder5 != null) {
                                builder5.j0((Type) B5);
                                this.typeKind_ = builder5.I();
                            }
                            this.typeKindCase_ = 11;
                            continue;
                        case 98:
                            Empty.b builder6 = this.typeKindCase_ == 12 ? ((Empty) this.typeKind_).toBuilder() : null;
                            o1 B6 = pVar.B(Empty.parser(), f0Var);
                            this.typeKind_ = B6;
                            if (builder6 != null) {
                                builder6.e0((Empty) B6);
                                this.typeKind_ = builder6.I();
                            }
                            this.typeKindCase_ = 12;
                            continue;
                        case 114:
                            AbstractType.b builder7 = this.typeKindCase_ == 14 ? ((AbstractType) this.typeKind_).toBuilder() : null;
                            o1 B7 = pVar.B(AbstractType.parser(), f0Var);
                            this.typeKind_ = B7;
                            if (builder7 != null) {
                                builder7.i0((AbstractType) B7);
                                this.typeKind_ = builder7.I();
                            }
                            this.typeKindCase_ = 14;
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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

    public static Type parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Type parseFrom(p pVar) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Type parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Type) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
