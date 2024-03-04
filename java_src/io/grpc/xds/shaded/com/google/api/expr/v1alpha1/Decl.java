package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Type;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Decl extends GeneratedMessageV3 implements r1 {
    public static final int FUNCTION_FIELD_NUMBER = 3;
    public static final int IDENT_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int declKindCase_;
    private Object declKind_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final Decl DEFAULT_INSTANCE = new Decl();
    private static final e2<Decl> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum DeclKindCase implements u0.c {
        IDENT(2),
        FUNCTION(3),
        DECLKIND_NOT_SET(0);
        
        private final int value;

        DeclKindCase(int i9) {
            this.value = i9;
        }

        public static DeclKindCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return FUNCTION;
                }
                return IDENT;
            }
            return DECLKIND_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static DeclKindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public static final class FunctionDecl extends GeneratedMessageV3 implements d {
        public static final int OVERLOADS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<Overload> overloads_;
        private static final FunctionDecl DEFAULT_INSTANCE = new FunctionDecl();
        private static final e2<FunctionDecl> PARSER = new a();

        /* loaded from: classes5.dex */
        public static final class Overload extends GeneratedMessageV3 implements c {
            public static final int DOC_FIELD_NUMBER = 6;
            public static final int IS_INSTANCE_FUNCTION_FIELD_NUMBER = 5;
            public static final int OVERLOAD_ID_FIELD_NUMBER = 1;
            public static final int PARAMS_FIELD_NUMBER = 2;
            public static final int RESULT_TYPE_FIELD_NUMBER = 4;
            public static final int TYPE_PARAMS_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private volatile Object doc_;
            private boolean isInstanceFunction_;
            private byte memoizedIsInitialized;
            private volatile Object overloadId_;
            private List<Type> params_;
            private Type resultType_;
            private z0 typeParams_;
            private static final Overload DEFAULT_INSTANCE = new Overload();
            private static final e2<Overload> PARSER = new a();

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<Overload> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Overload m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Overload(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f45572e;

                /* renamed from: f  reason: collision with root package name */
                private Object f45573f;

                /* renamed from: g  reason: collision with root package name */
                private List<Type> f45574g;

                /* renamed from: h  reason: collision with root package name */
                private l2<Type, Type.d, g> f45575h;

                /* renamed from: i  reason: collision with root package name */
                private z0 f45576i;

                /* renamed from: j  reason: collision with root package name */
                private Type f45577j;

                /* renamed from: k  reason: collision with root package name */
                private q2<Type, Type.d, g> f45578k;

                /* renamed from: l  reason: collision with root package name */
                private boolean f45579l;

                /* renamed from: m  reason: collision with root package name */
                private Object f45580m;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f45572e & 1) == 0) {
                        this.f45574g = new ArrayList(this.f45574g);
                        this.f45572e |= 1;
                    }
                }

                private void b0() {
                    if ((this.f45572e & 2) == 0) {
                        this.f45576i = new y0(this.f45576i);
                        this.f45572e |= 2;
                    }
                }

                private l2<Type, Type.d, g> e0() {
                    if (this.f45575h == null) {
                        this.f45575h = new l2<>(this.f45574g, (this.f45572e & 1) != 0, H(), O());
                        this.f45574g = null;
                    }
                    return this.f45575h;
                }

                private void g0() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        e0();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45712x.d(Overload.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Overload build() {
                    Overload I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Overload I() {
                    Overload overload = new Overload(this, (a) null);
                    overload.overloadId_ = this.f45573f;
                    l2<Type, Type.d, g> l2Var = this.f45575h;
                    if (l2Var == null) {
                        if ((this.f45572e & 1) != 0) {
                            this.f45574g = Collections.unmodifiableList(this.f45574g);
                            this.f45572e &= -2;
                        }
                        overload.params_ = this.f45574g;
                    } else {
                        overload.params_ = l2Var.e();
                    }
                    if ((this.f45572e & 2) != 0) {
                        this.f45576i = this.f45576i.V0();
                        this.f45572e &= -3;
                    }
                    overload.typeParams_ = this.f45576i;
                    q2<Type, Type.d, g> q2Var = this.f45578k;
                    if (q2Var == null) {
                        overload.resultType_ = this.f45577j;
                    } else {
                        overload.resultType_ = q2Var.b();
                    }
                    overload.isInstanceFunction_ = this.f45579l;
                    overload.doc_ = this.f45580m;
                    Q();
                    return overload;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: d0 */
                public Overload getDefaultInstanceForType() {
                    return Overload.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45711w;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl$Overload r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl$Overload r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.Overload.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl$Overload$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: i0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Overload) {
                        return j0((Overload) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b j0(Overload overload) {
                    if (overload == Overload.getDefaultInstance()) {
                        return this;
                    }
                    if (!overload.getOverloadId().isEmpty()) {
                        this.f45573f = overload.overloadId_;
                        R();
                    }
                    if (this.f45575h == null) {
                        if (!overload.params_.isEmpty()) {
                            if (this.f45574g.isEmpty()) {
                                this.f45574g = overload.params_;
                                this.f45572e &= -2;
                            } else {
                                a0();
                                this.f45574g.addAll(overload.params_);
                            }
                            R();
                        }
                    } else if (!overload.params_.isEmpty()) {
                        if (this.f45575h.k()) {
                            this.f45575h.f();
                            this.f45575h = null;
                            this.f45574g = overload.params_;
                            this.f45572e &= -2;
                            this.f45575h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                        } else {
                            this.f45575h.b(overload.params_);
                        }
                    }
                    if (!overload.typeParams_.isEmpty()) {
                        if (this.f45576i.isEmpty()) {
                            this.f45576i = overload.typeParams_;
                            this.f45572e &= -3;
                        } else {
                            b0();
                            this.f45576i.addAll(overload.typeParams_);
                        }
                        R();
                    }
                    if (overload.hasResultType()) {
                        k0(overload.getResultType());
                    }
                    if (overload.getIsInstanceFunction()) {
                        n0(overload.getIsInstanceFunction());
                    }
                    if (!overload.getDoc().isEmpty()) {
                        this.f45580m = overload.doc_;
                        R();
                    }
                    z(((GeneratedMessageV3) overload).unknownFields);
                    R();
                    return this;
                }

                public b k0(Type type) {
                    q2<Type, Type.d, g> q2Var = this.f45578k;
                    if (q2Var == null) {
                        Type type2 = this.f45577j;
                        if (type2 != null) {
                            this.f45577j = Type.newBuilder(type2).j0(type).I();
                        } else {
                            this.f45577j = type;
                        }
                        R();
                    } else {
                        q2Var.e(type);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: l0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: m0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                public b n0(boolean z10) {
                    this.f45579l = z10;
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
                    this.f45573f = "";
                    this.f45574g = Collections.emptyList();
                    this.f45576i = y0.f15344d;
                    this.f45580m = "";
                    g0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f45573f = "";
                    this.f45574g = Collections.emptyList();
                    this.f45576i = y0.f15344d;
                    this.f45580m = "";
                    g0();
                }
            }

            /* synthetic */ Overload(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Overload getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45711w;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Overload parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Overload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Overload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Overload> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Overload)) {
                    return super.equals(obj);
                }
                Overload overload = (Overload) obj;
                if (getOverloadId().equals(overload.getOverloadId()) && getParamsList().equals(overload.getParamsList()) && m1573getTypeParamsList().equals(overload.m1573getTypeParamsList()) && hasResultType() == overload.hasResultType()) {
                    return (!hasResultType() || getResultType().equals(overload.getResultType())) && getIsInstanceFunction() == overload.getIsInstanceFunction() && getDoc().equals(overload.getDoc()) && this.unknownFields.equals(overload.unknownFields);
                }
                return false;
            }

            public String getDoc() {
                Object obj = this.doc_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.doc_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDocBytes() {
                Object obj = this.doc_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.doc_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public boolean getIsInstanceFunction() {
                return this.isInstanceFunction_;
            }

            public String getOverloadId() {
                Object obj = this.overloadId_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.overloadId_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getOverloadIdBytes() {
                Object obj = this.overloadId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.overloadId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Type getParams(int i9) {
                return this.params_.get(i9);
            }

            public int getParamsCount() {
                return this.params_.size();
            }

            public List<Type> getParamsList() {
                return this.params_;
            }

            public g getParamsOrBuilder(int i9) {
                return this.params_.get(i9);
            }

            public List<? extends g> getParamsOrBuilderList() {
                return this.params_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Overload> getParserForType() {
                return PARSER;
            }

            public Type getResultType() {
                Type type = this.resultType_;
                return type == null ? Type.getDefaultInstance() : type;
            }

            public g getResultTypeOrBuilder() {
                return getResultType();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.overloadId_) ? GeneratedMessageV3.computeStringSize(1, this.overloadId_) + 0 : 0;
                for (int i10 = 0; i10 < this.params_.size(); i10++) {
                    computeStringSize += CodedOutputStream.G(2, this.params_.get(i10));
                }
                int i11 = 0;
                for (int i12 = 0; i12 < this.typeParams_.size(); i12++) {
                    i11 += GeneratedMessageV3.computeStringSizeNoTag(this.typeParams_.c1(i12));
                }
                int size = computeStringSize + i11 + (m1573getTypeParamsList().size() * 1);
                if (this.resultType_ != null) {
                    size += CodedOutputStream.G(4, getResultType());
                }
                boolean z10 = this.isInstanceFunction_;
                if (z10) {
                    size += CodedOutputStream.e(5, z10);
                }
                if (!GeneratedMessageV3.isStringEmpty(this.doc_)) {
                    size += GeneratedMessageV3.computeStringSize(6, this.doc_);
                }
                int serializedSize = size + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public String getTypeParams(int i9) {
                return this.typeParams_.get(i9);
            }

            public ByteString getTypeParamsBytes(int i9) {
                return this.typeParams_.j0(i9);
            }

            public int getTypeParamsCount() {
                return this.typeParams_.size();
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
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getOverloadId().hashCode();
                if (getParamsCount() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getParamsList().hashCode();
                }
                if (getTypeParamsCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + m1573getTypeParamsList().hashCode();
                }
                if (hasResultType()) {
                    hashCode = (((hashCode * 37) + 4) * 53) + getResultType().hashCode();
                }
                int d10 = (((((((((hashCode * 37) + 5) * 53) + u0.d(getIsInstanceFunction())) * 37) + 6) * 53) + getDoc().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = d10;
                return d10;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45712x.d(Overload.class, b.class);
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
                return new Overload();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.overloadId_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.overloadId_);
                }
                for (int i9 = 0; i9 < this.params_.size(); i9++) {
                    codedOutputStream.L0(2, this.params_.get(i9));
                }
                for (int i10 = 0; i10 < this.typeParams_.size(); i10++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.typeParams_.c1(i10));
                }
                if (this.resultType_ != null) {
                    codedOutputStream.L0(4, getResultType());
                }
                boolean z10 = this.isInstanceFunction_;
                if (z10) {
                    codedOutputStream.n0(5, z10);
                }
                if (!GeneratedMessageV3.isStringEmpty(this.doc_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.doc_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Overload(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Overload overload) {
                return DEFAULT_INSTANCE.toBuilder().j0(overload);
            }

            public static Overload parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            /* renamed from: getTypeParamsList */
            public i2 m1573getTypeParamsList() {
                return this.typeParams_;
            }

            private Overload(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Overload parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Overload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Overload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Overload getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
            }

            public static Overload parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Overload() {
                this.memoizedIsInitialized = (byte) -1;
                this.overloadId_ = "";
                this.params_ = Collections.emptyList();
                this.typeParams_ = y0.f15344d;
                this.doc_ = "";
            }

            public static Overload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Overload parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Overload parseFrom(InputStream inputStream) throws IOException {
                return (Overload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Overload parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Overload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private Overload(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        this.overloadId_ = pVar.K();
                                    } else if (L == 18) {
                                        if (!(z11 & true)) {
                                            this.params_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.params_.add((Type) pVar.B(Type.parser(), f0Var));
                                    } else if (L == 26) {
                                        String K = pVar.K();
                                        if (!(z11 & true)) {
                                            this.typeParams_ = new y0();
                                            z11 |= true;
                                        }
                                        this.typeParams_.add(K);
                                    } else if (L == 34) {
                                        Type type = this.resultType_;
                                        Type.d builder = type != null ? type.toBuilder() : null;
                                        Type type2 = (Type) pVar.B(Type.parser(), f0Var);
                                        this.resultType_ = type2;
                                        if (builder != null) {
                                            builder.j0(type2);
                                            this.resultType_ = builder.I();
                                        }
                                    } else if (L == 40) {
                                        this.isInstanceFunction_ = pVar.r();
                                    } else if (L != 50) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.doc_ = pVar.K();
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
                        if (z11 & true) {
                            this.params_ = Collections.unmodifiableList(this.params_);
                        }
                        if (z11 & true) {
                            this.typeParams_ = this.typeParams_.V0();
                        }
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static Overload parseFrom(p pVar) throws IOException {
                return (Overload) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Overload parseFrom(p pVar, f0 f0Var) throws IOException {
                return (Overload) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<FunctionDecl> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FunctionDecl m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FunctionDecl(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f45581e;

            /* renamed from: f  reason: collision with root package name */
            private List<Overload> f45582f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Overload, Overload.b, c> f45583g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45581e & 1) == 0) {
                    this.f45582f = new ArrayList(this.f45582f);
                    this.f45581e |= 1;
                }
            }

            private l2<Overload, Overload.b, c> d0() {
                if (this.f45583g == null) {
                    this.f45583g = new l2<>(this.f45582f, (this.f45581e & 1) != 0, H(), O());
                    this.f45582f = null;
                }
                return this.f45583g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45710v.d(FunctionDecl.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FunctionDecl build() {
                FunctionDecl I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FunctionDecl I() {
                FunctionDecl functionDecl = new FunctionDecl(this, (a) null);
                int i9 = this.f45581e;
                l2<Overload, Overload.b, c> l2Var = this.f45583g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f45582f = Collections.unmodifiableList(this.f45582f);
                        this.f45581e &= -2;
                    }
                    functionDecl.overloads_ = this.f45582f;
                } else {
                    functionDecl.overloads_ = l2Var.e();
                }
                Q();
                return functionDecl;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public FunctionDecl getDefaultInstanceForType() {
                return FunctionDecl.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.access$3500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.FunctionDecl.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$FunctionDecl$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45709u;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FunctionDecl) {
                    return i0((FunctionDecl) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(FunctionDecl functionDecl) {
                if (functionDecl == FunctionDecl.getDefaultInstance()) {
                    return this;
                }
                if (this.f45583g == null) {
                    if (!functionDecl.overloads_.isEmpty()) {
                        if (this.f45582f.isEmpty()) {
                            this.f45582f = functionDecl.overloads_;
                            this.f45581e &= -2;
                        } else {
                            a0();
                            this.f45582f.addAll(functionDecl.overloads_);
                        }
                        R();
                    }
                } else if (!functionDecl.overloads_.isEmpty()) {
                    if (this.f45583g.k()) {
                        this.f45583g.f();
                        this.f45583g = null;
                        this.f45582f = functionDecl.overloads_;
                        this.f45581e &= -2;
                        this.f45583g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45583g.b(functionDecl.overloads_);
                    }
                }
                z(((GeneratedMessageV3) functionDecl).unknownFields);
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
                this.f45582f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45582f = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ FunctionDecl(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FunctionDecl getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45709u;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FunctionDecl parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FunctionDecl parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FunctionDecl> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FunctionDecl)) {
                return super.equals(obj);
            }
            FunctionDecl functionDecl = (FunctionDecl) obj;
            return getOverloadsList().equals(functionDecl.getOverloadsList()) && this.unknownFields.equals(functionDecl.unknownFields);
        }

        public Overload getOverloads(int i9) {
            return this.overloads_.get(i9);
        }

        public int getOverloadsCount() {
            return this.overloads_.size();
        }

        public List<Overload> getOverloadsList() {
            return this.overloads_;
        }

        public c getOverloadsOrBuilder(int i9) {
            return this.overloads_.get(i9);
        }

        public List<? extends c> getOverloadsOrBuilderList() {
            return this.overloads_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FunctionDecl> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.overloads_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.overloads_.get(i11));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (getOverloadsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getOverloadsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45710v.d(FunctionDecl.class, b.class);
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
            return new FunctionDecl();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.overloads_.size(); i9++) {
                codedOutputStream.L0(1, this.overloads_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FunctionDecl(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FunctionDecl functionDecl) {
            return DEFAULT_INSTANCE.toBuilder().i0(functionDecl);
        }

        public static FunctionDecl parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FunctionDecl(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FunctionDecl parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FunctionDecl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FunctionDecl getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static FunctionDecl parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FunctionDecl() {
            this.memoizedIsInitialized = (byte) -1;
            this.overloads_ = Collections.emptyList();
        }

        public static FunctionDecl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FunctionDecl parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FunctionDecl parseFrom(InputStream inputStream) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FunctionDecl(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.overloads_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.overloads_.add((Overload) pVar.B(Overload.parser(), f0Var));
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
                        this.overloads_ = Collections.unmodifiableList(this.overloads_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static FunctionDecl parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FunctionDecl parseFrom(p pVar) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FunctionDecl parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FunctionDecl) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class IdentDecl extends GeneratedMessageV3 implements e {
        public static final int DOC_FIELD_NUMBER = 3;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object doc_;
        private byte memoizedIsInitialized;
        private Type type_;
        private Constant value_;
        private static final IdentDecl DEFAULT_INSTANCE = new IdentDecl();
        private static final e2<IdentDecl> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<IdentDecl> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public IdentDecl m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new IdentDecl(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Type f45584e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Type, Type.d, g> f45585f;

            /* renamed from: g  reason: collision with root package name */
            private Constant f45586g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> f45587h;

            /* renamed from: i  reason: collision with root package name */
            private Object f45588i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45708t.d(IdentDecl.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public IdentDecl build() {
                IdentDecl I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public IdentDecl I() {
                IdentDecl identDecl = new IdentDecl(this, (a) null);
                q2<Type, Type.d, g> q2Var = this.f45585f;
                if (q2Var == null) {
                    identDecl.type_ = this.f45584e;
                } else {
                    identDecl.type_ = q2Var.b();
                }
                q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> q2Var2 = this.f45587h;
                if (q2Var2 == null) {
                    identDecl.value_ = this.f45586g;
                } else {
                    identDecl.value_ = q2Var2.b();
                }
                identDecl.doc_ = this.f45588i;
                Q();
                return identDecl;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public IdentDecl getDefaultInstanceForType() {
                return IdentDecl.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.IdentDecl.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.IdentDecl.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$IdentDecl r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.IdentDecl) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$IdentDecl r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.IdentDecl) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.IdentDecl.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$IdentDecl$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof IdentDecl) {
                    return g0((IdentDecl) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(IdentDecl identDecl) {
                if (identDecl == IdentDecl.getDefaultInstance()) {
                    return this;
                }
                if (identDecl.hasType()) {
                    h0(identDecl.getType());
                }
                if (identDecl.hasValue()) {
                    j0(identDecl.getValue());
                }
                if (!identDecl.getDoc().isEmpty()) {
                    this.f45588i = identDecl.doc_;
                    R();
                }
                z(((GeneratedMessageV3) identDecl).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45707s;
            }

            public b h0(Type type) {
                q2<Type, Type.d, g> q2Var = this.f45585f;
                if (q2Var == null) {
                    Type type2 = this.f45584e;
                    if (type2 != null) {
                        this.f45584e = Type.newBuilder(type2).j0(type).I();
                    } else {
                        this.f45584e = type;
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

            public b j0(Constant constant) {
                q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> q2Var = this.f45587h;
                if (q2Var == null) {
                    Constant constant2 = this.f45586g;
                    if (constant2 != null) {
                        this.f45586g = Constant.newBuilder(constant2).h0(constant).I();
                    } else {
                        this.f45586g = constant;
                    }
                    R();
                } else {
                    q2Var.e(constant);
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
                this.f45588i = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45588i = "";
                b0();
            }
        }

        /* synthetic */ IdentDecl(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static IdentDecl getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45707s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static IdentDecl parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static IdentDecl parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<IdentDecl> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IdentDecl)) {
                return super.equals(obj);
            }
            IdentDecl identDecl = (IdentDecl) obj;
            if (hasType() != identDecl.hasType()) {
                return false;
            }
            if ((!hasType() || getType().equals(identDecl.getType())) && hasValue() == identDecl.hasValue()) {
                return (!hasValue() || getValue().equals(identDecl.getValue())) && getDoc().equals(identDecl.getDoc()) && this.unknownFields.equals(identDecl.unknownFields);
            }
            return false;
        }

        public String getDoc() {
            Object obj = this.doc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.doc_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDocBytes() {
            Object obj = this.doc_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.doc_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<IdentDecl> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.type_ != null ? 0 + CodedOutputStream.G(1, getType()) : 0;
            if (this.value_ != null) {
                G += CodedOutputStream.G(2, getValue());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.doc_)) {
                G += GeneratedMessageV3.computeStringSize(3, this.doc_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Type getType() {
            Type type = this.type_;
            return type == null ? Type.getDefaultInstance() : type;
        }

        public g getTypeOrBuilder() {
            return getType();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public Constant getValue() {
            Constant constant = this.value_;
            return constant == null ? Constant.getDefaultInstance() : constant;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b getValueOrBuilder() {
            return getValue();
        }

        public boolean hasType() {
            return this.type_ != null;
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasType()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getType().hashCode();
            }
            if (hasValue()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 3) * 53) + getDoc().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45708t.d(IdentDecl.class, b.class);
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
            return new IdentDecl();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.type_ != null) {
                codedOutputStream.L0(1, getType());
            }
            if (this.value_ != null) {
                codedOutputStream.L0(2, getValue());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.doc_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.doc_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ IdentDecl(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(IdentDecl identDecl) {
            return DEFAULT_INSTANCE.toBuilder().g0(identDecl);
        }

        public static IdentDecl parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private IdentDecl(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static IdentDecl parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static IdentDecl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public IdentDecl getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static IdentDecl parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private IdentDecl() {
            this.memoizedIsInitialized = (byte) -1;
            this.doc_ = "";
        }

        public static IdentDecl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static IdentDecl parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static IdentDecl parseFrom(InputStream inputStream) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private IdentDecl(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Type type = this.type_;
                                    Type.d builder = type != null ? type.toBuilder() : null;
                                    Type type2 = (Type) pVar.B(Type.parser(), f0Var);
                                    this.type_ = type2;
                                    if (builder != null) {
                                        builder.j0(type2);
                                        this.type_ = builder.I();
                                    }
                                } else if (L == 18) {
                                    Constant constant = this.value_;
                                    Constant.c builder2 = constant != null ? constant.toBuilder() : null;
                                    Constant constant2 = (Constant) pVar.B(Constant.parser(), f0Var);
                                    this.value_ = constant2;
                                    if (builder2 != null) {
                                        builder2.h0(constant2);
                                        this.value_ = builder2.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.doc_ = pVar.K();
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

        public static IdentDecl parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static IdentDecl parseFrom(p pVar) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static IdentDecl parseFrom(p pVar, f0 f0Var) throws IOException {
            return (IdentDecl) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Decl> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Decl m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Decl(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45589a;

        static {
            int[] iArr = new int[DeclKindCase.values().length];
            f45589a = iArr;
            try {
                iArr[DeclKindCase.IDENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45589a[DeclKindCase.FUNCTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45589a[DeclKindCase.DECLKIND_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f45590e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45591f;

        /* renamed from: g  reason: collision with root package name */
        private Object f45592g;

        /* renamed from: h  reason: collision with root package name */
        private q2<IdentDecl, IdentDecl.b, e> f45593h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FunctionDecl, FunctionDecl.b, d> f45594i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45706r.d(Decl.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Decl build() {
            Decl I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Decl I() {
            Decl decl = new Decl(this, (a) null);
            decl.name_ = this.f45592g;
            if (this.f45590e == 2) {
                q2<IdentDecl, IdentDecl.b, e> q2Var = this.f45593h;
                if (q2Var == null) {
                    decl.declKind_ = this.f45591f;
                } else {
                    decl.declKind_ = q2Var.b();
                }
            }
            if (this.f45590e == 3) {
                q2<FunctionDecl, FunctionDecl.b, d> q2Var2 = this.f45594i;
                if (q2Var2 == null) {
                    decl.declKind_ = this.f45591f;
                } else {
                    decl.declKind_ = q2Var2.b();
                }
            }
            decl.declKindCase_ = this.f45590e;
            Q();
            return decl;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Decl getDefaultInstanceForType() {
            return Decl.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.access$4500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Decl$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Decl) {
                return g0((Decl) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Decl decl) {
            if (decl == Decl.getDefaultInstance()) {
                return this;
            }
            if (!decl.getName().isEmpty()) {
                this.f45592g = decl.name_;
                R();
            }
            int i9 = b.f45589a[decl.getDeclKindCase().ordinal()];
            if (i9 == 1) {
                i0(decl.getIdent());
            } else if (i9 == 2) {
                h0(decl.getFunction());
            }
            z(((GeneratedMessageV3) decl).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45705q;
        }

        public c h0(FunctionDecl functionDecl) {
            q2<FunctionDecl, FunctionDecl.b, d> q2Var = this.f45594i;
            if (q2Var == null) {
                if (this.f45590e == 3 && this.f45591f != FunctionDecl.getDefaultInstance()) {
                    this.f45591f = FunctionDecl.newBuilder((FunctionDecl) this.f45591f).i0(functionDecl).I();
                } else {
                    this.f45591f = functionDecl;
                }
                R();
            } else {
                if (this.f45590e == 3) {
                    q2Var.e(functionDecl);
                }
                this.f45594i.g(functionDecl);
            }
            this.f45590e = 3;
            return this;
        }

        public c i0(IdentDecl identDecl) {
            q2<IdentDecl, IdentDecl.b, e> q2Var = this.f45593h;
            if (q2Var == null) {
                if (this.f45590e == 2 && this.f45591f != IdentDecl.getDefaultInstance()) {
                    this.f45591f = IdentDecl.newBuilder((IdentDecl) this.f45591f).g0(identDecl).I();
                } else {
                    this.f45591f = identDecl;
                }
                R();
            } else {
                if (this.f45590e == 2) {
                    q2Var.e(identDecl);
                }
                this.f45593h.g(identDecl);
            }
            this.f45590e = 2;
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
            this.f45590e = 0;
            this.f45592g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45590e = 0;
            this.f45592g = "";
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* synthetic */ Decl(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Decl getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45705q;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Decl parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Decl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Decl parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Decl> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Decl)) {
            return super.equals(obj);
        }
        Decl decl = (Decl) obj;
        if (getName().equals(decl.getName()) && getDeclKindCase().equals(decl.getDeclKindCase())) {
            int i9 = this.declKindCase_;
            if (i9 != 2) {
                if (i9 == 3 && !getFunction().equals(decl.getFunction())) {
                    return false;
                }
            } else if (!getIdent().equals(decl.getIdent())) {
                return false;
            }
            return this.unknownFields.equals(decl.unknownFields);
        }
        return false;
    }

    public DeclKindCase getDeclKindCase() {
        return DeclKindCase.forNumber(this.declKindCase_);
    }

    public FunctionDecl getFunction() {
        if (this.declKindCase_ == 3) {
            return (FunctionDecl) this.declKind_;
        }
        return FunctionDecl.getDefaultInstance();
    }

    public d getFunctionOrBuilder() {
        if (this.declKindCase_ == 3) {
            return (FunctionDecl) this.declKind_;
        }
        return FunctionDecl.getDefaultInstance();
    }

    public IdentDecl getIdent() {
        if (this.declKindCase_ == 2) {
            return (IdentDecl) this.declKind_;
        }
        return IdentDecl.getDefaultInstance();
    }

    public e getIdentOrBuilder() {
        if (this.declKindCase_ == 2) {
            return (IdentDecl) this.declKind_;
        }
        return IdentDecl.getDefaultInstance();
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
    public e2<Decl> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.declKindCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (IdentDecl) this.declKind_);
        }
        if (this.declKindCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (FunctionDecl) this.declKind_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFunction() {
        return this.declKindCase_ == 3;
    }

    public boolean hasIdent() {
        return this.declKindCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        int i11 = this.declKindCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getIdent().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getFunction().hashCode();
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
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45706r.d(Decl.class, c.class);
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
        return new Decl();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.declKindCase_ == 2) {
            codedOutputStream.L0(2, (IdentDecl) this.declKind_);
        }
        if (this.declKindCase_ == 3) {
            codedOutputStream.L0(3, (FunctionDecl) this.declKind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Decl(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Decl decl) {
        return DEFAULT_INSTANCE.toBuilder().g0(decl);
    }

    public static Decl parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Decl(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.declKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Decl parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Decl) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Decl parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Decl getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Decl parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Decl parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Decl() {
        this.declKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static Decl parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Decl parseFrom(InputStream inputStream) throws IOException {
        return (Decl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Decl parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Decl) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Decl(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (L == 18) {
                                IdentDecl.b builder = this.declKindCase_ == 2 ? ((IdentDecl) this.declKind_).toBuilder() : null;
                                o1 B = pVar.B(IdentDecl.parser(), f0Var);
                                this.declKind_ = B;
                                if (builder != null) {
                                    builder.g0((IdentDecl) B);
                                    this.declKind_ = builder.I();
                                }
                                this.declKindCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                FunctionDecl.b builder2 = this.declKindCase_ == 3 ? ((FunctionDecl) this.declKind_).toBuilder() : null;
                                o1 B2 = pVar.B(FunctionDecl.parser(), f0Var);
                                this.declKind_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((FunctionDecl) B2);
                                    this.declKind_ = builder2.I();
                                }
                                this.declKindCase_ = 3;
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static Decl parseFrom(p pVar) throws IOException {
        return (Decl) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Decl parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Decl) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
