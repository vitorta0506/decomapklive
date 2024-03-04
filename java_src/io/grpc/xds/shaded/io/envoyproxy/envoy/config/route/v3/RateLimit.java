package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

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
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.MetadataKey;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RateLimit extends GeneratedMessageV3 implements k {
    public static final int ACTIONS_FIELD_NUMBER = 3;
    public static final int DISABLE_KEY_FIELD_NUMBER = 2;
    public static final int LIMIT_FIELD_NUMBER = 4;
    public static final int STAGE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<Action> actions_;
    private volatile Object disableKey_;
    private Override limit_;
    private byte memoizedIsInitialized;
    private UInt32Value stage_;
    private static final RateLimit DEFAULT_INSTANCE = new RateLimit();
    private static final e2<RateLimit> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Action extends GeneratedMessageV3 implements c {
        public static final int DESTINATION_CLUSTER_FIELD_NUMBER = 2;
        public static final int DYNAMIC_METADATA_FIELD_NUMBER = 7;
        public static final int EXTENSION_FIELD_NUMBER = 9;
        public static final int GENERIC_KEY_FIELD_NUMBER = 5;
        public static final int HEADER_VALUE_MATCH_FIELD_NUMBER = 6;
        public static final int METADATA_FIELD_NUMBER = 8;
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
            DYNAMIC_METADATA(7),
            METADATA(8),
            EXTENSION(9),
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
                    case 7:
                        return DYNAMIC_METADATA;
                    case 8:
                        return METADATA;
                    case 9:
                        return EXTENSION;
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
                    return o.D0.d(DestinationCluster.class, b.class);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DestinationCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DestinationCluster.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DestinationCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DestinationCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DestinationCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DestinationCluster) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DestinationCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DestinationCluster$b");
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
                    return o.C0;
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
                return o.C0;
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
                return o.D0.d(DestinationCluster.class, b.class);
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
        public static final class DynamicMetaData extends GeneratedMessageV3 implements d {
            public static final int DEFAULT_VALUE_FIELD_NUMBER = 3;
            public static final int DESCRIPTOR_KEY_FIELD_NUMBER = 1;
            public static final int METADATA_KEY_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private volatile Object defaultValue_;
            private volatile Object descriptorKey_;
            private byte memoizedIsInitialized;
            private MetadataKey metadataKey_;
            private static final DynamicMetaData DEFAULT_INSTANCE = new DynamicMetaData();
            private static final e2<DynamicMetaData> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<DynamicMetaData> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public DynamicMetaData m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new DynamicMetaData(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {

                /* renamed from: e  reason: collision with root package name */
                private Object f49162e;

                /* renamed from: f  reason: collision with root package name */
                private MetadataKey f49163f;

                /* renamed from: g  reason: collision with root package name */
                private q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> f49164g;

                /* renamed from: h  reason: collision with root package name */
                private Object f49165h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.N0.d(DynamicMetaData.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public DynamicMetaData build() {
                    DynamicMetaData I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public DynamicMetaData I() {
                    DynamicMetaData dynamicMetaData = new DynamicMetaData(this, (a) null);
                    dynamicMetaData.descriptorKey_ = this.f49162e;
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49164g;
                    if (q2Var == null) {
                        dynamicMetaData.metadataKey_ = this.f49163f;
                    } else {
                        dynamicMetaData.metadataKey_ = q2Var.b();
                    }
                    dynamicMetaData.defaultValue_ = this.f49165h;
                    Q();
                    return dynamicMetaData;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public DynamicMetaData getDefaultInstanceForType() {
                    return DynamicMetaData.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DynamicMetaData.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DynamicMetaData.access$6400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DynamicMetaData r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DynamicMetaData) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DynamicMetaData r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DynamicMetaData) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.DynamicMetaData.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$DynamicMetaData$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof DynamicMetaData) {
                        return g0((DynamicMetaData) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(DynamicMetaData dynamicMetaData) {
                    if (dynamicMetaData == DynamicMetaData.getDefaultInstance()) {
                        return this;
                    }
                    if (!dynamicMetaData.getDescriptorKey().isEmpty()) {
                        this.f49162e = dynamicMetaData.descriptorKey_;
                        R();
                    }
                    if (dynamicMetaData.hasMetadataKey()) {
                        h0(dynamicMetaData.getMetadataKey());
                    }
                    if (!dynamicMetaData.getDefaultValue().isEmpty()) {
                        this.f49165h = dynamicMetaData.defaultValue_;
                        R();
                    }
                    z(((GeneratedMessageV3) dynamicMetaData).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.M0;
                }

                public b h0(MetadataKey metadataKey) {
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49164g;
                    if (q2Var == null) {
                        MetadataKey metadataKey2 = this.f49163f;
                        if (metadataKey2 != null) {
                            this.f49163f = MetadataKey.newBuilder(metadataKey2).i0(metadataKey).I();
                        } else {
                            this.f49163f = metadataKey;
                        }
                        R();
                    } else {
                        q2Var.e(metadataKey);
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
                    this.f49162e = "";
                    this.f49165h = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49162e = "";
                    this.f49165h = "";
                    b0();
                }
            }

            /* synthetic */ DynamicMetaData(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static DynamicMetaData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.M0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DynamicMetaData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DynamicMetaData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<DynamicMetaData> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DynamicMetaData)) {
                    return super.equals(obj);
                }
                DynamicMetaData dynamicMetaData = (DynamicMetaData) obj;
                if (getDescriptorKey().equals(dynamicMetaData.getDescriptorKey()) && hasMetadataKey() == dynamicMetaData.hasMetadataKey()) {
                    return (!hasMetadataKey() || getMetadataKey().equals(dynamicMetaData.getMetadataKey())) && getDefaultValue().equals(dynamicMetaData.getDefaultValue()) && this.unknownFields.equals(dynamicMetaData.unknownFields);
                }
                return false;
            }

            public String getDefaultValue() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.defaultValue_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDefaultValueBytes() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.defaultValue_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
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

            public MetadataKey getMetadataKey() {
                MetadataKey metadataKey = this.metadataKey_;
                return metadataKey == null ? MetadataKey.getDefaultInstance() : metadataKey;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a getMetadataKeyOrBuilder() {
                return getMetadataKey();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<DynamicMetaData> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.descriptorKey_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.descriptorKey_);
                if (this.metadataKey_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getMetadataKey());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(3, this.defaultValue_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasMetadataKey() {
                return this.metadataKey_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescriptorKey().hashCode();
                if (hasMetadataKey()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getMetadataKey().hashCode();
                }
                int hashCode2 = (((((hashCode * 37) + 3) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.N0.d(DynamicMetaData.class, b.class);
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
                return new DynamicMetaData();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorKey_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.descriptorKey_);
                }
                if (this.metadataKey_ != null) {
                    codedOutputStream.L0(2, getMetadataKey());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.defaultValue_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ DynamicMetaData(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(DynamicMetaData dynamicMetaData) {
                return DEFAULT_INSTANCE.toBuilder().g0(dynamicMetaData);
            }

            public static DynamicMetaData parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private DynamicMetaData(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DynamicMetaData parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static DynamicMetaData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public DynamicMetaData getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static DynamicMetaData parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private DynamicMetaData() {
                this.memoizedIsInitialized = (byte) -1;
                this.descriptorKey_ = "";
                this.defaultValue_ = "";
            }

            public static DynamicMetaData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static DynamicMetaData parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static DynamicMetaData parseFrom(InputStream inputStream) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private DynamicMetaData(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.descriptorKey_ = pVar.K();
                                } else if (L == 18) {
                                    MetadataKey metadataKey = this.metadataKey_;
                                    MetadataKey.c builder = metadataKey != null ? metadataKey.toBuilder() : null;
                                    MetadataKey metadataKey2 = (MetadataKey) pVar.B(MetadataKey.parser(), f0Var);
                                    this.metadataKey_ = metadataKey2;
                                    if (builder != null) {
                                        builder.i0(metadataKey2);
                                        this.metadataKey_ = builder.I();
                                    }
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.defaultValue_ = pVar.K();
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

            public static DynamicMetaData parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static DynamicMetaData parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static DynamicMetaData parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (DynamicMetaData) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class GenericKey extends GeneratedMessageV3 implements e {
            public static final int DESCRIPTOR_KEY_FIELD_NUMBER = 2;
            public static final int DESCRIPTOR_VALUE_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private volatile Object descriptorKey_;
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
            public static final class b extends GeneratedMessageV3.b<b> implements e {

                /* renamed from: e  reason: collision with root package name */
                private Object f49166e;

                /* renamed from: f  reason: collision with root package name */
                private Object f49167f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.J0.d(GenericKey.class, b.class);
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
                    genericKey.descriptorValue_ = this.f49166e;
                    genericKey.descriptorKey_ = this.f49167f;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.GenericKey.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.GenericKey.access$4000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$GenericKey r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.GenericKey) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$GenericKey r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.GenericKey) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.GenericKey.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$GenericKey$b");
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
                        this.f49166e = genericKey.descriptorValue_;
                        R();
                    }
                    if (!genericKey.getDescriptorKey().isEmpty()) {
                        this.f49167f = genericKey.descriptorKey_;
                        R();
                    }
                    z(((GeneratedMessageV3) genericKey).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.I0;
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
                    this.f49166e = "";
                    this.f49167f = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49166e = "";
                    this.f49167f = "";
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
                return o.I0;
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
                return getDescriptorValue().equals(genericKey.getDescriptorValue()) && getDescriptorKey().equals(genericKey.getDescriptorKey()) && this.unknownFields.equals(genericKey.unknownFields);
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
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.descriptorValue_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.descriptorValue_);
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
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescriptorValue().hashCode()) * 37) + 2) * 53) + getDescriptorKey().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.J0.d(GenericKey.class, b.class);
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
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorKey_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.descriptorKey_);
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
                this.descriptorKey_ = "";
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
                            try {
                                int L = pVar.L();
                                if (L != 0) {
                                    if (L == 10) {
                                        this.descriptorValue_ = pVar.K();
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
        public static final class HeaderValueMatch extends GeneratedMessageV3 implements f {
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
            public static final class b extends GeneratedMessageV3.b<b> implements f {

                /* renamed from: e  reason: collision with root package name */
                private int f49168e;

                /* renamed from: f  reason: collision with root package name */
                private Object f49169f;

                /* renamed from: g  reason: collision with root package name */
                private BoolValue f49170g;

                /* renamed from: h  reason: collision with root package name */
                private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f49171h;

                /* renamed from: i  reason: collision with root package name */
                private List<HeaderMatcher> f49172i;

                /* renamed from: j  reason: collision with root package name */
                private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> f49173j;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void a0() {
                    if ((this.f49168e & 1) == 0) {
                        this.f49172i = new ArrayList(this.f49172i);
                        this.f49168e |= 1;
                    }
                }

                private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> d0() {
                    if (this.f49173j == null) {
                        this.f49173j = new l2<>(this.f49172i, (this.f49168e & 1) != 0, H(), O());
                        this.f49172i = null;
                    }
                    return this.f49173j;
                }

                private void e0() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        d0();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.L0.d(HeaderValueMatch.class, b.class);
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
                    headerValueMatch.descriptorValue_ = this.f49169f;
                    q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49171h;
                    if (q2Var == null) {
                        headerValueMatch.expectMatch_ = this.f49170g;
                    } else {
                        headerValueMatch.expectMatch_ = q2Var.b();
                    }
                    l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> l2Var = this.f49173j;
                    if (l2Var == null) {
                        if ((this.f49168e & 1) != 0) {
                            this.f49172i = Collections.unmodifiableList(this.f49172i);
                            this.f49168e &= -2;
                        }
                        headerValueMatch.headers_ = this.f49172i;
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
                    q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f49171h;
                    if (q2Var == null) {
                        BoolValue boolValue2 = this.f49170g;
                        if (boolValue2 != null) {
                            this.f49170g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                        } else {
                            this.f49170g = boolValue;
                        }
                        R();
                    } else {
                        q2Var.e(boolValue);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.K0;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.HeaderValueMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.HeaderValueMatch.access$5300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$HeaderValueMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.HeaderValueMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$HeaderValueMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.HeaderValueMatch) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.HeaderValueMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$HeaderValueMatch$b");
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
                        this.f49169f = headerValueMatch.descriptorValue_;
                        R();
                    }
                    if (headerValueMatch.hasExpectMatch()) {
                        g0(headerValueMatch.getExpectMatch());
                    }
                    if (this.f49173j == null) {
                        if (!headerValueMatch.headers_.isEmpty()) {
                            if (this.f49172i.isEmpty()) {
                                this.f49172i = headerValueMatch.headers_;
                                this.f49168e &= -2;
                            } else {
                                a0();
                                this.f49172i.addAll(headerValueMatch.headers_);
                            }
                            R();
                        }
                    } else if (!headerValueMatch.headers_.isEmpty()) {
                        if (this.f49173j.k()) {
                            this.f49173j.f();
                            this.f49173j = null;
                            this.f49172i = headerValueMatch.headers_;
                            this.f49168e &= -2;
                            this.f49173j = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                        } else {
                            this.f49173j.b(headerValueMatch.headers_);
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
                    this.f49169f = "";
                    this.f49172i = Collections.emptyList();
                    e0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49169f = "";
                    this.f49172i = Collections.emptyList();
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
                return o.K0;
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

            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f getHeadersOrBuilder(int i9) {
                return this.headers_.get(i9);
            }

            public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> getHeadersOrBuilderList() {
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
                return o.L0.d(HeaderValueMatch.class, b.class);
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
        public static final class MetaData extends GeneratedMessageV3 implements g {
            public static final int DEFAULT_VALUE_FIELD_NUMBER = 3;
            public static final int DESCRIPTOR_KEY_FIELD_NUMBER = 1;
            public static final int METADATA_KEY_FIELD_NUMBER = 2;
            public static final int SOURCE_FIELD_NUMBER = 4;
            private static final long serialVersionUID = 0;
            private volatile Object defaultValue_;
            private volatile Object descriptorKey_;
            private byte memoizedIsInitialized;
            private MetadataKey metadataKey_;
            private int source_;
            private static final MetaData DEFAULT_INSTANCE = new MetaData();
            private static final e2<MetaData> PARSER = new a();

            /* loaded from: classes6.dex */
            public enum Source implements h2 {
                DYNAMIC(0),
                ROUTE_ENTRY(1),
                UNRECOGNIZED(-1);
                
                public static final int DYNAMIC_VALUE = 0;
                public static final int ROUTE_ENTRY_VALUE = 1;
                private final int value;
                private static final u0.d<Source> internalValueMap = new a();
                private static final Source[] VALUES = values();

                /* loaded from: classes6.dex */
                class a implements u0.d<Source> {
                    a() {
                    }

                    @Override // com.google.protobuf.u0.d
                    /* renamed from: b */
                    public Source a(int i9) {
                        return Source.forNumber(i9);
                    }
                }

                Source(int i9) {
                    this.value = i9;
                }

                public static Source forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            return null;
                        }
                        return ROUTE_ENTRY;
                    }
                    return DYNAMIC;
                }

                public static final Descriptors.d getDescriptor() {
                    return MetaData.getDescriptor().k().get(0);
                }

                public static u0.d<Source> internalGetValueMap() {
                    return internalValueMap;
                }

                public final Descriptors.d getDescriptorForType() {
                    return getDescriptor();
                }

                @Override // com.google.protobuf.u0.c
                public final int getNumber() {
                    if (this != UNRECOGNIZED) {
                        return this.value;
                    }
                    throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
                }

                public final Descriptors.e getValueDescriptor() {
                    if (this != UNRECOGNIZED) {
                        return getDescriptor().k().get(ordinal());
                    }
                    throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
                }

                @Deprecated
                public static Source valueOf(int i9) {
                    return forNumber(i9);
                }

                public static Source valueOf(Descriptors.e eVar) {
                    if (eVar.h() == getDescriptor()) {
                        if (eVar.g() == -1) {
                            return UNRECOGNIZED;
                        }
                        return VALUES[eVar.g()];
                    }
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<MetaData> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public MetaData m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new MetaData(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements g {

                /* renamed from: e  reason: collision with root package name */
                private Object f49174e;

                /* renamed from: f  reason: collision with root package name */
                private MetadataKey f49175f;

                /* renamed from: g  reason: collision with root package name */
                private q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> f49176g;

                /* renamed from: h  reason: collision with root package name */
                private Object f49177h;

                /* renamed from: i  reason: collision with root package name */
                private int f49178i;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.P0.d(MetaData.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public MetaData build() {
                    MetaData I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public MetaData I() {
                    MetaData metaData = new MetaData(this, (a) null);
                    metaData.descriptorKey_ = this.f49174e;
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49176g;
                    if (q2Var == null) {
                        metaData.metadataKey_ = this.f49175f;
                    } else {
                        metaData.metadataKey_ = q2Var.b();
                    }
                    metaData.defaultValue_ = this.f49177h;
                    metaData.source_ = this.f49178i;
                    Q();
                    return metaData;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public MetaData getDefaultInstanceForType() {
                    return MetaData.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.MetaData.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.MetaData.access$7700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$MetaData r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.MetaData) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$MetaData r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.MetaData) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.MetaData.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$MetaData$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof MetaData) {
                        return g0((MetaData) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(MetaData metaData) {
                    if (metaData == MetaData.getDefaultInstance()) {
                        return this;
                    }
                    if (!metaData.getDescriptorKey().isEmpty()) {
                        this.f49174e = metaData.descriptorKey_;
                        R();
                    }
                    if (metaData.hasMetadataKey()) {
                        h0(metaData.getMetadataKey());
                    }
                    if (!metaData.getDefaultValue().isEmpty()) {
                        this.f49177h = metaData.defaultValue_;
                        R();
                    }
                    if (metaData.source_ != 0) {
                        k0(metaData.getSourceValue());
                    }
                    z(((GeneratedMessageV3) metaData).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.O0;
                }

                public b h0(MetadataKey metadataKey) {
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49176g;
                    if (q2Var == null) {
                        MetadataKey metadataKey2 = this.f49175f;
                        if (metadataKey2 != null) {
                            this.f49175f = MetadataKey.newBuilder(metadataKey2).i0(metadataKey).I();
                        } else {
                            this.f49175f = metadataKey;
                        }
                        R();
                    } else {
                        q2Var.e(metadataKey);
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

                public b k0(int i9) {
                    this.f49178i = i9;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: l0 */
                public final b f1(h3 h3Var) {
                    return (b) super.f1(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f49174e = "";
                    this.f49177h = "";
                    this.f49178i = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49174e = "";
                    this.f49177h = "";
                    this.f49178i = 0;
                    b0();
                }
            }

            /* synthetic */ MetaData(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static MetaData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.O0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static MetaData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (MetaData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static MetaData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<MetaData> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof MetaData)) {
                    return super.equals(obj);
                }
                MetaData metaData = (MetaData) obj;
                if (getDescriptorKey().equals(metaData.getDescriptorKey()) && hasMetadataKey() == metaData.hasMetadataKey()) {
                    return (!hasMetadataKey() || getMetadataKey().equals(metaData.getMetadataKey())) && getDefaultValue().equals(metaData.getDefaultValue()) && this.source_ == metaData.source_ && this.unknownFields.equals(metaData.unknownFields);
                }
                return false;
            }

            public String getDefaultValue() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.defaultValue_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getDefaultValueBytes() {
                Object obj = this.defaultValue_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.defaultValue_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
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

            public MetadataKey getMetadataKey() {
                MetadataKey metadataKey = this.metadataKey_;
                return metadataKey == null ? MetadataKey.getDefaultInstance() : metadataKey;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a getMetadataKeyOrBuilder() {
                return getMetadataKey();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<MetaData> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = GeneratedMessageV3.isStringEmpty(this.descriptorKey_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.descriptorKey_);
                if (this.metadataKey_ != null) {
                    computeStringSize += CodedOutputStream.G(2, getMetadataKey());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(3, this.defaultValue_);
                }
                if (this.source_ != Source.DYNAMIC.getNumber()) {
                    computeStringSize += CodedOutputStream.l(4, this.source_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public Source getSource() {
                Source valueOf = Source.valueOf(this.source_);
                return valueOf == null ? Source.UNRECOGNIZED : valueOf;
            }

            public int getSourceValue() {
                return this.source_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasMetadataKey() {
                return this.metadataKey_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescriptorKey().hashCode();
                if (hasMetadataKey()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getMetadataKey().hashCode();
                }
                int hashCode2 = (((((((((hashCode * 37) + 3) * 53) + getDefaultValue().hashCode()) * 37) + 4) * 53) + this.source_) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.P0.d(MetaData.class, b.class);
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
                return new MetaData();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!GeneratedMessageV3.isStringEmpty(this.descriptorKey_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.descriptorKey_);
                }
                if (this.metadataKey_ != null) {
                    codedOutputStream.L0(2, getMetadataKey());
                }
                if (!GeneratedMessageV3.isStringEmpty(this.defaultValue_)) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.defaultValue_);
                }
                if (this.source_ != Source.DYNAMIC.getNumber()) {
                    codedOutputStream.v0(4, this.source_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ MetaData(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(MetaData metaData) {
                return DEFAULT_INSTANCE.toBuilder().g0(metaData);
            }

            public static MetaData parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private MetaData(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static MetaData parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MetaData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static MetaData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public MetaData getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static MetaData parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private MetaData() {
                this.memoizedIsInitialized = (byte) -1;
                this.descriptorKey_ = "";
                this.defaultValue_ = "";
                this.source_ = 0;
            }

            public static MetaData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static MetaData parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static MetaData parseFrom(InputStream inputStream) throws IOException {
                return (MetaData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static MetaData parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MetaData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private MetaData(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        this.descriptorKey_ = pVar.K();
                                    } else if (L == 18) {
                                        MetadataKey metadataKey = this.metadataKey_;
                                        MetadataKey.c builder = metadataKey != null ? metadataKey.toBuilder() : null;
                                        MetadataKey metadataKey2 = (MetadataKey) pVar.B(MetadataKey.parser(), f0Var);
                                        this.metadataKey_ = metadataKey2;
                                        if (builder != null) {
                                            builder.i0(metadataKey2);
                                            this.metadataKey_ = builder.I();
                                        }
                                    } else if (L == 26) {
                                        this.defaultValue_ = pVar.K();
                                    } else if (L != 32) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.source_ = pVar.u();
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

            public static MetaData parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (MetaData) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static MetaData parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (MetaData) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class RemoteAddress extends GeneratedMessageV3 implements h {
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
            public static final class b extends GeneratedMessageV3.b<b> implements h {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.H0.d(RemoteAddress.class, b.class);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RemoteAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RemoteAddress.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RemoteAddress r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RemoteAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RemoteAddress r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RemoteAddress) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RemoteAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RemoteAddress$b");
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
                    return o.G0;
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
                return o.G0;
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
                return o.H0.d(RemoteAddress.class, b.class);
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
        public static final class RequestHeaders extends GeneratedMessageV3 implements i {
            public static final int DESCRIPTOR_KEY_FIELD_NUMBER = 2;
            public static final int HEADER_NAME_FIELD_NUMBER = 1;
            public static final int SKIP_IF_ABSENT_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private volatile Object descriptorKey_;
            private volatile Object headerName_;
            private byte memoizedIsInitialized;
            private boolean skipIfAbsent_;
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
            public static final class b extends GeneratedMessageV3.b<b> implements i {

                /* renamed from: e  reason: collision with root package name */
                private Object f49179e;

                /* renamed from: f  reason: collision with root package name */
                private Object f49180f;

                /* renamed from: g  reason: collision with root package name */
                private boolean f49181g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.F0.d(RequestHeaders.class, b.class);
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
                    requestHeaders.headerName_ = this.f49179e;
                    requestHeaders.descriptorKey_ = this.f49180f;
                    requestHeaders.skipIfAbsent_ = this.f49181g;
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RequestHeaders.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RequestHeaders.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RequestHeaders r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RequestHeaders) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RequestHeaders r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RequestHeaders) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.RequestHeaders.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$RequestHeaders$b");
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
                        this.f49179e = requestHeaders.headerName_;
                        R();
                    }
                    if (!requestHeaders.getDescriptorKey().isEmpty()) {
                        this.f49180f = requestHeaders.descriptorKey_;
                        R();
                    }
                    if (requestHeaders.getSkipIfAbsent()) {
                        j0(requestHeaders.getSkipIfAbsent());
                    }
                    z(((GeneratedMessageV3) requestHeaders).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.E0;
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

                public b j0(boolean z10) {
                    this.f49181g = z10;
                    R();
                    return this;
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
                    this.f49179e = "";
                    this.f49180f = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f49179e = "";
                    this.f49180f = "";
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
                return o.E0;
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
                return getHeaderName().equals(requestHeaders.getHeaderName()) && getDescriptorKey().equals(requestHeaders.getDescriptorKey()) && getSkipIfAbsent() == requestHeaders.getSkipIfAbsent() && this.unknownFields.equals(requestHeaders.unknownFields);
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
                boolean z10 = this.skipIfAbsent_;
                if (z10) {
                    computeStringSize += CodedOutputStream.e(3, z10);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public boolean getSkipIfAbsent() {
                return this.skipIfAbsent_;
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
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHeaderName().hashCode()) * 37) + 2) * 53) + getDescriptorKey().hashCode()) * 37) + 3) * 53) + u0.d(getSkipIfAbsent())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.F0.d(RequestHeaders.class, b.class);
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
                boolean z10 = this.skipIfAbsent_;
                if (z10) {
                    codedOutputStream.n0(3, z10);
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
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.headerName_ = pVar.K();
                                } else if (L == 18) {
                                    this.descriptorKey_ = pVar.K();
                                } else if (L != 24) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.skipIfAbsent_ = pVar.r();
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
        public static final class SourceCluster extends GeneratedMessageV3 implements j {
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
            public static final class b extends GeneratedMessageV3.b<b> implements j {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.B0.d(SourceCluster.class, b.class);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.SourceCluster.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.SourceCluster.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$SourceCluster r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.SourceCluster) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$SourceCluster r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.SourceCluster) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.SourceCluster.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$SourceCluster$b");
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
                    return o.A0;
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
                return o.A0;
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
                return o.B0.d(SourceCluster.class, b.class);
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
            private int f49182e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49183f;

            /* renamed from: g  reason: collision with root package name */
            private q2<SourceCluster, SourceCluster.b, j> f49184g;

            /* renamed from: h  reason: collision with root package name */
            private q2<DestinationCluster, DestinationCluster.b, c> f49185h;

            /* renamed from: i  reason: collision with root package name */
            private q2<RequestHeaders, RequestHeaders.b, i> f49186i;

            /* renamed from: j  reason: collision with root package name */
            private q2<RemoteAddress, RemoteAddress.b, h> f49187j;

            /* renamed from: k  reason: collision with root package name */
            private q2<GenericKey, GenericKey.b, e> f49188k;

            /* renamed from: l  reason: collision with root package name */
            private q2<HeaderValueMatch, HeaderValueMatch.b, f> f49189l;

            /* renamed from: m  reason: collision with root package name */
            private q2<DynamicMetaData, DynamicMetaData.b, d> f49190m;

            /* renamed from: n  reason: collision with root package name */
            private q2<MetaData, MetaData.b, g> f49191n;

            /* renamed from: o  reason: collision with root package name */
            private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f49192o;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f49516z0.d(Action.class, b.class);
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
                if (this.f49182e == 1) {
                    q2<SourceCluster, SourceCluster.b, j> q2Var = this.f49184g;
                    if (q2Var == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var.b();
                    }
                }
                if (this.f49182e == 2) {
                    q2<DestinationCluster, DestinationCluster.b, c> q2Var2 = this.f49185h;
                    if (q2Var2 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var2.b();
                    }
                }
                if (this.f49182e == 3) {
                    q2<RequestHeaders, RequestHeaders.b, i> q2Var3 = this.f49186i;
                    if (q2Var3 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var3.b();
                    }
                }
                if (this.f49182e == 4) {
                    q2<RemoteAddress, RemoteAddress.b, h> q2Var4 = this.f49187j;
                    if (q2Var4 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var4.b();
                    }
                }
                if (this.f49182e == 5) {
                    q2<GenericKey, GenericKey.b, e> q2Var5 = this.f49188k;
                    if (q2Var5 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var5.b();
                    }
                }
                if (this.f49182e == 6) {
                    q2<HeaderValueMatch, HeaderValueMatch.b, f> q2Var6 = this.f49189l;
                    if (q2Var6 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var6.b();
                    }
                }
                if (this.f49182e == 7) {
                    q2<DynamicMetaData, DynamicMetaData.b, d> q2Var7 = this.f49190m;
                    if (q2Var7 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var7.b();
                    }
                }
                if (this.f49182e == 8) {
                    q2<MetaData, MetaData.b, g> q2Var8 = this.f49191n;
                    if (q2Var8 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var8.b();
                    }
                }
                if (this.f49182e == 9) {
                    q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var9 = this.f49192o;
                    if (q2Var9 == null) {
                        action.actionSpecifier_ = this.f49183f;
                    } else {
                        action.actionSpecifier_ = q2Var9.b();
                    }
                }
                action.actionSpecifierCase_ = this.f49182e;
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
                q2<DestinationCluster, DestinationCluster.b, c> q2Var = this.f49185h;
                if (q2Var == null) {
                    if (this.f49182e == 2 && this.f49183f != DestinationCluster.getDefaultInstance()) {
                        this.f49183f = DestinationCluster.newBuilder((DestinationCluster) this.f49183f).g0(destinationCluster).I();
                    } else {
                        this.f49183f = destinationCluster;
                    }
                    R();
                } else {
                    if (this.f49182e == 2) {
                        q2Var.e(destinationCluster);
                    }
                    this.f49185h.g(destinationCluster);
                }
                this.f49182e = 2;
                return this;
            }

            @Deprecated
            public b e0(DynamicMetaData dynamicMetaData) {
                q2<DynamicMetaData, DynamicMetaData.b, d> q2Var = this.f49190m;
                if (q2Var == null) {
                    if (this.f49182e == 7 && this.f49183f != DynamicMetaData.getDefaultInstance()) {
                        this.f49183f = DynamicMetaData.newBuilder((DynamicMetaData) this.f49183f).g0(dynamicMetaData).I();
                    } else {
                        this.f49183f = dynamicMetaData;
                    }
                    R();
                } else {
                    if (this.f49182e == 7) {
                        q2Var.e(dynamicMetaData);
                    }
                    this.f49190m.g(dynamicMetaData);
                }
                this.f49182e = 7;
                return this;
            }

            public b g0(TypedExtensionConfig typedExtensionConfig) {
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f49192o;
                if (q2Var == null) {
                    if (this.f49182e == 9 && this.f49183f != TypedExtensionConfig.getDefaultInstance()) {
                        this.f49183f = TypedExtensionConfig.newBuilder((TypedExtensionConfig) this.f49183f).g0(typedExtensionConfig).I();
                    } else {
                        this.f49183f = typedExtensionConfig;
                    }
                    R();
                } else {
                    if (this.f49182e == 9) {
                        q2Var.e(typedExtensionConfig);
                    }
                    this.f49192o.g(typedExtensionConfig);
                }
                this.f49182e = 9;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.f49514y0;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.access$8800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Action.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Action$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Action) {
                    return j0((Action) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b j0(Action action) {
                if (action == Action.getDefaultInstance()) {
                    return this;
                }
                switch (b.f49198a[action.getActionSpecifierCase().ordinal()]) {
                    case 1:
                        q0(action.getSourceCluster());
                        break;
                    case 2:
                        d0(action.getDestinationCluster());
                        break;
                    case 3:
                        o0(action.getRequestHeaders());
                        break;
                    case 4:
                        n0(action.getRemoteAddress());
                        break;
                    case 5:
                        k0(action.getGenericKey());
                        break;
                    case 6:
                        l0(action.getHeaderValueMatch());
                        break;
                    case 7:
                        e0(action.getDynamicMetadata());
                        break;
                    case 8:
                        m0(action.getMetadata());
                        break;
                    case 9:
                        g0(action.getExtension());
                        break;
                }
                z(((GeneratedMessageV3) action).unknownFields);
                R();
                return this;
            }

            public b k0(GenericKey genericKey) {
                q2<GenericKey, GenericKey.b, e> q2Var = this.f49188k;
                if (q2Var == null) {
                    if (this.f49182e == 5 && this.f49183f != GenericKey.getDefaultInstance()) {
                        this.f49183f = GenericKey.newBuilder((GenericKey) this.f49183f).g0(genericKey).I();
                    } else {
                        this.f49183f = genericKey;
                    }
                    R();
                } else {
                    if (this.f49182e == 5) {
                        q2Var.e(genericKey);
                    }
                    this.f49188k.g(genericKey);
                }
                this.f49182e = 5;
                return this;
            }

            public b l0(HeaderValueMatch headerValueMatch) {
                q2<HeaderValueMatch, HeaderValueMatch.b, f> q2Var = this.f49189l;
                if (q2Var == null) {
                    if (this.f49182e == 6 && this.f49183f != HeaderValueMatch.getDefaultInstance()) {
                        this.f49183f = HeaderValueMatch.newBuilder((HeaderValueMatch) this.f49183f).j0(headerValueMatch).I();
                    } else {
                        this.f49183f = headerValueMatch;
                    }
                    R();
                } else {
                    if (this.f49182e == 6) {
                        q2Var.e(headerValueMatch);
                    }
                    this.f49189l.g(headerValueMatch);
                }
                this.f49182e = 6;
                return this;
            }

            public b m0(MetaData metaData) {
                q2<MetaData, MetaData.b, g> q2Var = this.f49191n;
                if (q2Var == null) {
                    if (this.f49182e == 8 && this.f49183f != MetaData.getDefaultInstance()) {
                        this.f49183f = MetaData.newBuilder((MetaData) this.f49183f).g0(metaData).I();
                    } else {
                        this.f49183f = metaData;
                    }
                    R();
                } else {
                    if (this.f49182e == 8) {
                        q2Var.e(metaData);
                    }
                    this.f49191n.g(metaData);
                }
                this.f49182e = 8;
                return this;
            }

            public b n0(RemoteAddress remoteAddress) {
                q2<RemoteAddress, RemoteAddress.b, h> q2Var = this.f49187j;
                if (q2Var == null) {
                    if (this.f49182e == 4 && this.f49183f != RemoteAddress.getDefaultInstance()) {
                        this.f49183f = RemoteAddress.newBuilder((RemoteAddress) this.f49183f).g0(remoteAddress).I();
                    } else {
                        this.f49183f = remoteAddress;
                    }
                    R();
                } else {
                    if (this.f49182e == 4) {
                        q2Var.e(remoteAddress);
                    }
                    this.f49187j.g(remoteAddress);
                }
                this.f49182e = 4;
                return this;
            }

            public b o0(RequestHeaders requestHeaders) {
                q2<RequestHeaders, RequestHeaders.b, i> q2Var = this.f49186i;
                if (q2Var == null) {
                    if (this.f49182e == 3 && this.f49183f != RequestHeaders.getDefaultInstance()) {
                        this.f49183f = RequestHeaders.newBuilder((RequestHeaders) this.f49183f).g0(requestHeaders).I();
                    } else {
                        this.f49183f = requestHeaders;
                    }
                    R();
                } else {
                    if (this.f49182e == 3) {
                        q2Var.e(requestHeaders);
                    }
                    this.f49186i.g(requestHeaders);
                }
                this.f49182e = 3;
                return this;
            }

            public b q0(SourceCluster sourceCluster) {
                q2<SourceCluster, SourceCluster.b, j> q2Var = this.f49184g;
                if (q2Var == null) {
                    if (this.f49182e == 1 && this.f49183f != SourceCluster.getDefaultInstance()) {
                        this.f49183f = SourceCluster.newBuilder((SourceCluster) this.f49183f).g0(sourceCluster).I();
                    } else {
                        this.f49183f = sourceCluster;
                    }
                    R();
                } else {
                    if (this.f49182e == 1) {
                        q2Var.e(sourceCluster);
                    }
                    this.f49184g.g(sourceCluster);
                }
                this.f49182e = 1;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: r0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: s0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: t0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f49182e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49182e = 0;
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

        /* loaded from: classes6.dex */
        public interface i extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface j extends r1 {
        }

        /* synthetic */ Action(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Action getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.f49514y0;
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
                    case 7:
                        if (!getDynamicMetadata().equals(action.getDynamicMetadata())) {
                            return false;
                        }
                        break;
                    case 8:
                        if (!getMetadata().equals(action.getMetadata())) {
                            return false;
                        }
                        break;
                    case 9:
                        if (!getExtension().equals(action.getExtension())) {
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

        @Deprecated
        public DynamicMetaData getDynamicMetadata() {
            if (this.actionSpecifierCase_ == 7) {
                return (DynamicMetaData) this.actionSpecifier_;
            }
            return DynamicMetaData.getDefaultInstance();
        }

        @Deprecated
        public d getDynamicMetadataOrBuilder() {
            if (this.actionSpecifierCase_ == 7) {
                return (DynamicMetaData) this.actionSpecifier_;
            }
            return DynamicMetaData.getDefaultInstance();
        }

        public TypedExtensionConfig getExtension() {
            if (this.actionSpecifierCase_ == 9) {
                return (TypedExtensionConfig) this.actionSpecifier_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        public i1 getExtensionOrBuilder() {
            if (this.actionSpecifierCase_ == 9) {
                return (TypedExtensionConfig) this.actionSpecifier_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        public GenericKey getGenericKey() {
            if (this.actionSpecifierCase_ == 5) {
                return (GenericKey) this.actionSpecifier_;
            }
            return GenericKey.getDefaultInstance();
        }

        public e getGenericKeyOrBuilder() {
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

        public f getHeaderValueMatchOrBuilder() {
            if (this.actionSpecifierCase_ == 6) {
                return (HeaderValueMatch) this.actionSpecifier_;
            }
            return HeaderValueMatch.getDefaultInstance();
        }

        public MetaData getMetadata() {
            if (this.actionSpecifierCase_ == 8) {
                return (MetaData) this.actionSpecifier_;
            }
            return MetaData.getDefaultInstance();
        }

        public g getMetadataOrBuilder() {
            if (this.actionSpecifierCase_ == 8) {
                return (MetaData) this.actionSpecifier_;
            }
            return MetaData.getDefaultInstance();
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

        public h getRemoteAddressOrBuilder() {
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

        public i getRequestHeadersOrBuilder() {
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
            if (this.actionSpecifierCase_ == 7) {
                G += CodedOutputStream.G(7, (DynamicMetaData) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 8) {
                G += CodedOutputStream.G(8, (MetaData) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 9) {
                G += CodedOutputStream.G(9, (TypedExtensionConfig) this.actionSpecifier_);
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

        public j getSourceClusterOrBuilder() {
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

        @Deprecated
        public boolean hasDynamicMetadata() {
            return this.actionSpecifierCase_ == 7;
        }

        public boolean hasExtension() {
            return this.actionSpecifierCase_ == 9;
        }

        public boolean hasGenericKey() {
            return this.actionSpecifierCase_ == 5;
        }

        public boolean hasHeaderValueMatch() {
            return this.actionSpecifierCase_ == 6;
        }

        public boolean hasMetadata() {
            return this.actionSpecifierCase_ == 8;
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
                case 7:
                    i9 = ((hashCode2 * 37) + 7) * 53;
                    hashCode = getDynamicMetadata().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode3222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222;
                    return hashCode3222222;
                case 8:
                    i9 = ((hashCode2 * 37) + 8) * 53;
                    hashCode = getMetadata().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode32222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode32222222;
                    return hashCode32222222;
                case 9:
                    i9 = ((hashCode2 * 37) + 9) * 53;
                    hashCode = getExtension().hashCode();
                    hashCode2 = i9 + hashCode;
                    int hashCode322222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode322222222;
                    return hashCode322222222;
                default:
                    int hashCode3222222222 = (hashCode2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode3222222222;
                    return hashCode3222222222;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.f49516z0.d(Action.class, b.class);
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
            if (this.actionSpecifierCase_ == 7) {
                codedOutputStream.L0(7, (DynamicMetaData) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 8) {
                codedOutputStream.L0(8, (MetaData) this.actionSpecifier_);
            }
            if (this.actionSpecifierCase_ == 9) {
                codedOutputStream.L0(9, (TypedExtensionConfig) this.actionSpecifier_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Action(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Action action) {
            return DEFAULT_INSTANCE.toBuilder().j0(action);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
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
                                } else if (L == 50) {
                                    HeaderValueMatch.b builder6 = this.actionSpecifierCase_ == 6 ? ((HeaderValueMatch) this.actionSpecifier_).toBuilder() : null;
                                    o1 B6 = pVar.B(HeaderValueMatch.parser(), f0Var);
                                    this.actionSpecifier_ = B6;
                                    if (builder6 != null) {
                                        builder6.j0((HeaderValueMatch) B6);
                                        this.actionSpecifier_ = builder6.I();
                                    }
                                    this.actionSpecifierCase_ = 6;
                                } else if (L == 58) {
                                    DynamicMetaData.b builder7 = this.actionSpecifierCase_ == 7 ? ((DynamicMetaData) this.actionSpecifier_).toBuilder() : null;
                                    o1 B7 = pVar.B(DynamicMetaData.parser(), f0Var);
                                    this.actionSpecifier_ = B7;
                                    if (builder7 != null) {
                                        builder7.g0((DynamicMetaData) B7);
                                        this.actionSpecifier_ = builder7.I();
                                    }
                                    this.actionSpecifierCase_ = 7;
                                } else if (L == 66) {
                                    MetaData.b builder8 = this.actionSpecifierCase_ == 8 ? ((MetaData) this.actionSpecifier_).toBuilder() : null;
                                    o1 B8 = pVar.B(MetaData.parser(), f0Var);
                                    this.actionSpecifier_ = B8;
                                    if (builder8 != null) {
                                        builder8.g0((MetaData) B8);
                                        this.actionSpecifier_ = builder8.I();
                                    }
                                    this.actionSpecifierCase_ = 8;
                                } else if (L != 74) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    TypedExtensionConfig.b builder9 = this.actionSpecifierCase_ == 9 ? ((TypedExtensionConfig) this.actionSpecifier_).toBuilder() : null;
                                    o1 B9 = pVar.B(TypedExtensionConfig.parser(), f0Var);
                                    this.actionSpecifier_ = B9;
                                    if (builder9 != null) {
                                        builder9.g0((TypedExtensionConfig) B9);
                                        this.actionSpecifier_ = builder9.I();
                                    }
                                    this.actionSpecifierCase_ = 9;
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

    /* loaded from: classes6.dex */
    public static final class Override extends GeneratedMessageV3 implements e {
        public static final int DYNAMIC_METADATA_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int overrideSpecifierCase_;
        private Object overrideSpecifier_;
        private static final Override DEFAULT_INSTANCE = new Override();
        private static final e2<Override> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class DynamicMetadata extends GeneratedMessageV3 implements c {
            public static final int METADATA_KEY_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private MetadataKey metadataKey_;
            private static final DynamicMetadata DEFAULT_INSTANCE = new DynamicMetadata();
            private static final e2<DynamicMetadata> PARSER = new a();

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<DynamicMetadata> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public DynamicMetadata m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new DynamicMetadata(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private MetadataKey f49193e;

                /* renamed from: f  reason: collision with root package name */
                private q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> f49194f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return o.T0.d(DynamicMetadata.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public DynamicMetadata build() {
                    DynamicMetadata I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public DynamicMetadata I() {
                    DynamicMetadata dynamicMetadata = new DynamicMetadata(this, (a) null);
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49194f;
                    if (q2Var == null) {
                        dynamicMetadata.metadataKey_ = this.f49193e;
                    } else {
                        dynamicMetadata.metadataKey_ = q2Var.b();
                    }
                    Q();
                    return dynamicMetadata;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public DynamicMetadata getDefaultInstanceForType() {
                    return DynamicMetadata.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.DynamicMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.DynamicMetadata.access$9600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override$DynamicMetadata r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.DynamicMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override$DynamicMetadata r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.DynamicMetadata) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.DynamicMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override$DynamicMetadata$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof DynamicMetadata) {
                        return g0((DynamicMetadata) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(DynamicMetadata dynamicMetadata) {
                    if (dynamicMetadata == DynamicMetadata.getDefaultInstance()) {
                        return this;
                    }
                    if (dynamicMetadata.hasMetadataKey()) {
                        h0(dynamicMetadata.getMetadataKey());
                    }
                    z(((GeneratedMessageV3) dynamicMetadata).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return o.S0;
                }

                public b h0(MetadataKey metadataKey) {
                    q2<MetadataKey, MetadataKey.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a> q2Var = this.f49194f;
                    if (q2Var == null) {
                        MetadataKey metadataKey2 = this.f49193e;
                        if (metadataKey2 != null) {
                            this.f49193e = MetadataKey.newBuilder(metadataKey2).i0(metadataKey).I();
                        } else {
                            this.f49193e = metadataKey;
                        }
                        R();
                    } else {
                        q2Var.e(metadataKey);
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
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    b0();
                }
            }

            /* synthetic */ DynamicMetadata(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static DynamicMetadata getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return o.S0;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DynamicMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DynamicMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<DynamicMetadata> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DynamicMetadata)) {
                    return super.equals(obj);
                }
                DynamicMetadata dynamicMetadata = (DynamicMetadata) obj;
                if (hasMetadataKey() != dynamicMetadata.hasMetadataKey()) {
                    return false;
                }
                return (!hasMetadataKey() || getMetadataKey().equals(dynamicMetadata.getMetadataKey())) && this.unknownFields.equals(dynamicMetadata.unknownFields);
            }

            public MetadataKey getMetadataKey() {
                MetadataKey metadataKey = this.metadataKey_;
                return metadataKey == null ? MetadataKey.getDefaultInstance() : metadataKey;
            }

            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.metadata.v3.a getMetadataKeyOrBuilder() {
                return getMetadataKey();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<DynamicMetadata> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = (this.metadataKey_ != null ? 0 + CodedOutputStream.G(1, getMetadataKey()) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = G;
                return G;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasMetadataKey() {
                return this.metadataKey_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasMetadataKey()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getMetadataKey().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return o.T0.d(DynamicMetadata.class, b.class);
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
                return new DynamicMetadata();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.metadataKey_ != null) {
                    codedOutputStream.L0(1, getMetadataKey());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ DynamicMetadata(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(DynamicMetadata dynamicMetadata) {
                return DEFAULT_INSTANCE.toBuilder().g0(dynamicMetadata);
            }

            public static DynamicMetadata parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private DynamicMetadata(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DynamicMetadata parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static DynamicMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public DynamicMetadata getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static DynamicMetadata parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private DynamicMetadata() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DynamicMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static DynamicMetadata parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private DynamicMetadata(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (L != 10) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        MetadataKey metadataKey = this.metadataKey_;
                                        MetadataKey.c builder = metadataKey != null ? metadataKey.toBuilder() : null;
                                        MetadataKey metadataKey2 = (MetadataKey) pVar.B(MetadataKey.parser(), f0Var);
                                        this.metadataKey_ = metadataKey2;
                                        if (builder != null) {
                                            builder.i0(metadataKey2);
                                            this.metadataKey_ = builder.I();
                                        }
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

            public static DynamicMetadata parseFrom(InputStream inputStream) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static DynamicMetadata parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static DynamicMetadata parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static DynamicMetadata parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (DynamicMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public enum OverrideSpecifierCase implements u0.c {
            DYNAMIC_METADATA(1),
            OVERRIDESPECIFIER_NOT_SET(0);
            
            private final int value;

            OverrideSpecifierCase(int i9) {
                this.value = i9;
            }

            public static OverrideSpecifierCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return DYNAMIC_METADATA;
                }
                return OVERRIDESPECIFIER_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static OverrideSpecifierCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Override> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Override m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Override(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f49195e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49196f;

            /* renamed from: g  reason: collision with root package name */
            private q2<DynamicMetadata, DynamicMetadata.b, c> f49197g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.R0.d(Override.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Override build() {
                Override I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Override I() {
                Override override = new Override(this, (a) null);
                if (this.f49195e == 1) {
                    q2<DynamicMetadata, DynamicMetadata.b, c> q2Var = this.f49197g;
                    if (q2Var == null) {
                        override.overrideSpecifier_ = this.f49196f;
                    } else {
                        override.overrideSpecifier_ = q2Var.b();
                    }
                }
                override.overrideSpecifierCase_ = this.f49195e;
                Q();
                return override;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Override getDefaultInstanceForType() {
                return Override.getDefaultInstance();
            }

            public b d0(DynamicMetadata dynamicMetadata) {
                q2<DynamicMetadata, DynamicMetadata.b, c> q2Var = this.f49197g;
                if (q2Var == null) {
                    if (this.f49195e == 1 && this.f49196f != DynamicMetadata.getDefaultInstance()) {
                        this.f49196f = DynamicMetadata.newBuilder((DynamicMetadata) this.f49196f).g0(dynamicMetadata).I();
                    } else {
                        this.f49196f = dynamicMetadata;
                    }
                    R();
                } else {
                    if (this.f49195e == 1) {
                        q2Var.e(dynamicMetadata);
                    }
                    this.f49197g.g(dynamicMetadata);
                }
                this.f49195e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.access$10500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.Override.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$Override$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Override) {
                    return h0((Override) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.Q0;
            }

            public b h0(Override override) {
                if (override == Override.getDefaultInstance()) {
                    return this;
                }
                if (b.f49199b[override.getOverrideSpecifierCase().ordinal()] == 1) {
                    d0(override.getDynamicMetadata());
                }
                z(((GeneratedMessageV3) override).unknownFields);
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
                this.f49195e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49195e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Override(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Override getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.Q0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Override parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Override) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Override parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Override> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Override)) {
                return super.equals(obj);
            }
            Override override = (Override) obj;
            if (getOverrideSpecifierCase().equals(override.getOverrideSpecifierCase())) {
                return (this.overrideSpecifierCase_ != 1 || getDynamicMetadata().equals(override.getDynamicMetadata())) && this.unknownFields.equals(override.unknownFields);
            }
            return false;
        }

        public DynamicMetadata getDynamicMetadata() {
            if (this.overrideSpecifierCase_ == 1) {
                return (DynamicMetadata) this.overrideSpecifier_;
            }
            return DynamicMetadata.getDefaultInstance();
        }

        public c getDynamicMetadataOrBuilder() {
            if (this.overrideSpecifierCase_ == 1) {
                return (DynamicMetadata) this.overrideSpecifier_;
            }
            return DynamicMetadata.getDefaultInstance();
        }

        public OverrideSpecifierCase getOverrideSpecifierCase() {
            return OverrideSpecifierCase.forNumber(this.overrideSpecifierCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Override> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.overrideSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (DynamicMetadata) this.overrideSpecifier_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasDynamicMetadata() {
            return this.overrideSpecifierCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (this.overrideSpecifierCase_ == 1) {
                hashCode = (((hashCode * 37) + 1) * 53) + getDynamicMetadata().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.R0.d(Override.class, b.class);
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
            return new Override();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.overrideSpecifierCase_ == 1) {
                codedOutputStream.L0(1, (DynamicMetadata) this.overrideSpecifier_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Override(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Override override) {
            return DEFAULT_INSTANCE.toBuilder().h0(override);
        }

        public static Override parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Override(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.overrideSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Override parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Override) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Override parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Override getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Override parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Override parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Override() {
            this.overrideSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Override parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Override parseFrom(InputStream inputStream) throws IOException {
            return (Override) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Override(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                DynamicMetadata.b builder = this.overrideSpecifierCase_ == 1 ? ((DynamicMetadata) this.overrideSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(DynamicMetadata.parser(), f0Var);
                                this.overrideSpecifier_ = B;
                                if (builder != null) {
                                    builder.g0((DynamicMetadata) B);
                                    this.overrideSpecifier_ = builder.I();
                                }
                                this.overrideSpecifierCase_ = 1;
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

        public static Override parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Override) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Override parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Override) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Override parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Override) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
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
        static final /* synthetic */ int[] f49198a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49199b;

        static {
            int[] iArr = new int[Override.OverrideSpecifierCase.values().length];
            f49199b = iArr;
            try {
                iArr[Override.OverrideSpecifierCase.DYNAMIC_METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49199b[Override.OverrideSpecifierCase.OVERRIDESPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Action.ActionSpecifierCase.values().length];
            f49198a = iArr2;
            try {
                iArr2[Action.ActionSpecifierCase.SOURCE_CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.DESTINATION_CLUSTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.REQUEST_HEADERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.REMOTE_ADDRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.GENERIC_KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.HEADER_VALUE_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.DYNAMIC_METADATA.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.METADATA.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.EXTENSION.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f49198a[Action.ActionSpecifierCase.ACTIONSPECIFIER_NOT_SET.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes6.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f49200e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f49201f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f49202g;

        /* renamed from: h  reason: collision with root package name */
        private Object f49203h;

        /* renamed from: i  reason: collision with root package name */
        private List<Action> f49204i;

        /* renamed from: j  reason: collision with root package name */
        private l2<Action, Action.b, c> f49205j;

        /* renamed from: k  reason: collision with root package name */
        private Override f49206k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Override, Override.b, e> f49207l;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49200e & 1) == 0) {
                this.f49204i = new ArrayList(this.f49204i);
                this.f49200e |= 1;
            }
        }

        private l2<Action, Action.b, c> b0() {
            if (this.f49205j == null) {
                this.f49205j = new l2<>(this.f49204i, (this.f49200e & 1) != 0, H(), O());
                this.f49204i = null;
            }
            return this.f49205j;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f49512x0.d(RateLimit.class, d.class);
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
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49202g;
            if (q2Var == null) {
                rateLimit.stage_ = this.f49201f;
            } else {
                rateLimit.stage_ = q2Var.b();
            }
            rateLimit.disableKey_ = this.f49203h;
            l2<Action, Action.b, c> l2Var = this.f49205j;
            if (l2Var == null) {
                if ((this.f49200e & 1) != 0) {
                    this.f49204i = Collections.unmodifiableList(this.f49204i);
                    this.f49200e &= -2;
                }
                rateLimit.actions_ = this.f49204i;
            } else {
                rateLimit.actions_ = l2Var.e();
            }
            q2<Override, Override.b, e> q2Var2 = this.f49207l;
            if (q2Var2 == null) {
                rateLimit.limit_ = this.f49206k;
            } else {
                rateLimit.limit_ = q2Var2.b();
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.access$11700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RateLimit$d");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f49510w0;
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
                k0(rateLimit.getStage());
            }
            if (!rateLimit.getDisableKey().isEmpty()) {
                this.f49203h = rateLimit.disableKey_;
                R();
            }
            if (this.f49205j == null) {
                if (!rateLimit.actions_.isEmpty()) {
                    if (this.f49204i.isEmpty()) {
                        this.f49204i = rateLimit.actions_;
                        this.f49200e &= -2;
                    } else {
                        a0();
                        this.f49204i.addAll(rateLimit.actions_);
                    }
                    R();
                }
            } else if (!rateLimit.actions_.isEmpty()) {
                if (this.f49205j.k()) {
                    this.f49205j.f();
                    this.f49205j = null;
                    this.f49204i = rateLimit.actions_;
                    this.f49200e &= -2;
                    this.f49205j = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f49205j.b(rateLimit.actions_);
                }
            }
            if (rateLimit.hasLimit()) {
                j0(rateLimit.getLimit());
            }
            z(((GeneratedMessageV3) rateLimit).unknownFields);
            R();
            return this;
        }

        public d j0(Override override) {
            q2<Override, Override.b, e> q2Var = this.f49207l;
            if (q2Var == null) {
                Override override2 = this.f49206k;
                if (override2 != null) {
                    this.f49206k = Override.newBuilder(override2).h0(override).I();
                } else {
                    this.f49206k = override;
                }
                R();
            } else {
                q2Var.e(override);
            }
            return this;
        }

        public d k0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49202g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49201f;
                if (uInt32Value2 != null) {
                    this.f49201f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49201f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final d f1(h3 h3Var) {
            return (d) super.f1(h3Var);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            this.f49203h = "";
            this.f49204i = Collections.emptyList();
            e0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49203h = "";
            this.f49204i = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* synthetic */ RateLimit(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RateLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f49510w0;
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
        if ((!hasStage() || getStage().equals(rateLimit.getStage())) && getDisableKey().equals(rateLimit.getDisableKey()) && getActionsList().equals(rateLimit.getActionsList()) && hasLimit() == rateLimit.hasLimit()) {
            return (!hasLimit() || getLimit().equals(rateLimit.getLimit())) && this.unknownFields.equals(rateLimit.unknownFields);
        }
        return false;
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

    public Override getLimit() {
        Override override = this.limit_;
        return override == null ? Override.getDefaultInstance() : override;
    }

    public e getLimitOrBuilder() {
        return getLimit();
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
        if (this.limit_ != null) {
            G += CodedOutputStream.G(4, getLimit());
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

    public boolean hasLimit() {
        return this.limit_ != null;
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
        if (hasLimit()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getLimit().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f49512x0.d(RateLimit.class, d.class);
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
        if (this.limit_ != null) {
            codedOutputStream.L0(4, getLimit());
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
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.actions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.actions_.add((Action) pVar.B(Action.parser(), f0Var));
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Override override = this.limit_;
                            Override.b builder2 = override != null ? override.toBuilder() : null;
                            Override override2 = (Override) pVar.B(Override.parser(), f0Var);
                            this.limit_ = override2;
                            if (builder2 != null) {
                                builder2.h0(override2);
                                this.limit_ = builder2.I();
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
