package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Http1ProtocolOptions extends GeneratedMessageV3 implements c0 {
    public static final int ACCEPT_HTTP_10_FIELD_NUMBER = 2;
    public static final int ALLOW_ABSOLUTE_URL_FIELD_NUMBER = 1;
    public static final int ALLOW_CHUNKED_LENGTH_FIELD_NUMBER = 6;
    public static final int DEFAULT_HOST_FOR_HTTP_10_FIELD_NUMBER = 3;
    public static final int ENABLE_TRAILERS_FIELD_NUMBER = 5;
    public static final int HEADER_KEY_FORMAT_FIELD_NUMBER = 4;
    public static final int OVERRIDE_STREAM_ERROR_ON_INVALID_HTTP_MESSAGE_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private boolean acceptHttp10_;
    private BoolValue allowAbsoluteUrl_;
    private boolean allowChunkedLength_;
    private volatile Object defaultHostForHttp10_;
    private boolean enableTrailers_;
    private HeaderKeyFormat headerKeyFormat_;
    private byte memoizedIsInitialized;
    private BoolValue overrideStreamErrorOnInvalidHttpMessage_;
    private static final Http1ProtocolOptions DEFAULT_INSTANCE = new Http1ProtocolOptions();
    private static final e2<Http1ProtocolOptions> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class HeaderKeyFormat extends GeneratedMessageV3 implements d {
        private static final HeaderKeyFormat DEFAULT_INSTANCE = new HeaderKeyFormat();
        private static final e2<HeaderKeyFormat> PARSER = new a();
        public static final int PROPER_CASE_WORDS_FIELD_NUMBER = 1;
        public static final int STATEFUL_FORMATTER_FIELD_NUMBER = 8;
        private static final long serialVersionUID = 0;
        private int headerFormatCase_;
        private Object headerFormat_;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        public enum HeaderFormatCase implements u0.c {
            PROPER_CASE_WORDS(1),
            STATEFUL_FORMATTER(8),
            HEADERFORMAT_NOT_SET(0);
            
            private final int value;

            HeaderFormatCase(int i9) {
                this.value = i9;
            }

            public static HeaderFormatCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 8) {
                            return null;
                        }
                        return STATEFUL_FORMATTER;
                    }
                    return PROPER_CASE_WORDS;
                }
                return HEADERFORMAT_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static HeaderFormatCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        public static final class ProperCaseWords extends GeneratedMessageV3 implements c {
            private static final ProperCaseWords DEFAULT_INSTANCE = new ProperCaseWords();
            private static final e2<ProperCaseWords> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ProperCaseWords> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ProperCaseWords m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                    return new ProperCaseWords(pVar, f0Var, null);
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
                    return n0.f48268p.d(ProperCaseWords.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ProperCaseWords build() {
                    ProperCaseWords I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ProperCaseWords I() {
                    ProperCaseWords properCaseWords = new ProperCaseWords(this, (a) null);
                    Q();
                    return properCaseWords;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ProperCaseWords getDefaultInstanceForType() {
                    return ProperCaseWords.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat$ProperCaseWords r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat$ProperCaseWords r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat$ProperCaseWords$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(com.google.protobuf.l1 l1Var) {
                    if (l1Var instanceof ProperCaseWords) {
                        return g0((ProperCaseWords) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ProperCaseWords properCaseWords) {
                    if (properCaseWords == ProperCaseWords.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) properCaseWords).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return n0.f48267o;
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

            /* synthetic */ ProperCaseWords(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ProperCaseWords getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return n0.f48267o;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ProperCaseWords parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ProperCaseWords parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ProperCaseWords> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof ProperCaseWords) {
                    return this.unknownFields.equals(((ProperCaseWords) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ProperCaseWords> getParserForType() {
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
                return n0.f48268p.d(ProperCaseWords.class, b.class);
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
                return new ProperCaseWords();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ProperCaseWords(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ProperCaseWords properCaseWords) {
                return DEFAULT_INSTANCE.toBuilder().g0(properCaseWords);
            }

            public static ProperCaseWords parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ProperCaseWords(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ProperCaseWords parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ProperCaseWords parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ProperCaseWords getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ProperCaseWords parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ProperCaseWords() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ProperCaseWords parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ProperCaseWords parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ProperCaseWords(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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

            public static ProperCaseWords parseFrom(InputStream inputStream) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ProperCaseWords parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ProperCaseWords parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ProperCaseWords parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
                return (ProperCaseWords) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<HeaderKeyFormat> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public HeaderKeyFormat m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new HeaderKeyFormat(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f47989e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47990f;

            /* renamed from: g  reason: collision with root package name */
            private q2<ProperCaseWords, ProperCaseWords.b, c> f47991g;

            /* renamed from: h  reason: collision with root package name */
            private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f47992h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return n0.f48266n.d(HeaderKeyFormat.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public HeaderKeyFormat build() {
                HeaderKeyFormat I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public HeaderKeyFormat I() {
                HeaderKeyFormat headerKeyFormat = new HeaderKeyFormat(this, (a) null);
                if (this.f47989e == 1) {
                    q2<ProperCaseWords, ProperCaseWords.b, c> q2Var = this.f47991g;
                    if (q2Var == null) {
                        headerKeyFormat.headerFormat_ = this.f47990f;
                    } else {
                        headerKeyFormat.headerFormat_ = q2Var.b();
                    }
                }
                if (this.f47989e == 8) {
                    q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var2 = this.f47992h;
                    if (q2Var2 == null) {
                        headerKeyFormat.headerFormat_ = this.f47990f;
                    } else {
                        headerKeyFormat.headerFormat_ = q2Var2.b();
                    }
                }
                headerKeyFormat.headerFormatCase_ = this.f47989e;
                Q();
                return headerKeyFormat;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public HeaderKeyFormat getDefaultInstanceForType() {
                return HeaderKeyFormat.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$HeaderKeyFormat$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof HeaderKeyFormat) {
                    return g0((HeaderKeyFormat) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(HeaderKeyFormat headerKeyFormat) {
                if (headerKeyFormat == HeaderKeyFormat.getDefaultInstance()) {
                    return this;
                }
                int i9 = b.f47993a[headerKeyFormat.getHeaderFormatCase().ordinal()];
                if (i9 == 1) {
                    h0(headerKeyFormat.getProperCaseWords());
                } else if (i9 == 2) {
                    i0(headerKeyFormat.getStatefulFormatter());
                }
                z(((GeneratedMessageV3) headerKeyFormat).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return n0.f48265m;
            }

            public b h0(ProperCaseWords properCaseWords) {
                q2<ProperCaseWords, ProperCaseWords.b, c> q2Var = this.f47991g;
                if (q2Var == null) {
                    if (this.f47989e == 1 && this.f47990f != ProperCaseWords.getDefaultInstance()) {
                        this.f47990f = ProperCaseWords.newBuilder((ProperCaseWords) this.f47990f).g0(properCaseWords).I();
                    } else {
                        this.f47990f = properCaseWords;
                    }
                    R();
                } else {
                    if (this.f47989e == 1) {
                        q2Var.e(properCaseWords);
                    }
                    this.f47991g.g(properCaseWords);
                }
                this.f47989e = 1;
                return this;
            }

            public b i0(TypedExtensionConfig typedExtensionConfig) {
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47992h;
                if (q2Var == null) {
                    if (this.f47989e == 8 && this.f47990f != TypedExtensionConfig.getDefaultInstance()) {
                        this.f47990f = TypedExtensionConfig.newBuilder((TypedExtensionConfig) this.f47990f).g0(typedExtensionConfig).I();
                    } else {
                        this.f47990f = typedExtensionConfig;
                    }
                    R();
                } else {
                    if (this.f47989e == 8) {
                        q2Var.e(typedExtensionConfig);
                    }
                    this.f47992h.g(typedExtensionConfig);
                }
                this.f47989e = 8;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47989e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47989e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ HeaderKeyFormat(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static HeaderKeyFormat getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return n0.f48265m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static HeaderKeyFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static HeaderKeyFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<HeaderKeyFormat> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof HeaderKeyFormat)) {
                return super.equals(obj);
            }
            HeaderKeyFormat headerKeyFormat = (HeaderKeyFormat) obj;
            if (getHeaderFormatCase().equals(headerKeyFormat.getHeaderFormatCase())) {
                int i9 = this.headerFormatCase_;
                if (i9 != 1) {
                    if (i9 == 8 && !getStatefulFormatter().equals(headerKeyFormat.getStatefulFormatter())) {
                        return false;
                    }
                } else if (!getProperCaseWords().equals(headerKeyFormat.getProperCaseWords())) {
                    return false;
                }
                return this.unknownFields.equals(headerKeyFormat.unknownFields);
            }
            return false;
        }

        public HeaderFormatCase getHeaderFormatCase() {
            return HeaderFormatCase.forNumber(this.headerFormatCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<HeaderKeyFormat> getParserForType() {
            return PARSER;
        }

        public ProperCaseWords getProperCaseWords() {
            if (this.headerFormatCase_ == 1) {
                return (ProperCaseWords) this.headerFormat_;
            }
            return ProperCaseWords.getDefaultInstance();
        }

        public c getProperCaseWordsOrBuilder() {
            if (this.headerFormatCase_ == 1) {
                return (ProperCaseWords) this.headerFormat_;
            }
            return ProperCaseWords.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.headerFormatCase_ == 1 ? 0 + CodedOutputStream.G(1, (ProperCaseWords) this.headerFormat_) : 0;
            if (this.headerFormatCase_ == 8) {
                G += CodedOutputStream.G(8, (TypedExtensionConfig) this.headerFormat_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TypedExtensionConfig getStatefulFormatter() {
            if (this.headerFormatCase_ == 8) {
                return (TypedExtensionConfig) this.headerFormat_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        public i1 getStatefulFormatterOrBuilder() {
            if (this.headerFormatCase_ == 8) {
                return (TypedExtensionConfig) this.headerFormat_;
            }
            return TypedExtensionConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasProperCaseWords() {
            return this.headerFormatCase_ == 1;
        }

        public boolean hasStatefulFormatter() {
            return this.headerFormatCase_ == 8;
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
            int i11 = this.headerFormatCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getProperCaseWords().hashCode();
            } else {
                if (i11 == 8) {
                    i9 = ((hashCode2 * 37) + 8) * 53;
                    hashCode = getStatefulFormatter().hashCode();
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
            return n0.f48266n.d(HeaderKeyFormat.class, b.class);
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
            return new HeaderKeyFormat();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.headerFormatCase_ == 1) {
                codedOutputStream.L0(1, (ProperCaseWords) this.headerFormat_);
            }
            if (this.headerFormatCase_ == 8) {
                codedOutputStream.L0(8, (TypedExtensionConfig) this.headerFormat_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ HeaderKeyFormat(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(HeaderKeyFormat headerKeyFormat) {
            return DEFAULT_INSTANCE.toBuilder().g0(headerKeyFormat);
        }

        public static HeaderKeyFormat parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private HeaderKeyFormat(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.headerFormatCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderKeyFormat parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderKeyFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public HeaderKeyFormat getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static HeaderKeyFormat parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static HeaderKeyFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private HeaderKeyFormat() {
            this.headerFormatCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static HeaderKeyFormat parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static HeaderKeyFormat parseFrom(InputStream inputStream) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private HeaderKeyFormat(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ProperCaseWords.b builder = this.headerFormatCase_ == 1 ? ((ProperCaseWords) this.headerFormat_).toBuilder() : null;
                                    o1 B = pVar.B(ProperCaseWords.parser(), f0Var);
                                    this.headerFormat_ = B;
                                    if (builder != null) {
                                        builder.g0((ProperCaseWords) B);
                                        this.headerFormat_ = builder.I();
                                    }
                                    this.headerFormatCase_ = 1;
                                } else if (L != 66) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    TypedExtensionConfig.b builder2 = this.headerFormatCase_ == 8 ? ((TypedExtensionConfig) this.headerFormat_).toBuilder() : null;
                                    o1 B2 = pVar.B(TypedExtensionConfig.parser(), f0Var);
                                    this.headerFormat_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((TypedExtensionConfig) B2);
                                        this.headerFormat_ = builder2.I();
                                    }
                                    this.headerFormatCase_ = 8;
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

        public static HeaderKeyFormat parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static HeaderKeyFormat parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static HeaderKeyFormat parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (HeaderKeyFormat) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Http1ProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Http1ProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Http1ProtocolOptions(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47993a;

        static {
            int[] iArr = new int[HeaderKeyFormat.HeaderFormatCase.values().length];
            f47993a = iArr;
            try {
                iArr[HeaderKeyFormat.HeaderFormatCase.PROPER_CASE_WORDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47993a[HeaderKeyFormat.HeaderFormatCase.STATEFUL_FORMATTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47993a[HeaderKeyFormat.HeaderFormatCase.HEADERFORMAT_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements c0 {

        /* renamed from: e  reason: collision with root package name */
        private BoolValue f47994e;

        /* renamed from: f  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f47995f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f47996g;

        /* renamed from: h  reason: collision with root package name */
        private Object f47997h;

        /* renamed from: i  reason: collision with root package name */
        private HeaderKeyFormat f47998i;

        /* renamed from: j  reason: collision with root package name */
        private q2<HeaderKeyFormat, HeaderKeyFormat.b, d> f47999j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f48000k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f48001l;

        /* renamed from: m  reason: collision with root package name */
        private BoolValue f48002m;

        /* renamed from: n  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48003n;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48264l.d(Http1ProtocolOptions.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Http1ProtocolOptions build() {
            Http1ProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Http1ProtocolOptions I() {
            Http1ProtocolOptions http1ProtocolOptions = new Http1ProtocolOptions(this, (a) null);
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47995f;
            if (q2Var == null) {
                http1ProtocolOptions.allowAbsoluteUrl_ = this.f47994e;
            } else {
                http1ProtocolOptions.allowAbsoluteUrl_ = q2Var.b();
            }
            http1ProtocolOptions.acceptHttp10_ = this.f47996g;
            http1ProtocolOptions.defaultHostForHttp10_ = this.f47997h;
            q2<HeaderKeyFormat, HeaderKeyFormat.b, d> q2Var2 = this.f47999j;
            if (q2Var2 == null) {
                http1ProtocolOptions.headerKeyFormat_ = this.f47998i;
            } else {
                http1ProtocolOptions.headerKeyFormat_ = q2Var2.b();
            }
            http1ProtocolOptions.enableTrailers_ = this.f48000k;
            http1ProtocolOptions.allowChunkedLength_ = this.f48001l;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var3 = this.f48003n;
            if (q2Var3 == null) {
                http1ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = this.f48002m;
            } else {
                http1ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = q2Var3.b();
            }
            Q();
            return http1ProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Http1ProtocolOptions getDefaultInstanceForType() {
            return Http1ProtocolOptions.getDefaultInstance();
        }

        public c d0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f47995f;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f47994e;
                if (boolValue2 != null) {
                    this.f47994e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f47994e = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.access$2800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http1ProtocolOptions$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Http1ProtocolOptions) {
                return h0((Http1ProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48263k;
        }

        public c h0(Http1ProtocolOptions http1ProtocolOptions) {
            if (http1ProtocolOptions == Http1ProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (http1ProtocolOptions.hasAllowAbsoluteUrl()) {
                d0(http1ProtocolOptions.getAllowAbsoluteUrl());
            }
            if (http1ProtocolOptions.getAcceptHttp10()) {
                l0(http1ProtocolOptions.getAcceptHttp10());
            }
            if (!http1ProtocolOptions.getDefaultHostForHttp10().isEmpty()) {
                this.f47997h = http1ProtocolOptions.defaultHostForHttp10_;
                R();
            }
            if (http1ProtocolOptions.hasHeaderKeyFormat()) {
                i0(http1ProtocolOptions.getHeaderKeyFormat());
            }
            if (http1ProtocolOptions.getEnableTrailers()) {
                n0(http1ProtocolOptions.getEnableTrailers());
            }
            if (http1ProtocolOptions.getAllowChunkedLength()) {
                m0(http1ProtocolOptions.getAllowChunkedLength());
            }
            if (http1ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
                j0(http1ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage());
            }
            z(((GeneratedMessageV3) http1ProtocolOptions).unknownFields);
            R();
            return this;
        }

        public c i0(HeaderKeyFormat headerKeyFormat) {
            q2<HeaderKeyFormat, HeaderKeyFormat.b, d> q2Var = this.f47999j;
            if (q2Var == null) {
                HeaderKeyFormat headerKeyFormat2 = this.f47998i;
                if (headerKeyFormat2 != null) {
                    this.f47998i = HeaderKeyFormat.newBuilder(headerKeyFormat2).g0(headerKeyFormat).I();
                } else {
                    this.f47998i = headerKeyFormat;
                }
                R();
            } else {
                q2Var.e(headerKeyFormat);
            }
            return this;
        }

        public c j0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48003n;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48002m;
                if (boolValue2 != null) {
                    this.f48002m = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48002m = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c l0(boolean z10) {
            this.f47996g = z10;
            R();
            return this;
        }

        public c m0(boolean z10) {
            this.f48001l = z10;
            R();
            return this;
        }

        public c n0(boolean z10) {
            this.f48000k = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47997h = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47997h = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ Http1ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Http1ProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48263k;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Http1ProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Http1ProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Http1ProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Http1ProtocolOptions)) {
            return super.equals(obj);
        }
        Http1ProtocolOptions http1ProtocolOptions = (Http1ProtocolOptions) obj;
        if (hasAllowAbsoluteUrl() != http1ProtocolOptions.hasAllowAbsoluteUrl()) {
            return false;
        }
        if ((!hasAllowAbsoluteUrl() || getAllowAbsoluteUrl().equals(http1ProtocolOptions.getAllowAbsoluteUrl())) && getAcceptHttp10() == http1ProtocolOptions.getAcceptHttp10() && getDefaultHostForHttp10().equals(http1ProtocolOptions.getDefaultHostForHttp10()) && hasHeaderKeyFormat() == http1ProtocolOptions.hasHeaderKeyFormat()) {
            if ((!hasHeaderKeyFormat() || getHeaderKeyFormat().equals(http1ProtocolOptions.getHeaderKeyFormat())) && getEnableTrailers() == http1ProtocolOptions.getEnableTrailers() && getAllowChunkedLength() == http1ProtocolOptions.getAllowChunkedLength() && hasOverrideStreamErrorOnInvalidHttpMessage() == http1ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
                return (!hasOverrideStreamErrorOnInvalidHttpMessage() || getOverrideStreamErrorOnInvalidHttpMessage().equals(http1ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage())) && this.unknownFields.equals(http1ProtocolOptions.unknownFields);
            }
            return false;
        }
        return false;
    }

    public boolean getAcceptHttp10() {
        return this.acceptHttp10_;
    }

    public BoolValue getAllowAbsoluteUrl() {
        BoolValue boolValue = this.allowAbsoluteUrl_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getAllowAbsoluteUrlOrBuilder() {
        return getAllowAbsoluteUrl();
    }

    public boolean getAllowChunkedLength() {
        return this.allowChunkedLength_;
    }

    public String getDefaultHostForHttp10() {
        Object obj = this.defaultHostForHttp10_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.defaultHostForHttp10_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDefaultHostForHttp10Bytes() {
        Object obj = this.defaultHostForHttp10_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.defaultHostForHttp10_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getEnableTrailers() {
        return this.enableTrailers_;
    }

    public HeaderKeyFormat getHeaderKeyFormat() {
        HeaderKeyFormat headerKeyFormat = this.headerKeyFormat_;
        return headerKeyFormat == null ? HeaderKeyFormat.getDefaultInstance() : headerKeyFormat;
    }

    public d getHeaderKeyFormatOrBuilder() {
        return getHeaderKeyFormat();
    }

    public BoolValue getOverrideStreamErrorOnInvalidHttpMessage() {
        BoolValue boolValue = this.overrideStreamErrorOnInvalidHttpMessage_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getOverrideStreamErrorOnInvalidHttpMessageOrBuilder() {
        return getOverrideStreamErrorOnInvalidHttpMessage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Http1ProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.allowAbsoluteUrl_ != null ? 0 + CodedOutputStream.G(1, getAllowAbsoluteUrl()) : 0;
        boolean z10 = this.acceptHttp10_;
        if (z10) {
            G += CodedOutputStream.e(2, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultHostForHttp10_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.defaultHostForHttp10_);
        }
        if (this.headerKeyFormat_ != null) {
            G += CodedOutputStream.G(4, getHeaderKeyFormat());
        }
        boolean z11 = this.enableTrailers_;
        if (z11) {
            G += CodedOutputStream.e(5, z11);
        }
        boolean z12 = this.allowChunkedLength_;
        if (z12) {
            G += CodedOutputStream.e(6, z12);
        }
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            G += CodedOutputStream.G(7, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAllowAbsoluteUrl() {
        return this.allowAbsoluteUrl_ != null;
    }

    public boolean hasHeaderKeyFormat() {
        return this.headerKeyFormat_ != null;
    }

    public boolean hasOverrideStreamErrorOnInvalidHttpMessage() {
        return this.overrideStreamErrorOnInvalidHttpMessage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasAllowAbsoluteUrl()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAllowAbsoluteUrl().hashCode();
        }
        int d10 = (((((((hashCode * 37) + 2) * 53) + com.google.protobuf.u0.d(getAcceptHttp10())) * 37) + 3) * 53) + getDefaultHostForHttp10().hashCode();
        if (hasHeaderKeyFormat()) {
            d10 = (((d10 * 37) + 4) * 53) + getHeaderKeyFormat().hashCode();
        }
        int d11 = (((((((d10 * 37) + 5) * 53) + com.google.protobuf.u0.d(getEnableTrailers())) * 37) + 6) * 53) + com.google.protobuf.u0.d(getAllowChunkedLength());
        if (hasOverrideStreamErrorOnInvalidHttpMessage()) {
            d11 = (((d11 * 37) + 7) * 53) + getOverrideStreamErrorOnInvalidHttpMessage().hashCode();
        }
        int hashCode2 = (d11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48264l.d(Http1ProtocolOptions.class, c.class);
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
        return new Http1ProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.allowAbsoluteUrl_ != null) {
            codedOutputStream.L0(1, getAllowAbsoluteUrl());
        }
        boolean z10 = this.acceptHttp10_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.defaultHostForHttp10_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.defaultHostForHttp10_);
        }
        if (this.headerKeyFormat_ != null) {
            codedOutputStream.L0(4, getHeaderKeyFormat());
        }
        boolean z11 = this.enableTrailers_;
        if (z11) {
            codedOutputStream.n0(5, z11);
        }
        boolean z12 = this.allowChunkedLength_;
        if (z12) {
            codedOutputStream.n0(6, z12);
        }
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            codedOutputStream.L0(7, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Http1ProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Http1ProtocolOptions http1ProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().h0(http1ProtocolOptions);
    }

    public static Http1ProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Http1ProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Http1ProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http1ProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Http1ProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static Http1ProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private Http1ProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
        this.defaultHostForHttp10_ = "";
    }

    public static Http1ProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static Http1ProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Http1ProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Http1ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            BoolValue boolValue = this.allowAbsoluteUrl_;
                            BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.allowAbsoluteUrl_ = boolValue2;
                            if (builder != null) {
                                builder.d0(boolValue2);
                                this.allowAbsoluteUrl_ = builder.I();
                            }
                        } else if (L == 16) {
                            this.acceptHttp10_ = pVar.r();
                        } else if (L == 26) {
                            this.defaultHostForHttp10_ = pVar.K();
                        } else if (L == 34) {
                            HeaderKeyFormat headerKeyFormat = this.headerKeyFormat_;
                            HeaderKeyFormat.b builder2 = headerKeyFormat != null ? headerKeyFormat.toBuilder() : null;
                            HeaderKeyFormat headerKeyFormat2 = (HeaderKeyFormat) pVar.B(HeaderKeyFormat.parser(), f0Var);
                            this.headerKeyFormat_ = headerKeyFormat2;
                            if (builder2 != null) {
                                builder2.g0(headerKeyFormat2);
                                this.headerKeyFormat_ = builder2.I();
                            }
                        } else if (L == 40) {
                            this.enableTrailers_ = pVar.r();
                        } else if (L == 48) {
                            this.allowChunkedLength_ = pVar.r();
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            BoolValue boolValue3 = this.overrideStreamErrorOnInvalidHttpMessage_;
                            BoolValue.b builder3 = boolValue3 != null ? boolValue3.toBuilder() : null;
                            BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.overrideStreamErrorOnInvalidHttpMessage_ = boolValue4;
                            if (builder3 != null) {
                                builder3.d0(boolValue4);
                                this.overrideStreamErrorOnInvalidHttpMessage_ = builder3.I();
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

    public static Http1ProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http1ProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Http1ProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http1ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
