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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SourceInfo extends GeneratedMessageV3 implements e {
    public static final int LINE_OFFSETS_FIELD_NUMBER = 3;
    public static final int LOCATION_FIELD_NUMBER = 2;
    public static final int MACRO_CALLS_FIELD_NUMBER = 5;
    public static final int POSITIONS_FIELD_NUMBER = 4;
    public static final int SYNTAX_VERSION_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int lineOffsetsMemoizedSerializedSize;
    private u0.g lineOffsets_;
    private volatile Object location_;
    private g1<Long, Expr> macroCalls_;
    private byte memoizedIsInitialized;
    private g1<Long, Integer> positions_;
    private volatile Object syntaxVersion_;
    private static final SourceInfo DEFAULT_INSTANCE = new SourceInfo();
    private static final e2<SourceInfo> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SourceInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SourceInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SourceInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f45652e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45653f;

        /* renamed from: g  reason: collision with root package name */
        private Object f45654g;

        /* renamed from: h  reason: collision with root package name */
        private u0.g f45655h;

        /* renamed from: i  reason: collision with root package name */
        private g1<Long, Integer> f45656i;

        /* renamed from: j  reason: collision with root package name */
        private g1<Long, Expr> f45657j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45652e & 1) == 0) {
                this.f45655h = GeneratedMessageV3.mutableCopy(this.f45655h);
                this.f45652e |= 1;
            }
        }

        private g1<Long, Expr> d0() {
            g1<Long, Expr> g1Var = this.f45657j;
            return g1Var == null ? g1.g(c.f45658a) : g1Var;
        }

        private g1<Long, Expr> e0() {
            R();
            if (this.f45657j == null) {
                this.f45657j = g1.p(c.f45658a);
            }
            if (!this.f45657j.m()) {
                this.f45657j = this.f45657j.f();
            }
            return this.f45657j;
        }

        private g1<Long, Integer> g0() {
            R();
            if (this.f45656i == null) {
                this.f45656i = g1.p(d.f45659a);
            }
            if (!this.f45656i.m()) {
                this.f45656i = this.f45656i.f();
            }
            return this.f45656i;
        }

        private g1<Long, Integer> h0() {
            g1<Long, Integer> g1Var = this.f45656i;
            return g1Var == null ? g1.g(d.f45659a) : g1Var;
        }

        private void i0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f45736v.d(SourceInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 != 4) {
                if (i9 == 5) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return h0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 != 4) {
                if (i9 == 5) {
                    return e0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }
            return g0();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SourceInfo build() {
            SourceInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SourceInfo I() {
            SourceInfo sourceInfo = new SourceInfo(this, (a) null);
            sourceInfo.syntaxVersion_ = this.f45653f;
            sourceInfo.location_ = this.f45654g;
            if ((this.f45652e & 1) != 0) {
                this.f45655h.C();
                this.f45652e &= -2;
            }
            sourceInfo.lineOffsets_ = this.f45655h;
            sourceInfo.positions_ = h0();
            sourceInfo.positions_.n();
            sourceInfo.macroCalls_ = d0();
            sourceInfo.macroCalls_.n();
            Q();
            return sourceInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SourceInfo getDefaultInstanceForType() {
            return SourceInfo.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f45735u;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo r3 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo r4 = (io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.google.api.expr.v1alpha1.SourceInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SourceInfo) {
                return l0((SourceInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(SourceInfo sourceInfo) {
            if (sourceInfo == SourceInfo.getDefaultInstance()) {
                return this;
            }
            if (!sourceInfo.getSyntaxVersion().isEmpty()) {
                this.f45653f = sourceInfo.syntaxVersion_;
                R();
            }
            if (!sourceInfo.getLocation().isEmpty()) {
                this.f45654g = sourceInfo.location_;
                R();
            }
            if (!sourceInfo.lineOffsets_.isEmpty()) {
                if (this.f45655h.isEmpty()) {
                    this.f45655h = sourceInfo.lineOffsets_;
                    this.f45652e &= -2;
                } else {
                    a0();
                    this.f45655h.addAll(sourceInfo.lineOffsets_);
                }
                R();
            }
            g0().o(sourceInfo.internalGetPositions());
            e0().o(sourceInfo.internalGetMacroCalls());
            z(((GeneratedMessageV3) sourceInfo).unknownFields);
            R();
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
            this.f45653f = "";
            this.f45654g = "";
            this.f45655h = SourceInfo.access$1600();
            i0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45653f = "";
            this.f45654g = "";
            this.f45655h = SourceInfo.access$1600();
            i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<Long, Expr> f45658a = e1.k(f.f45739y, WireFormat.FieldType.INT64, 0L, WireFormat.FieldType.MESSAGE, Expr.getDefaultInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final e1<Long, Integer> f45659a = e1.k(f.f45737w, WireFormat.FieldType.INT64, 0L, WireFormat.FieldType.INT32, 0);
    }

    /* synthetic */ SourceInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$1600() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static SourceInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f45735u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<Long, Expr> internalGetMacroCalls() {
        g1<Long, Expr> g1Var = this.macroCalls_;
        return g1Var == null ? g1.g(c.f45658a) : g1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<Long, Integer> internalGetPositions() {
        g1<Long, Integer> g1Var = this.positions_;
        return g1Var == null ? g1.g(d.f45659a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SourceInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SourceInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SourceInfo> parser() {
        return PARSER;
    }

    public boolean containsMacroCalls(long j10) {
        return internalGetMacroCalls().i().containsKey(Long.valueOf(j10));
    }

    public boolean containsPositions(long j10) {
        return internalGetPositions().i().containsKey(Long.valueOf(j10));
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SourceInfo)) {
            return super.equals(obj);
        }
        SourceInfo sourceInfo = (SourceInfo) obj;
        return getSyntaxVersion().equals(sourceInfo.getSyntaxVersion()) && getLocation().equals(sourceInfo.getLocation()) && getLineOffsetsList().equals(sourceInfo.getLineOffsetsList()) && internalGetPositions().equals(sourceInfo.internalGetPositions()) && internalGetMacroCalls().equals(sourceInfo.internalGetMacroCalls()) && this.unknownFields.equals(sourceInfo.unknownFields);
    }

    public int getLineOffsets(int i9) {
        return this.lineOffsets_.getInt(i9);
    }

    public int getLineOffsetsCount() {
        return this.lineOffsets_.size();
    }

    public List<Integer> getLineOffsetsList() {
        return this.lineOffsets_;
    }

    public String getLocation() {
        Object obj = this.location_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.location_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLocationBytes() {
        Object obj = this.location_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.location_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Deprecated
    public Map<Long, Expr> getMacroCalls() {
        return getMacroCallsMap();
    }

    public int getMacroCallsCount() {
        return internalGetMacroCalls().i().size();
    }

    public Map<Long, Expr> getMacroCallsMap() {
        return internalGetMacroCalls().i();
    }

    public Expr getMacroCallsOrDefault(long j10, Expr expr) {
        Map<Long, Expr> i9 = internalGetMacroCalls().i();
        return i9.containsKey(Long.valueOf(j10)) ? i9.get(Long.valueOf(j10)) : expr;
    }

    public Expr getMacroCallsOrThrow(long j10) {
        Map<Long, Expr> i9 = internalGetMacroCalls().i();
        if (i9.containsKey(Long.valueOf(j10))) {
            return i9.get(Long.valueOf(j10));
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SourceInfo> getParserForType() {
        return PARSER;
    }

    @Deprecated
    public Map<Long, Integer> getPositions() {
        return getPositionsMap();
    }

    public int getPositionsCount() {
        return internalGetPositions().i().size();
    }

    public Map<Long, Integer> getPositionsMap() {
        return internalGetPositions().i();
    }

    public int getPositionsOrDefault(long j10, int i9) {
        Map<Long, Integer> i10 = internalGetPositions().i();
        return i10.containsKey(Long.valueOf(j10)) ? i10.get(Long.valueOf(j10)).intValue() : i9;
    }

    public int getPositionsOrThrow(long j10) {
        Map<Long, Integer> i9 = internalGetPositions().i();
        if (i9.containsKey(Long.valueOf(j10))) {
            return i9.get(Long.valueOf(j10)).intValue();
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.syntaxVersion_) ? GeneratedMessageV3.computeStringSize(1, this.syntaxVersion_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.location_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.location_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.lineOffsets_.size(); i11++) {
            i10 += CodedOutputStream.y(this.lineOffsets_.getInt(i11));
        }
        int i12 = computeStringSize + i10;
        if (!getLineOffsetsList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.y(i10);
        }
        this.lineOffsetsMemoizedSerializedSize = i10;
        for (Map.Entry<Long, Integer> entry : internalGetPositions().i().entrySet()) {
            i12 += CodedOutputStream.G(4, d.f45659a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        for (Map.Entry<Long, Expr> entry2 : internalGetMacroCalls().i().entrySet()) {
            i12 += CodedOutputStream.G(5, c.f45658a.newBuilderForType().N(entry2.getKey()).P(entry2.getValue()).build());
        }
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSyntaxVersion() {
        Object obj = this.syntaxVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.syntaxVersion_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSyntaxVersionBytes() {
        Object obj = this.syntaxVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.syntaxVersion_ = copyFromUtf8;
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSyntaxVersion().hashCode()) * 37) + 2) * 53) + getLocation().hashCode();
        if (getLineOffsetsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getLineOffsetsList().hashCode();
        }
        if (!internalGetPositions().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 4) * 53) + internalGetPositions().hashCode();
        }
        if (!internalGetMacroCalls().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 5) * 53) + internalGetMacroCalls().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f45736v.d(SourceInfo.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 != 4) {
            if (i9 == 5) {
                return internalGetMacroCalls();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }
        return internalGetPositions();
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
        return new SourceInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!GeneratedMessageV3.isStringEmpty(this.syntaxVersion_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.syntaxVersion_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.location_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.location_);
        }
        if (getLineOffsetsList().size() > 0) {
            codedOutputStream.d1(26);
            codedOutputStream.d1(this.lineOffsetsMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.lineOffsets_.size(); i9++) {
            codedOutputStream.I0(this.lineOffsets_.getInt(i9));
        }
        GeneratedMessageV3.serializeLongMapTo(codedOutputStream, internalGetPositions(), d.f45659a, 4);
        GeneratedMessageV3.serializeLongMapTo(codedOutputStream, internalGetMacroCalls(), c.f45658a, 5);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SourceInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SourceInfo sourceInfo) {
        return DEFAULT_INSTANCE.toBuilder().l0(sourceInfo);
    }

    public static SourceInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SourceInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.lineOffsetsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SourceInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SourceInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SourceInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static SourceInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static SourceInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private SourceInfo() {
        this.lineOffsetsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.syntaxVersion_ = "";
        this.location_ = "";
        this.lineOffsets_ = GeneratedMessageV3.emptyIntList();
    }

    public static SourceInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SourceInfo parseFrom(InputStream inputStream) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SourceInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SourceInfo parseFrom(p pVar) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private SourceInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.syntaxVersion_ = pVar.K();
                        } else if (L == 18) {
                            this.location_ = pVar.K();
                        } else if (L == 24) {
                            if (!(z11 & true)) {
                                this.lineOffsets_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            this.lineOffsets_.D0(pVar.z());
                        } else if (L == 26) {
                            int q10 = pVar.q(pVar.D());
                            if (!(z11 & true) && pVar.e() > 0) {
                                this.lineOffsets_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            while (pVar.e() > 0) {
                                this.lineOffsets_.D0(pVar.z());
                            }
                            pVar.p(q10);
                        } else if (L == 34) {
                            if (!(z11 & true)) {
                                this.positions_ = g1.p(d.f45659a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(d.f45659a.getParserForType(), f0Var);
                            this.positions_.l().put((Long) e1Var.f(), (Integer) e1Var.h());
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.macroCalls_ = g1.p(c.f45658a);
                                z11 |= true;
                            }
                            e1 e1Var2 = (e1) pVar.B(c.f45658a.getParserForType(), f0Var);
                            this.macroCalls_.l().put((Long) e1Var2.f(), (Expr) e1Var2.h());
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
                    this.lineOffsets_.C();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SourceInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
