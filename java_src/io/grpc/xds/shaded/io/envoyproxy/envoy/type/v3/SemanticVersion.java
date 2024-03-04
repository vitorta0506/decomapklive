package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class SemanticVersion extends GeneratedMessageV3 implements i {
    public static final int MAJOR_NUMBER_FIELD_NUMBER = 1;
    public static final int MINOR_NUMBER_FIELD_NUMBER = 2;
    public static final int PATCH_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int majorNumber_;
    private byte memoizedIsInitialized;
    private int minorNumber_;
    private int patch_;
    private static final SemanticVersion DEFAULT_INSTANCE = new SemanticVersion();
    private static final e2<SemanticVersion> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SemanticVersion> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SemanticVersion m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SemanticVersion(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f50560e;

        /* renamed from: f  reason: collision with root package name */
        private int f50561f;

        /* renamed from: g  reason: collision with root package name */
        private int f50562g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f50577b.d(SemanticVersion.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SemanticVersion build() {
            SemanticVersion I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SemanticVersion I() {
            SemanticVersion semanticVersion = new SemanticVersion(this, (a) null);
            semanticVersion.majorNumber_ = this.f50560e;
            semanticVersion.minorNumber_ = this.f50561f;
            semanticVersion.patch_ = this.f50562g;
            Q();
            return semanticVersion;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SemanticVersion getDefaultInstanceForType() {
            return SemanticVersion.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.SemanticVersion$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SemanticVersion) {
                return g0((SemanticVersion) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(SemanticVersion semanticVersion) {
            if (semanticVersion == SemanticVersion.getDefaultInstance()) {
                return this;
            }
            if (semanticVersion.getMajorNumber() != 0) {
                j0(semanticVersion.getMajorNumber());
            }
            if (semanticVersion.getMinorNumber() != 0) {
                k0(semanticVersion.getMinorNumber());
            }
            if (semanticVersion.getPatch() != 0) {
                l0(semanticVersion.getPatch());
            }
            z(((GeneratedMessageV3) semanticVersion).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f50576a;
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

        public b j0(int i9) {
            this.f50560e = i9;
            R();
            return this;
        }

        public b k0(int i9) {
            this.f50561f = i9;
            R();
            return this;
        }

        public b l0(int i9) {
            this.f50562g = i9;
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ SemanticVersion(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SemanticVersion getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f50576a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SemanticVersion parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SemanticVersion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SemanticVersion> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SemanticVersion)) {
            return super.equals(obj);
        }
        SemanticVersion semanticVersion = (SemanticVersion) obj;
        return getMajorNumber() == semanticVersion.getMajorNumber() && getMinorNumber() == semanticVersion.getMinorNumber() && getPatch() == semanticVersion.getPatch() && this.unknownFields.equals(semanticVersion.unknownFields);
    }

    public int getMajorNumber() {
        return this.majorNumber_;
    }

    public int getMinorNumber() {
        return this.minorNumber_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SemanticVersion> getParserForType() {
        return PARSER;
    }

    public int getPatch() {
        return this.patch_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.majorNumber_;
        int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
        int i11 = this.minorNumber_;
        if (i11 != 0) {
            Y += CodedOutputStream.Y(2, i11);
        }
        int i12 = this.patch_;
        if (i12 != 0) {
            Y += CodedOutputStream.Y(3, i12);
        }
        int serializedSize = Y + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMajorNumber()) * 37) + 2) * 53) + getMinorNumber()) * 37) + 3) * 53) + getPatch()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f50577b.d(SemanticVersion.class, b.class);
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
        return new SemanticVersion();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.majorNumber_;
        if (i9 != 0) {
            codedOutputStream.c1(1, i9);
        }
        int i10 = this.minorNumber_;
        if (i10 != 0) {
            codedOutputStream.c1(2, i10);
        }
        int i11 = this.patch_;
        if (i11 != 0) {
            codedOutputStream.c1(3, i11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SemanticVersion(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SemanticVersion semanticVersion) {
        return DEFAULT_INSTANCE.toBuilder().g0(semanticVersion);
    }

    public static SemanticVersion parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SemanticVersion(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SemanticVersion parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SemanticVersion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SemanticVersion getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SemanticVersion parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SemanticVersion() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SemanticVersion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SemanticVersion parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private SemanticVersion(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 8) {
                            this.majorNumber_ = pVar.M();
                        } else if (L == 16) {
                            this.minorNumber_ = pVar.M();
                        } else if (L != 24) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.patch_ = pVar.M();
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

    public static SemanticVersion parseFrom(InputStream inputStream) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SemanticVersion parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SemanticVersion parseFrom(p pVar) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SemanticVersion parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SemanticVersion) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
