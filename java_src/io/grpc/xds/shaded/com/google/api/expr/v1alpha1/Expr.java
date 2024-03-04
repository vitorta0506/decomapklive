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
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Constant;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Expr extends GeneratedMessageV3 implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d {
    public static final int CALL_EXPR_FIELD_NUMBER = 6;
    public static final int COMPREHENSION_EXPR_FIELD_NUMBER = 9;
    public static final int CONST_EXPR_FIELD_NUMBER = 3;
    public static final int IDENT_EXPR_FIELD_NUMBER = 4;
    public static final int ID_FIELD_NUMBER = 2;
    public static final int LIST_EXPR_FIELD_NUMBER = 7;
    public static final int SELECT_EXPR_FIELD_NUMBER = 5;
    public static final int STRUCT_EXPR_FIELD_NUMBER = 8;
    private static final long serialVersionUID = 0;
    private int exprKindCase_;
    private Object exprKind_;
    private long id_;
    private byte memoizedIsInitialized;
    private static final Expr DEFAULT_INSTANCE = new Expr();
    private static final e2<Expr> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class Call extends GeneratedMessageV3 implements d {
        public static final int ARGS_FIELD_NUMBER = 3;
        public static final int FUNCTION_FIELD_NUMBER = 2;
        public static final int TARGET_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Expr> args_;
        private volatile Object function_;
        private byte memoizedIsInitialized;
        private Expr target_;
        private static final Call DEFAULT_INSTANCE = new Call();
        private static final e2<Call> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Call> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Call m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Call(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f45595e;

            /* renamed from: f  reason: collision with root package name */
            private Expr f45596f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45597g;

            /* renamed from: h  reason: collision with root package name */
            private Object f45598h;

            /* renamed from: i  reason: collision with root package name */
            private List<Expr> f45599i;

            /* renamed from: j  reason: collision with root package name */
            private l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45600j;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45595e & 1) == 0) {
                    this.f45599i = new ArrayList(this.f45599i);
                    this.f45595e |= 1;
                }
            }

            private l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> b0() {
                if (this.f45600j == null) {
                    this.f45600j = new l2<>(this.f45599i, (this.f45595e & 1) != 0, H(), O());
                    this.f45599i = null;
                }
                return this.f45600j;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    b0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45724j.d(Call.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Call build() {
                Call I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Call I() {
                Call call = new Call(this, (a) null);
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45597g;
                if (q2Var == null) {
                    call.target_ = this.f45596f;
                } else {
                    call.target_ = q2Var.b();
                }
                call.function_ = this.f45598h;
                l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> l2Var = this.f45600j;
                if (l2Var == null) {
                    if ((this.f45595e & 1) != 0) {
                        this.f45599i = Collections.unmodifiableList(this.f45599i);
                        this.f45595e &= -2;
                    }
                    call.args_ = this.f45599i;
                } else {
                    call.args_ = l2Var.e();
                }
                Q();
                return call;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: d0 */
            public Call getDefaultInstanceForType() {
                return Call.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Call.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Call.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Call r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Call) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Call r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Call) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Call.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Call$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45723i;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Call) {
                    return i0((Call) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Call call) {
                if (call == Call.getDefaultInstance()) {
                    return this;
                }
                if (call.hasTarget()) {
                    j0(call.getTarget());
                }
                if (!call.getFunction().isEmpty()) {
                    this.f45598h = call.function_;
                    R();
                }
                if (this.f45600j == null) {
                    if (!call.args_.isEmpty()) {
                        if (this.f45599i.isEmpty()) {
                            this.f45599i = call.args_;
                            this.f45595e &= -2;
                        } else {
                            a0();
                            this.f45599i.addAll(call.args_);
                        }
                        R();
                    }
                } else if (!call.args_.isEmpty()) {
                    if (this.f45600j.k()) {
                        this.f45600j.f();
                        this.f45600j = null;
                        this.f45599i = call.args_;
                        this.f45595e &= -2;
                        this.f45600j = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                    } else {
                        this.f45600j.b(call.args_);
                    }
                }
                z(((GeneratedMessageV3) call).unknownFields);
                R();
                return this;
            }

            public b j0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45597g;
                if (q2Var == null) {
                    Expr expr2 = this.f45596f;
                    if (expr2 != null) {
                        this.f45596f = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45596f = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
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
                this.f45598h = "";
                this.f45599i = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45598h = "";
                this.f45599i = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Call(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Call getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45723i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Call parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Call) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Call parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Call> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Call)) {
                return super.equals(obj);
            }
            Call call = (Call) obj;
            if (hasTarget() != call.hasTarget()) {
                return false;
            }
            return (!hasTarget() || getTarget().equals(call.getTarget())) && getFunction().equals(call.getFunction()) && getArgsList().equals(call.getArgsList()) && this.unknownFields.equals(call.unknownFields);
        }

        public Expr getArgs(int i9) {
            return this.args_.get(i9);
        }

        public int getArgsCount() {
            return this.args_.size();
        }

        public List<Expr> getArgsList() {
            return this.args_;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getArgsOrBuilder(int i9) {
            return this.args_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> getArgsOrBuilderList() {
            return this.args_;
        }

        public String getFunction() {
            Object obj = this.function_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.function_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getFunctionBytes() {
            Object obj = this.function_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.function_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Call> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.target_ != null ? CodedOutputStream.G(1, getTarget()) + 0 : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.function_)) {
                G += GeneratedMessageV3.computeStringSize(2, this.function_);
            }
            for (int i10 = 0; i10 < this.args_.size(); i10++) {
                G += CodedOutputStream.G(3, this.args_.get(i10));
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Expr getTarget() {
            Expr expr = this.target_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getTargetOrBuilder() {
            return getTarget();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasTarget() {
            return this.target_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasTarget()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getTarget().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 2) * 53) + getFunction().hashCode();
            if (getArgsCount() > 0) {
                hashCode2 = (((hashCode2 * 37) + 3) * 53) + getArgsList().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45724j.d(Call.class, b.class);
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
            return new Call();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.target_ != null) {
                codedOutputStream.L0(1, getTarget());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.function_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.function_);
            }
            for (int i9 = 0; i9 < this.args_.size(); i9++) {
                codedOutputStream.L0(3, this.args_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Call(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Call call) {
            return DEFAULT_INSTANCE.toBuilder().i0(call);
        }

        public static Call parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Call(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Call parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Call) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Call parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Call getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Call parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Call() {
            this.memoizedIsInitialized = (byte) -1;
            this.function_ = "";
            this.args_ = Collections.emptyList();
        }

        public static Call parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Call parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Call parseFrom(InputStream inputStream) throws IOException {
            return (Call) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Call(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Expr expr = this.target_;
                                c builder = expr != null ? expr.toBuilder() : null;
                                Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                                this.target_ = expr2;
                                if (builder != null) {
                                    builder.j0(expr2);
                                    this.target_ = builder.I();
                                }
                            } else if (L == 18) {
                                this.function_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.args_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.args_.add((Expr) pVar.B(Expr.parser(), f0Var));
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
                        this.args_ = Collections.unmodifiableList(this.args_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Call parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Call) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Call parseFrom(p pVar) throws IOException {
            return (Call) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Call parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Call) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Comprehension extends GeneratedMessageV3 implements e {
        public static final int ACCU_INIT_FIELD_NUMBER = 4;
        public static final int ACCU_VAR_FIELD_NUMBER = 3;
        public static final int ITER_RANGE_FIELD_NUMBER = 2;
        public static final int ITER_VAR_FIELD_NUMBER = 1;
        public static final int LOOP_CONDITION_FIELD_NUMBER = 5;
        public static final int LOOP_STEP_FIELD_NUMBER = 6;
        public static final int RESULT_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private Expr accuInit_;
        private volatile Object accuVar_;
        private Expr iterRange_;
        private volatile Object iterVar_;
        private Expr loopCondition_;
        private Expr loopStep_;
        private byte memoizedIsInitialized;
        private Expr result_;
        private static final Comprehension DEFAULT_INSTANCE = new Comprehension();
        private static final e2<Comprehension> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Comprehension> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Comprehension m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Comprehension(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f45601e;

            /* renamed from: f  reason: collision with root package name */
            private Expr f45602f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45603g;

            /* renamed from: h  reason: collision with root package name */
            private Object f45604h;

            /* renamed from: i  reason: collision with root package name */
            private Expr f45605i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45606j;

            /* renamed from: k  reason: collision with root package name */
            private Expr f45607k;

            /* renamed from: l  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45608l;

            /* renamed from: m  reason: collision with root package name */
            private Expr f45609m;

            /* renamed from: n  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45610n;

            /* renamed from: o  reason: collision with root package name */
            private Expr f45611o;

            /* renamed from: p  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45612p;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45732r.d(Comprehension.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Comprehension build() {
                Comprehension I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Comprehension I() {
                Comprehension comprehension = new Comprehension(this, (a) null);
                comprehension.iterVar_ = this.f45601e;
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45603g;
                if (q2Var == null) {
                    comprehension.iterRange_ = this.f45602f;
                } else {
                    comprehension.iterRange_ = q2Var.b();
                }
                comprehension.accuVar_ = this.f45604h;
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var2 = this.f45606j;
                if (q2Var2 == null) {
                    comprehension.accuInit_ = this.f45605i;
                } else {
                    comprehension.accuInit_ = q2Var2.b();
                }
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var3 = this.f45608l;
                if (q2Var3 == null) {
                    comprehension.loopCondition_ = this.f45607k;
                } else {
                    comprehension.loopCondition_ = q2Var3.b();
                }
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var4 = this.f45610n;
                if (q2Var4 == null) {
                    comprehension.loopStep_ = this.f45609m;
                } else {
                    comprehension.loopStep_ = q2Var4.b();
                }
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var5 = this.f45612p;
                if (q2Var5 == null) {
                    comprehension.result_ = this.f45611o;
                } else {
                    comprehension.result_ = q2Var5.b();
                }
                Q();
                return comprehension;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Comprehension getDefaultInstanceForType() {
                return Comprehension.getDefaultInstance();
            }

            public b d0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45606j;
                if (q2Var == null) {
                    Expr expr2 = this.f45605i;
                    if (expr2 != null) {
                        this.f45605i = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45605i = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
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
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Comprehension.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Comprehension.access$7600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Comprehension r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Comprehension) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Comprehension r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Comprehension) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Comprehension.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Comprehension$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Comprehension) {
                    return h0((Comprehension) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45731q;
            }

            public b h0(Comprehension comprehension) {
                if (comprehension == Comprehension.getDefaultInstance()) {
                    return this;
                }
                if (!comprehension.getIterVar().isEmpty()) {
                    this.f45601e = comprehension.iterVar_;
                    R();
                }
                if (comprehension.hasIterRange()) {
                    i0(comprehension.getIterRange());
                }
                if (!comprehension.getAccuVar().isEmpty()) {
                    this.f45604h = comprehension.accuVar_;
                    R();
                }
                if (comprehension.hasAccuInit()) {
                    d0(comprehension.getAccuInit());
                }
                if (comprehension.hasLoopCondition()) {
                    j0(comprehension.getLoopCondition());
                }
                if (comprehension.hasLoopStep()) {
                    k0(comprehension.getLoopStep());
                }
                if (comprehension.hasResult()) {
                    l0(comprehension.getResult());
                }
                z(((GeneratedMessageV3) comprehension).unknownFields);
                R();
                return this;
            }

            public b i0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45603g;
                if (q2Var == null) {
                    Expr expr2 = this.f45602f;
                    if (expr2 != null) {
                        this.f45602f = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45602f = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
                }
                return this;
            }

            public b j0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45608l;
                if (q2Var == null) {
                    Expr expr2 = this.f45607k;
                    if (expr2 != null) {
                        this.f45607k = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45607k = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
                }
                return this;
            }

            public b k0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45610n;
                if (q2Var == null) {
                    Expr expr2 = this.f45609m;
                    if (expr2 != null) {
                        this.f45609m = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45609m = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
                }
                return this;
            }

            public b l0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45612p;
                if (q2Var == null) {
                    Expr expr2 = this.f45611o;
                    if (expr2 != null) {
                        this.f45611o = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45611o = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45601e = "";
                this.f45604h = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45601e = "";
                this.f45604h = "";
                b0();
            }
        }

        /* synthetic */ Comprehension(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Comprehension getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45731q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Comprehension parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Comprehension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Comprehension> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Comprehension)) {
                return super.equals(obj);
            }
            Comprehension comprehension = (Comprehension) obj;
            if (getIterVar().equals(comprehension.getIterVar()) && hasIterRange() == comprehension.hasIterRange()) {
                if ((!hasIterRange() || getIterRange().equals(comprehension.getIterRange())) && getAccuVar().equals(comprehension.getAccuVar()) && hasAccuInit() == comprehension.hasAccuInit()) {
                    if ((!hasAccuInit() || getAccuInit().equals(comprehension.getAccuInit())) && hasLoopCondition() == comprehension.hasLoopCondition()) {
                        if ((!hasLoopCondition() || getLoopCondition().equals(comprehension.getLoopCondition())) && hasLoopStep() == comprehension.hasLoopStep()) {
                            if ((!hasLoopStep() || getLoopStep().equals(comprehension.getLoopStep())) && hasResult() == comprehension.hasResult()) {
                                return (!hasResult() || getResult().equals(comprehension.getResult())) && this.unknownFields.equals(comprehension.unknownFields);
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public Expr getAccuInit() {
            Expr expr = this.accuInit_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getAccuInitOrBuilder() {
            return getAccuInit();
        }

        public String getAccuVar() {
            Object obj = this.accuVar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.accuVar_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getAccuVarBytes() {
            Object obj = this.accuVar_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.accuVar_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Expr getIterRange() {
            Expr expr = this.iterRange_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getIterRangeOrBuilder() {
            return getIterRange();
        }

        public String getIterVar() {
            Object obj = this.iterVar_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.iterVar_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getIterVarBytes() {
            Object obj = this.iterVar_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.iterVar_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Expr getLoopCondition() {
            Expr expr = this.loopCondition_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getLoopConditionOrBuilder() {
            return getLoopCondition();
        }

        public Expr getLoopStep() {
            Expr expr = this.loopStep_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getLoopStepOrBuilder() {
            return getLoopStep();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Comprehension> getParserForType() {
            return PARSER;
        }

        public Expr getResult() {
            Expr expr = this.result_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getResultOrBuilder() {
            return getResult();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.iterVar_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.iterVar_);
            if (this.iterRange_ != null) {
                computeStringSize += CodedOutputStream.G(2, getIterRange());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.accuVar_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.accuVar_);
            }
            if (this.accuInit_ != null) {
                computeStringSize += CodedOutputStream.G(4, getAccuInit());
            }
            if (this.loopCondition_ != null) {
                computeStringSize += CodedOutputStream.G(5, getLoopCondition());
            }
            if (this.loopStep_ != null) {
                computeStringSize += CodedOutputStream.G(6, getLoopStep());
            }
            if (this.result_ != null) {
                computeStringSize += CodedOutputStream.G(7, getResult());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAccuInit() {
            return this.accuInit_ != null;
        }

        public boolean hasIterRange() {
            return this.iterRange_ != null;
        }

        public boolean hasLoopCondition() {
            return this.loopCondition_ != null;
        }

        public boolean hasLoopStep() {
            return this.loopStep_ != null;
        }

        public boolean hasResult() {
            return this.result_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIterVar().hashCode();
            if (hasIterRange()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getIterRange().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 3) * 53) + getAccuVar().hashCode();
            if (hasAccuInit()) {
                hashCode2 = (((hashCode2 * 37) + 4) * 53) + getAccuInit().hashCode();
            }
            if (hasLoopCondition()) {
                hashCode2 = (((hashCode2 * 37) + 5) * 53) + getLoopCondition().hashCode();
            }
            if (hasLoopStep()) {
                hashCode2 = (((hashCode2 * 37) + 6) * 53) + getLoopStep().hashCode();
            }
            if (hasResult()) {
                hashCode2 = (((hashCode2 * 37) + 7) * 53) + getResult().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45732r.d(Comprehension.class, b.class);
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
            return new Comprehension();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.iterVar_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.iterVar_);
            }
            if (this.iterRange_ != null) {
                codedOutputStream.L0(2, getIterRange());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.accuVar_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.accuVar_);
            }
            if (this.accuInit_ != null) {
                codedOutputStream.L0(4, getAccuInit());
            }
            if (this.loopCondition_ != null) {
                codedOutputStream.L0(5, getLoopCondition());
            }
            if (this.loopStep_ != null) {
                codedOutputStream.L0(6, getLoopStep());
            }
            if (this.result_ != null) {
                codedOutputStream.L0(7, getResult());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Comprehension(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Comprehension comprehension) {
            return DEFAULT_INSTANCE.toBuilder().h0(comprehension);
        }

        public static Comprehension parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Comprehension(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Comprehension parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Comprehension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Comprehension getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Comprehension parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Comprehension() {
            this.memoizedIsInitialized = (byte) -1;
            this.iterVar_ = "";
            this.accuVar_ = "";
        }

        public static Comprehension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Comprehension parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Comprehension parseFrom(InputStream inputStream) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Comprehension(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            c builder;
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
                                    Expr expr = this.iterRange_;
                                    builder = expr != null ? expr.toBuilder() : null;
                                    Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.iterRange_ = expr2;
                                    if (builder != null) {
                                        builder.j0(expr2);
                                        this.iterRange_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    this.accuVar_ = pVar.K();
                                } else if (L == 34) {
                                    Expr expr3 = this.accuInit_;
                                    builder = expr3 != null ? expr3.toBuilder() : null;
                                    Expr expr4 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.accuInit_ = expr4;
                                    if (builder != null) {
                                        builder.j0(expr4);
                                        this.accuInit_ = builder.I();
                                    }
                                } else if (L == 42) {
                                    Expr expr5 = this.loopCondition_;
                                    builder = expr5 != null ? expr5.toBuilder() : null;
                                    Expr expr6 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.loopCondition_ = expr6;
                                    if (builder != null) {
                                        builder.j0(expr6);
                                        this.loopCondition_ = builder.I();
                                    }
                                } else if (L == 50) {
                                    Expr expr7 = this.loopStep_;
                                    builder = expr7 != null ? expr7.toBuilder() : null;
                                    Expr expr8 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.loopStep_ = expr8;
                                    if (builder != null) {
                                        builder.j0(expr8);
                                        this.loopStep_ = builder.I();
                                    }
                                } else if (L != 58) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Expr expr9 = this.result_;
                                    builder = expr9 != null ? expr9.toBuilder() : null;
                                    Expr expr10 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.result_ = expr10;
                                    if (builder != null) {
                                        builder.j0(expr10);
                                        this.result_ = builder.I();
                                    }
                                }
                            } else {
                                this.iterVar_ = pVar.K();
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

        public static Comprehension parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Comprehension parseFrom(p pVar) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Comprehension parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Comprehension) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class CreateList extends GeneratedMessageV3 implements f {
        public static final int ELEMENTS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Expr> elements_;
        private byte memoizedIsInitialized;
        private static final CreateList DEFAULT_INSTANCE = new CreateList();
        private static final e2<CreateList> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<CreateList> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CreateList m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CreateList(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f45613e;

            /* renamed from: f  reason: collision with root package name */
            private List<Expr> f45614f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45615g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45613e & 1) == 0) {
                    this.f45614f = new ArrayList(this.f45614f);
                    this.f45613e |= 1;
                }
            }

            private l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> d0() {
                if (this.f45615g == null) {
                    this.f45615g = new l2<>(this.f45614f, (this.f45613e & 1) != 0, H(), O());
                    this.f45614f = null;
                }
                return this.f45615g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45726l.d(CreateList.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CreateList build() {
                CreateList I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CreateList I() {
                CreateList createList = new CreateList(this, (a) null);
                int i9 = this.f45613e;
                l2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> l2Var = this.f45615g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f45614f = Collections.unmodifiableList(this.f45614f);
                        this.f45613e &= -2;
                    }
                    createList.elements_ = this.f45614f;
                } else {
                    createList.elements_ = l2Var.e();
                }
                Q();
                return createList;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public CreateList getDefaultInstanceForType() {
                return CreateList.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateList.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateList.access$3900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateList r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateList) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateList r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateList) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateList.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateList$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45725k;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CreateList) {
                    return i0((CreateList) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(CreateList createList) {
                if (createList == CreateList.getDefaultInstance()) {
                    return this;
                }
                if (this.f45615g == null) {
                    if (!createList.elements_.isEmpty()) {
                        if (this.f45614f.isEmpty()) {
                            this.f45614f = createList.elements_;
                            this.f45613e &= -2;
                        } else {
                            a0();
                            this.f45614f.addAll(createList.elements_);
                        }
                        R();
                    }
                } else if (!createList.elements_.isEmpty()) {
                    if (this.f45615g.k()) {
                        this.f45615g.f();
                        this.f45615g = null;
                        this.f45614f = createList.elements_;
                        this.f45613e &= -2;
                        this.f45615g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45615g.b(createList.elements_);
                    }
                }
                z(((GeneratedMessageV3) createList).unknownFields);
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
                this.f45614f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45614f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ CreateList(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CreateList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45725k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CreateList parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CreateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CreateList parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CreateList> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CreateList)) {
                return super.equals(obj);
            }
            CreateList createList = (CreateList) obj;
            return getElementsList().equals(createList.getElementsList()) && this.unknownFields.equals(createList.unknownFields);
        }

        public Expr getElements(int i9) {
            return this.elements_.get(i9);
        }

        public int getElementsCount() {
            return this.elements_.size();
        }

        public List<Expr> getElementsList() {
            return this.elements_;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getElementsOrBuilder(int i9) {
            return this.elements_.get(i9);
        }

        public List<? extends io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> getElementsOrBuilderList() {
            return this.elements_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CreateList> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.elements_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.elements_.get(i11));
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
            if (getElementsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getElementsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45726l.d(CreateList.class, b.class);
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
            return new CreateList();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.elements_.size(); i9++) {
                codedOutputStream.L0(1, this.elements_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CreateList(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CreateList createList) {
            return DEFAULT_INSTANCE.toBuilder().i0(createList);
        }

        public static CreateList parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CreateList(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CreateList parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CreateList) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CreateList parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CreateList getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static CreateList parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CreateList() {
            this.memoizedIsInitialized = (byte) -1;
            this.elements_ = Collections.emptyList();
        }

        public static CreateList parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static CreateList parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CreateList parseFrom(InputStream inputStream) throws IOException {
            return (CreateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CreateList(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.elements_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.elements_.add((Expr) pVar.B(Expr.parser(), f0Var));
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
                        this.elements_ = Collections.unmodifiableList(this.elements_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CreateList parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CreateList) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CreateList parseFrom(p pVar) throws IOException {
            return (CreateList) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CreateList parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CreateList) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class CreateStruct extends GeneratedMessageV3 implements g {
        public static final int ENTRIES_FIELD_NUMBER = 2;
        public static final int MESSAGE_NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Entry> entries_;
        private byte memoizedIsInitialized;
        private volatile Object messageName_;
        private static final CreateStruct DEFAULT_INSTANCE = new CreateStruct();
        private static final e2<CreateStruct> PARSER = new a();

        /* loaded from: classes5.dex */
        public static final class Entry extends GeneratedMessageV3 implements c {
            public static final int FIELD_KEY_FIELD_NUMBER = 2;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int MAP_KEY_FIELD_NUMBER = 3;
            public static final int VALUE_FIELD_NUMBER = 4;
            private static final long serialVersionUID = 0;
            private long id_;
            private int keyKindCase_;
            private Object keyKind_;
            private byte memoizedIsInitialized;
            private Expr value_;
            private static final Entry DEFAULT_INSTANCE = new Entry();
            private static final e2<Entry> PARSER = new a();

            /* loaded from: classes5.dex */
            public enum KeyKindCase implements u0.c {
                FIELD_KEY(2),
                MAP_KEY(3),
                KEYKIND_NOT_SET(0);
                
                private final int value;

                KeyKindCase(int i9) {
                    this.value = i9;
                }

                public static KeyKindCase forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                return null;
                            }
                            return MAP_KEY;
                        }
                        return FIELD_KEY;
                    }
                    return KEYKIND_NOT_SET;
                }

                @Override // com.google.protobuf.u0.c
                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static KeyKindCase valueOf(int i9) {
                    return forNumber(i9);
                }
            }

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<Entry> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Entry m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Entry(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f45616e;

                /* renamed from: f  reason: collision with root package name */
                private Object f45617f;

                /* renamed from: g  reason: collision with root package name */
                private long f45618g;

                /* renamed from: h  reason: collision with root package name */
                private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45619h;

                /* renamed from: i  reason: collision with root package name */
                private Expr f45620i;

                /* renamed from: j  reason: collision with root package name */
                private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45621j;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45730p.d(Entry.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Entry build() {
                    Entry I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Entry I() {
                    Entry entry = new Entry(this, (a) null);
                    entry.id_ = this.f45618g;
                    if (this.f45616e == 2) {
                        entry.keyKind_ = this.f45617f;
                    }
                    if (this.f45616e == 3) {
                        q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45619h;
                        if (q2Var == null) {
                            entry.keyKind_ = this.f45617f;
                        } else {
                            entry.keyKind_ = q2Var.b();
                        }
                    }
                    q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var2 = this.f45621j;
                    if (q2Var2 == null) {
                        entry.value_ = this.f45620i;
                    } else {
                        entry.value_ = q2Var2.b();
                    }
                    entry.keyKindCase_ = this.f45616e;
                    Q();
                    return entry;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Entry getDefaultInstanceForType() {
                    return Entry.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.Entry.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.Entry.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct$Entry r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.Entry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct$Entry r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.Entry) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.Entry.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct$Entry$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Entry) {
                        return g0((Entry) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(Entry entry) {
                    if (entry == Entry.getDefaultInstance()) {
                        return this;
                    }
                    if (entry.getId() != 0) {
                        l0(entry.getId());
                    }
                    if (entry.hasValue()) {
                        j0(entry.getValue());
                    }
                    int i9 = b.f45631a[entry.getKeyKindCase().ordinal()];
                    if (i9 == 1) {
                        this.f45616e = 2;
                        this.f45617f = entry.keyKind_;
                        R();
                    } else if (i9 == 2) {
                        h0(entry.getMapKey());
                    }
                    z(((GeneratedMessageV3) entry).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45729o;
                }

                public b h0(Expr expr) {
                    q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45619h;
                    if (q2Var == null) {
                        if (this.f45616e == 3 && this.f45617f != Expr.getDefaultInstance()) {
                            this.f45617f = Expr.newBuilder((Expr) this.f45617f).j0(expr).I();
                        } else {
                            this.f45617f = expr;
                        }
                        R();
                    } else {
                        if (this.f45616e == 3) {
                            q2Var.e(expr);
                        }
                        this.f45619h.g(expr);
                    }
                    this.f45616e = 3;
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: i0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                public b j0(Expr expr) {
                    q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45621j;
                    if (q2Var == null) {
                        Expr expr2 = this.f45620i;
                        if (expr2 != null) {
                            this.f45620i = Expr.newBuilder(expr2).j0(expr).I();
                        } else {
                            this.f45620i = expr;
                        }
                        R();
                    } else {
                        q2Var.e(expr);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: k0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                public b l0(long j10) {
                    this.f45618g = j10;
                    R();
                    return this;
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
                    this.f45616e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f45616e = 0;
                    b0();
                }
            }

            /* synthetic */ Entry(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Entry getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45729o;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Entry parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Entry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Entry> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Entry)) {
                    return super.equals(obj);
                }
                Entry entry = (Entry) obj;
                if (getId() == entry.getId() && hasValue() == entry.hasValue()) {
                    if ((!hasValue() || getValue().equals(entry.getValue())) && getKeyKindCase().equals(entry.getKeyKindCase())) {
                        int i9 = this.keyKindCase_;
                        if (i9 != 2) {
                            if (i9 == 3 && !getMapKey().equals(entry.getMapKey())) {
                                return false;
                            }
                        } else if (!getFieldKey().equals(entry.getFieldKey())) {
                            return false;
                        }
                        return this.unknownFields.equals(entry.unknownFields);
                    }
                    return false;
                }
                return false;
            }

            public String getFieldKey() {
                String str = this.keyKindCase_ == 2 ? this.keyKind_ : "";
                if (str instanceof String) {
                    return (String) str;
                }
                String stringUtf8 = ((ByteString) str).toStringUtf8();
                if (this.keyKindCase_ == 2) {
                    this.keyKind_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getFieldKeyBytes() {
                String str = this.keyKindCase_ == 2 ? this.keyKind_ : "";
                if (str instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                    if (this.keyKindCase_ == 2) {
                        this.keyKind_ = copyFromUtf8;
                    }
                    return copyFromUtf8;
                }
                return (ByteString) str;
            }

            public long getId() {
                return this.id_;
            }

            public KeyKindCase getKeyKindCase() {
                return KeyKindCase.forNumber(this.keyKindCase_);
            }

            public Expr getMapKey() {
                if (this.keyKindCase_ == 3) {
                    return (Expr) this.keyKind_;
                }
                return Expr.getDefaultInstance();
            }

            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getMapKeyOrBuilder() {
                if (this.keyKindCase_ == 3) {
                    return (Expr) this.keyKind_;
                }
                return Expr.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Entry> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                long j10 = this.id_;
                int z10 = j10 != 0 ? 0 + CodedOutputStream.z(1, j10) : 0;
                if (this.keyKindCase_ == 2) {
                    z10 += GeneratedMessageV3.computeStringSize(2, this.keyKind_);
                }
                if (this.keyKindCase_ == 3) {
                    z10 += CodedOutputStream.G(3, (Expr) this.keyKind_);
                }
                if (this.value_ != null) {
                    z10 += CodedOutputStream.G(4, getValue());
                }
                int serializedSize = z10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public Expr getValue() {
                Expr expr = this.value_;
                return expr == null ? Expr.getDefaultInstance() : expr;
            }

            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getValueOrBuilder() {
                return getValue();
            }

            public boolean hasFieldKey() {
                return this.keyKindCase_ == 2;
            }

            public boolean hasMapKey() {
                return this.keyKindCase_ == 3;
            }

            public boolean hasValue() {
                return this.value_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9;
                int hashCode;
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getId());
                if (hasValue()) {
                    hashCode2 = (((hashCode2 * 37) + 4) * 53) + getValue().hashCode();
                }
                int i11 = this.keyKindCase_;
                if (i11 == 2) {
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getFieldKey().hashCode();
                } else {
                    if (i11 == 3) {
                        i9 = ((hashCode2 * 37) + 3) * 53;
                        hashCode = getMapKey().hashCode();
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
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45730p.d(Entry.class, b.class);
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
                return new Entry();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                long j10 = this.id_;
                if (j10 != 0) {
                    codedOutputStream.J0(1, j10);
                }
                if (this.keyKindCase_ == 2) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.keyKind_);
                }
                if (this.keyKindCase_ == 3) {
                    codedOutputStream.L0(3, (Expr) this.keyKind_);
                }
                if (this.value_ != null) {
                    codedOutputStream.L0(4, getValue());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Entry(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Entry entry) {
                return DEFAULT_INSTANCE.toBuilder().g0(entry);
            }

            public static Entry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Entry(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.keyKindCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Entry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Entry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Entry getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static Entry parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static Entry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private Entry() {
                this.keyKindCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Entry parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Entry parseFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Entry(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                c builder;
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.id_ = pVar.A();
                                } else if (L != 18) {
                                    if (L == 26) {
                                        builder = this.keyKindCase_ == 3 ? ((Expr) this.keyKind_).toBuilder() : null;
                                        o1 B = pVar.B(Expr.parser(), f0Var);
                                        this.keyKind_ = B;
                                        if (builder != null) {
                                            builder.j0((Expr) B);
                                            this.keyKind_ = builder.I();
                                        }
                                        this.keyKindCase_ = 3;
                                    } else if (L != 34) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        Expr expr = this.value_;
                                        builder = expr != null ? expr.toBuilder() : null;
                                        Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                                        this.value_ = expr2;
                                        if (builder != null) {
                                            builder.j0(expr2);
                                            this.value_ = builder.I();
                                        }
                                    }
                                } else {
                                    String K = pVar.K();
                                    this.keyKindCase_ = 2;
                                    this.keyKind_ = K;
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

            public static Entry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Entry parseFrom(p pVar) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Entry parseFrom(p pVar, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<CreateStruct> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CreateStruct m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CreateStruct(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f45622e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45623f;

            /* renamed from: g  reason: collision with root package name */
            private List<Entry> f45624g;

            /* renamed from: h  reason: collision with root package name */
            private l2<Entry, Entry.b, c> f45625h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f45622e & 1) == 0) {
                    this.f45624g = new ArrayList(this.f45624g);
                    this.f45622e |= 1;
                }
            }

            private l2<Entry, Entry.b, c> d0() {
                if (this.f45625h == null) {
                    this.f45625h = new l2<>(this.f45624g, (this.f45622e & 1) != 0, H(), O());
                    this.f45624g = null;
                }
                return this.f45625h;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45728n.d(CreateStruct.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CreateStruct build() {
                CreateStruct I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CreateStruct I() {
                CreateStruct createStruct = new CreateStruct(this, (a) null);
                createStruct.messageName_ = this.f45623f;
                l2<Entry, Entry.b, c> l2Var = this.f45625h;
                if (l2Var == null) {
                    if ((this.f45622e & 1) != 0) {
                        this.f45624g = Collections.unmodifiableList(this.f45624g);
                        this.f45622e &= -2;
                    }
                    createStruct.entries_ = this.f45624g;
                } else {
                    createStruct.entries_ = l2Var.e();
                }
                Q();
                return createStruct;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public CreateStruct getDefaultInstanceForType() {
                return CreateStruct.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.access$6100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.CreateStruct.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$CreateStruct$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45727m;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CreateStruct) {
                    return i0((CreateStruct) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(CreateStruct createStruct) {
                if (createStruct == CreateStruct.getDefaultInstance()) {
                    return this;
                }
                if (!createStruct.getMessageName().isEmpty()) {
                    this.f45623f = createStruct.messageName_;
                    R();
                }
                if (this.f45625h == null) {
                    if (!createStruct.entries_.isEmpty()) {
                        if (this.f45624g.isEmpty()) {
                            this.f45624g = createStruct.entries_;
                            this.f45622e &= -2;
                        } else {
                            a0();
                            this.f45624g.addAll(createStruct.entries_);
                        }
                        R();
                    }
                } else if (!createStruct.entries_.isEmpty()) {
                    if (this.f45625h.k()) {
                        this.f45625h.f();
                        this.f45625h = null;
                        this.f45624g = createStruct.entries_;
                        this.f45622e &= -2;
                        this.f45625h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f45625h.b(createStruct.entries_);
                    }
                }
                z(((GeneratedMessageV3) createStruct).unknownFields);
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
                this.f45623f = "";
                this.f45624g = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45623f = "";
                this.f45624g = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ CreateStruct(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static CreateStruct getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45727m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CreateStruct parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CreateStruct parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CreateStruct> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CreateStruct)) {
                return super.equals(obj);
            }
            CreateStruct createStruct = (CreateStruct) obj;
            return getMessageName().equals(createStruct.getMessageName()) && getEntriesList().equals(createStruct.getEntriesList()) && this.unknownFields.equals(createStruct.unknownFields);
        }

        public Entry getEntries(int i9) {
            return this.entries_.get(i9);
        }

        public int getEntriesCount() {
            return this.entries_.size();
        }

        public List<Entry> getEntriesList() {
            return this.entries_;
        }

        public c getEntriesOrBuilder(int i9) {
            return this.entries_.get(i9);
        }

        public List<? extends c> getEntriesOrBuilderList() {
            return this.entries_;
        }

        public String getMessageName() {
            Object obj = this.messageName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.messageName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getMessageNameBytes() {
            Object obj = this.messageName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.messageName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CreateStruct> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.messageName_) ? GeneratedMessageV3.computeStringSize(1, this.messageName_) + 0 : 0;
            for (int i10 = 0; i10 < this.entries_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(2, this.entries_.get(i10));
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMessageName().hashCode();
            if (getEntriesCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getEntriesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45728n.d(CreateStruct.class, b.class);
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
            return new CreateStruct();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.messageName_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.messageName_);
            }
            for (int i9 = 0; i9 < this.entries_.size(); i9++) {
                codedOutputStream.L0(2, this.entries_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ CreateStruct(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(CreateStruct createStruct) {
            return DEFAULT_INSTANCE.toBuilder().i0(createStruct);
        }

        public static CreateStruct parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CreateStruct(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CreateStruct parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CreateStruct parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CreateStruct getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static CreateStruct parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CreateStruct() {
            this.memoizedIsInitialized = (byte) -1;
            this.messageName_ = "";
            this.entries_ = Collections.emptyList();
        }

        public static CreateStruct parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static CreateStruct parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CreateStruct parseFrom(InputStream inputStream) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private CreateStruct(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.messageName_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.entries_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.entries_.add((Entry) pVar.B(Entry.parser(), f0Var));
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
                        this.entries_ = Collections.unmodifiableList(this.entries_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CreateStruct parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CreateStruct parseFrom(p pVar) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CreateStruct parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CreateStruct) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum ExprKindCase implements u0.c {
        CONST_EXPR(3),
        IDENT_EXPR(4),
        SELECT_EXPR(5),
        CALL_EXPR(6),
        LIST_EXPR(7),
        STRUCT_EXPR(8),
        COMPREHENSION_EXPR(9),
        EXPRKIND_NOT_SET(0);
        
        private final int value;

        ExprKindCase(int i9) {
            this.value = i9;
        }

        public static ExprKindCase forNumber(int i9) {
            if (i9 != 0) {
                switch (i9) {
                    case 3:
                        return CONST_EXPR;
                    case 4:
                        return IDENT_EXPR;
                    case 5:
                        return SELECT_EXPR;
                    case 6:
                        return CALL_EXPR;
                    case 7:
                        return LIST_EXPR;
                    case 8:
                        return STRUCT_EXPR;
                    case 9:
                        return COMPREHENSION_EXPR;
                    default:
                        return null;
                }
            }
            return EXPRKIND_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ExprKindCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Ident extends GeneratedMessageV3 implements h {
        public static final int NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final Ident DEFAULT_INSTANCE = new Ident();
        private static final e2<Ident> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Ident> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Ident m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Ident(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private Object f45626e;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45720f.d(Ident.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Ident build() {
                Ident I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Ident I() {
                Ident ident = new Ident(this, (a) null);
                ident.name_ = this.f45626e;
                Q();
                return ident;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Ident getDefaultInstanceForType() {
                return Ident.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Ident.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Ident.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Ident r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Ident) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Ident r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Ident) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Ident.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Ident$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Ident) {
                    return g0((Ident) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Ident ident) {
                if (ident == Ident.getDefaultInstance()) {
                    return this;
                }
                if (!ident.getName().isEmpty()) {
                    this.f45626e = ident.name_;
                    R();
                }
                z(((GeneratedMessageV3) ident).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45719e;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45626e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45626e = "";
                b0();
            }
        }

        /* synthetic */ Ident(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Ident getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45719e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Ident parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Ident) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Ident parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Ident> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Ident)) {
                return super.equals(obj);
            }
            Ident ident = (Ident) obj;
            return getName().equals(ident.getName()) && this.unknownFields.equals(ident.unknownFields);
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
        public e2<Ident> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_)) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
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
            int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45720f.d(Ident.class, b.class);
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
            return new Ident();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Ident(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Ident ident) {
            return DEFAULT_INSTANCE.toBuilder().g0(ident);
        }

        public static Ident parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Ident(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Ident parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Ident) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Ident parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Ident getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Ident parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Ident() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static Ident parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Ident parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Ident parseFrom(InputStream inputStream) throws IOException {
            return (Ident) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Ident(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
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

        public static Ident parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Ident) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Ident parseFrom(p pVar) throws IOException {
            return (Ident) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Ident parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Ident) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Select extends GeneratedMessageV3 implements i {
        public static final int FIELD_FIELD_NUMBER = 2;
        public static final int OPERAND_FIELD_NUMBER = 1;
        public static final int TEST_ONLY_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object field_;
        private byte memoizedIsInitialized;
        private Expr operand_;
        private boolean testOnly_;
        private static final Select DEFAULT_INSTANCE = new Select();
        private static final e2<Select> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Select> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Select m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Select(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private Expr f45627e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45628f;

            /* renamed from: g  reason: collision with root package name */
            private Object f45629g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f45630h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45722h.d(Select.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Select build() {
                Select I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Select I() {
                Select select = new Select(this, (a) null);
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45628f;
                if (q2Var == null) {
                    select.operand_ = this.f45627e;
                } else {
                    select.operand_ = q2Var.b();
                }
                select.field_ = this.f45629g;
                select.testOnly_ = this.f45630h;
                Q();
                return select;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Select getDefaultInstanceForType() {
                return Select.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Select.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Select.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Select r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Select) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Select r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Select) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.Select.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$Select$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Select) {
                    return g0((Select) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Select select) {
                if (select == Select.getDefaultInstance()) {
                    return this;
                }
                if (select.hasOperand()) {
                    h0(select.getOperand());
                }
                if (!select.getField().isEmpty()) {
                    this.f45629g = select.field_;
                    R();
                }
                if (select.getTestOnly()) {
                    k0(select.getTestOnly());
                }
                z(((GeneratedMessageV3) select).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45721g;
            }

            public b h0(Expr expr) {
                q2<Expr, c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45628f;
                if (q2Var == null) {
                    Expr expr2 = this.f45627e;
                    if (expr2 != null) {
                        this.f45627e = Expr.newBuilder(expr2).j0(expr).I();
                    } else {
                        this.f45627e = expr;
                    }
                    R();
                } else {
                    q2Var.e(expr);
                }
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

            public b k0(boolean z10) {
                this.f45630h = z10;
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
                this.f45629g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45629g = "";
                b0();
            }
        }

        /* synthetic */ Select(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Select getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45721g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Select parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Select) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Select parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Select> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Select)) {
                return super.equals(obj);
            }
            Select select = (Select) obj;
            if (hasOperand() != select.hasOperand()) {
                return false;
            }
            return (!hasOperand() || getOperand().equals(select.getOperand())) && getField().equals(select.getField()) && getTestOnly() == select.getTestOnly() && this.unknownFields.equals(select.unknownFields);
        }

        public String getField() {
            Object obj = this.field_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.field_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getFieldBytes() {
            Object obj = this.field_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.field_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Expr getOperand() {
            Expr expr = this.operand_;
            return expr == null ? Expr.getDefaultInstance() : expr;
        }

        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getOperandOrBuilder() {
            return getOperand();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Select> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.operand_ != null ? 0 + CodedOutputStream.G(1, getOperand()) : 0;
            if (!GeneratedMessageV3.isStringEmpty(this.field_)) {
                G += GeneratedMessageV3.computeStringSize(2, this.field_);
            }
            boolean z10 = this.testOnly_;
            if (z10) {
                G += CodedOutputStream.e(3, z10);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public boolean getTestOnly() {
            return this.testOnly_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasOperand() {
            return this.operand_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasOperand()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getOperand().hashCode();
            }
            int hashCode2 = (((((((((hashCode * 37) + 2) * 53) + getField().hashCode()) * 37) + 3) * 53) + u0.d(getTestOnly())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45722h.d(Select.class, b.class);
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
            return new Select();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.operand_ != null) {
                codedOutputStream.L0(1, getOperand());
            }
            if (!GeneratedMessageV3.isStringEmpty(this.field_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.field_);
            }
            boolean z10 = this.testOnly_;
            if (z10) {
                codedOutputStream.n0(3, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Select(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Select select) {
            return DEFAULT_INSTANCE.toBuilder().g0(select);
        }

        public static Select parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Select(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Select parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Select) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Select parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Select getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Select parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Select() {
            this.memoizedIsInitialized = (byte) -1;
            this.field_ = "";
        }

        public static Select parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Select parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Select parseFrom(InputStream inputStream) throws IOException {
            return (Select) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Select(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Expr expr = this.operand_;
                                c builder = expr != null ? expr.toBuilder() : null;
                                Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                                this.operand_ = expr2;
                                if (builder != null) {
                                    builder.j0(expr2);
                                    this.operand_ = builder.I();
                                }
                            } else if (L == 18) {
                                this.field_ = pVar.K();
                            } else if (L != 24) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.testOnly_ = pVar.r();
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

        public static Select parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Select) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Select parseFrom(p pVar) throws IOException {
            return (Select) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Select parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Select) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Expr> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Expr m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Expr(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45631a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f45632b;

        static {
            int[] iArr = new int[ExprKindCase.values().length];
            f45632b = iArr;
            try {
                iArr[ExprKindCase.CONST_EXPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45632b[ExprKindCase.IDENT_EXPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45632b[ExprKindCase.SELECT_EXPR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45632b[ExprKindCase.CALL_EXPR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45632b[ExprKindCase.LIST_EXPR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45632b[ExprKindCase.STRUCT_EXPR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f45632b[ExprKindCase.COMPREHENSION_EXPR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f45632b[ExprKindCase.EXPRKIND_NOT_SET.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[CreateStruct.Entry.KeyKindCase.values().length];
            f45631a = iArr2;
            try {
                iArr2[CreateStruct.Entry.KeyKindCase.FIELD_KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f45631a[CreateStruct.Entry.KeyKindCase.MAP_KEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f45631a[CreateStruct.Entry.KeyKindCase.KEYKIND_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d {

        /* renamed from: e  reason: collision with root package name */
        private int f45633e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45634f;

        /* renamed from: g  reason: collision with root package name */
        private long f45635g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> f45636h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Ident, Ident.b, h> f45637i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Select, Select.b, i> f45638j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Call, Call.b, d> f45639k;

        /* renamed from: l  reason: collision with root package name */
        private q2<CreateList, CreateList.b, f> f45640l;

        /* renamed from: m  reason: collision with root package name */
        private q2<CreateStruct, CreateStruct.b, g> f45641m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Comprehension, Comprehension.b, e> f45642n;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45718d.d(Expr.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Expr build() {
            Expr I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Expr I() {
            Expr expr = new Expr(this, (a) null);
            expr.id_ = this.f45635g;
            if (this.f45633e == 3) {
                q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> q2Var = this.f45636h;
                if (q2Var == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var.b();
                }
            }
            if (this.f45633e == 4) {
                q2<Ident, Ident.b, h> q2Var2 = this.f45637i;
                if (q2Var2 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var2.b();
                }
            }
            if (this.f45633e == 5) {
                q2<Select, Select.b, i> q2Var3 = this.f45638j;
                if (q2Var3 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var3.b();
                }
            }
            if (this.f45633e == 6) {
                q2<Call, Call.b, d> q2Var4 = this.f45639k;
                if (q2Var4 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var4.b();
                }
            }
            if (this.f45633e == 7) {
                q2<CreateList, CreateList.b, f> q2Var5 = this.f45640l;
                if (q2Var5 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var5.b();
                }
            }
            if (this.f45633e == 8) {
                q2<CreateStruct, CreateStruct.b, g> q2Var6 = this.f45641m;
                if (q2Var6 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var6.b();
                }
            }
            if (this.f45633e == 9) {
                q2<Comprehension, Comprehension.b, e> q2Var7 = this.f45642n;
                if (q2Var7 == null) {
                    expr.exprKind_ = this.f45634f;
                } else {
                    expr.exprKind_ = q2Var7.b();
                }
            }
            expr.exprKindCase_ = this.f45633e;
            Q();
            return expr;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Expr getDefaultInstanceForType() {
            return Expr.getDefaultInstance();
        }

        public c d0(Call call) {
            q2<Call, Call.b, d> q2Var = this.f45639k;
            if (q2Var == null) {
                if (this.f45633e == 6 && this.f45634f != Call.getDefaultInstance()) {
                    this.f45634f = Call.newBuilder((Call) this.f45634f).i0(call).I();
                } else {
                    this.f45634f = call;
                }
                R();
            } else {
                if (this.f45633e == 6) {
                    q2Var.e(call);
                }
                this.f45639k.g(call);
            }
            this.f45633e = 6;
            return this;
        }

        public c e0(Comprehension comprehension) {
            q2<Comprehension, Comprehension.b, e> q2Var = this.f45642n;
            if (q2Var == null) {
                if (this.f45633e == 9 && this.f45634f != Comprehension.getDefaultInstance()) {
                    this.f45634f = Comprehension.newBuilder((Comprehension) this.f45634f).h0(comprehension).I();
                } else {
                    this.f45634f = comprehension;
                }
                R();
            } else {
                if (this.f45633e == 9) {
                    q2Var.e(comprehension);
                }
                this.f45642n.g(comprehension);
            }
            this.f45633e = 9;
            return this;
        }

        public c g0(Constant constant) {
            q2<Constant, Constant.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b> q2Var = this.f45636h;
            if (q2Var == null) {
                if (this.f45633e == 3 && this.f45634f != Constant.getDefaultInstance()) {
                    this.f45634f = Constant.newBuilder((Constant) this.f45634f).h0(constant).I();
                } else {
                    this.f45634f = constant;
                }
                R();
            } else {
                if (this.f45633e == 3) {
                    q2Var.e(constant);
                }
                this.f45636h.g(constant);
            }
            this.f45633e = 3;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45717c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.access$8800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Expr) {
                return j0((Expr) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(Expr expr) {
            if (expr == Expr.getDefaultInstance()) {
                return this;
            }
            if (expr.getId() != 0) {
                r0(expr.getId());
            }
            switch (b.f45632b[expr.getExprKindCase().ordinal()]) {
                case 1:
                    g0(expr.getConstExpr());
                    break;
                case 2:
                    k0(expr.getIdentExpr());
                    break;
                case 3:
                    m0(expr.getSelectExpr());
                    break;
                case 4:
                    d0(expr.getCallExpr());
                    break;
                case 5:
                    l0(expr.getListExpr());
                    break;
                case 6:
                    n0(expr.getStructExpr());
                    break;
                case 7:
                    e0(expr.getComprehensionExpr());
                    break;
            }
            z(((GeneratedMessageV3) expr).unknownFields);
            R();
            return this;
        }

        public c k0(Ident ident) {
            q2<Ident, Ident.b, h> q2Var = this.f45637i;
            if (q2Var == null) {
                if (this.f45633e == 4 && this.f45634f != Ident.getDefaultInstance()) {
                    this.f45634f = Ident.newBuilder((Ident) this.f45634f).g0(ident).I();
                } else {
                    this.f45634f = ident;
                }
                R();
            } else {
                if (this.f45633e == 4) {
                    q2Var.e(ident);
                }
                this.f45637i.g(ident);
            }
            this.f45633e = 4;
            return this;
        }

        public c l0(CreateList createList) {
            q2<CreateList, CreateList.b, f> q2Var = this.f45640l;
            if (q2Var == null) {
                if (this.f45633e == 7 && this.f45634f != CreateList.getDefaultInstance()) {
                    this.f45634f = CreateList.newBuilder((CreateList) this.f45634f).i0(createList).I();
                } else {
                    this.f45634f = createList;
                }
                R();
            } else {
                if (this.f45633e == 7) {
                    q2Var.e(createList);
                }
                this.f45640l.g(createList);
            }
            this.f45633e = 7;
            return this;
        }

        public c m0(Select select) {
            q2<Select, Select.b, i> q2Var = this.f45638j;
            if (q2Var == null) {
                if (this.f45633e == 5 && this.f45634f != Select.getDefaultInstance()) {
                    this.f45634f = Select.newBuilder((Select) this.f45634f).g0(select).I();
                } else {
                    this.f45634f = select;
                }
                R();
            } else {
                if (this.f45633e == 5) {
                    q2Var.e(select);
                }
                this.f45638j.g(select);
            }
            this.f45633e = 5;
            return this;
        }

        public c n0(CreateStruct createStruct) {
            q2<CreateStruct, CreateStruct.b, g> q2Var = this.f45641m;
            if (q2Var == null) {
                if (this.f45633e == 8 && this.f45634f != CreateStruct.getDefaultInstance()) {
                    this.f45634f = CreateStruct.newBuilder((CreateStruct) this.f45634f).i0(createStruct).I();
                } else {
                    this.f45634f = createStruct;
                }
                R();
            } else {
                if (this.f45633e == 8) {
                    q2Var.e(createStruct);
                }
                this.f45641m.g(createStruct);
            }
            this.f45633e = 8;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c r0(long j10) {
            this.f45635g = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45633e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45633e = 0;
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
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

    /* loaded from: classes5.dex */
    public interface h extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface i extends r1 {
    }

    /* synthetic */ Expr(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Expr getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45717c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Expr parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Expr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Expr parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Expr> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Expr)) {
            return super.equals(obj);
        }
        Expr expr = (Expr) obj;
        if (getId() == expr.getId() && getExprKindCase().equals(expr.getExprKindCase())) {
            switch (this.exprKindCase_) {
                case 3:
                    if (!getConstExpr().equals(expr.getConstExpr())) {
                        return false;
                    }
                    break;
                case 4:
                    if (!getIdentExpr().equals(expr.getIdentExpr())) {
                        return false;
                    }
                    break;
                case 5:
                    if (!getSelectExpr().equals(expr.getSelectExpr())) {
                        return false;
                    }
                    break;
                case 6:
                    if (!getCallExpr().equals(expr.getCallExpr())) {
                        return false;
                    }
                    break;
                case 7:
                    if (!getListExpr().equals(expr.getListExpr())) {
                        return false;
                    }
                    break;
                case 8:
                    if (!getStructExpr().equals(expr.getStructExpr())) {
                        return false;
                    }
                    break;
                case 9:
                    if (!getComprehensionExpr().equals(expr.getComprehensionExpr())) {
                        return false;
                    }
                    break;
            }
            return this.unknownFields.equals(expr.unknownFields);
        }
        return false;
    }

    public Call getCallExpr() {
        if (this.exprKindCase_ == 6) {
            return (Call) this.exprKind_;
        }
        return Call.getDefaultInstance();
    }

    public d getCallExprOrBuilder() {
        if (this.exprKindCase_ == 6) {
            return (Call) this.exprKind_;
        }
        return Call.getDefaultInstance();
    }

    public Comprehension getComprehensionExpr() {
        if (this.exprKindCase_ == 9) {
            return (Comprehension) this.exprKind_;
        }
        return Comprehension.getDefaultInstance();
    }

    public e getComprehensionExprOrBuilder() {
        if (this.exprKindCase_ == 9) {
            return (Comprehension) this.exprKind_;
        }
        return Comprehension.getDefaultInstance();
    }

    public Constant getConstExpr() {
        if (this.exprKindCase_ == 3) {
            return (Constant) this.exprKind_;
        }
        return Constant.getDefaultInstance();
    }

    public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.b getConstExprOrBuilder() {
        if (this.exprKindCase_ == 3) {
            return (Constant) this.exprKind_;
        }
        return Constant.getDefaultInstance();
    }

    public ExprKindCase getExprKindCase() {
        return ExprKindCase.forNumber(this.exprKindCase_);
    }

    public long getId() {
        return this.id_;
    }

    public Ident getIdentExpr() {
        if (this.exprKindCase_ == 4) {
            return (Ident) this.exprKind_;
        }
        return Ident.getDefaultInstance();
    }

    public h getIdentExprOrBuilder() {
        if (this.exprKindCase_ == 4) {
            return (Ident) this.exprKind_;
        }
        return Ident.getDefaultInstance();
    }

    public CreateList getListExpr() {
        if (this.exprKindCase_ == 7) {
            return (CreateList) this.exprKind_;
        }
        return CreateList.getDefaultInstance();
    }

    public f getListExprOrBuilder() {
        if (this.exprKindCase_ == 7) {
            return (CreateList) this.exprKind_;
        }
        return CreateList.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Expr> getParserForType() {
        return PARSER;
    }

    public Select getSelectExpr() {
        if (this.exprKindCase_ == 5) {
            return (Select) this.exprKind_;
        }
        return Select.getDefaultInstance();
    }

    public i getSelectExprOrBuilder() {
        if (this.exprKindCase_ == 5) {
            return (Select) this.exprKind_;
        }
        return Select.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.id_;
        int z10 = j10 != 0 ? 0 + CodedOutputStream.z(2, j10) : 0;
        if (this.exprKindCase_ == 3) {
            z10 += CodedOutputStream.G(3, (Constant) this.exprKind_);
        }
        if (this.exprKindCase_ == 4) {
            z10 += CodedOutputStream.G(4, (Ident) this.exprKind_);
        }
        if (this.exprKindCase_ == 5) {
            z10 += CodedOutputStream.G(5, (Select) this.exprKind_);
        }
        if (this.exprKindCase_ == 6) {
            z10 += CodedOutputStream.G(6, (Call) this.exprKind_);
        }
        if (this.exprKindCase_ == 7) {
            z10 += CodedOutputStream.G(7, (CreateList) this.exprKind_);
        }
        if (this.exprKindCase_ == 8) {
            z10 += CodedOutputStream.G(8, (CreateStruct) this.exprKind_);
        }
        if (this.exprKindCase_ == 9) {
            z10 += CodedOutputStream.G(9, (Comprehension) this.exprKind_);
        }
        int serializedSize = z10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public CreateStruct getStructExpr() {
        if (this.exprKindCase_ == 8) {
            return (CreateStruct) this.exprKind_;
        }
        return CreateStruct.getDefaultInstance();
    }

    public g getStructExprOrBuilder() {
        if (this.exprKindCase_ == 8) {
            return (CreateStruct) this.exprKind_;
        }
        return CreateStruct.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCallExpr() {
        return this.exprKindCase_ == 6;
    }

    public boolean hasComprehensionExpr() {
        return this.exprKindCase_ == 9;
    }

    public boolean hasConstExpr() {
        return this.exprKindCase_ == 3;
    }

    public boolean hasIdentExpr() {
        return this.exprKindCase_ == 4;
    }

    public boolean hasListExpr() {
        return this.exprKindCase_ == 7;
    }

    public boolean hasSelectExpr() {
        return this.exprKindCase_ == 5;
    }

    public boolean hasStructExpr() {
        return this.exprKindCase_ == 8;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 2) * 53) + u0.i(getId());
        switch (this.exprKindCase_) {
            case 3:
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getConstExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            case 4:
                i9 = ((hashCode2 * 37) + 4) * 53;
                hashCode = getIdentExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32;
                return hashCode32;
            case 5:
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getSelectExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322;
                return hashCode322;
            case 6:
                i9 = ((hashCode2 * 37) + 6) * 53;
                hashCode = getCallExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222;
                return hashCode3222;
            case 7:
                i9 = ((hashCode2 * 37) + 7) * 53;
                hashCode = getListExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222;
                return hashCode32222;
            case 8:
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = getStructExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode322222;
                return hashCode322222;
            case 9:
                i9 = ((hashCode2 * 37) + 9) * 53;
                hashCode = getComprehensionExpr().hashCode();
                hashCode2 = i9 + hashCode;
                int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3222222;
                return hashCode3222222;
            default:
                int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode32222222;
                return hashCode32222222;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.f.f45718d.d(Expr.class, c.class);
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
        return new Expr();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j10 = this.id_;
        if (j10 != 0) {
            codedOutputStream.J0(2, j10);
        }
        if (this.exprKindCase_ == 3) {
            codedOutputStream.L0(3, (Constant) this.exprKind_);
        }
        if (this.exprKindCase_ == 4) {
            codedOutputStream.L0(4, (Ident) this.exprKind_);
        }
        if (this.exprKindCase_ == 5) {
            codedOutputStream.L0(5, (Select) this.exprKind_);
        }
        if (this.exprKindCase_ == 6) {
            codedOutputStream.L0(6, (Call) this.exprKind_);
        }
        if (this.exprKindCase_ == 7) {
            codedOutputStream.L0(7, (CreateList) this.exprKind_);
        }
        if (this.exprKindCase_ == 8) {
            codedOutputStream.L0(8, (CreateStruct) this.exprKind_);
        }
        if (this.exprKindCase_ == 9) {
            codedOutputStream.L0(9, (Comprehension) this.exprKind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Expr(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Expr expr) {
        return DEFAULT_INSTANCE.toBuilder().j0(expr);
    }

    public static Expr parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Expr(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.exprKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Expr parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Expr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Expr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Expr getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static Expr parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Expr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Expr() {
        this.exprKindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Expr parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Expr parseFrom(InputStream inputStream) throws IOException {
        return (Expr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Expr(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 16) {
                                if (L == 26) {
                                    Constant.c builder = this.exprKindCase_ == 3 ? ((Constant) this.exprKind_).toBuilder() : null;
                                    o1 B = pVar.B(Constant.parser(), f0Var);
                                    this.exprKind_ = B;
                                    if (builder != null) {
                                        builder.h0((Constant) B);
                                        this.exprKind_ = builder.I();
                                    }
                                    this.exprKindCase_ = 3;
                                } else if (L == 34) {
                                    Ident.b builder2 = this.exprKindCase_ == 4 ? ((Ident) this.exprKind_).toBuilder() : null;
                                    o1 B2 = pVar.B(Ident.parser(), f0Var);
                                    this.exprKind_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((Ident) B2);
                                        this.exprKind_ = builder2.I();
                                    }
                                    this.exprKindCase_ = 4;
                                } else if (L == 42) {
                                    Select.b builder3 = this.exprKindCase_ == 5 ? ((Select) this.exprKind_).toBuilder() : null;
                                    o1 B3 = pVar.B(Select.parser(), f0Var);
                                    this.exprKind_ = B3;
                                    if (builder3 != null) {
                                        builder3.g0((Select) B3);
                                        this.exprKind_ = builder3.I();
                                    }
                                    this.exprKindCase_ = 5;
                                } else if (L == 50) {
                                    Call.b builder4 = this.exprKindCase_ == 6 ? ((Call) this.exprKind_).toBuilder() : null;
                                    o1 B4 = pVar.B(Call.parser(), f0Var);
                                    this.exprKind_ = B4;
                                    if (builder4 != null) {
                                        builder4.i0((Call) B4);
                                        this.exprKind_ = builder4.I();
                                    }
                                    this.exprKindCase_ = 6;
                                } else if (L == 58) {
                                    CreateList.b builder5 = this.exprKindCase_ == 7 ? ((CreateList) this.exprKind_).toBuilder() : null;
                                    o1 B5 = pVar.B(CreateList.parser(), f0Var);
                                    this.exprKind_ = B5;
                                    if (builder5 != null) {
                                        builder5.i0((CreateList) B5);
                                        this.exprKind_ = builder5.I();
                                    }
                                    this.exprKindCase_ = 7;
                                } else if (L == 66) {
                                    CreateStruct.b builder6 = this.exprKindCase_ == 8 ? ((CreateStruct) this.exprKind_).toBuilder() : null;
                                    o1 B6 = pVar.B(CreateStruct.parser(), f0Var);
                                    this.exprKind_ = B6;
                                    if (builder6 != null) {
                                        builder6.i0((CreateStruct) B6);
                                        this.exprKind_ = builder6.I();
                                    }
                                    this.exprKindCase_ = 8;
                                } else if (L != 74) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Comprehension.b builder7 = this.exprKindCase_ == 9 ? ((Comprehension) this.exprKind_).toBuilder() : null;
                                    o1 B7 = pVar.B(Comprehension.parser(), f0Var);
                                    this.exprKind_ = B7;
                                    if (builder7 != null) {
                                        builder7.h0((Comprehension) B7);
                                        this.exprKind_ = builder7.I();
                                    }
                                    this.exprKindCase_ = 9;
                                }
                            } else {
                                this.id_ = pVar.A();
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

    public static Expr parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Expr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Expr parseFrom(p pVar) throws IOException {
        return (Expr) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Expr parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Expr) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
