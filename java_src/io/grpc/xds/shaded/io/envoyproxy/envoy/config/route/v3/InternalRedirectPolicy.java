package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class InternalRedirectPolicy extends GeneratedMessageV3 implements h {
    public static final int ALLOW_CROSS_SCHEME_REDIRECT_FIELD_NUMBER = 4;
    public static final int MAX_INTERNAL_REDIRECTS_FIELD_NUMBER = 1;
    public static final int PREDICATES_FIELD_NUMBER = 3;
    public static final int REDIRECT_RESPONSE_CODES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean allowCrossSchemeRedirect_;
    private UInt32Value maxInternalRedirects_;
    private byte memoizedIsInitialized;
    private List<TypedExtensionConfig> predicates_;
    private int redirectResponseCodesMemoizedSerializedSize;
    private u0.g redirectResponseCodes_;
    private static final InternalRedirectPolicy DEFAULT_INSTANCE = new InternalRedirectPolicy();
    private static final e2<InternalRedirectPolicy> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<InternalRedirectPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public InternalRedirectPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new InternalRedirectPolicy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f49150e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f49151f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f49152g;

        /* renamed from: h  reason: collision with root package name */
        private u0.g f49153h;

        /* renamed from: i  reason: collision with root package name */
        private List<TypedExtensionConfig> f49154i;

        /* renamed from: j  reason: collision with root package name */
        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f49155j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f49156k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49150e & 2) == 0) {
                this.f49154i = new ArrayList(this.f49154i);
                this.f49150e |= 2;
            }
        }

        private void b0() {
            if ((this.f49150e & 1) == 0) {
                this.f49153h = GeneratedMessageV3.mutableCopy(this.f49153h);
                this.f49150e |= 1;
            }
        }

        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> e0() {
            if (this.f49155j == null) {
                this.f49155j = new l2<>(this.f49154i, (this.f49150e & 2) != 0, H(), O());
                this.f49154i = null;
            }
            return this.f49155j;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.Z0.d(InternalRedirectPolicy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public InternalRedirectPolicy build() {
            InternalRedirectPolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public InternalRedirectPolicy I() {
            InternalRedirectPolicy internalRedirectPolicy = new InternalRedirectPolicy(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49152g;
            if (q2Var == null) {
                internalRedirectPolicy.maxInternalRedirects_ = this.f49151f;
            } else {
                internalRedirectPolicy.maxInternalRedirects_ = q2Var.b();
            }
            if ((this.f49150e & 1) != 0) {
                this.f49153h.C();
                this.f49150e &= -2;
            }
            internalRedirectPolicy.redirectResponseCodes_ = this.f49153h;
            l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> l2Var = this.f49155j;
            if (l2Var == null) {
                if ((this.f49150e & 2) != 0) {
                    this.f49154i = Collections.unmodifiableList(this.f49154i);
                    this.f49150e &= -3;
                }
                internalRedirectPolicy.predicates_ = this.f49154i;
            } else {
                internalRedirectPolicy.predicates_ = l2Var.e();
            }
            internalRedirectPolicy.allowCrossSchemeRedirect_ = this.f49156k;
            Q();
            return internalRedirectPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public InternalRedirectPolicy getDefaultInstanceForType() {
            return InternalRedirectPolicy.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.Y0;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.InternalRedirectPolicy$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof InternalRedirectPolicy) {
                return j0((InternalRedirectPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(InternalRedirectPolicy internalRedirectPolicy) {
            if (internalRedirectPolicy == InternalRedirectPolicy.getDefaultInstance()) {
                return this;
            }
            if (internalRedirectPolicy.hasMaxInternalRedirects()) {
                k0(internalRedirectPolicy.getMaxInternalRedirects());
            }
            if (!internalRedirectPolicy.redirectResponseCodes_.isEmpty()) {
                if (this.f49153h.isEmpty()) {
                    this.f49153h = internalRedirectPolicy.redirectResponseCodes_;
                    this.f49150e &= -2;
                } else {
                    b0();
                    this.f49153h.addAll(internalRedirectPolicy.redirectResponseCodes_);
                }
                R();
            }
            if (this.f49155j == null) {
                if (!internalRedirectPolicy.predicates_.isEmpty()) {
                    if (this.f49154i.isEmpty()) {
                        this.f49154i = internalRedirectPolicy.predicates_;
                        this.f49150e &= -3;
                    } else {
                        a0();
                        this.f49154i.addAll(internalRedirectPolicy.predicates_);
                    }
                    R();
                }
            } else if (!internalRedirectPolicy.predicates_.isEmpty()) {
                if (this.f49155j.k()) {
                    this.f49155j.f();
                    this.f49155j = null;
                    this.f49154i = internalRedirectPolicy.predicates_;
                    this.f49150e &= -3;
                    this.f49155j = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f49155j.b(internalRedirectPolicy.predicates_);
                }
            }
            if (internalRedirectPolicy.getAllowCrossSchemeRedirect()) {
                m0(internalRedirectPolicy.getAllowCrossSchemeRedirect());
            }
            z(((GeneratedMessageV3) internalRedirectPolicy).unknownFields);
            R();
            return this;
        }

        public b k0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49152g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49151f;
                if (uInt32Value2 != null) {
                    this.f49151f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49151f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b m0(boolean z10) {
            this.f49156k = z10;
            R();
            return this;
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
            this.f49153h = InternalRedirectPolicy.access$1200();
            this.f49154i = Collections.emptyList();
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49153h = InternalRedirectPolicy.access$1200();
            this.f49154i = Collections.emptyList();
            g0();
        }
    }

    /* synthetic */ InternalRedirectPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$1200() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static InternalRedirectPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.Y0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static InternalRedirectPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InternalRedirectPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<InternalRedirectPolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InternalRedirectPolicy)) {
            return super.equals(obj);
        }
        InternalRedirectPolicy internalRedirectPolicy = (InternalRedirectPolicy) obj;
        if (hasMaxInternalRedirects() != internalRedirectPolicy.hasMaxInternalRedirects()) {
            return false;
        }
        return (!hasMaxInternalRedirects() || getMaxInternalRedirects().equals(internalRedirectPolicy.getMaxInternalRedirects())) && getRedirectResponseCodesList().equals(internalRedirectPolicy.getRedirectResponseCodesList()) && getPredicatesList().equals(internalRedirectPolicy.getPredicatesList()) && getAllowCrossSchemeRedirect() == internalRedirectPolicy.getAllowCrossSchemeRedirect() && this.unknownFields.equals(internalRedirectPolicy.unknownFields);
    }

    public boolean getAllowCrossSchemeRedirect() {
        return this.allowCrossSchemeRedirect_;
    }

    public UInt32Value getMaxInternalRedirects() {
        UInt32Value uInt32Value = this.maxInternalRedirects_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxInternalRedirectsOrBuilder() {
        return getMaxInternalRedirects();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<InternalRedirectPolicy> getParserForType() {
        return PARSER;
    }

    public TypedExtensionConfig getPredicates(int i9) {
        return this.predicates_.get(i9);
    }

    public int getPredicatesCount() {
        return this.predicates_.size();
    }

    public List<TypedExtensionConfig> getPredicatesList() {
        return this.predicates_;
    }

    public i1 getPredicatesOrBuilder(int i9) {
        return this.predicates_.get(i9);
    }

    public List<? extends i1> getPredicatesOrBuilderList() {
        return this.predicates_;
    }

    public int getRedirectResponseCodes(int i9) {
        return this.redirectResponseCodes_.getInt(i9);
    }

    public int getRedirectResponseCodesCount() {
        return this.redirectResponseCodes_.size();
    }

    public List<Integer> getRedirectResponseCodesList() {
        return this.redirectResponseCodes_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.maxInternalRedirects_ != null ? CodedOutputStream.G(1, getMaxInternalRedirects()) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.redirectResponseCodes_.size(); i11++) {
            i10 += CodedOutputStream.Z(this.redirectResponseCodes_.getInt(i11));
        }
        int i12 = G + i10;
        if (!getRedirectResponseCodesList().isEmpty()) {
            i12 = i12 + 1 + CodedOutputStream.y(i10);
        }
        this.redirectResponseCodesMemoizedSerializedSize = i10;
        for (int i13 = 0; i13 < this.predicates_.size(); i13++) {
            i12 += CodedOutputStream.G(3, this.predicates_.get(i13));
        }
        boolean z10 = this.allowCrossSchemeRedirect_;
        if (z10) {
            i12 += CodedOutputStream.e(4, z10);
        }
        int serializedSize = i12 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMaxInternalRedirects() {
        return this.maxInternalRedirects_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMaxInternalRedirects()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMaxInternalRedirects().hashCode();
        }
        if (getRedirectResponseCodesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getRedirectResponseCodesList().hashCode();
        }
        if (getPredicatesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPredicatesList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 4) * 53) + u0.d(getAllowCrossSchemeRedirect())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.Z0.d(InternalRedirectPolicy.class, b.class);
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
        return new InternalRedirectPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.maxInternalRedirects_ != null) {
            codedOutputStream.L0(1, getMaxInternalRedirects());
        }
        if (getRedirectResponseCodesList().size() > 0) {
            codedOutputStream.d1(18);
            codedOutputStream.d1(this.redirectResponseCodesMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.redirectResponseCodes_.size(); i9++) {
            codedOutputStream.d1(this.redirectResponseCodes_.getInt(i9));
        }
        for (int i10 = 0; i10 < this.predicates_.size(); i10++) {
            codedOutputStream.L0(3, this.predicates_.get(i10));
        }
        boolean z10 = this.allowCrossSchemeRedirect_;
        if (z10) {
            codedOutputStream.n0(4, z10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ InternalRedirectPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(InternalRedirectPolicy internalRedirectPolicy) {
        return DEFAULT_INSTANCE.toBuilder().j0(internalRedirectPolicy);
    }

    public static InternalRedirectPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private InternalRedirectPolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.redirectResponseCodesMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InternalRedirectPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static InternalRedirectPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public InternalRedirectPolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static InternalRedirectPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static InternalRedirectPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private InternalRedirectPolicy() {
        this.redirectResponseCodesMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.redirectResponseCodes_ = GeneratedMessageV3.emptyIntList();
        this.predicates_ = Collections.emptyList();
    }

    public static InternalRedirectPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static InternalRedirectPolicy parseFrom(InputStream inputStream) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InternalRedirectPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private InternalRedirectPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            UInt32Value uInt32Value = this.maxInternalRedirects_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxInternalRedirects_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.maxInternalRedirects_ = builder.I();
                            }
                        } else if (L == 16) {
                            if (!(z11 & true)) {
                                this.redirectResponseCodes_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            this.redirectResponseCodes_.D0(pVar.M());
                        } else if (L == 18) {
                            int q10 = pVar.q(pVar.D());
                            if (!(z11 & true) && pVar.e() > 0) {
                                this.redirectResponseCodes_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            while (pVar.e() > 0) {
                                this.redirectResponseCodes_.D0(pVar.M());
                            }
                            pVar.p(q10);
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.predicates_ = new ArrayList();
                                z11 |= true;
                            }
                            this.predicates_.add((TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var));
                        } else if (L != 32) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.allowCrossSchemeRedirect_ = pVar.r();
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
                    this.redirectResponseCodes_.C();
                }
                if (z11 & true) {
                    this.predicates_ = Collections.unmodifiableList(this.predicates_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static InternalRedirectPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static InternalRedirectPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (InternalRedirectPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
