package com.google.api;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SourceInfo extends GeneratedMessageV3 implements g1 {
    private static final SourceInfo DEFAULT_INSTANCE = new SourceInfo();
    private static final e2<SourceInfo> PARSER = new a();
    public static final int SOURCE_FILES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Any> sourceFiles_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SourceInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SourceInfo m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SourceInfo(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10912e;

        /* renamed from: f  reason: collision with root package name */
        private List<Any> f10913f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Any, Any.b, com.google.protobuf.f> f10914g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10912e & 1) == 0) {
                this.f10913f = new ArrayList(this.f10913f);
                this.f10912e |= 1;
            }
        }

        private l2<Any, Any.b, com.google.protobuf.f> d0() {
            if (this.f10914g == null) {
                this.f10914g = new l2<>(this.f10913f, (this.f10912e & 1) != 0, H(), O());
                this.f10913f = null;
            }
            return this.f10914g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h1.f11390b.d(SourceInfo.class, b.class);
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
            int i9 = this.f10912e;
            l2<Any, Any.b, com.google.protobuf.f> l2Var = this.f10914g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10913f = Collections.unmodifiableList(this.f10913f);
                    this.f10912e &= -2;
                }
                sourceInfo.sourceFiles_ = this.f10913f;
            } else {
                sourceInfo.sourceFiles_ = l2Var.e();
            }
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

        public b g0(SourceInfo sourceInfo) {
            if (sourceInfo == SourceInfo.getDefaultInstance()) {
                return this;
            }
            if (this.f10914g == null) {
                if (!sourceInfo.sourceFiles_.isEmpty()) {
                    if (this.f10913f.isEmpty()) {
                        this.f10913f = sourceInfo.sourceFiles_;
                        this.f10912e &= -2;
                    } else {
                        a0();
                        this.f10913f.addAll(sourceInfo.sourceFiles_);
                    }
                    R();
                }
            } else if (!sourceInfo.sourceFiles_.isEmpty()) {
                if (this.f10914g.k()) {
                    this.f10914g.f();
                    this.f10914g = null;
                    this.f10913f = sourceInfo.sourceFiles_;
                    this.f10912e &= -2;
                    this.f10914g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10914g.b(sourceInfo.sourceFiles_);
                }
            }
            z(((GeneratedMessageV3) sourceInfo).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h1.f11389a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.SourceInfo.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.SourceInfo.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.SourceInfo r3 = (com.google.api.SourceInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.SourceInfo r4 = (com.google.api.SourceInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.SourceInfo.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.SourceInfo$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SourceInfo) {
                return g0((SourceInfo) l1Var);
            }
            super.P0(l1Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10913f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10913f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SourceInfo(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SourceInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h1.f11389a;
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

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SourceInfo)) {
            return super.equals(obj);
        }
        SourceInfo sourceInfo = (SourceInfo) obj;
        return getSourceFilesList().equals(sourceInfo.getSourceFilesList()) && this.unknownFields.equals(sourceInfo.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SourceInfo> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.sourceFiles_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.sourceFiles_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Any getSourceFiles(int i9) {
        return this.sourceFiles_.get(i9);
    }

    public int getSourceFilesCount() {
        return this.sourceFiles_.size();
    }

    public List<Any> getSourceFilesList() {
        return this.sourceFiles_;
    }

    public com.google.protobuf.f getSourceFilesOrBuilder(int i9) {
        return this.sourceFiles_.get(i9);
    }

    public List<? extends com.google.protobuf.f> getSourceFilesOrBuilderList() {
        return this.sourceFiles_;
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
        if (getSourceFilesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSourceFilesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h1.f11390b.d(SourceInfo.class, b.class);
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
        for (int i9 = 0; i9 < this.sourceFiles_.size(); i9++) {
            codedOutputStream.L0(1, this.sourceFiles_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SourceInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SourceInfo sourceInfo) {
        return DEFAULT_INSTANCE.toBuilder().g0(sourceInfo);
    }

    public static SourceInfo parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SourceInfo parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SourceInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
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
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SourceInfo parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SourceInfo() {
        this.memoizedIsInitialized = (byte) -1;
        this.sourceFiles_ = Collections.emptyList();
    }

    public static SourceInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SourceInfo parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SourceInfo parseFrom(InputStream inputStream) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SourceInfo(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.sourceFiles_ = new ArrayList();
                                z11 |= true;
                            }
                            this.sourceFiles_.add(pVar.B(Any.parser(), f0Var));
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
                    this.sourceFiles_ = Collections.unmodifiableList(this.sourceFiles_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SourceInfo parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SourceInfo parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SourceInfo parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SourceInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
