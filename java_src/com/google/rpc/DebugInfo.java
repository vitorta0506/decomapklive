package com.google.rpc;

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
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class DebugInfo extends GeneratedMessageV3 implements r1 {
    public static final int DETAIL_FIELD_NUMBER = 2;
    public static final int STACK_ENTRIES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object detail_;
    private byte memoizedIsInitialized;
    private z0 stackEntries_;
    private static final DebugInfo DEFAULT_INSTANCE = new DebugInfo();
    private static final e2<DebugInfo> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<DebugInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DebugInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DebugInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15555e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f15556f;

        /* renamed from: g  reason: collision with root package name */
        private Object f15557g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15555e & 1) == 0) {
                this.f15556f = new y0(this.f15556f);
                this.f15555e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.b.f15597d.d(DebugInfo.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DebugInfo build() {
            DebugInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DebugInfo I() {
            DebugInfo debugInfo = new DebugInfo(this, (a) null);
            if ((this.f15555e & 1) != 0) {
                this.f15556f = this.f15556f.V0();
                this.f15555e &= -2;
            }
            debugInfo.stackEntries_ = this.f15556f;
            debugInfo.detail_ = this.f15557g;
            Q();
            return debugInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public DebugInfo getDefaultInstanceForType() {
            return DebugInfo.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.DebugInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.DebugInfo.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.DebugInfo r3 = (com.google.rpc.DebugInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.rpc.DebugInfo r4 = (com.google.rpc.DebugInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.DebugInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.DebugInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DebugInfo) {
                return h0((DebugInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.b.f15596c;
        }

        public b h0(DebugInfo debugInfo) {
            if (debugInfo == DebugInfo.getDefaultInstance()) {
                return this;
            }
            if (!debugInfo.stackEntries_.isEmpty()) {
                if (this.f15556f.isEmpty()) {
                    this.f15556f = debugInfo.stackEntries_;
                    this.f15555e &= -2;
                } else {
                    a0();
                    this.f15556f.addAll(debugInfo.stackEntries_);
                }
                R();
            }
            if (!debugInfo.getDetail().isEmpty()) {
                this.f15557g = debugInfo.detail_;
                R();
            }
            z(((GeneratedMessageV3) debugInfo).unknownFields);
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
            this.f15556f = y0.f15344d;
            this.f15557g = "";
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15556f = y0.f15344d;
            this.f15557g = "";
            d0();
        }
    }

    /* synthetic */ DebugInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DebugInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.b.f15596c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DebugInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DebugInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DebugInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DebugInfo)) {
            return super.equals(obj);
        }
        DebugInfo debugInfo = (DebugInfo) obj;
        return m221getStackEntriesList().equals(debugInfo.m221getStackEntriesList()) && getDetail().equals(debugInfo.getDetail()) && this.unknownFields.equals(debugInfo.unknownFields);
    }

    public String getDetail() {
        Object obj = this.detail_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.detail_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDetailBytes() {
        Object obj = this.detail_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.detail_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DebugInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.stackEntries_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.stackEntries_.c1(i11));
        }
        int size = 0 + i10 + (m221getStackEntriesList().size() * 1);
        if (!GeneratedMessageV3.isStringEmpty(this.detail_)) {
            size += GeneratedMessageV3.computeStringSize(2, this.detail_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getStackEntries(int i9) {
        return this.stackEntries_.get(i9);
    }

    public ByteString getStackEntriesBytes(int i9) {
        return this.stackEntries_.j0(i9);
    }

    public int getStackEntriesCount() {
        return this.stackEntries_.size();
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
        if (getStackEntriesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m221getStackEntriesList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getDetail().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.rpc.b.f15597d.d(DebugInfo.class, b.class);
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
        return new DebugInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.stackEntries_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.stackEntries_.c1(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.detail_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.detail_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DebugInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DebugInfo debugInfo) {
        return DEFAULT_INSTANCE.toBuilder().h0(debugInfo);
    }

    public static DebugInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DebugInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getStackEntriesList */
    public i2 m221getStackEntriesList() {
        return this.stackEntries_;
    }

    private DebugInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DebugInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DebugInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static DebugInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DebugInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.stackEntries_ = y0.f15344d;
        this.detail_ = "";
    }

    public static DebugInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DebugInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DebugInfo parseFrom(InputStream inputStream) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static DebugInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private DebugInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.stackEntries_ = new y0();
                                    z11 |= true;
                                }
                                this.stackEntries_.add(K);
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.detail_ = pVar.K();
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
                    this.stackEntries_ = this.stackEntries_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static DebugInfo parseFrom(p pVar) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DebugInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DebugInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
