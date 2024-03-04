package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

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
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.FractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.CustomTag;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Tracing extends GeneratedMessageV3 implements o {
    public static final int CLIENT_SAMPLING_FIELD_NUMBER = 1;
    public static final int CUSTOM_TAGS_FIELD_NUMBER = 4;
    public static final int OVERALL_SAMPLING_FIELD_NUMBER = 3;
    public static final int RANDOM_SAMPLING_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private FractionalPercent clientSampling_;
    private List<CustomTag> customTags_;
    private byte memoizedIsInitialized;
    private FractionalPercent overallSampling_;
    private FractionalPercent randomSampling_;
    private static final Tracing DEFAULT_INSTANCE = new Tracing();
    private static final e2<Tracing> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Tracing> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Tracing m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Tracing(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements o {

        /* renamed from: e  reason: collision with root package name */
        private int f47222e;

        /* renamed from: f  reason: collision with root package name */
        private FractionalPercent f47223f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f47224g;

        /* renamed from: h  reason: collision with root package name */
        private FractionalPercent f47225h;

        /* renamed from: i  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f47226i;

        /* renamed from: j  reason: collision with root package name */
        private FractionalPercent f47227j;

        /* renamed from: k  reason: collision with root package name */
        private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f47228k;

        /* renamed from: l  reason: collision with root package name */
        private List<CustomTag> f47229l;

        /* renamed from: m  reason: collision with root package name */
        private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> f47230m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47222e & 1) == 0) {
                this.f47229l = new ArrayList(this.f47229l);
                this.f47222e |= 1;
            }
        }

        private l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> b0() {
            if (this.f47230m == null) {
                this.f47230m = new l2<>(this.f47229l, (this.f47222e & 1) != 0, H(), O());
                this.f47229l = null;
            }
            return this.f47230m;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47310n0.d(Tracing.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Tracing build() {
            Tracing I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Tracing I() {
            Tracing tracing = new Tracing(this, (a) null);
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f47224g;
            if (q2Var == null) {
                tracing.clientSampling_ = this.f47223f;
            } else {
                tracing.clientSampling_ = q2Var.b();
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var2 = this.f47226i;
            if (q2Var2 == null) {
                tracing.randomSampling_ = this.f47225h;
            } else {
                tracing.randomSampling_ = q2Var2.b();
            }
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var3 = this.f47228k;
            if (q2Var3 == null) {
                tracing.overallSampling_ = this.f47227j;
            } else {
                tracing.overallSampling_ = q2Var3.b();
            }
            l2<CustomTag, CustomTag.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> l2Var = this.f47230m;
            if (l2Var == null) {
                if ((this.f47222e & 1) != 0) {
                    this.f47229l = Collections.unmodifiableList(this.f47229l);
                    this.f47222e &= -2;
                }
                tracing.customTags_ = this.f47229l;
            } else {
                tracing.customTags_ = l2Var.e();
            }
            Q();
            return tracing;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Tracing getDefaultInstanceForType() {
            return Tracing.getDefaultInstance();
        }

        public b g0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f47224g;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f47223f;
                if (fractionalPercent2 != null) {
                    this.f47223f = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f47223f = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47308m0;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.Tracing$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Tracing) {
                return j0((Tracing) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Tracing tracing) {
            if (tracing == Tracing.getDefaultInstance()) {
                return this;
            }
            if (tracing.hasClientSampling()) {
                g0(tracing.getClientSampling());
            }
            if (tracing.hasRandomSampling()) {
                l0(tracing.getRandomSampling());
            }
            if (tracing.hasOverallSampling()) {
                k0(tracing.getOverallSampling());
            }
            if (this.f47230m == null) {
                if (!tracing.customTags_.isEmpty()) {
                    if (this.f47229l.isEmpty()) {
                        this.f47229l = tracing.customTags_;
                        this.f47222e &= -2;
                    } else {
                        a0();
                        this.f47229l.addAll(tracing.customTags_);
                    }
                    R();
                }
            } else if (!tracing.customTags_.isEmpty()) {
                if (this.f47230m.k()) {
                    this.f47230m.f();
                    this.f47230m = null;
                    this.f47229l = tracing.customTags_;
                    this.f47222e &= -2;
                    this.f47230m = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f47230m.b(tracing.customTags_);
                }
            }
            z(((GeneratedMessageV3) tracing).unknownFields);
            R();
            return this;
        }

        public b k0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f47228k;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f47227j;
                if (fractionalPercent2 != null) {
                    this.f47227j = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f47227j = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
            return this;
        }

        public b l0(FractionalPercent fractionalPercent) {
            q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f47226i;
            if (q2Var == null) {
                FractionalPercent fractionalPercent2 = this.f47225h;
                if (fractionalPercent2 != null) {
                    this.f47225h = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                } else {
                    this.f47225h = fractionalPercent;
                }
                R();
            } else {
                q2Var.e(fractionalPercent);
            }
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
            this.f47229l = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47229l = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Tracing(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Tracing getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47308m0;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Tracing parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Tracing parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Tracing> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tracing)) {
            return super.equals(obj);
        }
        Tracing tracing = (Tracing) obj;
        if (hasClientSampling() != tracing.hasClientSampling()) {
            return false;
        }
        if ((!hasClientSampling() || getClientSampling().equals(tracing.getClientSampling())) && hasRandomSampling() == tracing.hasRandomSampling()) {
            if ((!hasRandomSampling() || getRandomSampling().equals(tracing.getRandomSampling())) && hasOverallSampling() == tracing.hasOverallSampling()) {
                return (!hasOverallSampling() || getOverallSampling().equals(tracing.getOverallSampling())) && getCustomTagsList().equals(tracing.getCustomTagsList()) && this.unknownFields.equals(tracing.unknownFields);
            }
            return false;
        }
        return false;
    }

    public FractionalPercent getClientSampling() {
        FractionalPercent fractionalPercent = this.clientSampling_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getClientSamplingOrBuilder() {
        return getClientSampling();
    }

    public CustomTag getCustomTags(int i9) {
        return this.customTags_.get(i9);
    }

    public int getCustomTagsCount() {
        return this.customTags_.size();
    }

    public List<CustomTag> getCustomTagsList() {
        return this.customTags_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a getCustomTagsOrBuilder(int i9) {
        return this.customTags_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.type.tracing.v2.a> getCustomTagsOrBuilderList() {
        return this.customTags_;
    }

    public FractionalPercent getOverallSampling() {
        FractionalPercent fractionalPercent = this.overallSampling_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getOverallSamplingOrBuilder() {
        return getOverallSampling();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Tracing> getParserForType() {
        return PARSER;
    }

    public FractionalPercent getRandomSampling() {
        FractionalPercent fractionalPercent = this.randomSampling_;
        return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getRandomSamplingOrBuilder() {
        return getRandomSampling();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.clientSampling_ != null ? CodedOutputStream.G(1, getClientSampling()) + 0 : 0;
        if (this.randomSampling_ != null) {
            G += CodedOutputStream.G(2, getRandomSampling());
        }
        if (this.overallSampling_ != null) {
            G += CodedOutputStream.G(3, getOverallSampling());
        }
        for (int i10 = 0; i10 < this.customTags_.size(); i10++) {
            G += CodedOutputStream.G(4, this.customTags_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasClientSampling() {
        return this.clientSampling_ != null;
    }

    public boolean hasOverallSampling() {
        return this.overallSampling_ != null;
    }

    public boolean hasRandomSampling() {
        return this.randomSampling_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasClientSampling()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getClientSampling().hashCode();
        }
        if (hasRandomSampling()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getRandomSampling().hashCode();
        }
        if (hasOverallSampling()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getOverallSampling().hashCode();
        }
        if (getCustomTagsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getCustomTagsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47310n0.d(Tracing.class, b.class);
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
        return new Tracing();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.clientSampling_ != null) {
            codedOutputStream.L0(1, getClientSampling());
        }
        if (this.randomSampling_ != null) {
            codedOutputStream.L0(2, getRandomSampling());
        }
        if (this.overallSampling_ != null) {
            codedOutputStream.L0(3, getOverallSampling());
        }
        for (int i9 = 0; i9 < this.customTags_.size(); i9++) {
            codedOutputStream.L0(4, this.customTags_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Tracing(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Tracing tracing) {
        return DEFAULT_INSTANCE.toBuilder().j0(tracing);
    }

    public static Tracing parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Tracing(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Tracing parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Tracing parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Tracing getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static Tracing parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Tracing() {
        this.memoizedIsInitialized = (byte) -1;
        this.customTags_ = Collections.emptyList();
    }

    public static Tracing parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Tracing parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Tracing parseFrom(InputStream inputStream) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Tracing(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        FractionalPercent.b builder;
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
                            FractionalPercent fractionalPercent = this.clientSampling_;
                            builder = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                            FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                            this.clientSampling_ = fractionalPercent2;
                            if (builder != null) {
                                builder.g0(fractionalPercent2);
                                this.clientSampling_ = builder.I();
                            }
                        } else if (L == 18) {
                            FractionalPercent fractionalPercent3 = this.randomSampling_;
                            builder = fractionalPercent3 != null ? fractionalPercent3.toBuilder() : null;
                            FractionalPercent fractionalPercent4 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                            this.randomSampling_ = fractionalPercent4;
                            if (builder != null) {
                                builder.g0(fractionalPercent4);
                                this.randomSampling_ = builder.I();
                            }
                        } else if (L == 26) {
                            FractionalPercent fractionalPercent5 = this.overallSampling_;
                            builder = fractionalPercent5 != null ? fractionalPercent5.toBuilder() : null;
                            FractionalPercent fractionalPercent6 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                            this.overallSampling_ = fractionalPercent6;
                            if (builder != null) {
                                builder.g0(fractionalPercent6);
                                this.overallSampling_ = builder.I();
                            }
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.customTags_ = new ArrayList();
                                z11 |= true;
                            }
                            this.customTags_.add((CustomTag) pVar.B(CustomTag.parser(), f0Var));
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
                    this.customTags_ = Collections.unmodifiableList(this.customTags_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Tracing parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Tracing parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Tracing parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Tracing) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
