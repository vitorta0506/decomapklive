package com.google.api;

import com.google.api.HttpRule;
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
public final class Http extends GeneratedMessageV3 implements e0 {
    public static final int FULLY_DECODE_RESERVED_EXPANSION_FIELD_NUMBER = 2;
    public static final int RULES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean fullyDecodeReservedExpansion_;
    private byte memoizedIsInitialized;
    private List<HttpRule> rules_;
    private static final Http DEFAULT_INSTANCE = new Http();
    private static final e2<Http> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Http> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Http m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Http(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10757e;

        /* renamed from: f  reason: collision with root package name */
        private List<HttpRule> f10758f;

        /* renamed from: g  reason: collision with root package name */
        private l2<HttpRule, HttpRule.c, g0> f10759g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f10760h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10757e & 1) == 0) {
                this.f10758f = new ArrayList(this.f10758f);
                this.f10757e |= 1;
            }
        }

        private l2<HttpRule, HttpRule.c, g0> d0() {
            if (this.f10759g == null) {
                this.f10759g = new l2<>(this.f10758f, (this.f10757e & 1) != 0, H(), O());
                this.f10758f = null;
            }
            return this.f10759g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f0.f11201b.d(Http.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Http build() {
            Http I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Http I() {
            Http http = new Http(this, (a) null);
            int i9 = this.f10757e;
            l2<HttpRule, HttpRule.c, g0> l2Var = this.f10759g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10758f = Collections.unmodifiableList(this.f10758f);
                    this.f10757e &= -2;
                }
                http.rules_ = this.f10758f;
            } else {
                http.rules_ = l2Var.e();
            }
            http.fullyDecodeReservedExpansion_ = this.f10760h;
            Q();
            return http;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Http getDefaultInstanceForType() {
            return Http.getDefaultInstance();
        }

        public b g0(Http http) {
            if (http == Http.getDefaultInstance()) {
                return this;
            }
            if (this.f10759g == null) {
                if (!http.rules_.isEmpty()) {
                    if (this.f10758f.isEmpty()) {
                        this.f10758f = http.rules_;
                        this.f10757e &= -2;
                    } else {
                        a0();
                        this.f10758f.addAll(http.rules_);
                    }
                    R();
                }
            } else if (!http.rules_.isEmpty()) {
                if (this.f10759g.k()) {
                    this.f10759g.f();
                    this.f10759g = null;
                    this.f10758f = http.rules_;
                    this.f10757e &= -2;
                    this.f10759g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10759g.b(http.rules_);
                }
            }
            if (http.getFullyDecodeReservedExpansion()) {
                l0(http.getFullyDecodeReservedExpansion());
            }
            z(((GeneratedMessageV3) http).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f0.f11200a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Http.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Http.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Http r3 = (com.google.api.Http) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Http r4 = (com.google.api.Http) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Http.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Http$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Http) {
                return g0((Http) l1Var);
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

        public b l0(boolean z10) {
            this.f10760h = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10758f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10758f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Http(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Http getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f0.f11200a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Http parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Http) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Http parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Http> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Http)) {
            return super.equals(obj);
        }
        Http http = (Http) obj;
        return getRulesList().equals(http.getRulesList()) && getFullyDecodeReservedExpansion() == http.getFullyDecodeReservedExpansion() && this.unknownFields.equals(http.unknownFields);
    }

    public boolean getFullyDecodeReservedExpansion() {
        return this.fullyDecodeReservedExpansion_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Http> getParserForType() {
        return PARSER;
    }

    public HttpRule getRules(int i9) {
        return this.rules_.get(i9);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<HttpRule> getRulesList() {
        return this.rules_;
    }

    public g0 getRulesOrBuilder(int i9) {
        return this.rules_.get(i9);
    }

    public List<? extends g0> getRulesOrBuilderList() {
        return this.rules_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.rules_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.rules_.get(i11));
        }
        boolean z10 = this.fullyDecodeReservedExpansion_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
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
        if (getRulesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRulesList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 2) * 53) + com.google.protobuf.u0.d(getFullyDecodeReservedExpansion())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f0.f11201b.d(Http.class, b.class);
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
        return new Http();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.rules_.size(); i9++) {
            codedOutputStream.L0(1, this.rules_.get(i9));
        }
        boolean z10 = this.fullyDecodeReservedExpansion_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Http(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Http http) {
        return DEFAULT_INSTANCE.toBuilder().g0(http);
    }

    public static Http parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Http(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Http parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Http getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Http parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Http() {
        this.memoizedIsInitialized = (byte) -1;
        this.rules_ = Collections.emptyList();
    }

    public static Http parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Http parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Http parseFrom(InputStream inputStream) throws IOException {
        return (Http) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Http(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (!(z11 & true)) {
                                this.rules_ = new ArrayList();
                                z11 |= true;
                            }
                            this.rules_.add(pVar.B(HttpRule.parser(), f0Var));
                        } else if (L != 16) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.fullyDecodeReservedExpansion_ = pVar.r();
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
                    this.rules_ = Collections.unmodifiableList(this.rules_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Http parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Http) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Http parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
