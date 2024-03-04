package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class SchemeHeaderTransformation extends GeneratedMessageV3 implements z0 {
    private static final SchemeHeaderTransformation DEFAULT_INSTANCE = new SchemeHeaderTransformation();
    private static final e2<SchemeHeaderTransformation> PARSER = new a();
    public static final int SCHEME_TO_OVERWRITE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int transformationCase_;
    private Object transformation_;

    /* loaded from: classes6.dex */
    public enum TransformationCase implements u0.c {
        SCHEME_TO_OVERWRITE(1),
        TRANSFORMATION_NOT_SET(0);
        
        private final int value;

        TransformationCase(int i9) {
            this.value = i9;
        }

        public static TransformationCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return SCHEME_TO_OVERWRITE;
            }
            return TRANSFORMATION_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TransformationCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SchemeHeaderTransformation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SchemeHeaderTransformation m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SchemeHeaderTransformation(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48120a;

        static {
            int[] iArr = new int[TransformationCase.values().length];
            f48120a = iArr;
            try {
                iArr[TransformationCase.SCHEME_TO_OVERWRITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48120a[TransformationCase.TRANSFORMATION_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements z0 {

        /* renamed from: e  reason: collision with root package name */
        private int f48121e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48122f;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.B.d(SchemeHeaderTransformation.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SchemeHeaderTransformation build() {
            SchemeHeaderTransformation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SchemeHeaderTransformation I() {
            SchemeHeaderTransformation schemeHeaderTransformation = new SchemeHeaderTransformation(this, (a) null);
            if (this.f48121e == 1) {
                schemeHeaderTransformation.transformation_ = this.f48122f;
            }
            schemeHeaderTransformation.transformationCase_ = this.f48121e;
            Q();
            return schemeHeaderTransformation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public SchemeHeaderTransformation getDefaultInstanceForType() {
            return SchemeHeaderTransformation.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SchemeHeaderTransformation$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SchemeHeaderTransformation) {
                return g0((SchemeHeaderTransformation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(SchemeHeaderTransformation schemeHeaderTransformation) {
            if (schemeHeaderTransformation == SchemeHeaderTransformation.getDefaultInstance()) {
                return this;
            }
            if (b.f48120a[schemeHeaderTransformation.getTransformationCase().ordinal()] == 1) {
                this.f48121e = 1;
                this.f48122f = schemeHeaderTransformation.transformation_;
                R();
            }
            z(((GeneratedMessageV3) schemeHeaderTransformation).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.A;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48121e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48121e = 0;
            b0();
        }
    }

    /* synthetic */ SchemeHeaderTransformation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SchemeHeaderTransformation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.A;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SchemeHeaderTransformation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SchemeHeaderTransformation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SchemeHeaderTransformation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchemeHeaderTransformation)) {
            return super.equals(obj);
        }
        SchemeHeaderTransformation schemeHeaderTransformation = (SchemeHeaderTransformation) obj;
        if (getTransformationCase().equals(schemeHeaderTransformation.getTransformationCase())) {
            return (this.transformationCase_ != 1 || getSchemeToOverwrite().equals(schemeHeaderTransformation.getSchemeToOverwrite())) && this.unknownFields.equals(schemeHeaderTransformation.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SchemeHeaderTransformation> getParserForType() {
        return PARSER;
    }

    public String getSchemeToOverwrite() {
        String str = this.transformationCase_ == 1 ? this.transformation_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.transformationCase_ == 1) {
            this.transformation_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getSchemeToOverwriteBytes() {
        String str = this.transformationCase_ == 1 ? this.transformation_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.transformationCase_ == 1) {
                this.transformation_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = (this.transformationCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.transformation_) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = computeStringSize;
        return computeStringSize;
    }

    public TransformationCase getTransformationCase() {
        return TransformationCase.forNumber(this.transformationCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasSchemeToOverwrite() {
        return this.transformationCase_ == 1;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.transformationCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSchemeToOverwrite().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.B.d(SchemeHeaderTransformation.class, c.class);
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
        return new SchemeHeaderTransformation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.transformationCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.transformation_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SchemeHeaderTransformation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(SchemeHeaderTransformation schemeHeaderTransformation) {
        return DEFAULT_INSTANCE.toBuilder().g0(schemeHeaderTransformation);
    }

    public static SchemeHeaderTransformation parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SchemeHeaderTransformation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.transformationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SchemeHeaderTransformation parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SchemeHeaderTransformation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SchemeHeaderTransformation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static SchemeHeaderTransformation parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static SchemeHeaderTransformation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private SchemeHeaderTransformation() {
        this.transformationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SchemeHeaderTransformation parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SchemeHeaderTransformation parseFrom(InputStream inputStream) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SchemeHeaderTransformation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            String K = pVar.K();
                            this.transformationCase_ = 1;
                            this.transformation_ = K;
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

    public static SchemeHeaderTransformation parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SchemeHeaderTransformation parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SchemeHeaderTransformation parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SchemeHeaderTransformation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
