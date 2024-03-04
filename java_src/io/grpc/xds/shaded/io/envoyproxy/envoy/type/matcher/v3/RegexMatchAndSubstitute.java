package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

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
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RegexMatchAndSubstitute extends GeneratedMessageV3 implements k {
    private static final RegexMatchAndSubstitute DEFAULT_INSTANCE = new RegexMatchAndSubstitute();
    private static final e2<RegexMatchAndSubstitute> PARSER = new a();
    public static final int PATTERN_FIELD_NUMBER = 1;
    public static final int SUBSTITUTION_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private RegexMatcher pattern_;
    private volatile Object substitution_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RegexMatchAndSubstitute> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RegexMatchAndSubstitute m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RegexMatchAndSubstitute(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private RegexMatcher f50367e;

        /* renamed from: f  reason: collision with root package name */
        private q2<RegexMatcher, RegexMatcher.c, l> f50368f;

        /* renamed from: g  reason: collision with root package name */
        private Object f50369g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f50416f.d(RegexMatchAndSubstitute.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RegexMatchAndSubstitute build() {
            RegexMatchAndSubstitute I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RegexMatchAndSubstitute I() {
            RegexMatchAndSubstitute regexMatchAndSubstitute = new RegexMatchAndSubstitute(this, (a) null);
            q2<RegexMatcher, RegexMatcher.c, l> q2Var = this.f50368f;
            if (q2Var == null) {
                regexMatchAndSubstitute.pattern_ = this.f50367e;
            } else {
                regexMatchAndSubstitute.pattern_ = q2Var.b();
            }
            regexMatchAndSubstitute.substitution_ = this.f50369g;
            Q();
            return regexMatchAndSubstitute;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RegexMatchAndSubstitute getDefaultInstanceForType() {
            return RegexMatchAndSubstitute.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.RegexMatchAndSubstitute$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RegexMatchAndSubstitute) {
                return g0((RegexMatchAndSubstitute) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RegexMatchAndSubstitute regexMatchAndSubstitute) {
            if (regexMatchAndSubstitute == RegexMatchAndSubstitute.getDefaultInstance()) {
                return this;
            }
            if (regexMatchAndSubstitute.hasPattern()) {
                h0(regexMatchAndSubstitute.getPattern());
            }
            if (!regexMatchAndSubstitute.getSubstitution().isEmpty()) {
                this.f50369g = regexMatchAndSubstitute.substitution_;
                R();
            }
            z(((GeneratedMessageV3) regexMatchAndSubstitute).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m.f50415e;
        }

        public b h0(RegexMatcher regexMatcher) {
            q2<RegexMatcher, RegexMatcher.c, l> q2Var = this.f50368f;
            if (q2Var == null) {
                RegexMatcher regexMatcher2 = this.f50367e;
                if (regexMatcher2 != null) {
                    this.f50367e = RegexMatcher.newBuilder(regexMatcher2).g0(regexMatcher).I();
                } else {
                    this.f50367e = regexMatcher;
                }
                R();
            } else {
                q2Var.e(regexMatcher);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50369g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50369g = "";
            b0();
        }
    }

    /* synthetic */ RegexMatchAndSubstitute(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RegexMatchAndSubstitute getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f50415e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RegexMatchAndSubstitute parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RegexMatchAndSubstitute parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RegexMatchAndSubstitute> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegexMatchAndSubstitute)) {
            return super.equals(obj);
        }
        RegexMatchAndSubstitute regexMatchAndSubstitute = (RegexMatchAndSubstitute) obj;
        if (hasPattern() != regexMatchAndSubstitute.hasPattern()) {
            return false;
        }
        return (!hasPattern() || getPattern().equals(regexMatchAndSubstitute.getPattern())) && getSubstitution().equals(regexMatchAndSubstitute.getSubstitution()) && this.unknownFields.equals(regexMatchAndSubstitute.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RegexMatchAndSubstitute> getParserForType() {
        return PARSER;
    }

    public RegexMatcher getPattern() {
        RegexMatcher regexMatcher = this.pattern_;
        return regexMatcher == null ? RegexMatcher.getDefaultInstance() : regexMatcher;
    }

    public l getPatternOrBuilder() {
        return getPattern();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.pattern_ != null ? 0 + CodedOutputStream.G(1, getPattern()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.substitution_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.substitution_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSubstitution() {
        Object obj = this.substitution_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.substitution_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSubstitutionBytes() {
        Object obj = this.substitution_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.substitution_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPattern() {
        return this.pattern_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasPattern()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPattern().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getSubstitution().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m.f50416f.d(RegexMatchAndSubstitute.class, b.class);
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
        return new RegexMatchAndSubstitute();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.pattern_ != null) {
            codedOutputStream.L0(1, getPattern());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.substitution_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.substitution_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RegexMatchAndSubstitute(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RegexMatchAndSubstitute regexMatchAndSubstitute) {
        return DEFAULT_INSTANCE.toBuilder().g0(regexMatchAndSubstitute);
    }

    public static RegexMatchAndSubstitute parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RegexMatchAndSubstitute(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RegexMatchAndSubstitute parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RegexMatchAndSubstitute parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RegexMatchAndSubstitute getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RegexMatchAndSubstitute parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RegexMatchAndSubstitute() {
        this.memoizedIsInitialized = (byte) -1;
        this.substitution_ = "";
    }

    public static RegexMatchAndSubstitute parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RegexMatchAndSubstitute parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RegexMatchAndSubstitute parseFrom(InputStream inputStream) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RegexMatchAndSubstitute(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            RegexMatcher regexMatcher = this.pattern_;
                            RegexMatcher.c builder = regexMatcher != null ? regexMatcher.toBuilder() : null;
                            RegexMatcher regexMatcher2 = (RegexMatcher) pVar.B(RegexMatcher.parser(), f0Var);
                            this.pattern_ = regexMatcher2;
                            if (builder != null) {
                                builder.g0(regexMatcher2);
                                this.pattern_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.substitution_ = pVar.K();
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

    public static RegexMatchAndSubstitute parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RegexMatchAndSubstitute parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RegexMatchAndSubstitute parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RegexMatchAndSubstitute) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
