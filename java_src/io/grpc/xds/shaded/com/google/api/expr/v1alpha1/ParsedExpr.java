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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ParsedExpr extends GeneratedMessageV3 implements r1 {
    public static final int EXPR_FIELD_NUMBER = 2;
    public static final int SOURCE_INFO_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private Expr expr_;
    private byte memoizedIsInitialized;
    private SourceInfo sourceInfo_;
    private static final ParsedExpr DEFAULT_INSTANCE = new ParsedExpr();
    private static final e2<ParsedExpr> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ParsedExpr> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ParsedExpr m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ParsedExpr(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Expr f45643e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Expr, Expr.c, d> f45644f;

        /* renamed from: g  reason: collision with root package name */
        private SourceInfo f45645g;

        /* renamed from: h  reason: collision with root package name */
        private q2<SourceInfo, SourceInfo.b, e> f45646h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45716b.d(ParsedExpr.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ParsedExpr build() {
            ParsedExpr I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ParsedExpr I() {
            ParsedExpr parsedExpr = new ParsedExpr(this, (a) null);
            q2<Expr, Expr.c, d> q2Var = this.f45644f;
            if (q2Var == null) {
                parsedExpr.expr_ = this.f45643e;
            } else {
                parsedExpr.expr_ = q2Var.b();
            }
            q2<SourceInfo, SourceInfo.b, e> q2Var2 = this.f45646h;
            if (q2Var2 == null) {
                parsedExpr.sourceInfo_ = this.f45645g;
            } else {
                parsedExpr.sourceInfo_ = q2Var2.b();
            }
            Q();
            return parsedExpr;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ParsedExpr getDefaultInstanceForType() {
            return ParsedExpr.getDefaultInstance();
        }

        public b d0(Expr expr) {
            q2<Expr, Expr.c, d> q2Var = this.f45644f;
            if (q2Var == null) {
                Expr expr2 = this.f45643e;
                if (expr2 != null) {
                    this.f45643e = Expr.newBuilder(expr2).j0(expr).I();
                } else {
                    this.f45643e = expr;
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
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.ParsedExpr$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ParsedExpr) {
                return h0((ParsedExpr) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45715a;
        }

        public b h0(ParsedExpr parsedExpr) {
            if (parsedExpr == ParsedExpr.getDefaultInstance()) {
                return this;
            }
            if (parsedExpr.hasExpr()) {
                d0(parsedExpr.getExpr());
            }
            if (parsedExpr.hasSourceInfo()) {
                i0(parsedExpr.getSourceInfo());
            }
            z(((GeneratedMessageV3) parsedExpr).unknownFields);
            R();
            return this;
        }

        public b i0(SourceInfo sourceInfo) {
            q2<SourceInfo, SourceInfo.b, e> q2Var = this.f45646h;
            if (q2Var == null) {
                SourceInfo sourceInfo2 = this.f45645g;
                if (sourceInfo2 != null) {
                    this.f45645g = SourceInfo.newBuilder(sourceInfo2).l0(sourceInfo).I();
                } else {
                    this.f45645g = sourceInfo;
                }
                R();
            } else {
                q2Var.e(sourceInfo);
            }
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ ParsedExpr(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ParsedExpr getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45715a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ParsedExpr parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ParsedExpr parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ParsedExpr> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ParsedExpr)) {
            return super.equals(obj);
        }
        ParsedExpr parsedExpr = (ParsedExpr) obj;
        if (hasExpr() != parsedExpr.hasExpr()) {
            return false;
        }
        if ((!hasExpr() || getExpr().equals(parsedExpr.getExpr())) && hasSourceInfo() == parsedExpr.hasSourceInfo()) {
            return (!hasSourceInfo() || getSourceInfo().equals(parsedExpr.getSourceInfo())) && this.unknownFields.equals(parsedExpr.unknownFields);
        }
        return false;
    }

    public Expr getExpr() {
        Expr expr = this.expr_;
        return expr == null ? Expr.getDefaultInstance() : expr;
    }

    public d getExprOrBuilder() {
        return getExpr();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ParsedExpr> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.expr_ != null ? 0 + CodedOutputStream.G(2, getExpr()) : 0;
        if (this.sourceInfo_ != null) {
            G += CodedOutputStream.G(3, getSourceInfo());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SourceInfo getSourceInfo() {
        SourceInfo sourceInfo = this.sourceInfo_;
        return sourceInfo == null ? SourceInfo.getDefaultInstance() : sourceInfo;
    }

    public e getSourceInfoOrBuilder() {
        return getSourceInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExpr() {
        return this.expr_ != null;
    }

    public boolean hasSourceInfo() {
        return this.sourceInfo_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasExpr()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getExpr().hashCode();
        }
        if (hasSourceInfo()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getSourceInfo().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f45716b.d(ParsedExpr.class, b.class);
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
        return new ParsedExpr();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.expr_ != null) {
            codedOutputStream.L0(2, getExpr());
        }
        if (this.sourceInfo_ != null) {
            codedOutputStream.L0(3, getSourceInfo());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ParsedExpr(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ParsedExpr parsedExpr) {
        return DEFAULT_INSTANCE.toBuilder().h0(parsedExpr);
    }

    public static ParsedExpr parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ParsedExpr(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ParsedExpr parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ParsedExpr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ParsedExpr getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static ParsedExpr parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ParsedExpr() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ParsedExpr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ParsedExpr parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private ParsedExpr(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 18) {
                            Expr expr = this.expr_;
                            Expr.c builder = expr != null ? expr.toBuilder() : null;
                            Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                            this.expr_ = expr2;
                            if (builder != null) {
                                builder.j0(expr2);
                                this.expr_ = builder.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            SourceInfo sourceInfo = this.sourceInfo_;
                            SourceInfo.b builder2 = sourceInfo != null ? sourceInfo.toBuilder() : null;
                            SourceInfo sourceInfo2 = (SourceInfo) pVar.B(SourceInfo.parser(), f0Var);
                            this.sourceInfo_ = sourceInfo2;
                            if (builder2 != null) {
                                builder2.l0(sourceInfo2);
                                this.sourceInfo_ = builder2.I();
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

    public static ParsedExpr parseFrom(InputStream inputStream) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ParsedExpr parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ParsedExpr parseFrom(p pVar) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ParsedExpr parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ParsedExpr) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
