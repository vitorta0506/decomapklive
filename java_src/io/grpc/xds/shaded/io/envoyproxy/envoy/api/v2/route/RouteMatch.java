package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.BoolValue;
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
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RuntimeFractionalPercent;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HeaderMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.QueryParameterMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.RegexMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RouteMatch extends GeneratedMessageV3 implements m {
    public static final int CASE_SENSITIVE_FIELD_NUMBER = 4;
    public static final int GRPC_FIELD_NUMBER = 8;
    public static final int HEADERS_FIELD_NUMBER = 6;
    public static final int PATH_FIELD_NUMBER = 2;
    public static final int PREFIX_FIELD_NUMBER = 1;
    public static final int QUERY_PARAMETERS_FIELD_NUMBER = 7;
    public static final int REGEX_FIELD_NUMBER = 3;
    public static final int RUNTIME_FRACTION_FIELD_NUMBER = 9;
    public static final int SAFE_REGEX_FIELD_NUMBER = 10;
    public static final int TLS_CONTEXT_FIELD_NUMBER = 11;
    private static final long serialVersionUID = 0;
    private BoolValue caseSensitive_;
    private GrpcRouteMatchOptions grpc_;
    private List<HeaderMatcher> headers_;
    private byte memoizedIsInitialized;
    private int pathSpecifierCase_;
    private Object pathSpecifier_;
    private List<QueryParameterMatcher> queryParameters_;
    private RuntimeFractionalPercent runtimeFraction_;
    private TlsContextMatchOptions tlsContext_;
    private static final RouteMatch DEFAULT_INSTANCE = new RouteMatch();
    private static final e2<RouteMatch> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class GrpcRouteMatchOptions extends GeneratedMessageV3 implements d {
        private static final GrpcRouteMatchOptions DEFAULT_INSTANCE = new GrpcRouteMatchOptions();
        private static final e2<GrpcRouteMatchOptions> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<GrpcRouteMatchOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public GrpcRouteMatchOptions m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new GrpcRouteMatchOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f47333z.d(GrpcRouteMatchOptions.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public GrpcRouteMatchOptions build() {
                GrpcRouteMatchOptions I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public GrpcRouteMatchOptions I() {
                GrpcRouteMatchOptions grpcRouteMatchOptions = new GrpcRouteMatchOptions(this, (a) null);
                Q();
                return grpcRouteMatchOptions;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public GrpcRouteMatchOptions getDefaultInstanceForType() {
                return GrpcRouteMatchOptions.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$GrpcRouteMatchOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$GrpcRouteMatchOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.GrpcRouteMatchOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$GrpcRouteMatchOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof GrpcRouteMatchOptions) {
                    return g0((GrpcRouteMatchOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(GrpcRouteMatchOptions grpcRouteMatchOptions) {
                if (grpcRouteMatchOptions == GrpcRouteMatchOptions.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) grpcRouteMatchOptions).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f47331y;
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

        /* synthetic */ GrpcRouteMatchOptions(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static GrpcRouteMatchOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f47331y;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static GrpcRouteMatchOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static GrpcRouteMatchOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<GrpcRouteMatchOptions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof GrpcRouteMatchOptions) {
                return this.unknownFields.equals(((GrpcRouteMatchOptions) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<GrpcRouteMatchOptions> getParserForType() {
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
            return l.f47333z.d(GrpcRouteMatchOptions.class, b.class);
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
            return new GrpcRouteMatchOptions();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ GrpcRouteMatchOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(GrpcRouteMatchOptions grpcRouteMatchOptions) {
            return DEFAULT_INSTANCE.toBuilder().g0(grpcRouteMatchOptions);
        }

        public static GrpcRouteMatchOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private GrpcRouteMatchOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GrpcRouteMatchOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static GrpcRouteMatchOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public GrpcRouteMatchOptions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static GrpcRouteMatchOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private GrpcRouteMatchOptions() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static GrpcRouteMatchOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static GrpcRouteMatchOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private GrpcRouteMatchOptions(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static GrpcRouteMatchOptions parseFrom(InputStream inputStream) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static GrpcRouteMatchOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static GrpcRouteMatchOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static GrpcRouteMatchOptions parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (GrpcRouteMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum PathSpecifierCase implements u0.c {
        PREFIX(1),
        PATH(2),
        REGEX(3),
        SAFE_REGEX(10),
        PATHSPECIFIER_NOT_SET(0);
        
        private final int value;

        PathSpecifierCase(int i9) {
            this.value = i9;
        }

        public static PathSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 10) {
                                return null;
                            }
                            return SAFE_REGEX;
                        }
                        return REGEX;
                    }
                    return PATH;
                }
                return PREFIX;
            }
            return PATHSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PathSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class TlsContextMatchOptions extends GeneratedMessageV3 implements e {
        private static final TlsContextMatchOptions DEFAULT_INSTANCE = new TlsContextMatchOptions();
        private static final e2<TlsContextMatchOptions> PARSER = new a();
        public static final int PRESENTED_FIELD_NUMBER = 1;
        public static final int VALIDATED_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private BoolValue presented_;
        private BoolValue validated_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<TlsContextMatchOptions> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TlsContextMatchOptions m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TlsContextMatchOptions(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private BoolValue f47201e;

            /* renamed from: f  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47202f;

            /* renamed from: g  reason: collision with root package name */
            private BoolValue f47203g;

            /* renamed from: h  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47204h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.B.d(TlsContextMatchOptions.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TlsContextMatchOptions build() {
                TlsContextMatchOptions I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TlsContextMatchOptions I() {
                TlsContextMatchOptions tlsContextMatchOptions = new TlsContextMatchOptions(this, (a) null);
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47202f;
                if (q2Var == null) {
                    tlsContextMatchOptions.presented_ = this.f47201e;
                } else {
                    tlsContextMatchOptions.presented_ = q2Var.b();
                }
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47204h;
                if (q2Var2 == null) {
                    tlsContextMatchOptions.validated_ = this.f47203g;
                } else {
                    tlsContextMatchOptions.validated_ = q2Var2.b();
                }
                Q();
                return tlsContextMatchOptions;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public TlsContextMatchOptions getDefaultInstanceForType() {
                return TlsContextMatchOptions.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$TlsContextMatchOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$TlsContextMatchOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.TlsContextMatchOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$TlsContextMatchOptions$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof TlsContextMatchOptions) {
                    return g0((TlsContextMatchOptions) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(TlsContextMatchOptions tlsContextMatchOptions) {
                if (tlsContextMatchOptions == TlsContextMatchOptions.getDefaultInstance()) {
                    return this;
                }
                if (tlsContextMatchOptions.hasPresented()) {
                    h0(tlsContextMatchOptions.getPresented());
                }
                if (tlsContextMatchOptions.hasValidated()) {
                    j0(tlsContextMatchOptions.getValidated());
                }
                z(((GeneratedMessageV3) tlsContextMatchOptions).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.A;
            }

            public b h0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47202f;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f47201e;
                    if (boolValue2 != null) {
                        this.f47201e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f47201e = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47204h;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f47203g;
                    if (boolValue2 != null) {
                        this.f47203g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f47203g = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
                }
                return this;
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

        /* synthetic */ TlsContextMatchOptions(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TlsContextMatchOptions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.A;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TlsContextMatchOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TlsContextMatchOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TlsContextMatchOptions> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TlsContextMatchOptions)) {
                return super.equals(obj);
            }
            TlsContextMatchOptions tlsContextMatchOptions = (TlsContextMatchOptions) obj;
            if (hasPresented() != tlsContextMatchOptions.hasPresented()) {
                return false;
            }
            if ((!hasPresented() || getPresented().equals(tlsContextMatchOptions.getPresented())) && hasValidated() == tlsContextMatchOptions.hasValidated()) {
                return (!hasValidated() || getValidated().equals(tlsContextMatchOptions.getValidated())) && this.unknownFields.equals(tlsContextMatchOptions.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TlsContextMatchOptions> getParserForType() {
            return PARSER;
        }

        public BoolValue getPresented() {
            BoolValue boolValue = this.presented_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public com.google.protobuf.l getPresentedOrBuilder() {
            return getPresented();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.presented_ != null ? 0 + CodedOutputStream.G(1, getPresented()) : 0;
            if (this.validated_ != null) {
                G += CodedOutputStream.G(2, getValidated());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public BoolValue getValidated() {
            BoolValue boolValue = this.validated_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public com.google.protobuf.l getValidatedOrBuilder() {
            return getValidated();
        }

        public boolean hasPresented() {
            return this.presented_ != null;
        }

        public boolean hasValidated() {
            return this.validated_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasPresented()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getPresented().hashCode();
            }
            if (hasValidated()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValidated().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.B.d(TlsContextMatchOptions.class, b.class);
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
            return new TlsContextMatchOptions();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.presented_ != null) {
                codedOutputStream.L0(1, getPresented());
            }
            if (this.validated_ != null) {
                codedOutputStream.L0(2, getValidated());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TlsContextMatchOptions(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TlsContextMatchOptions tlsContextMatchOptions) {
            return DEFAULT_INSTANCE.toBuilder().g0(tlsContextMatchOptions);
        }

        public static TlsContextMatchOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TlsContextMatchOptions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TlsContextMatchOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TlsContextMatchOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TlsContextMatchOptions getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static TlsContextMatchOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TlsContextMatchOptions() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TlsContextMatchOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TlsContextMatchOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private TlsContextMatchOptions(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            BoolValue.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                BoolValue boolValue = this.presented_;
                                builder = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.presented_ = boolValue2;
                                if (builder != null) {
                                    builder.d0(boolValue2);
                                    this.presented_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                BoolValue boolValue3 = this.validated_;
                                builder = boolValue3 != null ? boolValue3.toBuilder() : null;
                                BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.validated_ = boolValue4;
                                if (builder != null) {
                                    builder.d0(boolValue4);
                                    this.validated_ = builder.I();
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

        public static TlsContextMatchOptions parseFrom(InputStream inputStream) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static TlsContextMatchOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TlsContextMatchOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TlsContextMatchOptions parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (TlsContextMatchOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RouteMatch> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RouteMatch m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RouteMatch(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47205a;

        static {
            int[] iArr = new int[PathSpecifierCase.values().length];
            f47205a = iArr;
            try {
                iArr[PathSpecifierCase.PREFIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47205a[PathSpecifierCase.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47205a[PathSpecifierCase.REGEX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47205a[PathSpecifierCase.SAFE_REGEX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47205a[PathSpecifierCase.PATHSPECIFIER_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements m {

        /* renamed from: e  reason: collision with root package name */
        private int f47206e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47207f;

        /* renamed from: g  reason: collision with root package name */
        private int f47208g;

        /* renamed from: h  reason: collision with root package name */
        private q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.i> f47209h;

        /* renamed from: i  reason: collision with root package name */
        private BoolValue f47210i;

        /* renamed from: j  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47211j;

        /* renamed from: k  reason: collision with root package name */
        private RuntimeFractionalPercent f47212k;

        /* renamed from: l  reason: collision with root package name */
        private q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> f47213l;

        /* renamed from: m  reason: collision with root package name */
        private List<HeaderMatcher> f47214m;

        /* renamed from: n  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> f47215n;

        /* renamed from: o  reason: collision with root package name */
        private List<QueryParameterMatcher> f47216o;

        /* renamed from: p  reason: collision with root package name */
        private l2<QueryParameterMatcher, QueryParameterMatcher.c, g> f47217p;

        /* renamed from: q  reason: collision with root package name */
        private GrpcRouteMatchOptions f47218q;

        /* renamed from: r  reason: collision with root package name */
        private q2<GrpcRouteMatchOptions, GrpcRouteMatchOptions.b, d> f47219r;

        /* renamed from: s  reason: collision with root package name */
        private TlsContextMatchOptions f47220s;

        /* renamed from: t  reason: collision with root package name */
        private q2<TlsContextMatchOptions, TlsContextMatchOptions.b, e> f47221t;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47208g & 1) == 0) {
                this.f47214m = new ArrayList(this.f47214m);
                this.f47208g |= 1;
            }
        }

        private void b0() {
            if ((this.f47208g & 2) == 0) {
                this.f47216o = new ArrayList(this.f47216o);
                this.f47208g |= 2;
            }
        }

        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> e0() {
            if (this.f47215n == null) {
                this.f47215n = new l2<>(this.f47214m, (this.f47208g & 1) != 0, H(), O());
                this.f47214m = null;
            }
            return this.f47215n;
        }

        private l2<QueryParameterMatcher, QueryParameterMatcher.c, g> g0() {
            if (this.f47217p == null) {
                this.f47217p = new l2<>(this.f47216o, (this.f47208g & 2) != 0, H(), O());
                this.f47216o = null;
            }
            return this.f47217p;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f47329x.d(RouteMatch.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RouteMatch build() {
            RouteMatch I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RouteMatch I() {
            RouteMatch routeMatch = new RouteMatch(this, (a) null);
            if (this.f47206e == 1) {
                routeMatch.pathSpecifier_ = this.f47207f;
            }
            if (this.f47206e == 2) {
                routeMatch.pathSpecifier_ = this.f47207f;
            }
            if (this.f47206e == 3) {
                routeMatch.pathSpecifier_ = this.f47207f;
            }
            if (this.f47206e == 10) {
                q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.i> q2Var = this.f47209h;
                if (q2Var == null) {
                    routeMatch.pathSpecifier_ = this.f47207f;
                } else {
                    routeMatch.pathSpecifier_ = q2Var.b();
                }
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f47211j;
            if (q2Var2 == null) {
                routeMatch.caseSensitive_ = this.f47210i;
            } else {
                routeMatch.caseSensitive_ = q2Var2.b();
            }
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var3 = this.f47213l;
            if (q2Var3 == null) {
                routeMatch.runtimeFraction_ = this.f47212k;
            } else {
                routeMatch.runtimeFraction_ = q2Var3.b();
            }
            l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> l2Var = this.f47215n;
            if (l2Var == null) {
                if ((this.f47208g & 1) != 0) {
                    this.f47214m = Collections.unmodifiableList(this.f47214m);
                    this.f47208g &= -2;
                }
                routeMatch.headers_ = this.f47214m;
            } else {
                routeMatch.headers_ = l2Var.e();
            }
            l2<QueryParameterMatcher, QueryParameterMatcher.c, g> l2Var2 = this.f47217p;
            if (l2Var2 == null) {
                if ((this.f47208g & 2) != 0) {
                    this.f47216o = Collections.unmodifiableList(this.f47216o);
                    this.f47208g &= -3;
                }
                routeMatch.queryParameters_ = this.f47216o;
            } else {
                routeMatch.queryParameters_ = l2Var2.e();
            }
            q2<GrpcRouteMatchOptions, GrpcRouteMatchOptions.b, d> q2Var4 = this.f47219r;
            if (q2Var4 == null) {
                routeMatch.grpc_ = this.f47218q;
            } else {
                routeMatch.grpc_ = q2Var4.b();
            }
            q2<TlsContextMatchOptions, TlsContextMatchOptions.b, e> q2Var5 = this.f47221t;
            if (q2Var5 == null) {
                routeMatch.tlsContext_ = this.f47220s;
            } else {
                routeMatch.tlsContext_ = q2Var5.b();
            }
            routeMatch.pathSpecifierCase_ = this.f47206e;
            Q();
            return routeMatch;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public RouteMatch getDefaultInstanceForType() {
            return RouteMatch.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f47327w;
        }

        public c i0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47211j;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47210i;
                if (boolValue2 != null) {
                    this.f47210i = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47210i = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RouteMatch$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RouteMatch) {
                return l0((RouteMatch) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c l0(RouteMatch routeMatch) {
            if (routeMatch == RouteMatch.getDefaultInstance()) {
                return this;
            }
            if (routeMatch.hasCaseSensitive()) {
                i0(routeMatch.getCaseSensitive());
            }
            if (routeMatch.hasRuntimeFraction()) {
                n0(routeMatch.getRuntimeFraction());
            }
            if (this.f47215n == null) {
                if (!routeMatch.headers_.isEmpty()) {
                    if (this.f47214m.isEmpty()) {
                        this.f47214m = routeMatch.headers_;
                        this.f47208g &= -2;
                    } else {
                        a0();
                        this.f47214m.addAll(routeMatch.headers_);
                    }
                    R();
                }
            } else if (!routeMatch.headers_.isEmpty()) {
                if (this.f47215n.k()) {
                    this.f47215n.f();
                    this.f47215n = null;
                    this.f47214m = routeMatch.headers_;
                    this.f47208g &= -2;
                    this.f47215n = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f47215n.b(routeMatch.headers_);
                }
            }
            if (this.f47217p == null) {
                if (!routeMatch.queryParameters_.isEmpty()) {
                    if (this.f47216o.isEmpty()) {
                        this.f47216o = routeMatch.queryParameters_;
                        this.f47208g &= -3;
                    } else {
                        b0();
                        this.f47216o.addAll(routeMatch.queryParameters_);
                    }
                    R();
                }
            } else if (!routeMatch.queryParameters_.isEmpty()) {
                if (this.f47217p.k()) {
                    this.f47217p.f();
                    this.f47217p = null;
                    this.f47216o = routeMatch.queryParameters_;
                    this.f47208g &= -3;
                    this.f47217p = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f47217p.b(routeMatch.queryParameters_);
                }
            }
            if (routeMatch.hasGrpc()) {
                m0(routeMatch.getGrpc());
            }
            if (routeMatch.hasTlsContext()) {
                q0(routeMatch.getTlsContext());
            }
            int i9 = b.f47205a[routeMatch.getPathSpecifierCase().ordinal()];
            if (i9 == 1) {
                this.f47206e = 1;
                this.f47207f = routeMatch.pathSpecifier_;
                R();
            } else if (i9 == 2) {
                this.f47206e = 2;
                this.f47207f = routeMatch.pathSpecifier_;
                R();
            } else if (i9 == 3) {
                this.f47206e = 3;
                this.f47207f = routeMatch.pathSpecifier_;
                R();
            } else if (i9 == 4) {
                o0(routeMatch.getSafeRegex());
            }
            z(((GeneratedMessageV3) routeMatch).unknownFields);
            R();
            return this;
        }

        public c m0(GrpcRouteMatchOptions grpcRouteMatchOptions) {
            q2<GrpcRouteMatchOptions, GrpcRouteMatchOptions.b, d> q2Var = this.f47219r;
            if (q2Var == null) {
                GrpcRouteMatchOptions grpcRouteMatchOptions2 = this.f47218q;
                if (grpcRouteMatchOptions2 != null) {
                    this.f47218q = GrpcRouteMatchOptions.newBuilder(grpcRouteMatchOptions2).g0(grpcRouteMatchOptions).I();
                } else {
                    this.f47218q = grpcRouteMatchOptions;
                }
                R();
            } else {
                q2Var.e(grpcRouteMatchOptions);
            }
            return this;
        }

        public c n0(RuntimeFractionalPercent runtimeFractionalPercent) {
            q2<RuntimeFractionalPercent, RuntimeFractionalPercent.b, k0> q2Var = this.f47213l;
            if (q2Var == null) {
                RuntimeFractionalPercent runtimeFractionalPercent2 = this.f47212k;
                if (runtimeFractionalPercent2 != null) {
                    this.f47212k = RuntimeFractionalPercent.newBuilder(runtimeFractionalPercent2).h0(runtimeFractionalPercent).I();
                } else {
                    this.f47212k = runtimeFractionalPercent;
                }
                R();
            } else {
                q2Var.e(runtimeFractionalPercent);
            }
            return this;
        }

        public c o0(RegexMatcher regexMatcher) {
            q2<RegexMatcher, RegexMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.i> q2Var = this.f47209h;
            if (q2Var == null) {
                if (this.f47206e == 10 && this.f47207f != RegexMatcher.getDefaultInstance()) {
                    this.f47207f = RegexMatcher.newBuilder((RegexMatcher) this.f47207f).g0(regexMatcher).I();
                } else {
                    this.f47207f = regexMatcher;
                }
                R();
            } else {
                if (this.f47206e == 10) {
                    q2Var.e(regexMatcher);
                }
                this.f47209h.g(regexMatcher);
            }
            this.f47206e = 10;
            return this;
        }

        public c q0(TlsContextMatchOptions tlsContextMatchOptions) {
            q2<TlsContextMatchOptions, TlsContextMatchOptions.b, e> q2Var = this.f47221t;
            if (q2Var == null) {
                TlsContextMatchOptions tlsContextMatchOptions2 = this.f47220s;
                if (tlsContextMatchOptions2 != null) {
                    this.f47220s = TlsContextMatchOptions.newBuilder(tlsContextMatchOptions2).g0(tlsContextMatchOptions).I();
                } else {
                    this.f47220s = tlsContextMatchOptions;
                }
                R();
            } else {
                q2Var.e(tlsContextMatchOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: r0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: t0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47206e = 0;
            this.f47214m = Collections.emptyList();
            this.f47216o = Collections.emptyList();
            h0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47206e = 0;
            this.f47214m = Collections.emptyList();
            this.f47216o = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* synthetic */ RouteMatch(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RouteMatch getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f47327w;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RouteMatch parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RouteMatch parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RouteMatch> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RouteMatch)) {
            return super.equals(obj);
        }
        RouteMatch routeMatch = (RouteMatch) obj;
        if (hasCaseSensitive() != routeMatch.hasCaseSensitive()) {
            return false;
        }
        if ((!hasCaseSensitive() || getCaseSensitive().equals(routeMatch.getCaseSensitive())) && hasRuntimeFraction() == routeMatch.hasRuntimeFraction()) {
            if ((!hasRuntimeFraction() || getRuntimeFraction().equals(routeMatch.getRuntimeFraction())) && getHeadersList().equals(routeMatch.getHeadersList()) && getQueryParametersList().equals(routeMatch.getQueryParametersList()) && hasGrpc() == routeMatch.hasGrpc()) {
                if ((!hasGrpc() || getGrpc().equals(routeMatch.getGrpc())) && hasTlsContext() == routeMatch.hasTlsContext()) {
                    if ((!hasTlsContext() || getTlsContext().equals(routeMatch.getTlsContext())) && getPathSpecifierCase().equals(routeMatch.getPathSpecifierCase())) {
                        int i9 = this.pathSpecifierCase_;
                        if (i9 != 1) {
                            if (i9 != 2) {
                                if (i9 != 3) {
                                    if (i9 == 10 && !getSafeRegex().equals(routeMatch.getSafeRegex())) {
                                        return false;
                                    }
                                } else if (!getRegex().equals(routeMatch.getRegex())) {
                                    return false;
                                }
                            } else if (!getPath().equals(routeMatch.getPath())) {
                                return false;
                            }
                        } else if (!getPrefix().equals(routeMatch.getPrefix())) {
                            return false;
                        }
                        return this.unknownFields.equals(routeMatch.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public BoolValue getCaseSensitive() {
        BoolValue boolValue = this.caseSensitive_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getCaseSensitiveOrBuilder() {
        return getCaseSensitive();
    }

    public GrpcRouteMatchOptions getGrpc() {
        GrpcRouteMatchOptions grpcRouteMatchOptions = this.grpc_;
        return grpcRouteMatchOptions == null ? GrpcRouteMatchOptions.getDefaultInstance() : grpcRouteMatchOptions;
    }

    public d getGrpcOrBuilder() {
        return getGrpc();
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
    public e2<RouteMatch> getParserForType() {
        return PARSER;
    }

    public String getPath() {
        String str = this.pathSpecifierCase_ == 2 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.pathSpecifierCase_ == 2) {
            this.pathSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPathBytes() {
        String str = this.pathSpecifierCase_ == 2 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.pathSpecifierCase_ == 2) {
                this.pathSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public PathSpecifierCase getPathSpecifierCase() {
        return PathSpecifierCase.forNumber(this.pathSpecifierCase_);
    }

    public String getPrefix() {
        String str = this.pathSpecifierCase_ == 1 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.pathSpecifierCase_ == 1) {
            this.pathSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getPrefixBytes() {
        String str = this.pathSpecifierCase_ == 1 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.pathSpecifierCase_ == 1) {
                this.pathSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public QueryParameterMatcher getQueryParameters(int i9) {
        return this.queryParameters_.get(i9);
    }

    public int getQueryParametersCount() {
        return this.queryParameters_.size();
    }

    public List<QueryParameterMatcher> getQueryParametersList() {
        return this.queryParameters_;
    }

    public g getQueryParametersOrBuilder(int i9) {
        return this.queryParameters_.get(i9);
    }

    public List<? extends g> getQueryParametersOrBuilderList() {
        return this.queryParameters_;
    }

    @Deprecated
    public String getRegex() {
        String str = this.pathSpecifierCase_ == 3 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.pathSpecifierCase_ == 3) {
            this.pathSpecifier_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getRegexBytes() {
        String str = this.pathSpecifierCase_ == 3 ? this.pathSpecifier_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.pathSpecifierCase_ == 3) {
                this.pathSpecifier_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public RuntimeFractionalPercent getRuntimeFraction() {
        RuntimeFractionalPercent runtimeFractionalPercent = this.runtimeFraction_;
        return runtimeFractionalPercent == null ? RuntimeFractionalPercent.getDefaultInstance() : runtimeFractionalPercent;
    }

    public k0 getRuntimeFractionOrBuilder() {
        return getRuntimeFraction();
    }

    public RegexMatcher getSafeRegex() {
        if (this.pathSpecifierCase_ == 10) {
            return (RegexMatcher) this.pathSpecifier_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.i getSafeRegexOrBuilder() {
        if (this.pathSpecifierCase_ == 10) {
            return (RegexMatcher) this.pathSpecifier_;
        }
        return RegexMatcher.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.pathSpecifierCase_ == 1 ? GeneratedMessageV3.computeStringSize(1, this.pathSpecifier_) + 0 : 0;
        if (this.pathSpecifierCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.pathSpecifier_);
        }
        if (this.pathSpecifierCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.pathSpecifier_);
        }
        if (this.caseSensitive_ != null) {
            computeStringSize += CodedOutputStream.G(4, getCaseSensitive());
        }
        for (int i10 = 0; i10 < this.headers_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(6, this.headers_.get(i10));
        }
        for (int i11 = 0; i11 < this.queryParameters_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(7, this.queryParameters_.get(i11));
        }
        if (this.grpc_ != null) {
            computeStringSize += CodedOutputStream.G(8, getGrpc());
        }
        if (this.runtimeFraction_ != null) {
            computeStringSize += CodedOutputStream.G(9, getRuntimeFraction());
        }
        if (this.pathSpecifierCase_ == 10) {
            computeStringSize += CodedOutputStream.G(10, (RegexMatcher) this.pathSpecifier_);
        }
        if (this.tlsContext_ != null) {
            computeStringSize += CodedOutputStream.G(11, getTlsContext());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TlsContextMatchOptions getTlsContext() {
        TlsContextMatchOptions tlsContextMatchOptions = this.tlsContext_;
        return tlsContextMatchOptions == null ? TlsContextMatchOptions.getDefaultInstance() : tlsContextMatchOptions;
    }

    public e getTlsContextOrBuilder() {
        return getTlsContext();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCaseSensitive() {
        return this.caseSensitive_ != null;
    }

    public boolean hasGrpc() {
        return this.grpc_ != null;
    }

    public boolean hasPath() {
        return this.pathSpecifierCase_ == 2;
    }

    public boolean hasPrefix() {
        return this.pathSpecifierCase_ == 1;
    }

    @Deprecated
    public boolean hasRegex() {
        return this.pathSpecifierCase_ == 3;
    }

    public boolean hasRuntimeFraction() {
        return this.runtimeFraction_ != null;
    }

    public boolean hasSafeRegex() {
        return this.pathSpecifierCase_ == 10;
    }

    public boolean hasTlsContext() {
        return this.tlsContext_ != null;
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
        if (hasCaseSensitive()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getCaseSensitive().hashCode();
        }
        if (hasRuntimeFraction()) {
            hashCode2 = (((hashCode2 * 37) + 9) * 53) + getRuntimeFraction().hashCode();
        }
        if (getHeadersCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getHeadersList().hashCode();
        }
        if (getQueryParametersCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getQueryParametersList().hashCode();
        }
        if (hasGrpc()) {
            hashCode2 = (((hashCode2 * 37) + 8) * 53) + getGrpc().hashCode();
        }
        if (hasTlsContext()) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + getTlsContext().hashCode();
        }
        int i11 = this.pathSpecifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getPrefix().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getPath().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getRegex().hashCode();
        } else {
            if (i11 == 10) {
                i9 = ((hashCode2 * 37) + 10) * 53;
                hashCode = getSafeRegex().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f47329x.d(RouteMatch.class, c.class);
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
        return new RouteMatch();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.pathSpecifierCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.pathSpecifier_);
        }
        if (this.pathSpecifierCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.pathSpecifier_);
        }
        if (this.pathSpecifierCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.pathSpecifier_);
        }
        if (this.caseSensitive_ != null) {
            codedOutputStream.L0(4, getCaseSensitive());
        }
        for (int i9 = 0; i9 < this.headers_.size(); i9++) {
            codedOutputStream.L0(6, this.headers_.get(i9));
        }
        for (int i10 = 0; i10 < this.queryParameters_.size(); i10++) {
            codedOutputStream.L0(7, this.queryParameters_.get(i10));
        }
        if (this.grpc_ != null) {
            codedOutputStream.L0(8, getGrpc());
        }
        if (this.runtimeFraction_ != null) {
            codedOutputStream.L0(9, getRuntimeFraction());
        }
        if (this.pathSpecifierCase_ == 10) {
            codedOutputStream.L0(10, (RegexMatcher) this.pathSpecifier_);
        }
        if (this.tlsContext_ != null) {
            codedOutputStream.L0(11, getTlsContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RouteMatch(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RouteMatch routeMatch) {
        return DEFAULT_INSTANCE.toBuilder().l0(routeMatch);
    }

    public static RouteMatch parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RouteMatch(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.pathSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RouteMatch parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RouteMatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RouteMatch getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).l0(this);
    }

    public static RouteMatch parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RouteMatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private RouteMatch() {
        this.pathSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.headers_ = Collections.emptyList();
        this.queryParameters_ = Collections.emptyList();
    }

    public static RouteMatch parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RouteMatch parseFrom(InputStream inputStream) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RouteMatch parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private RouteMatch(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            String K = pVar.K();
                            this.pathSpecifierCase_ = 1;
                            this.pathSpecifier_ = K;
                            continue;
                        case 18:
                            String K2 = pVar.K();
                            this.pathSpecifierCase_ = 2;
                            this.pathSpecifier_ = K2;
                            continue;
                        case 26:
                            String K3 = pVar.K();
                            this.pathSpecifierCase_ = 3;
                            this.pathSpecifier_ = K3;
                            continue;
                        case 34:
                            BoolValue boolValue = this.caseSensitive_;
                            BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.caseSensitive_ = boolValue2;
                            if (builder != null) {
                                builder.d0(boolValue2);
                                this.caseSensitive_ = builder.I();
                            } else {
                                continue;
                            }
                        case 50:
                            if (!(z11 & true)) {
                                this.headers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.headers_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
                            continue;
                        case 58:
                            if (!(z11 & true)) {
                                this.queryParameters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.queryParameters_.add((QueryParameterMatcher) pVar.B(QueryParameterMatcher.parser(), f0Var));
                            continue;
                        case 66:
                            GrpcRouteMatchOptions grpcRouteMatchOptions = this.grpc_;
                            GrpcRouteMatchOptions.b builder2 = grpcRouteMatchOptions != null ? grpcRouteMatchOptions.toBuilder() : null;
                            GrpcRouteMatchOptions grpcRouteMatchOptions2 = (GrpcRouteMatchOptions) pVar.B(GrpcRouteMatchOptions.parser(), f0Var);
                            this.grpc_ = grpcRouteMatchOptions2;
                            if (builder2 != null) {
                                builder2.g0(grpcRouteMatchOptions2);
                                this.grpc_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 74:
                            RuntimeFractionalPercent runtimeFractionalPercent = this.runtimeFraction_;
                            RuntimeFractionalPercent.b builder3 = runtimeFractionalPercent != null ? runtimeFractionalPercent.toBuilder() : null;
                            RuntimeFractionalPercent runtimeFractionalPercent2 = (RuntimeFractionalPercent) pVar.B(RuntimeFractionalPercent.parser(), f0Var);
                            this.runtimeFraction_ = runtimeFractionalPercent2;
                            if (builder3 != null) {
                                builder3.h0(runtimeFractionalPercent2);
                                this.runtimeFraction_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 82:
                            RegexMatcher.c builder4 = this.pathSpecifierCase_ == 10 ? ((RegexMatcher) this.pathSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(RegexMatcher.parser(), f0Var);
                            this.pathSpecifier_ = B;
                            if (builder4 != null) {
                                builder4.g0((RegexMatcher) B);
                                this.pathSpecifier_ = builder4.I();
                            }
                            this.pathSpecifierCase_ = 10;
                            continue;
                        case 90:
                            TlsContextMatchOptions tlsContextMatchOptions = this.tlsContext_;
                            TlsContextMatchOptions.b builder5 = tlsContextMatchOptions != null ? tlsContextMatchOptions.toBuilder() : null;
                            TlsContextMatchOptions tlsContextMatchOptions2 = (TlsContextMatchOptions) pVar.B(TlsContextMatchOptions.parser(), f0Var);
                            this.tlsContext_ = tlsContextMatchOptions2;
                            if (builder5 != null) {
                                builder5.g0(tlsContextMatchOptions2);
                                this.tlsContext_ = builder5.I();
                            } else {
                                continue;
                            }
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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
                if (z11 & true) {
                    this.queryParameters_ = Collections.unmodifiableList(this.queryParameters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static RouteMatch parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RouteMatch parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RouteMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
