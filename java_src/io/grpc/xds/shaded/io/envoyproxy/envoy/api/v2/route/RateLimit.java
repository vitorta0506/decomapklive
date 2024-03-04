package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.BoolValue;
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
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HeaderMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RateLimit extends GeneratedMessageV3 implements h {
    public static final int ACTIONS_FIELD_NUMBER = 3;
    public static final int DISABLE_KEY_FIELD_NUMBER = 2;
    public static final int STAGE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<Action> actions_;
    private volatile Object disableKey_;
    private byte memoizedIsInitialized;
    private UInt32Value stage_;
    private static final RateLimit DEFAULT_INSTANCE = new RateLimit();
    private static final e2<RateLimit> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Action extends GeneratedMessageV3 implements c {
        public static final int DESTINATION_CLUSTER_FIELD_NUMBER = 2;
        public static final int GENERIC_KEY_FIELD_NUMBER = 5;
        public static final int HEADER_VALUE_MATCH_FIELD_NUMBER = 6;
        public static final int REMOTE_ADDRESS_FIELD_NUMBER = 4;
        public static final int REQUEST_HEADERS_FIELD_NUMBER = 3;
        public static final int SOURCE_CLUSTER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int actionSpecifierCase_;
        private Object actionSpecifier_;
        private byte memoizedIsInitialized;
        private static final Action DEFAULT_INSTANCE = new Action();
        private static final e2<Action> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ActionSpecifierCase implements u0.c {
            SOURCE_CLUSTER(1),
            DESTINATION_CLUSTER(2),
            REQUEST_HEADERS(3),
            REMOTE_ADDRESS(4),
            GENERIC_KEY(5),
            HEADER_VALUE_MATCH(6),
            ACTIONSPECIFIER_NOT_SET(0);
            
            private final int value;

            ActionSpecifierCase(int i9) {
                this.value = i9;
            }

            public static ActionSpecifierCase forNumber(int i9) {
                switch (i9) {
                    case 0:
                        return ACTIONSPECIFIER_NOT_SET;
                    case 1:
                        return SOURCE_CLUSTER;
                    case 2:
                        return DESTINATION_CLUSTER;
                    case 3:
                        return REQUEST_HEADERS;
                    case 4:
                        return REMOTE_ADDRESS;
                    case 5:
                        return GENERIC_KEY;
                    case 6:
                        return HEADER_VALUE_MATCH;
                    default:
                        return null;
                }
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ActionSpecifierCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        public static final class DestinationCluster extends GeneratedMessageV3 implements c {
            private static final DestinationCluster DEFAULT_INSTANCE = new DestinationCluster();
            private static final e2<DestinationCluster> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<DestinationCluster> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public DestinationCluster m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new DestinationCluster(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.f47330x0.d(DestinationCluster.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public DestinationCluster build() {
                    DestinationCluster I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public DestinationCluster I() {
                    DestinationCluster destinationCluster = new DestinationCluster(this, (a) null);
                    Q();
                    return destinationCluster;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public DestinationCluster getDefaultInstanceForType() {
                    return DestinationCluster.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.DestinationCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.DestinationCluster.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$DestinationCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.DestinationCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$DestinationCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.DestinationCluster) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.DestinationCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$DestinationCluster$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof DestinationCluster) {
                        return g0((DestinationCluster) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(DestinationCluster destinationCluster) {
                    if (destinationCluster == DestinationCluster.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) destinationCluster).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.f47328w0;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
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

            /* synthetic */ DestinationCluster(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static DestinationCluster getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.f47328w0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DestinationCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DestinationCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<DestinationCluster> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof DestinationCluster) {
                    return this.unknownFields.equals(((DestinationCluster) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<DestinationCluster> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.f47330x0.d(DestinationCluster.class, b.class);
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
                return new DestinationCluster();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ DestinationCluster(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(DestinationCluster destinationCluster) {
                return DEFAULT_INSTANCE.toBuilder().g0(destinationCluster);
            }

            public static DestinationCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private DestinationCluster(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DestinationCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static DestinationCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public DestinationCluster getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static DestinationCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private DestinationCluster() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DestinationCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static DestinationCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private DestinationCluster(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static DestinationCluster parseFrom(InputStream inputStream) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static DestinationCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static DestinationCluster parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static DestinationCluster parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (DestinationCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class GenericKey extends GeneratedMessageV3 implements d {
            public static final int DESCRIPTOR_VALUE_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private volatile Object descriptorValue_;
            private byte memoizedIsInitialized;
            private static final GenericKey DEFAULT_INSTANCE = new GenericKey();
            private static final e2<GenericKey> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<GenericKey> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public GenericKey m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new GenericKey(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {

                /* renamed from: e  reason: collision with root package name */
                private Object f47056e;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.D0.d(GenericKey.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public GenericKey build() {
                    GenericKey I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public GenericKey I() {
                    GenericKey genericKey = new GenericKey(this, (a) null);
                    genericKey.descriptorValue_ = this.f47056e;
                    Q();
                    return genericKey;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public GenericKey getDefaultInstanceForType() {
                    return GenericKey.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.GenericKey.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.GenericKey.access$3800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$GenericKey r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.GenericKey) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$GenericKey r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.GenericKey) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.GenericKey.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$GenericKey$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof GenericKey) {
                        return g0((GenericKey) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(GenericKey genericKey) {
                    if (genericKey == GenericKey.getDefaultInstance()) {
                        return this;
                    }
                    if (!genericKey.getDescriptorValue().isEmpty()) {
                        this.f47056e = genericKey.descriptorValue_;
                        R();
                    }
                    z(((GeneratedMessageV3) genericKey).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.C0;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f47056e = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47056e = "";
                    b0();
                }
            }

            /* synthetic */ GenericKey(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static GenericKey getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.C0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static GenericKey parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GenericKey parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<GenericKey> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof GenericKey)) {
                    return super.equals(obj);
                }
                GenericKey genericKey = (GenericKey) obj;
                return getDescriptorValue().equals(genericKey.getDescriptorValue()) && this.unknownFields.equals(genericKey.unknownFields);
            }

            public String getDescriptorValue() {
                Object obj = this.descriptorValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.descriptorValue_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDescriptorValueBytes() {
                Object obj = this.descriptorValue_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.descriptorValue_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<GenericKey> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (GeneratedMessageV3.isStringEmpty(this.descriptorValue_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.descriptorValue_)) + this.unknownFields.getSerializedSize();
                this.memoizedSize = computeStringSize;
                return computeStringSize;
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
                int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescriptorValue().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.D0.d(GenericKey.class, b.class);
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
                return new GenericKey();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorValue_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.descriptorValue_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ GenericKey(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(GenericKey genericKey) {
                return DEFAULT_INSTANCE.toBuilder().g0(genericKey);
            }

            public static GenericKey parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private GenericKey(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static GenericKey parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static GenericKey parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public GenericKey getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static GenericKey parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private GenericKey() {
                this.memoizedIsInitialized = (byte) -1;
                this.descriptorValue_ = "";
            }

            public static GenericKey parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static GenericKey parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static GenericKey parseFrom(InputStream inputStream) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private GenericKey(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.descriptorValue_ = pVar.K();
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

            public static GenericKey parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static GenericKey parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static GenericKey parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (GenericKey) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class HeaderValueMatch extends GeneratedMessageV3 implements e {
            public static final int DESCRIPTOR_VALUE_FIELD_NUMBER = 1;
            public static final int EXPECT_MATCH_FIELD_NUMBER = 2;
            public static final int HEADERS_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private volatile Object descriptorValue_;
            private BoolValue expectMatch_;
            private List<HeaderMatcher> headers_;
            private byte memoizedIsInitialized;
            private static final HeaderValueMatch DEFAULT_INSTANCE = new HeaderValueMatch();
            private static final e2<HeaderValueMatch> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<HeaderValueMatch> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public HeaderValueMatch m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new HeaderValueMatch(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private int f47057e;

                /* renamed from: f  reason: collision with root package name */
                private Object f47058f;

                /* renamed from: g  reason: collision with root package name */
                private BoolValue f47059g;

                /* renamed from: h  reason: collision with root package name */
                private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47060h;

                /* renamed from: i  reason: collision with root package name */
                private List<HeaderMatcher> f47061i;

                /* renamed from: j  reason: collision with root package name */
                private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> f47062j;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f47057e & 1) == 0) {
                        this.f47061i = new ArrayList(this.f47061i);
                        this.f47057e |= 1;
                    }
                }

                private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> d0() {
                    if (this.f47062j == null) {
                        this.f47062j = new l2<>(this.f47061i, (this.f47057e & 1) != 0, H(), O());
                        this.f47061i = null;
                    }
                    return this.f47062j;
                }

                private void e0() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        d0();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.F0.d(HeaderValueMatch.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public HeaderValueMatch build() {
                    HeaderValueMatch I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public HeaderValueMatch I() {
                    HeaderValueMatch headerValueMatch = new HeaderValueMatch(this, (a) null);
                    headerValueMatch.descriptorValue_ = this.f47058f;
                    q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47060h;
                    if (q2Var == null) {
                        headerValueMatch.expectMatch_ = this.f47059g;
                    } else {
                        headerValueMatch.expectMatch_ = q2Var.b();
                    }
                    l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> l2Var = this.f47062j;
                    if (l2Var == null) {
                        if ((this.f47057e & 1) != 0) {
                            this.f47061i = Collections.unmodifiableList(this.f47061i);
                            this.f47057e &= -2;
                        }
                        headerValueMatch.headers_ = this.f47061i;
                    } else {
                        headerValueMatch.headers_ = l2Var.e();
                    }
                    Q();
                    return headerValueMatch;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: b0 */
                public HeaderValueMatch getDefaultInstanceForType() {
                    return HeaderValueMatch.getDefaultInstance();
                }

                public b g0(BoolValue boolValue) {
                    q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47060h;
                    if (q2Var == null) {
                        BoolValue boolValue2 = this.f47059g;
                        if (boolValue2 != null) {
                            this.f47059g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                        } else {
                            this.f47059g = boolValue;
                        }
                        R();
                    } else {
                        q2Var.e(boolValue);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.E0;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.HeaderValueMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.HeaderValueMatch.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$HeaderValueMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.HeaderValueMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$HeaderValueMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.HeaderValueMatch) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.HeaderValueMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$HeaderValueMatch$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: i0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof HeaderValueMatch) {
                        return j0((HeaderValueMatch) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b j0(HeaderValueMatch headerValueMatch) {
                    if (headerValueMatch == HeaderValueMatch.getDefaultInstance()) {
                        return this;
                    }
                    if (!headerValueMatch.getDescriptorValue().isEmpty()) {
                        this.f47058f = headerValueMatch.descriptorValue_;
                        R();
                    }
                    if (headerValueMatch.hasExpectMatch()) {
                        g0(headerValueMatch.getExpectMatch());
                    }
                    if (this.f47062j == null) {
                        if (!headerValueMatch.headers_.isEmpty()) {
                            if (this.f47061i.isEmpty()) {
                                this.f47061i = headerValueMatch.headers_;
                                this.f47057e &= -2;
                            } else {
                                a0();
                                this.f47061i.addAll(headerValueMatch.headers_);
                            }
                            R();
                        }
                    } else if (!headerValueMatch.headers_.isEmpty()) {
                        if (this.f47062j.k()) {
                            this.f47062j.f();
                            this.f47062j = null;
                            this.f47061i = headerValueMatch.headers_;
                            this.f47057e &= -2;
                            this.f47062j = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                        } else {
                            this.f47062j.b(headerValueMatch.headers_);
                        }
                    }
                    z(((GeneratedMessageV3) headerValueMatch).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: k0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
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
                    this.f47058f = "";
                    this.f47061i = Collections.emptyList();
                    e0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47058f = "";
                    this.f47061i = Collections.emptyList();
                    e0();
                }
            }

            /* synthetic */ HeaderValueMatch(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static HeaderValueMatch getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.E0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static HeaderValueMatch parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static HeaderValueMatch parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<HeaderValueMatch> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof HeaderValueMatch)) {
                    return super.equals(obj);
                }
                HeaderValueMatch headerValueMatch = (HeaderValueMatch) obj;
                if (getDescriptorValue().equals(headerValueMatch.getDescriptorValue()) && hasExpectMatch() == headerValueMatch.hasExpectMatch()) {
                    return (!hasExpectMatch() || getExpectMatch().equals(headerValueMatch.getExpectMatch())) && getHeadersList().equals(headerValueMatch.getHeadersList()) && this.unknownFields.equals(headerValueMatch.unknownFields);
                }
                return false;
            }

            public String getDescriptorValue() {
                Object obj = this.descriptorValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.descriptorValue_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDescriptorValueBytes() {
                Object obj = this.descriptorValue_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.descriptorValue_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public BoolValue getExpectMatch() {
                BoolValue boolValue = this.expectMatch_;
                return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
            }

            public com.google.protobuf.l getExpectMatchOrBuilder() {
                return getExpectMatch();
            }

            public HeaderMatcher getHeaders(int i9) {
                return this.headers_.get(i9);
            }

            public int getHeadersCount() {
                return this.headers_.size();
            }

            public List<HeaderMatcher> getHeadersList() {
                return this.headers_;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e getHeadersOrBuilder(int i9) {
                return this.headers_.get(i9);
            }

            public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> getHeadersOrBuilderList() {
                return this.headers_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<HeaderValueMatch> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.descriptorValue_) ? GeneratedMessageV3.computeStringSize(1, this.descriptorValue_) + 0 : 0;
                if (this.expectMatch_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getExpectMatch());
                }
                for (int i10 = 0; i10 < this.headers_.size(); i10++) {
                    computeStringSize += CodedOutputStream.G(3, this.headers_.get(i10));
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasExpectMatch() {
                return this.expectMatch_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescriptorValue().hashCode();
                if (hasExpectMatch()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getExpectMatch().hashCode();
                }
                if (getHeadersCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getHeadersList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.F0.d(HeaderValueMatch.class, b.class);
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
                return new HeaderValueMatch();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorValue_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.descriptorValue_);
                }
                if (this.expectMatch_ != null) {
                    codedOutputStream.L0(2, getExpectMatch());
                }
                for (int i9 = 0; i9 < this.headers_.size(); i9++) {
                    codedOutputStream.L0(3, this.headers_.get(i9));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ HeaderValueMatch(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(HeaderValueMatch headerValueMatch) {
                return DEFAULT_INSTANCE.toBuilder().j0(headerValueMatch);
            }

            public static HeaderValueMatch parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private HeaderValueMatch(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static HeaderValueMatch parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static HeaderValueMatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public HeaderValueMatch getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
            }

            public static HeaderValueMatch parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private HeaderValueMatch() {
                this.memoizedIsInitialized = (byte) -1;
                this.descriptorValue_ = "";
                this.headers_ = Collections.emptyList();
            }

            public static HeaderValueMatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static HeaderValueMatch parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static HeaderValueMatch parseFrom(InputStream inputStream) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private HeaderValueMatch(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.descriptorValue_ = pVar.K();
                                } else if (L == 18) {
                                    BoolValue boolValue = this.expectMatch_;
                                    BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                    BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                    this.expectMatch_ = boolValue2;
                                    if (builder != null) {
                                        builder.d0(boolValue2);
                                        this.expectMatch_ = builder.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.headers_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.headers_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
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
                            this.headers_ = Collections.unmodifiableList(this.headers_);
                        }
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static HeaderValueMatch parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static HeaderValueMatch parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static HeaderValueMatch parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (HeaderValueMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class RemoteAddress extends GeneratedMessageV3 implements f {
            private static final RemoteAddress DEFAULT_INSTANCE = new RemoteAddress();
            private static final e2<RemoteAddress> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<RemoteAddress> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public RemoteAddress m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new RemoteAddress(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements f {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.B0.d(RemoteAddress.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public RemoteAddress build() {
                    RemoteAddress I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public RemoteAddress I() {
                    RemoteAddress remoteAddress = new RemoteAddress(this, (a) null);
                    Q();
                    return remoteAddress;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public RemoteAddress getDefaultInstanceForType() {
                    return RemoteAddress.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RemoteAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RemoteAddress.access$3000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RemoteAddress r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RemoteAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RemoteAddress r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RemoteAddress) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RemoteAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RemoteAddress$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof RemoteAddress) {
                        return g0((RemoteAddress) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(RemoteAddress remoteAddress) {
                    if (remoteAddress == RemoteAddress.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) remoteAddress).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.A0;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
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

            /* synthetic */ RemoteAddress(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static RemoteAddress getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.A0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static RemoteAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static RemoteAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<RemoteAddress> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof RemoteAddress) {
                    return this.unknownFields.equals(((RemoteAddress) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<RemoteAddress> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.B0.d(RemoteAddress.class, b.class);
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
                return new RemoteAddress();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ RemoteAddress(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(RemoteAddress remoteAddress) {
                return DEFAULT_INSTANCE.toBuilder().g0(remoteAddress);
            }

            public static RemoteAddress parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private RemoteAddress(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static RemoteAddress parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static RemoteAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public RemoteAddress getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static RemoteAddress parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private RemoteAddress() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static RemoteAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static RemoteAddress parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private RemoteAddress(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static RemoteAddress parseFrom(InputStream inputStream) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static RemoteAddress parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static RemoteAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static RemoteAddress parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (RemoteAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class RequestHeaders extends GeneratedMessageV3 implements g {
            public static final int DESCRIPTOR_KEY_FIELD_NUMBER = 2;
            public static final int HEADER_NAME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private volatile Object descriptorKey_;
            private volatile Object headerName_;
            private byte memoizedIsInitialized;
            private static final RequestHeaders DEFAULT_INSTANCE = new RequestHeaders();
            private static final e2<RequestHeaders> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<RequestHeaders> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public RequestHeaders m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new RequestHeaders(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements g {

                /* renamed from: e  reason: collision with root package name */
                private Object f47063e;

                /* renamed from: f  reason: collision with root package name */
                private Object f47064f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.f47334z0.d(RequestHeaders.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public RequestHeaders build() {
                    RequestHeaders I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public RequestHeaders I() {
                    RequestHeaders requestHeaders = new RequestHeaders(this, (a) null);
                    requestHeaders.headerName_ = this.f47063e;
                    requestHeaders.descriptorKey_ = this.f47064f;
                    Q();
                    return requestHeaders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public RequestHeaders getDefaultInstanceForType() {
                    return RequestHeaders.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RequestHeaders.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RequestHeaders.access$2100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RequestHeaders r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RequestHeaders) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RequestHeaders r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RequestHeaders) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.RequestHeaders.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$RequestHeaders$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof RequestHeaders) {
                        return g0((RequestHeaders) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(RequestHeaders requestHeaders) {
                    if (requestHeaders == RequestHeaders.getDefaultInstance()) {
                        return this;
                    }
                    if (!requestHeaders.getHeaderName().isEmpty()) {
                        this.f47063e = requestHeaders.headerName_;
                        R();
                    }
                    if (!requestHeaders.getDescriptorKey().isEmpty()) {
                        this.f47064f = requestHeaders.descriptorKey_;
                        R();
                    }
                    z(((GeneratedMessageV3) requestHeaders).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.f47332y0;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f47063e = "";
                    this.f47064f = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f47063e = "";
                    this.f47064f = "";
                    b0();
                }
            }

            /* synthetic */ RequestHeaders(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static RequestHeaders getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.f47332y0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static RequestHeaders parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static RequestHeaders parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<RequestHeaders> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof RequestHeaders)) {
                    return super.equals(obj);
                }
                RequestHeaders requestHeaders = (RequestHeaders) obj;
                return getHeaderName().equals(requestHeaders.getHeaderName()) && getDescriptorKey().equals(requestHeaders.getDescriptorKey()) && this.unknownFields.equals(requestHeaders.unknownFields);
            }

            public String getDescriptorKey() {
                Object obj = this.descriptorKey_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.descriptorKey_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDescriptorKeyBytes() {
                Object obj = this.descriptorKey_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.descriptorKey_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public String getHeaderName() {
                Object obj = this.headerName_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.headerName_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getHeaderNameBytes() {
                Object obj = this.headerName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.headerName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<RequestHeaders> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.headerName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.headerName_);
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorKey_)) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(2, this.descriptorKey_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHeaderName().hashCode()) * 37) + 2) * 53) + getDescriptorKey().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.f47334z0.d(RequestHeaders.class, b.class);
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
                return new RequestHeaders();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.headerName_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.headerName_);
                }
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorKey_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.descriptorKey_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ RequestHeaders(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(RequestHeaders requestHeaders) {
                return DEFAULT_INSTANCE.toBuilder().g0(requestHeaders);
            }

            public static RequestHeaders parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private RequestHeaders(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static RequestHeaders parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static RequestHeaders parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public RequestHeaders getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static RequestHeaders parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private RequestHeaders() {
                this.memoizedIsInitialized = (byte) -1;
                this.headerName_ = "";
                this.descriptorKey_ = "";
            }

            public static RequestHeaders parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static RequestHeaders parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static RequestHeaders parseFrom(InputStream inputStream) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private RequestHeaders(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L != 0) {
                                    if (L == 10) {
                                        this.headerName_ = pVar.K();
                                    } else if (L != 18) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.descriptorKey_ = pVar.K();
                                    }
                                }
                                z10 = true;
                            } catch (IOException e10) {
                                throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                            }
                        } catch (InvalidProtocolBufferException e11) {
                            throw e11.setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static RequestHeaders parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static RequestHeaders parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static RequestHeaders parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (RequestHeaders) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class SourceCluster extends GeneratedMessageV3 implements h {
            private static final SourceCluster DEFAULT_INSTANCE = new SourceCluster();
            private static final e2<SourceCluster> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<SourceCluster> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public SourceCluster m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new SourceCluster(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements h {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return l.f47326v0.d(SourceCluster.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public SourceCluster build() {
                    SourceCluster I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public SourceCluster I() {
                    SourceCluster sourceCluster = new SourceCluster(this, (a) null);
                    Q();
                    return sourceCluster;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public SourceCluster getDefaultInstanceForType() {
                    return SourceCluster.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.SourceCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.SourceCluster.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$SourceCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.SourceCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$SourceCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.SourceCluster) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.SourceCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$SourceCluster$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof SourceCluster) {
                        return g0((SourceCluster) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(SourceCluster sourceCluster) {
                    if (sourceCluster == SourceCluster.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) sourceCluster).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return l.f47324u0;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
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

            /* synthetic */ SourceCluster(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static SourceCluster getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return l.f47324u0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static SourceCluster parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static SourceCluster parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<SourceCluster> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof SourceCluster) {
                    return this.unknownFields.equals(((SourceCluster) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<SourceCluster> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return l.f47326v0.d(SourceCluster.class, b.class);
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
                return new SourceCluster();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ SourceCluster(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(SourceCluster sourceCluster) {
                return DEFAULT_INSTANCE.toBuilder().g0(sourceCluster);
            }

            public static SourceCluster parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private SourceCluster(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static SourceCluster parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static SourceCluster parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public SourceCluster getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static SourceCluster parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private SourceCluster() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static SourceCluster parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static SourceCluster parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private SourceCluster(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } finally {
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static SourceCluster parseFrom(InputStream inputStream) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static SourceCluster parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static SourceCluster parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static SourceCluster parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (SourceCluster) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Action> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Action m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Action(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f47065e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47066f;

            /* renamed from: g  reason: collision with root package name */
            private q2<SourceCluster, SourceCluster.b, h> f47067g;

            /* renamed from: h  reason: collision with root package name */
            private q2<DestinationCluster, DestinationCluster.b, c> f47068h;

            /* renamed from: i  reason: collision with root package name */
            private q2<RequestHeaders, RequestHeaders.b, g> f47069i;

            /* renamed from: j  reason: collision with root package name */
            private q2<RemoteAddress, RemoteAddress.b, f> f47070j;

            /* renamed from: k  reason: collision with root package name */
            private q2<GenericKey, GenericKey.b, d> f47071k;

            /* renamed from: l  reason: collision with root package name */
            private q2<HeaderValueMatch, HeaderValueMatch.b, e> f47072l;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f47322t0.d(Action.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Action build() {
                Action I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Action I() {
                Action action = new Action(this, (a) null);
                if (this.f47065e == 1) {
                    q2<SourceCluster, SourceCluster.b, h> q2Var = this.f47067g;
                    if (q2Var == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var.b();
                    }
                }
                if (this.f47065e == 2) {
                    q2<DestinationCluster, DestinationCluster.b, c> q2Var2 = this.f47068h;
                    if (q2Var2 == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var2.b();
                    }
                }
                if (this.f47065e == 3) {
                    q2<RequestHeaders, RequestHeaders.b, g> q2Var3 = this.f47069i;
                    if (q2Var3 == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var3.b();
                    }
                }
                if (this.f47065e == 4) {
                    q2<RemoteAddress, RemoteAddress.b, f> q2Var4 = this.f47070j;
                    if (q2Var4 == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var4.b();
                    }
                }
                if (this.f47065e == 5) {
                    q2<GenericKey, GenericKey.b, d> q2Var5 = this.f47071k;
                    if (q2Var5 == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var5.b();
                    }
                }
                if (this.f47065e == 6) {
                    q2<HeaderValueMatch, HeaderValueMatch.b, e> q2Var6 = this.f47072l;
                    if (q2Var6 == null) {
                        action.actionSpecifier_ = this.f47066f;
                    } else {
                        action.actionSpecifier_ = q2Var6.b();
                    }
                }
                action.actionSpecifierCase_ = this.f47065e;
                Q();
                return action;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Action getDefaultInstanceForType() {
                return Action.getDefaultInstance();
            }

            public b d0(DestinationCluster destinationCluster) {
                q2<DestinationCluster, DestinationCluster.b, c> q2Var = this.f47068h;
                if (q2Var == null) {
                    if (this.f47065e == 2 && this.f47066f != DestinationCluster.getDefaultInstance()) {
                        this.f47066f = DestinationCluster.newBuilder((DestinationCluster) this.f47066f).g0(destinationCluster).I();
                    } else {
                        this.f47066f = destinationCluster;
                    }
                    R();
                } else {
                    if (this.f47065e == 2) {
                        q2Var.e(destinationCluster);
                    }
                    this.f47068h.g(destinationCluster);
                }
                this.f47065e = 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.access$6000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.Action.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$Action$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Action) {
                    return h0((Action) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f47320s0;
            }

            public b h0(Action action) {
                if (action == Action.getDefaultInstance()) {
                    return this;
                }
                switch (b.f47073a[action.getActionSpecifierCase().ordinal()]) {
                    case 1:
                        m0(action.getSourceCluster());
                        break;
                    case 2:
                        d0(action.getDestinationCluster());
                        break;
                    case 3:
                        l0(action.getRequestHeaders());
                        break;
                    case 4:
                        k0(action.getRemoteAddress());
                        break;
                    case 5:
                        i0(action.getGenericKey());
                        break;
                    case 6:
                        j0(action.getHeaderValueMatch());
                        break;
                }
                z(((GeneratedMessageV3) action).unknownFields);
                R();
                return this;
            }

            public b i0(GenericKey genericKey) {
                q2<GenericKey, GenericKey.b, d> q2Var = this.f47071k;
                if (q2Var == null) {
                    if (this.f47065e == 5 && this.f47066f != GenericKey.getDefaultInstance()) {
                        this.f47066f = GenericKey.newBuilder((GenericKey) this.f47066f).g0(genericKey).I();
                    } else {
                        this.f47066f = genericKey;
                    }
                    R();
                } else {
                    if (this.f47065e == 5) {
                        q2Var.e(genericKey);
                    }
                    this.f47071k.g(genericKey);
                }
                this.f47065e = 5;
                return this;
            }

            public b j0(HeaderValueMatch headerValueMatch) {
                q2<HeaderValueMatch, HeaderValueMatch.b, e> q2Var = this.f47072l;
                if (q2Var == null) {
                    if (this.f47065e == 6 && this.f47066f != HeaderValueMatch.getDefaultInstance()) {
                        this.f47066f = HeaderValueMatch.newBuilder((HeaderValueMatch) this.f47066f).j0(headerValueMatch).I();
                    } else {
                        this.f47066f = headerValueMatch;
                    }
                    R();
                } else {
                    if (this.f47065e == 6) {
                        q2Var.e(headerValueMatch);
                    }
                    this.f47072l.g(headerValueMatch);
                }
                this.f47065e = 6;
                return this;
            }

            public b k0(RemoteAddress remoteAddress) {
                q2<RemoteAddress, RemoteAddress.b, f> q2Var = this.f47070j;
                if (q2Var == null) {
                    if (this.f47065e == 4 && this.f47066f != RemoteAddress.getDefaultInstance()) {
                        this.f47066f = RemoteAddress.newBuilder((RemoteAddress) this.f47066f).g0(remoteAddress).I();
                    } else {
                        this.f47066f = remoteAddress;
                    }
                    R();
                } else {
                    if (this.f47065e == 4) {
                        q2Var.e(remoteAddress);
                    }
                    this.f47070j.g(remoteAddress);
                }
                this.f47065e = 4;
                return this;
            }

            public b l0(RequestHeaders requestHeaders) {
                q2<RequestHeaders, RequestHeaders.b, g> q2Var = this.f47069i;
                if (q2Var == null) {
                    if (this.f47065e == 3 && this.f47066f != RequestHeaders.getDefaultInstance()) {
                        this.f47066f = RequestHeaders.newBuilder((RequestHeaders) this.f47066f).g0(requestHeaders).I();
                    } else {
                        this.f47066f = requestHeaders;
                    }
                    R();
                } else {
                    if (this.f47065e == 3) {
                        q2Var.e(requestHeaders);
                    }
                    this.f47069i.g(requestHeaders);
                }
                this.f47065e = 3;
                return this;
            }

            public b m0(SourceCluster sourceCluster) {
                q2<SourceCluster, SourceCluster.b, h> q2Var = this.f47067g;
                if (q2Var == null) {
                    if (this.f47065e == 1 && this.f47066f != SourceCluster.getDefaultInstance()) {
                        this.f47066f = SourceCluster.newBuilder((SourceCluster) this.f47066f).g0(sourceCluster).I();
                    } else {
                        this.f47066f = sourceCluster;
                    }
                    R();
                } else {
                    if (this.f47065e == 1) {
                        q2Var.e(sourceCluster);
                    }
                    this.f47067g.g(sourceCluster);
                }
                this.f47065e = 1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47065e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47065e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface d extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface e extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface f extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface g extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface h extends r1 {
        }

        /* synthetic */ Action(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Action getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f47320s0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Action parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Action) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Action parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Action> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Action)) {
                return super.equals(obj);
            }
            Action action = (Action) obj;
            if (getActionSpecifierCase().equals(action.getActionSpecifierCase())) {
                switch (this.actionSpecifierCase_) {
                    case 1:
                        if (!getSourceCluster().equals(action.getSourceCluster())) {
                            return false;
                        }
                        break;
                    case 2:
                        if (!getDestinationCluster().equals(action.getDestinationCluster())) {
                            return false;
                        }
                        break;
                    case 3:
                        if (!getRequestHeaders().equals(action.getRequestHeaders())) {
                            return false;
                        }
                        break;
                    case 4:
                        if (!getRemoteAddress().equals(action.getRemoteAddress())) {
                            return false;
                        }
                        break;
                    case 5:
                        if (!getGenericKey().equals(action.getGenericKey())) {
                            return false;
                        }
                        break;
                    case 6:
                        if (!getHeaderValueMatch().equals(action.getHeaderValueMatch())) {
                            return false;
                        }
                        break;
                }
                return this.unknownFields.equals(action.unknownFields);
            }
            return false;
        }

        public ActionSpecifierCase getActionSpecifierCase() {
            return ActionSpecifierCase.forNumber(this.actionSpecifierCase_);
        }

        public DestinationCluster getDestinationCluster() {
            if (this.actionSpecifierCase_ == 2) {
                return (DestinationCluster) this.actionSpecifier_;
            }
            return DestinationCluster.getDefaultInstance();
        }

        public c getDestinationClusterOrBuilder() {
            if (this.actionSpecifierCase_ == 2) {
                return (DestinationCluster) this.actionSpecifier_;
            }
            return DestinationCluster.getDefaultInstance();
        }

        public GenericKey getGenericKey() {
            if (this.actionSpecifierCase_ == 5) {
                return (GenericKey) this.actionSpecifier_;
            }
            return GenericKey.getDefaultInstance();
        }

        public d getGenericKeyOrBuilder() {
            if (this.actionSpecifierCase_ == 5) {
                return (GenericKey) this.actionSpecifier_;
            }
            return GenericKey.getDefaultInstance();
        }

        public HeaderValueMatch getHeaderValueMatch() {
            if (this.actionSpecifierCase_ == 6) {
                return (HeaderValueMatch) this.actionSpecifier_;
            }
            return HeaderValueMatch.getDefaultInstance();
        }

        public e getHeaderValueMatchOrBuilder() {
            if (this.actionSpecifierCase_ == 6) {
                return (HeaderValueMatch) this.actionSpecifier_;
            }
            return HeaderValueMatch.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Action> getParserForType() {
            return PARSER;
        }

        public RemoteAddress getRemoteAddress() {
            if (this.actionSpecifierCase_ == 4) {
                return (RemoteAddress) this.actionSpecifier_;
            }
            return RemoteAddress.getDefaultInstance();
        }

        public f getRemoteAddressOrBuilder() {
            if (this.actionSpecifierCase_ == 4) {
                return (RemoteAddress) this.actionSpecifier_;
            }
            return RemoteAddress.getDefaultInstance();
        }

        public RequestHeaders getRequestHeaders() {
            if (this.actionSpecifierCase_ == 3) {
                return (RequestHeaders) this.actionSpecifier_;
            }
            return RequestHeaders.getDefaultInstance();
        }

        public g getRequestHeadersOrBuilder() {
            if (this.actionSpecifierCase_ == 3) {
                return (RequestHeaders) this.actionSpecifier_;
            }
            return RequestHeaders.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.actionSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (SourceCluster) this.actionSpecifier_) : 0;
            if (this.actionSpecifierCase_ == 2) {
                G += CodedOutputStream.G(2, (DestinationCluster) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 3) {
                G += CodedOutputStream.G(3, (RequestHeaders) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 4) {
                G += CodedOutputStream.G(4, (RemoteAddress) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 5) {
                G += CodedOutputStream.G(5, (GenericKey) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 6) {
                G += CodedOutputStream.G(6, (HeaderValueMatch) this.actionSpecifier_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public SourceCluster getSourceCluster() {
            if (this.actionSpecifierCase_ == 1) {
                return (SourceCluster) this.actionSpecifier_;
            }
            return SourceCluster.getDefaultInstance();
        }

        public h getSourceClusterOrBuilder() {
            if (this.actionSpecifierCase_ == 1) {
                return (SourceCluster) this.actionSpecifier_;
            }
            return SourceCluster.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasDestinationCluster() {
            return this.actionSpecifierCase_ == 2;
        }

        public boolean hasGenericKey() {
            return this.actionSpecifierCase_ == 5;
        }

        public boolean hasHeaderValueMatch() {
            return this.actionSpecifierCase_ == 6;
        }

        public boolean hasRemoteAddress() {
            return this.actionSpecifierCase_ == 4;
        }

        public boolean hasRequestHeaders() {
            return this.actionSpecifierCase_ == 3;
        }

        public boolean hasSourceCluster() {
            return this.actionSpecifierCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = 779 + getDescriptor().hashCode();
            switch (this.actionSpecifierCase_) {
                case 1:
                    i9 = ((hashCode2 * 37) + 1) * 53;
                    hashCode = getSourceCluster().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3;
                    return hashCode3;
                case 2:
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getDestinationCluster().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32;
                    return hashCode32;
                case 3:
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getRequestHeaders().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322;
                    return hashCode322;
                case 4:
                    i9 = ((hashCode2 * 37) + 4) * 53;
                    hashCode = getRemoteAddress().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222;
                    return hashCode3222;
                case 5:
                    i9 = ((hashCode2 * 37) + 5) * 53;
                    hashCode = getGenericKey().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222;
                    return hashCode32222;
                case 6:
                    i9 = ((hashCode2 * 37) + 6) * 53;
                    hashCode = getHeaderValueMatch().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222;
                    return hashCode322222;
                default:
                    int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222;
                    return hashCode3222222;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f47322t0.d(Action.class, b.class);
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
            return new Action();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.actionSpecifierCase_ == 1) {
                codedOutputStream.L0(1, (SourceCluster) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 2) {
                codedOutputStream.L0(2, (DestinationCluster) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 3) {
                codedOutputStream.L0(3, (RequestHeaders) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 4) {
                codedOutputStream.L0(4, (RemoteAddress) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 5) {
                codedOutputStream.L0(5, (GenericKey) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 6) {
                codedOutputStream.L0(6, (HeaderValueMatch) this.actionSpecifier_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Action(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Action action) {
            return DEFAULT_INSTANCE.toBuilder().h0(action);
        }

        public static Action parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Action(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.actionSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Action parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Action) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Action parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Action getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Action parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Action parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Action() {
            this.actionSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Action parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Action parseFrom(InputStream inputStream) throws IOException {
            return (Action) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Action(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                SourceCluster.b builder = this.actionSpecifierCase_ == 1 ? ((SourceCluster) this.actionSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(SourceCluster.parser(), f0Var);
                                this.actionSpecifier_ = B;
                                if (builder != null) {
                                    builder.g0((SourceCluster) B);
                                    this.actionSpecifier_ = builder.I();
                                }
                                this.actionSpecifierCase_ = 1;
                            } else if (L == 18) {
                                DestinationCluster.b builder2 = this.actionSpecifierCase_ == 2 ? ((DestinationCluster) this.actionSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(DestinationCluster.parser(), f0Var);
                                this.actionSpecifier_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((DestinationCluster) B2);
                                    this.actionSpecifier_ = builder2.I();
                                }
                                this.actionSpecifierCase_ = 2;
                            } else if (L == 26) {
                                RequestHeaders.b builder3 = this.actionSpecifierCase_ == 3 ? ((RequestHeaders) this.actionSpecifier_).toBuilder() : null;
                                o1 B3 = pVar.B(RequestHeaders.parser(), f0Var);
                                this.actionSpecifier_ = B3;
                                if (builder3 != null) {
                                    builder3.g0((RequestHeaders) B3);
                                    this.actionSpecifier_ = builder3.I();
                                }
                                this.actionSpecifierCase_ = 3;
                            } else if (L == 34) {
                                RemoteAddress.b builder4 = this.actionSpecifierCase_ == 4 ? ((RemoteAddress) this.actionSpecifier_).toBuilder() : null;
                                o1 B4 = pVar.B(RemoteAddress.parser(), f0Var);
                                this.actionSpecifier_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((RemoteAddress) B4);
                                    this.actionSpecifier_ = builder4.I();
                                }
                                this.actionSpecifierCase_ = 4;
                            } else if (L == 42) {
                                GenericKey.b builder5 = this.actionSpecifierCase_ == 5 ? ((GenericKey) this.actionSpecifier_).toBuilder() : null;
                                o1 B5 = pVar.B(GenericKey.parser(), f0Var);
                                this.actionSpecifier_ = B5;
                                if (builder5 != null) {
                                    builder5.g0((GenericKey) B5);
                                    this.actionSpecifier_ = builder5.I();
                                }
                                this.actionSpecifierCase_ = 5;
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                HeaderValueMatch.b builder6 = this.actionSpecifierCase_ == 6 ? ((HeaderValueMatch) this.actionSpecifier_).toBuilder() : null;
                                o1 B6 = pVar.B(HeaderValueMatch.parser(), f0Var);
                                this.actionSpecifier_ = B6;
                                if (builder6 != null) {
                                    builder6.j0((HeaderValueMatch) B6);
                                    this.actionSpecifier_ = builder6.I();
                                }
                                this.actionSpecifierCase_ = 6;
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

        public static Action parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Action) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Action parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Action) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Action parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Action) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RateLimit> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RateLimit m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RateLimit(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47073a;

        static {
            int[] iArr = new int[Action.ActionSpecifierCase.values().length];
            f47073a = iArr;
            try {
                iArr[Action.ActionSpecifierCase.SOURCE_CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.DESTINATION_CLUSTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.REQUEST_HEADERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.REMOTE_ADDRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.GENERIC_KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.HEADER_VALUE_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f47073a[Action.ActionSpecifierCase.ACTIONSPECIFIER_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes6.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f47074e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f47075f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47076g;

        /* renamed from: h  reason: collision with root package name */
        private Object f47077h;

        /* renamed from: i  reason: collision with root package name */
        private List<Action> f47078i;

        /* renamed from: j  reason: collision with root package name */
        private l2<Action, Action.b, c> f47079j;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47074e & 1) == 0) {
                this.f47078i = new ArrayList(this.f47078i);
                this.f47074e |= 1;
            }
        }

        private l2<Action, Action.b, c> b0() {
            if (this.f47079j == null) {
                this.f47079j = new l2<>(this.f47078i, (this.f47074e & 1) != 0, H(), O());
                this.f47078i = null;
            }
            return this.f47079j;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47318r0.d(RateLimit.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RateLimit build() {
            RateLimit I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RateLimit I() {
            RateLimit rateLimit = new RateLimit(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47076g;
            if (q2Var == null) {
                rateLimit.stage_ = this.f47075f;
            } else {
                rateLimit.stage_ = q2Var.b();
            }
            rateLimit.disableKey_ = this.f47077h;
            l2<Action, Action.b, c> l2Var = this.f47079j;
            if (l2Var == null) {
                if ((this.f47074e & 1) != 0) {
                    this.f47078i = Collections.unmodifiableList(this.f47078i);
                    this.f47074e &= -2;
                }
                rateLimit.actions_ = this.f47078i;
            } else {
                rateLimit.actions_ = l2Var.e();
            }
            Q();
            return rateLimit;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public RateLimit getDefaultInstanceForType() {
            return RateLimit.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.access$7100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RateLimit$d");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47316q0;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof RateLimit) {
                return i0((RateLimit) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d i0(RateLimit rateLimit) {
            if (rateLimit == RateLimit.getDefaultInstance()) {
                return this;
            }
            if (rateLimit.hasStage()) {
                j0(rateLimit.getStage());
            }
            if (!rateLimit.getDisableKey().isEmpty()) {
                this.f47077h = rateLimit.disableKey_;
                R();
            }
            if (this.f47079j == null) {
                if (!rateLimit.actions_.isEmpty()) {
                    if (this.f47078i.isEmpty()) {
                        this.f47078i = rateLimit.actions_;
                        this.f47074e &= -2;
                    } else {
                        a0();
                        this.f47078i.addAll(rateLimit.actions_);
                    }
                    R();
                }
            } else if (!rateLimit.actions_.isEmpty()) {
                if (this.f47079j.k()) {
                    this.f47079j.f();
                    this.f47079j = null;
                    this.f47078i = rateLimit.actions_;
                    this.f47074e &= -2;
                    this.f47079j = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f47079j.b(rateLimit.actions_);
                }
            }
            z(((GeneratedMessageV3) rateLimit).unknownFields);
            R();
            return this;
        }

        public d j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47076g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47075f;
                if (uInt32Value2 != null) {
                    this.f47075f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47075f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f47077h = "";
            this.f47078i = Collections.emptyList();
            e0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47077h = "";
            this.f47078i = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ RateLimit(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RateLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47316q0;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RateLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RateLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RateLimit> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RateLimit)) {
            return super.equals(obj);
        }
        RateLimit rateLimit = (RateLimit) obj;
        if (hasStage() != rateLimit.hasStage()) {
            return false;
        }
        return (!hasStage() || getStage().equals(rateLimit.getStage())) && getDisableKey().equals(rateLimit.getDisableKey()) && getActionsList().equals(rateLimit.getActionsList()) && this.unknownFields.equals(rateLimit.unknownFields);
    }

    public Action getActions(int i9) {
        return this.actions_.get(i9);
    }

    public int getActionsCount() {
        return this.actions_.size();
    }

    public List<Action> getActionsList() {
        return this.actions_;
    }

    public c getActionsOrBuilder(int i9) {
        return this.actions_.get(i9);
    }

    public List<? extends c> getActionsOrBuilderList() {
        return this.actions_;
    }

    public String getDisableKey() {
        Object obj = this.disableKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.disableKey_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDisableKeyBytes() {
        Object obj = this.disableKey_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.disableKey_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RateLimit> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.stage_ != null ? CodedOutputStream.G(1, getStage()) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.disableKey_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.disableKey_);
        }
        for (int i10 = 0; i10 < this.actions_.size(); i10++) {
            G += CodedOutputStream.G(3, this.actions_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public UInt32Value getStage() {
        UInt32Value uInt32Value = this.stage_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getStageOrBuilder() {
        return getStage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasStage() {
        return this.stage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasStage()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStage().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 2) * 53) + getDisableKey().hashCode();
        if (getActionsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getActionsList().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47318r0.d(RateLimit.class, d.class);
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
        return new RateLimit();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.stage_ != null) {
            codedOutputStream.L0(1, getStage());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.disableKey_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.disableKey_);
        }
        for (int i9 = 0; i9 < this.actions_.size(); i9++) {
            codedOutputStream.L0(3, this.actions_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RateLimit(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(RateLimit rateLimit) {
        return DEFAULT_INSTANCE.toBuilder().i0(rateLimit);
    }

    public static RateLimit parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RateLimit(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RateLimit parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RateLimit getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).i0(this);
    }

    public static RateLimit parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    private RateLimit() {
        this.memoizedIsInitialized = (byte) -1;
        this.disableKey_ = "";
        this.actions_ = Collections.emptyList();
    }

    public static RateLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    public static RateLimit parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RateLimit parseFrom(InputStream inputStream) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RateLimit(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            UInt32Value uInt32Value = this.stage_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.stage_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.stage_ = builder.I();
                            }
                        } else if (L == 18) {
                            this.disableKey_ = pVar.K();
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.actions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.actions_.add((Action) pVar.B(Action.parser(), f0Var));
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
                    this.actions_ = Collections.unmodifiableList(this.actions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static RateLimit parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimit parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RateLimit parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RateLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
