package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.Endpoint;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.LocalityLbEndpoints;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.FractionalPercent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ClusterLoadAssignment extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b {
    public static final int CLUSTER_NAME_FIELD_NUMBER = 1;
    public static final int ENDPOINTS_FIELD_NUMBER = 2;
    public static final int NAMED_ENDPOINTS_FIELD_NUMBER = 5;
    public static final int POLICY_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object clusterName_;
    private List<LocalityLbEndpoints> endpoints_;
    private byte memoizedIsInitialized;
    private g1<String, Endpoint> namedEndpoints_;
    private Policy policy_;
    private static final ClusterLoadAssignment DEFAULT_INSTANCE = new ClusterLoadAssignment();
    private static final e2<ClusterLoadAssignment> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class Policy extends GeneratedMessageV3 implements d {
        public static final int DISABLE_OVERPROVISIONING_FIELD_NUMBER = 5;
        public static final int DROP_OVERLOADS_FIELD_NUMBER = 2;
        public static final int ENDPOINT_STALE_AFTER_FIELD_NUMBER = 4;
        public static final int OVERPROVISIONING_FACTOR_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private boolean disableOverprovisioning_;
        private List<DropOverload> dropOverloads_;
        private Duration endpointStaleAfter_;
        private byte memoizedIsInitialized;
        private UInt32Value overprovisioningFactor_;
        private static final Policy DEFAULT_INSTANCE = new Policy();
        private static final e2<Policy> PARSER = new a();

        /* loaded from: classes5.dex */
        public static final class DropOverload extends GeneratedMessageV3 implements c {
            public static final int CATEGORY_FIELD_NUMBER = 1;
            public static final int DROP_PERCENTAGE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private volatile Object category_;
            private FractionalPercent dropPercentage_;
            private byte memoizedIsInitialized;
            private static final DropOverload DEFAULT_INSTANCE = new DropOverload();
            private static final e2<DropOverload> PARSER = new a();

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<DropOverload> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public DropOverload m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new DropOverload(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private Object f46013e;

                /* renamed from: f  reason: collision with root package name */
                private FractionalPercent f46014f;

                /* renamed from: g  reason: collision with root package name */
                private q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> f46015g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return f.f46899f.d(DropOverload.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public DropOverload build() {
                    DropOverload I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public DropOverload I() {
                    DropOverload dropOverload = new DropOverload(this, (a) null);
                    dropOverload.category_ = this.f46013e;
                    q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f46015g;
                    if (q2Var == null) {
                        dropOverload.dropPercentage_ = this.f46014f;
                    } else {
                        dropOverload.dropPercentage_ = q2Var.b();
                    }
                    Q();
                    return dropOverload;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public DropOverload getDefaultInstanceForType() {
                    return DropOverload.getDefaultInstance();
                }

                public b d0(FractionalPercent fractionalPercent) {
                    q2<FractionalPercent, FractionalPercent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.b> q2Var = this.f46015g;
                    if (q2Var == null) {
                        FractionalPercent fractionalPercent2 = this.f46014f;
                        if (fractionalPercent2 != null) {
                            this.f46014f = FractionalPercent.newBuilder(fractionalPercent2).g0(fractionalPercent).I();
                        } else {
                            this.f46014f = fractionalPercent;
                        }
                        R();
                    } else {
                        q2Var.e(fractionalPercent);
                    }
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy$DropOverload r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy$DropOverload r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy$DropOverload$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof DropOverload) {
                        return h0((DropOverload) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return f.f46898e;
                }

                public b h0(DropOverload dropOverload) {
                    if (dropOverload == DropOverload.getDefaultInstance()) {
                        return this;
                    }
                    if (!dropOverload.getCategory().isEmpty()) {
                        this.f46013e = dropOverload.category_;
                        R();
                    }
                    if (dropOverload.hasDropPercentage()) {
                        d0(dropOverload.getDropPercentage());
                    }
                    z(((GeneratedMessageV3) dropOverload).unknownFields);
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
                    this.f46013e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f46013e = "";
                    b0();
                }
            }

            /* synthetic */ DropOverload(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static DropOverload getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return f.f46898e;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DropOverload parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DropOverload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<DropOverload> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DropOverload)) {
                    return super.equals(obj);
                }
                DropOverload dropOverload = (DropOverload) obj;
                if (getCategory().equals(dropOverload.getCategory()) && hasDropPercentage() == dropOverload.hasDropPercentage()) {
                    return (!hasDropPercentage() || getDropPercentage().equals(dropOverload.getDropPercentage())) && this.unknownFields.equals(dropOverload.unknownFields);
                }
                return false;
            }

            public String getCategory() {
                Object obj = this.category_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.category_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getCategoryBytes() {
                Object obj = this.category_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.category_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public FractionalPercent getDropPercentage() {
                FractionalPercent fractionalPercent = this.dropPercentage_;
                return fractionalPercent == null ? FractionalPercent.getDefaultInstance() : fractionalPercent;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.b getDropPercentageOrBuilder() {
                return getDropPercentage();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<DropOverload> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.category_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.category_);
                if (this.dropPercentage_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getDropPercentage());
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasDropPercentage() {
                return this.dropPercentage_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCategory().hashCode();
                if (hasDropPercentage()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getDropPercentage().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return f.f46899f.d(DropOverload.class, b.class);
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
                return new DropOverload();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.category_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.category_);
                }
                if (this.dropPercentage_ != null) {
                    codedOutputStream.L0(2, getDropPercentage());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ DropOverload(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(DropOverload dropOverload) {
                return DEFAULT_INSTANCE.toBuilder().h0(dropOverload);
            }

            public static DropOverload parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private DropOverload(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DropOverload parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static DropOverload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public DropOverload getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
            }

            public static DropOverload parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private DropOverload() {
                this.memoizedIsInitialized = (byte) -1;
                this.category_ = "";
            }

            public static DropOverload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static DropOverload parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static DropOverload parseFrom(InputStream inputStream) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private DropOverload(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.category_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    FractionalPercent fractionalPercent = this.dropPercentage_;
                                    FractionalPercent.b builder = fractionalPercent != null ? fractionalPercent.toBuilder() : null;
                                    FractionalPercent fractionalPercent2 = (FractionalPercent) pVar.B(FractionalPercent.parser(), f0Var);
                                    this.dropPercentage_ = fractionalPercent2;
                                    if (builder != null) {
                                        builder.g0(fractionalPercent2);
                                        this.dropPercentage_ = builder.I();
                                    }
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

            public static DropOverload parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static DropOverload parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static DropOverload parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (DropOverload) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Policy> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Policy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Policy(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f46016e;

            /* renamed from: f  reason: collision with root package name */
            private List<DropOverload> f46017f;

            /* renamed from: g  reason: collision with root package name */
            private l2<DropOverload, DropOverload.b, c> f46018g;

            /* renamed from: h  reason: collision with root package name */
            private UInt32Value f46019h;

            /* renamed from: i  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f46020i;

            /* renamed from: j  reason: collision with root package name */
            private Duration f46021j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f46022k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f46023l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f46016e & 1) == 0) {
                    this.f46017f = new ArrayList(this.f46017f);
                    this.f46016e |= 1;
                }
            }

            private l2<DropOverload, DropOverload.b, c> d0() {
                if (this.f46018g == null) {
                    this.f46018g = new l2<>(this.f46017f, (this.f46016e & 1) != 0, H(), O());
                    this.f46017f = null;
                }
                return this.f46018g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return f.f46897d.d(Policy.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Policy build() {
                Policy I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Policy I() {
                Policy policy = new Policy(this, (a) null);
                int i9 = this.f46016e;
                l2<DropOverload, DropOverload.b, c> l2Var = this.f46018g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f46017f = Collections.unmodifiableList(this.f46017f);
                        this.f46016e &= -2;
                    }
                    policy.dropOverloads_ = this.f46017f;
                } else {
                    policy.dropOverloads_ = l2Var.e();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46020i;
                if (q2Var == null) {
                    policy.overprovisioningFactor_ = this.f46019h;
                } else {
                    policy.overprovisioningFactor_ = q2Var.b();
                }
                q2<Duration, Duration.b, v> q2Var2 = this.f46022k;
                if (q2Var2 == null) {
                    policy.endpointStaleAfter_ = this.f46021j;
                } else {
                    policy.endpointStaleAfter_ = q2Var2.b();
                }
                policy.disableOverprovisioning_ = this.f46023l;
                Q();
                return policy;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Policy getDefaultInstanceForType() {
                return Policy.getDefaultInstance();
            }

            public b g0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f46022k;
                if (q2Var == null) {
                    Duration duration2 = this.f46021j;
                    if (duration2 != null) {
                        this.f46021j = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f46021j = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return f.f46896c;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.Policy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$Policy$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Policy) {
                    return j0((Policy) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Policy policy) {
                if (policy == Policy.getDefaultInstance()) {
                    return this;
                }
                if (this.f46018g == null) {
                    if (!policy.dropOverloads_.isEmpty()) {
                        if (this.f46017f.isEmpty()) {
                            this.f46017f = policy.dropOverloads_;
                            this.f46016e &= -2;
                        } else {
                            a0();
                            this.f46017f.addAll(policy.dropOverloads_);
                        }
                        R();
                    }
                } else if (!policy.dropOverloads_.isEmpty()) {
                    if (this.f46018g.k()) {
                        this.f46018g.f();
                        this.f46018g = null;
                        this.f46017f = policy.dropOverloads_;
                        this.f46016e &= -2;
                        this.f46018g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f46018g.b(policy.dropOverloads_);
                    }
                }
                if (policy.hasOverprovisioningFactor()) {
                    k0(policy.getOverprovisioningFactor());
                }
                if (policy.hasEndpointStaleAfter()) {
                    g0(policy.getEndpointStaleAfter());
                }
                if (policy.getDisableOverprovisioning()) {
                    m0(policy.getDisableOverprovisioning());
                }
                z(((GeneratedMessageV3) policy).unknownFields);
                R();
                return this;
            }

            public b k0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46020i;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f46019h;
                    if (uInt32Value2 != null) {
                        this.f46019h = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f46019h = uInt32Value;
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

            @Deprecated
            public b m0(boolean z10) {
                this.f46023l = z10;
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
                this.f46017f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46017f = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Policy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Policy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return f.f46896c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Policy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Policy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Policy> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Policy)) {
                return super.equals(obj);
            }
            Policy policy = (Policy) obj;
            if (getDropOverloadsList().equals(policy.getDropOverloadsList()) && hasOverprovisioningFactor() == policy.hasOverprovisioningFactor()) {
                if ((!hasOverprovisioningFactor() || getOverprovisioningFactor().equals(policy.getOverprovisioningFactor())) && hasEndpointStaleAfter() == policy.hasEndpointStaleAfter()) {
                    return (!hasEndpointStaleAfter() || getEndpointStaleAfter().equals(policy.getEndpointStaleAfter())) && getDisableOverprovisioning() == policy.getDisableOverprovisioning() && this.unknownFields.equals(policy.unknownFields);
                }
                return false;
            }
            return false;
        }

        @Deprecated
        public boolean getDisableOverprovisioning() {
            return this.disableOverprovisioning_;
        }

        public DropOverload getDropOverloads(int i9) {
            return this.dropOverloads_.get(i9);
        }

        public int getDropOverloadsCount() {
            return this.dropOverloads_.size();
        }

        public List<DropOverload> getDropOverloadsList() {
            return this.dropOverloads_;
        }

        public c getDropOverloadsOrBuilder(int i9) {
            return this.dropOverloads_.get(i9);
        }

        public List<? extends c> getDropOverloadsOrBuilderList() {
            return this.dropOverloads_;
        }

        public Duration getEndpointStaleAfter() {
            Duration duration = this.endpointStaleAfter_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getEndpointStaleAfterOrBuilder() {
            return getEndpointStaleAfter();
        }

        public UInt32Value getOverprovisioningFactor() {
            UInt32Value uInt32Value = this.overprovisioningFactor_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getOverprovisioningFactorOrBuilder() {
            return getOverprovisioningFactor();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Policy> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.dropOverloads_.size(); i11++) {
                i10 += CodedOutputStream.G(2, this.dropOverloads_.get(i11));
            }
            if (this.overprovisioningFactor_ != null) {
                i10 += CodedOutputStream.G(3, getOverprovisioningFactor());
            }
            if (this.endpointStaleAfter_ != null) {
                i10 += CodedOutputStream.G(4, getEndpointStaleAfter());
            }
            boolean z10 = this.disableOverprovisioning_;
            if (z10) {
                i10 += CodedOutputStream.e(5, z10);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasEndpointStaleAfter() {
            return this.endpointStaleAfter_ != null;
        }

        public boolean hasOverprovisioningFactor() {
            return this.overprovisioningFactor_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getDropOverloadsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDropOverloadsList().hashCode();
            }
            if (hasOverprovisioningFactor()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getOverprovisioningFactor().hashCode();
            }
            if (hasEndpointStaleAfter()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getEndpointStaleAfter().hashCode();
            }
            int d10 = (((((hashCode * 37) + 5) * 53) + u0.d(getDisableOverprovisioning())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = d10;
            return d10;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return f.f46897d.d(Policy.class, b.class);
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
            return new Policy();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.dropOverloads_.size(); i9++) {
                codedOutputStream.L0(2, this.dropOverloads_.get(i9));
            }
            if (this.overprovisioningFactor_ != null) {
                codedOutputStream.L0(3, getOverprovisioningFactor());
            }
            if (this.endpointStaleAfter_ != null) {
                codedOutputStream.L0(4, getEndpointStaleAfter());
            }
            boolean z10 = this.disableOverprovisioning_;
            if (z10) {
                codedOutputStream.n0(5, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Policy(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Policy policy) {
            return DEFAULT_INSTANCE.toBuilder().j0(policy);
        }

        public static Policy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Policy(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Policy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Policy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Policy getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
        }

        public static Policy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Policy() {
            this.memoizedIsInitialized = (byte) -1;
            this.dropOverloads_ = Collections.emptyList();
        }

        public static Policy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Policy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Policy parseFrom(InputStream inputStream) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Policy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 18) {
                                if (L == 26) {
                                    UInt32Value uInt32Value = this.overprovisioningFactor_;
                                    UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                    UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                    this.overprovisioningFactor_ = uInt32Value2;
                                    if (builder != null) {
                                        builder.g0(uInt32Value2);
                                        this.overprovisioningFactor_ = builder.I();
                                    }
                                } else if (L == 34) {
                                    Duration duration = this.endpointStaleAfter_;
                                    Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.endpointStaleAfter_ = duration2;
                                    if (builder2 != null) {
                                        builder2.e0(duration2);
                                        this.endpointStaleAfter_ = builder2.I();
                                    }
                                } else if (L != 40) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.disableOverprovisioning_ = pVar.r();
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dropOverloads_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dropOverloads_.add((DropOverload) pVar.B(DropOverload.parser(), f0Var));
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
                        this.dropOverloads_ = Collections.unmodifiableList(this.dropOverloads_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Policy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Policy parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Policy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Policy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ClusterLoadAssignment> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClusterLoadAssignment m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClusterLoadAssignment(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.b {

        /* renamed from: e  reason: collision with root package name */
        private int f46024e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46025f;

        /* renamed from: g  reason: collision with root package name */
        private List<LocalityLbEndpoints> f46026g;

        /* renamed from: h  reason: collision with root package name */
        private l2<LocalityLbEndpoints, LocalityLbEndpoints.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.g> f46027h;

        /* renamed from: i  reason: collision with root package name */
        private g1<String, Endpoint> f46028i;

        /* renamed from: j  reason: collision with root package name */
        private Policy f46029j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Policy, Policy.b, d> f46030k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46024e & 1) == 0) {
                this.f46026g = new ArrayList(this.f46026g);
                this.f46024e |= 1;
            }
        }

        private l2<LocalityLbEndpoints, LocalityLbEndpoints.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.g> d0() {
            if (this.f46027h == null) {
                this.f46027h = new l2<>(this.f46026g, (this.f46024e & 1) != 0, H(), O());
                this.f46026g = null;
            }
            return this.f46027h;
        }

        private g1<String, Endpoint> e0() {
            R();
            if (this.f46028i == null) {
                this.f46028i = g1.p(c.f46031a);
            }
            if (!this.f46028i.m()) {
                this.f46028i = this.f46028i.f();
            }
            return this.f46028i;
        }

        private g1<String, Endpoint> g0() {
            g1<String, Endpoint> g1Var = this.f46028i;
            return g1Var == null ? g1.g(c.f46031a) : g1Var;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f46895b.d(ClusterLoadAssignment.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 5) {
                return g0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 5) {
                return e0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClusterLoadAssignment build() {
            ClusterLoadAssignment I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClusterLoadAssignment I() {
            ClusterLoadAssignment clusterLoadAssignment = new ClusterLoadAssignment(this, (a) null);
            clusterLoadAssignment.clusterName_ = this.f46025f;
            l2<LocalityLbEndpoints, LocalityLbEndpoints.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.g> l2Var = this.f46027h;
            if (l2Var == null) {
                if ((this.f46024e & 1) != 0) {
                    this.f46026g = Collections.unmodifiableList(this.f46026g);
                    this.f46024e &= -2;
                }
                clusterLoadAssignment.endpoints_ = this.f46026g;
            } else {
                clusterLoadAssignment.endpoints_ = l2Var.e();
            }
            clusterLoadAssignment.namedEndpoints_ = g0();
            clusterLoadAssignment.namedEndpoints_.n();
            q2<Policy, Policy.b, d> q2Var = this.f46030k;
            if (q2Var == null) {
                clusterLoadAssignment.policy_ = this.f46029j;
            } else {
                clusterLoadAssignment.policy_ = q2Var.b();
            }
            Q();
            return clusterLoadAssignment;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ClusterLoadAssignment getDefaultInstanceForType() {
            return ClusterLoadAssignment.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f46894a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.access$3300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.ClusterLoadAssignment$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClusterLoadAssignment) {
                return k0((ClusterLoadAssignment) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(ClusterLoadAssignment clusterLoadAssignment) {
            if (clusterLoadAssignment == ClusterLoadAssignment.getDefaultInstance()) {
                return this;
            }
            if (!clusterLoadAssignment.getClusterName().isEmpty()) {
                this.f46025f = clusterLoadAssignment.clusterName_;
                R();
            }
            if (this.f46027h == null) {
                if (!clusterLoadAssignment.endpoints_.isEmpty()) {
                    if (this.f46026g.isEmpty()) {
                        this.f46026g = clusterLoadAssignment.endpoints_;
                        this.f46024e &= -2;
                    } else {
                        a0();
                        this.f46026g.addAll(clusterLoadAssignment.endpoints_);
                    }
                    R();
                }
            } else if (!clusterLoadAssignment.endpoints_.isEmpty()) {
                if (this.f46027h.k()) {
                    this.f46027h.f();
                    this.f46027h = null;
                    this.f46026g = clusterLoadAssignment.endpoints_;
                    this.f46024e &= -2;
                    this.f46027h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46027h.b(clusterLoadAssignment.endpoints_);
                }
            }
            e0().o(clusterLoadAssignment.internalGetNamedEndpoints());
            if (clusterLoadAssignment.hasPolicy()) {
                l0(clusterLoadAssignment.getPolicy());
            }
            z(((GeneratedMessageV3) clusterLoadAssignment).unknownFields);
            R();
            return this;
        }

        public b l0(Policy policy) {
            q2<Policy, Policy.b, d> q2Var = this.f46030k;
            if (q2Var == null) {
                Policy policy2 = this.f46029j;
                if (policy2 != null) {
                    this.f46029j = Policy.newBuilder(policy2).j0(policy).I();
                } else {
                    this.f46029j = policy;
                }
                R();
            } else {
                q2Var.e(policy);
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
            this.f46025f = "";
            this.f46026g = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46025f = "";
            this.f46026g = Collections.emptyList();
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, Endpoint> f46031a = e1.k(f.f46900g, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Endpoint.getDefaultInstance());
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ClusterLoadAssignment(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClusterLoadAssignment getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f46894a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, Endpoint> internalGetNamedEndpoints() {
        g1<String, Endpoint> g1Var = this.namedEndpoints_;
        return g1Var == null ? g1.g(c.f46031a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClusterLoadAssignment parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClusterLoadAssignment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClusterLoadAssignment> parser() {
        return PARSER;
    }

    public boolean containsNamedEndpoints(String str) {
        Objects.requireNonNull(str, "map key");
        return internalGetNamedEndpoints().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClusterLoadAssignment)) {
            return super.equals(obj);
        }
        ClusterLoadAssignment clusterLoadAssignment = (ClusterLoadAssignment) obj;
        if (getClusterName().equals(clusterLoadAssignment.getClusterName()) && getEndpointsList().equals(clusterLoadAssignment.getEndpointsList()) && internalGetNamedEndpoints().equals(clusterLoadAssignment.internalGetNamedEndpoints()) && hasPolicy() == clusterLoadAssignment.hasPolicy()) {
            return (!hasPolicy() || getPolicy().equals(clusterLoadAssignment.getPolicy())) && this.unknownFields.equals(clusterLoadAssignment.unknownFields);
        }
        return false;
    }

    public String getClusterName() {
        Object obj = this.clusterName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.clusterName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getClusterNameBytes() {
        Object obj = this.clusterName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clusterName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public LocalityLbEndpoints getEndpoints(int i9) {
        return this.endpoints_.get(i9);
    }

    public int getEndpointsCount() {
        return this.endpoints_.size();
    }

    public List<LocalityLbEndpoints> getEndpointsList() {
        return this.endpoints_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.g getEndpointsOrBuilder(int i9) {
        return this.endpoints_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.g> getEndpointsOrBuilderList() {
        return this.endpoints_;
    }

    @Deprecated
    public Map<String, Endpoint> getNamedEndpoints() {
        return getNamedEndpointsMap();
    }

    public int getNamedEndpointsCount() {
        return internalGetNamedEndpoints().i().size();
    }

    public Map<String, Endpoint> getNamedEndpointsMap() {
        return internalGetNamedEndpoints().i();
    }

    public Endpoint getNamedEndpointsOrDefault(String str, Endpoint endpoint) {
        Objects.requireNonNull(str, "map key");
        Map<String, Endpoint> i9 = internalGetNamedEndpoints().i();
        return i9.containsKey(str) ? i9.get(str) : endpoint;
    }

    public Endpoint getNamedEndpointsOrThrow(String str) {
        Objects.requireNonNull(str, "map key");
        Map<String, Endpoint> i9 = internalGetNamedEndpoints().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClusterLoadAssignment> getParserForType() {
        return PARSER;
    }

    public Policy getPolicy() {
        Policy policy = this.policy_;
        return policy == null ? Policy.getDefaultInstance() : policy;
    }

    public d getPolicyOrBuilder() {
        return getPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.clusterName_) ? GeneratedMessageV3.computeStringSize(1, this.clusterName_) + 0 : 0;
        for (int i10 = 0; i10 < this.endpoints_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.endpoints_.get(i10));
        }
        if (this.policy_ != null) {
            computeStringSize += CodedOutputStream.G(4, getPolicy());
        }
        for (Map.Entry<String, Endpoint> entry : internalGetNamedEndpoints().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(5, c.f46031a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasPolicy() {
        return this.policy_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getClusterName().hashCode();
        if (getEndpointsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getEndpointsList().hashCode();
        }
        if (!internalGetNamedEndpoints().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 5) * 53) + internalGetNamedEndpoints().hashCode();
        }
        if (hasPolicy()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getPolicy().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f46895b.d(ClusterLoadAssignment.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 5) {
            return internalGetNamedEndpoints();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new ClusterLoadAssignment();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.clusterName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.clusterName_);
        }
        for (int i9 = 0; i9 < this.endpoints_.size(); i9++) {
            codedOutputStream.L0(2, this.endpoints_.get(i9));
        }
        if (this.policy_ != null) {
            codedOutputStream.L0(4, getPolicy());
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetNamedEndpoints(), c.f46031a, 5);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClusterLoadAssignment(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClusterLoadAssignment clusterLoadAssignment) {
        return DEFAULT_INSTANCE.toBuilder().k0(clusterLoadAssignment);
    }

    public static ClusterLoadAssignment parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClusterLoadAssignment(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterLoadAssignment parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterLoadAssignment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClusterLoadAssignment getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static ClusterLoadAssignment parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClusterLoadAssignment() {
        this.memoizedIsInitialized = (byte) -1;
        this.clusterName_ = "";
        this.endpoints_ = Collections.emptyList();
    }

    public static ClusterLoadAssignment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClusterLoadAssignment parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClusterLoadAssignment parseFrom(InputStream inputStream) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClusterLoadAssignment(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.clusterName_ = pVar.K();
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.endpoints_ = new ArrayList();
                                z11 |= true;
                            }
                            this.endpoints_.add((LocalityLbEndpoints) pVar.B(LocalityLbEndpoints.parser(), f0Var));
                        } else if (L == 34) {
                            Policy policy = this.policy_;
                            Policy.b builder = policy != null ? policy.toBuilder() : null;
                            Policy policy2 = (Policy) pVar.B(Policy.parser(), f0Var);
                            this.policy_ = policy2;
                            if (builder != null) {
                                builder.j0(policy2);
                                this.policy_ = builder.I();
                            }
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.namedEndpoints_ = g1.p(c.f46031a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f46031a.getParserForType(), f0Var);
                            this.namedEndpoints_.l().put((String) e1Var.f(), (Endpoint) e1Var.h());
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
                    this.endpoints_ = Collections.unmodifiableList(this.endpoints_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClusterLoadAssignment parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterLoadAssignment parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClusterLoadAssignment parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ClusterLoadAssignment) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
