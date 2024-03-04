package io.grpc.xds.shaded.com.google.api.expr.v1alpha1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.Expr;
import io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class CheckedExpr extends GeneratedMessageV3 implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.a {
    public static final int EXPR_FIELD_NUMBER = 4;
    public static final int REFERENCE_MAP_FIELD_NUMBER = 2;
    public static final int SOURCE_INFO_FIELD_NUMBER = 5;
    public static final int TYPE_MAP_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private Expr expr_;
    private byte memoizedIsInitialized;
    private g1<Long, Reference> referenceMap_;
    private SourceInfo sourceInfo_;
    private g1<Long, Type> typeMap_;
    private static final CheckedExpr DEFAULT_INSTANCE = new CheckedExpr();
    private static final e2<CheckedExpr> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<CheckedExpr> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CheckedExpr m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CheckedExpr(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.com.google.api.expr.v1alpha1.a {

        /* renamed from: e  reason: collision with root package name */
        private g1<Long, Reference> f45559e;

        /* renamed from: f  reason: collision with root package name */
        private g1<Long, Type> f45560f;

        /* renamed from: g  reason: collision with root package name */
        private SourceInfo f45561g;

        /* renamed from: h  reason: collision with root package name */
        private q2<SourceInfo, SourceInfo.b, e> f45562h;

        /* renamed from: i  reason: collision with root package name */
        private Expr f45563i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Expr, Expr.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> f45564j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<Long, Reference> b0() {
            R();
            if (this.f45559e == null) {
                this.f45559e = g1.p(c.f45565a);
            }
            if (!this.f45559e.m()) {
                this.f45559e = this.f45559e.f();
            }
            return this.f45559e;
        }

        private g1<Long, Type> d0() {
            R();
            if (this.f45560f == null) {
                this.f45560f = g1.p(d.f45566a);
            }
            if (!this.f45560f.m()) {
                this.f45560f = this.f45560f.f();
            }
            return this.f45560f;
        }

        private g1<Long, Reference> e0() {
            g1<Long, Reference> g1Var = this.f45559e;
            return g1Var == null ? g1.g(c.f45565a) : g1Var;
        }

        private g1<Long, Type> g0() {
            g1<Long, Type> g1Var = this.f45560f;
            return g1Var == null ? g1.g(d.f45566a) : g1Var;
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45690b.d(CheckedExpr.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return g0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return e0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return b0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CheckedExpr build() {
            CheckedExpr I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CheckedExpr I() {
            CheckedExpr checkedExpr = new CheckedExpr(this, (a) null);
            checkedExpr.referenceMap_ = e0();
            checkedExpr.referenceMap_.n();
            checkedExpr.typeMap_ = g0();
            checkedExpr.typeMap_.n();
            q2<SourceInfo, SourceInfo.b, e> q2Var = this.f45562h;
            if (q2Var == null) {
                checkedExpr.sourceInfo_ = this.f45561g;
            } else {
                checkedExpr.sourceInfo_ = q2Var.b();
            }
            q2<Expr, Expr.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var2 = this.f45564j;
            if (q2Var2 == null) {
                checkedExpr.expr_ = this.f45563i;
            } else {
                checkedExpr.expr_ = q2Var2.b();
            }
            Q();
            return checkedExpr;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CheckedExpr getDefaultInstanceForType() {
            return CheckedExpr.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45689a;
        }

        public b i0(Expr expr) {
            q2<Expr, Expr.c, io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d> q2Var = this.f45564j;
            if (q2Var == null) {
                Expr expr2 = this.f45563i;
                if (expr2 != null) {
                    this.f45563i = Expr.newBuilder(expr2).j0(expr).I();
                } else {
                    this.f45563i = expr;
                }
                R();
            } else {
                q2Var.e(expr);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.CheckedExpr$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof CheckedExpr) {
                return l0((CheckedExpr) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(CheckedExpr checkedExpr) {
            if (checkedExpr == CheckedExpr.getDefaultInstance()) {
                return this;
            }
            b0().o(checkedExpr.internalGetReferenceMap());
            d0().o(checkedExpr.internalGetTypeMap());
            if (checkedExpr.hasSourceInfo()) {
                m0(checkedExpr.getSourceInfo());
            }
            if (checkedExpr.hasExpr()) {
                i0(checkedExpr.getExpr());
            }
            z(((GeneratedMessageV3) checkedExpr).unknownFields);
            R();
            return this;
        }

        public b m0(SourceInfo sourceInfo) {
            q2<SourceInfo, SourceInfo.b, e> q2Var = this.f45562h;
            if (q2Var == null) {
                SourceInfo sourceInfo2 = this.f45561g;
                if (sourceInfo2 != null) {
                    this.f45561g = SourceInfo.newBuilder(sourceInfo2).l0(sourceInfo).I();
                } else {
                    this.f45561g = sourceInfo;
                }
                R();
            } else {
                q2Var.e(sourceInfo);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<Long, Reference> f45565a = e1.k(io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45691c, WireFormat.FieldType.INT64, 0L, WireFormat.FieldType.MESSAGE, Reference.getDefaultInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final e1<Long, Type> f45566a = e1.k(io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45693e, WireFormat.FieldType.INT64, 0L, WireFormat.FieldType.MESSAGE, Type.getDefaultInstance());
    }

    /* synthetic */ CheckedExpr(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CheckedExpr getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45689a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<Long, Reference> internalGetReferenceMap() {
        g1<Long, Reference> g1Var = this.referenceMap_;
        return g1Var == null ? g1.g(c.f45565a) : g1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<Long, Type> internalGetTypeMap() {
        g1<Long, Type> g1Var = this.typeMap_;
        return g1Var == null ? g1.g(d.f45566a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CheckedExpr parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CheckedExpr parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CheckedExpr> parser() {
        return PARSER;
    }

    public boolean containsReferenceMap(long j10) {
        return internalGetReferenceMap().i().containsKey(Long.valueOf(j10));
    }

    public boolean containsTypeMap(long j10) {
        return internalGetTypeMap().i().containsKey(Long.valueOf(j10));
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CheckedExpr)) {
            return super.equals(obj);
        }
        CheckedExpr checkedExpr = (CheckedExpr) obj;
        if (internalGetReferenceMap().equals(checkedExpr.internalGetReferenceMap()) && internalGetTypeMap().equals(checkedExpr.internalGetTypeMap()) && hasSourceInfo() == checkedExpr.hasSourceInfo()) {
            if ((!hasSourceInfo() || getSourceInfo().equals(checkedExpr.getSourceInfo())) && hasExpr() == checkedExpr.hasExpr()) {
                return (!hasExpr() || getExpr().equals(checkedExpr.getExpr())) && this.unknownFields.equals(checkedExpr.unknownFields);
            }
            return false;
        }
        return false;
    }

    public Expr getExpr() {
        Expr expr = this.expr_;
        return expr == null ? Expr.getDefaultInstance() : expr;
    }

    public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.d getExprOrBuilder() {
        return getExpr();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CheckedExpr> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public Map<Long, Reference> getReferenceMap() {
        return getReferenceMapMap();
    }

    public int getReferenceMapCount() {
        return internalGetReferenceMap().i().size();
    }

    public Map<Long, Reference> getReferenceMapMap() {
        return internalGetReferenceMap().i();
    }

    public Reference getReferenceMapOrDefault(long j10, Reference reference) {
        Map<Long, Reference> i9 = internalGetReferenceMap().i();
        return i9.containsKey(Long.valueOf(j10)) ? i9.get(Long.valueOf(j10)) : reference;
    }

    public Reference getReferenceMapOrThrow(long j10) {
        Map<Long, Reference> i9 = internalGetReferenceMap().i();
        if (i9.containsKey(Long.valueOf(j10))) {
            return i9.get(Long.valueOf(j10));
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (Map.Entry<Long, Reference> entry : internalGetReferenceMap().i().entrySet()) {
            i10 += CodedOutputStream.G(2, c.f45565a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        for (Map.Entry<Long, Type> entry2 : internalGetTypeMap().i().entrySet()) {
            i10 += CodedOutputStream.G(3, d.f45566a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
        }
        if (this.expr_ != null) {
            i10 += CodedOutputStream.G(4, getExpr());
        }
        if (this.sourceInfo_ != null) {
            i10 += CodedOutputStream.G(5, getSourceInfo());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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

    @Deprecated
    public Map<Long, Type> getTypeMap() {
        return getTypeMapMap();
    }

    public int getTypeMapCount() {
        return internalGetTypeMap().i().size();
    }

    public Map<Long, Type> getTypeMapMap() {
        return internalGetTypeMap().i();
    }

    public Type getTypeMapOrDefault(long j10, Type type) {
        Map<Long, Type> i9 = internalGetTypeMap().i();
        return i9.containsKey(Long.valueOf(j10)) ? i9.get(Long.valueOf(j10)) : type;
    }

    public Type getTypeMapOrThrow(long j10) {
        Map<Long, Type> i9 = internalGetTypeMap().i();
        if (i9.containsKey(Long.valueOf(j10))) {
            return i9.get(Long.valueOf(j10));
        }
        throw new IllegalArgumentException();
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
        if (!internalGetReferenceMap().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetReferenceMap().hashCode();
        }
        if (!internalGetTypeMap().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 3) * 53) + internalGetTypeMap().hashCode();
        }
        if (hasSourceInfo()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSourceInfo().hashCode();
        }
        if (hasExpr()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getExpr().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.com.google.api.expr.v1alpha1.c.f45690b.d(CheckedExpr.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 != 2) {
            if (i9 == 3) {
                return internalGetTypeMap();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }
        return internalGetReferenceMap();
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
        return new CheckedExpr();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        GeneratedMessageV3.serializeLongMapTo(codedOutputStream, internalGetReferenceMap(), c.f45565a, 2);
        GeneratedMessageV3.serializeLongMapTo(codedOutputStream, internalGetTypeMap(), d.f45566a, 3);
        if (this.expr_ != null) {
            codedOutputStream.L0(4, getExpr());
        }
        if (this.sourceInfo_ != null) {
            codedOutputStream.L0(5, getSourceInfo());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CheckedExpr(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(CheckedExpr checkedExpr) {
        return DEFAULT_INSTANCE.toBuilder().l0(checkedExpr);
    }

    public static CheckedExpr parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CheckedExpr(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CheckedExpr parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CheckedExpr parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CheckedExpr getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static CheckedExpr parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private CheckedExpr() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CheckedExpr parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static CheckedExpr parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private CheckedExpr(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                if (!(z11 & true)) {
                                    this.referenceMap_ = g1.p(c.f45565a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(c.f45565a.getParserForType(), f0Var);
                                this.referenceMap_.l().put((Long) e1Var.f(), (Reference) e1Var.h());
                            } else if (L != 26) {
                                if (L == 34) {
                                    Expr expr = this.expr_;
                                    Expr.c builder = expr != null ? expr.toBuilder() : null;
                                    Expr expr2 = (Expr) pVar.B(Expr.parser(), f0Var);
                                    this.expr_ = expr2;
                                    if (builder != null) {
                                        builder.j0(expr2);
                                        this.expr_ = builder.I();
                                    }
                                } else if (L != 42) {
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
                            } else {
                                if (!(z11 & true)) {
                                    this.typeMap_ = g1.p(d.f45566a);
                                    z11 |= true;
                                }
                                e1 e1Var2 = (e1) pVar.B(d.f45566a.getParserForType(), f0Var);
                                this.typeMap_.l().put((Long) e1Var2.f(), (Type) e1Var2.h());
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

    public static CheckedExpr parseFrom(InputStream inputStream) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static CheckedExpr parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CheckedExpr parseFrom(p pVar) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CheckedExpr parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CheckedExpr) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
