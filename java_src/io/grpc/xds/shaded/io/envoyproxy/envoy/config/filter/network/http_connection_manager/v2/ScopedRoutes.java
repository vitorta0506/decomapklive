package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.ConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.k;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRds;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ScopedRoutes extends GeneratedMessageV3 implements g {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RDS_CONFIG_SOURCE_FIELD_NUMBER = 3;
    public static final int SCOPED_RDS_FIELD_NUMBER = 5;
    public static final int SCOPED_ROUTE_CONFIGURATIONS_LIST_FIELD_NUMBER = 4;
    public static final int SCOPE_KEY_BUILDER_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int configSpecifierCase_;
    private Object configSpecifier_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private ConfigSource rdsConfigSource_;
    private ScopeKeyBuilder scopeKeyBuilder_;
    private static final ScopedRoutes DEFAULT_INSTANCE = new ScopedRoutes();
    private static final e2<ScopedRoutes> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConfigSpecifierCase implements u0.c {
        SCOPED_ROUTE_CONFIGURATIONS_LIST(4),
        SCOPED_RDS(5),
        CONFIGSPECIFIER_NOT_SET(0);
        
        private final int value;

        ConfigSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ConfigSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        return null;
                    }
                    return SCOPED_RDS;
                }
                return SCOPED_ROUTE_CONFIGURATIONS_LIST;
            }
            return CONFIGSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ConfigSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes6.dex */
    public static final class ScopeKeyBuilder extends GeneratedMessageV3 implements d {
        public static final int FRAGMENTS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<FragmentBuilder> fragments_;
        private byte memoizedIsInitialized;
        private static final ScopeKeyBuilder DEFAULT_INSTANCE = new ScopeKeyBuilder();
        private static final e2<ScopeKeyBuilder> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class FragmentBuilder extends GeneratedMessageV3 implements c {
            public static final int HEADER_VALUE_EXTRACTOR_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private int typeCase_;
            private Object type_;
            private static final FragmentBuilder DEFAULT_INSTANCE = new FragmentBuilder();
            private static final e2<FragmentBuilder> PARSER = new a();

            /* loaded from: classes6.dex */
            public static final class HeaderValueExtractor extends GeneratedMessageV3 implements c {
                public static final int ELEMENT_FIELD_NUMBER = 4;
                public static final int ELEMENT_SEPARATOR_FIELD_NUMBER = 2;
                public static final int INDEX_FIELD_NUMBER = 3;
                public static final int NAME_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private volatile Object elementSeparator_;
                private int extractTypeCase_;
                private Object extractType_;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private static final HeaderValueExtractor DEFAULT_INSTANCE = new HeaderValueExtractor();
                private static final e2<HeaderValueExtractor> PARSER = new a();

                /* loaded from: classes6.dex */
                public enum ExtractTypeCase implements u0.c {
                    INDEX(3),
                    ELEMENT(4),
                    EXTRACTTYPE_NOT_SET(0);
                    
                    private final int value;

                    ExtractTypeCase(int i9) {
                        this.value = i9;
                    }

                    public static ExtractTypeCase forNumber(int i9) {
                        if (i9 != 0) {
                            if (i9 != 3) {
                                if (i9 != 4) {
                                    return null;
                                }
                                return ELEMENT;
                            }
                            return INDEX;
                        }
                        return EXTRACTTYPE_NOT_SET;
                    }

                    @Override // com.google.protobuf.u0.c
                    public int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static ExtractTypeCase valueOf(int i9) {
                        return forNumber(i9);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class KvElement extends GeneratedMessageV3 implements c {
                    public static final int KEY_FIELD_NUMBER = 2;
                    public static final int SEPARATOR_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private volatile Object key_;
                    private byte memoizedIsInitialized;
                    private volatile Object separator_;
                    private static final KvElement DEFAULT_INSTANCE = new KvElement();
                    private static final e2<KvElement> PARSER = new a();

                    /* loaded from: classes6.dex */
                    class a extends com.google.protobuf.c<KvElement> {
                        a() {
                        }

                        @Override // com.google.protobuf.e2
                        /* renamed from: G */
                        public KvElement m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                            return new KvElement(pVar, f0Var, null);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class b extends GeneratedMessageV3.b<b> implements c {

                        /* renamed from: e  reason: collision with root package name */
                        private Object f48666e;

                        /* renamed from: f  reason: collision with root package name */
                        private Object f48667f;

                        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                            this(cVar);
                        }

                        private void b0() {
                            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                        }

                        @Override // com.google.protobuf.GeneratedMessageV3.b
                        protected GeneratedMessageV3.e K() {
                            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48714x.d(KvElement.class, b.class);
                        }

                        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                        /* renamed from: W */
                        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                            return (b) super.L(fieldDescriptor, obj);
                        }

                        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                        /* renamed from: X */
                        public KvElement build() {
                            KvElement I = I();
                            if (I.isInitialized()) {
                                return I;
                            }
                            throw a.AbstractC0142a.A(I);
                        }

                        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                        /* renamed from: Y */
                        public KvElement I() {
                            KvElement kvElement = new KvElement(this, (a) null);
                            kvElement.separator_ = this.f48666e;
                            kvElement.key_ = this.f48667f;
                            Q();
                            return kvElement;
                        }

                        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                        /* renamed from: Z */
                        public b n() {
                            return (b) super.n();
                        }

                        @Override // com.google.protobuf.p1, com.google.protobuf.r1
                        /* renamed from: a0 */
                        public KvElement getDefaultInstanceForType() {
                            return KvElement.getDefaultInstance();
                        }

                        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                        @Override // com.google.protobuf.a.AbstractC0142a
                        /* renamed from: d0 */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                            /*
                                r2 = this;
                                r0 = 0
                                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor$KvElement r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor$KvElement r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement) r4     // Catch: java.lang.Throwable -> L11
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
                            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor$KvElement$b");
                        }

                        @Override // com.google.protobuf.a.AbstractC0142a
                        /* renamed from: e0 */
                        public b v(l1 l1Var) {
                            if (l1Var instanceof KvElement) {
                                return g0((KvElement) l1Var);
                            }
                            super.P0(l1Var);
                            return this;
                        }

                        public b g0(KvElement kvElement) {
                            if (kvElement == KvElement.getDefaultInstance()) {
                                return this;
                            }
                            if (!kvElement.getSeparator().isEmpty()) {
                                this.f48666e = kvElement.separator_;
                                R();
                            }
                            if (!kvElement.getKey().isEmpty()) {
                                this.f48667f = kvElement.key_;
                                R();
                            }
                            z(((GeneratedMessageV3) kvElement).unknownFields);
                            R();
                            return this;
                        }

                        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                        public Descriptors.b getDescriptorForType() {
                            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48713w;
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
                            this.f48666e = "";
                            this.f48667f = "";
                            b0();
                        }

                        private b(GeneratedMessageV3.c cVar) {
                            super(cVar);
                            this.f48666e = "";
                            this.f48667f = "";
                            b0();
                        }
                    }

                    /* synthetic */ KvElement(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                        this(pVar, f0Var);
                    }

                    public static KvElement getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.b getDescriptor() {
                        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48713w;
                    }

                    public static b newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static KvElement parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static KvElement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.l(byteBuffer);
                    }

                    public static e2<KvElement> parser() {
                        return PARSER;
                    }

                    @Override // com.google.protobuf.a
                    public boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof KvElement)) {
                            return super.equals(obj);
                        }
                        KvElement kvElement = (KvElement) obj;
                        return getSeparator().equals(kvElement.getSeparator()) && getKey().equals(kvElement.getKey()) && this.unknownFields.equals(kvElement.unknownFields);
                    }

                    public String getKey() {
                        Object obj = this.key_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.key_ = stringUtf8;
                        return stringUtf8;
                    }

                    public ByteString getKeyBytes() {
                        Object obj = this.key_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.key_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                    public e2<KvElement> getParserForType() {
                        return PARSER;
                    }

                    public String getSeparator() {
                        Object obj = this.separator_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.separator_ = stringUtf8;
                        return stringUtf8;
                    }

                    public ByteString getSeparatorBytes() {
                        Object obj = this.separator_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.separator_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                    public int getSerializedSize() {
                        int i9 = this.memoizedSize;
                        if (i9 != -1) {
                            return i9;
                        }
                        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.separator_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.separator_);
                        if (!GeneratedMessageV3.isStringEmpty(this.key_)) {
                            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.key_);
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
                        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSeparator().hashCode()) * 37) + 2) * 53) + getKey().hashCode()) * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode;
                        return hashCode;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48714x.d(KvElement.class, b.class);
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
                        return new KvElement();
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (!GeneratedMessageV3.isStringEmpty(this.separator_)) {
                            GeneratedMessageV3.writeString(codedOutputStream, 1, this.separator_);
                        }
                        if (!GeneratedMessageV3.isStringEmpty(this.key_)) {
                            GeneratedMessageV3.writeString(codedOutputStream, 2, this.key_);
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }

                    /* synthetic */ KvElement(GeneratedMessageV3.b bVar, a aVar) {
                        this(bVar);
                    }

                    public static b newBuilder(KvElement kvElement) {
                        return DEFAULT_INSTANCE.toBuilder().g0(kvElement);
                    }

                    public static KvElement parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                        return PARSER.f(byteBuffer, f0Var);
                    }

                    private KvElement(GeneratedMessageV3.b<?> bVar) {
                        super(bVar);
                        this.memoizedIsInitialized = (byte) -1;
                    }

                    public static KvElement parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                    }

                    public static KvElement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.c(byteString);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                    public KvElement getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                    public b toBuilder() {
                        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
                    }

                    public static KvElement parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                        return PARSER.b(byteString, f0Var);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                    public b newBuilderForType() {
                        return newBuilder();
                    }

                    private KvElement() {
                        this.memoizedIsInitialized = (byte) -1;
                        this.separator_ = "";
                        this.key_ = "";
                    }

                    public static KvElement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.a(bArr);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.protobuf.GeneratedMessageV3
                    public b newBuilderForType(GeneratedMessageV3.c cVar) {
                        return new b(cVar, null);
                    }

                    public static KvElement parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                        return PARSER.g(bArr, f0Var);
                    }

                    public static KvElement parseFrom(InputStream inputStream) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    private KvElement(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                                this.separator_ = pVar.K();
                                            } else if (L != 18) {
                                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                                }
                                            } else {
                                                this.key_ = pVar.K();
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

                    public static KvElement parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                    }

                    public static KvElement parseFrom(p pVar) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                    }

                    public static KvElement parseFrom(p pVar, f0 f0Var) throws IOException {
                        return (KvElement) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                    }
                }

                /* loaded from: classes6.dex */
                class a extends com.google.protobuf.c<HeaderValueExtractor> {
                    a() {
                    }

                    @Override // com.google.protobuf.e2
                    /* renamed from: G */
                    public HeaderValueExtractor m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                        return new HeaderValueExtractor(pVar, f0Var, null);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageV3.b<b> implements c {

                    /* renamed from: e  reason: collision with root package name */
                    private int f48668e;

                    /* renamed from: f  reason: collision with root package name */
                    private Object f48669f;

                    /* renamed from: g  reason: collision with root package name */
                    private Object f48670g;

                    /* renamed from: h  reason: collision with root package name */
                    private Object f48671h;

                    /* renamed from: i  reason: collision with root package name */
                    private q2<KvElement, KvElement.b, c> f48672i;

                    /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                        this(cVar);
                    }

                    private void b0() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e K() {
                        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48712v.d(HeaderValueExtractor.class, b.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                    /* renamed from: W */
                    public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (b) super.L(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: X */
                    public HeaderValueExtractor build() {
                        HeaderValueExtractor I = I();
                        if (I.isInitialized()) {
                            return I;
                        }
                        throw a.AbstractC0142a.A(I);
                    }

                    @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                    /* renamed from: Y */
                    public HeaderValueExtractor I() {
                        HeaderValueExtractor headerValueExtractor = new HeaderValueExtractor(this, (a) null);
                        headerValueExtractor.name_ = this.f48670g;
                        headerValueExtractor.elementSeparator_ = this.f48671h;
                        if (this.f48668e == 3) {
                            headerValueExtractor.extractType_ = this.f48669f;
                        }
                        if (this.f48668e == 4) {
                            q2<KvElement, KvElement.b, c> q2Var = this.f48672i;
                            if (q2Var == null) {
                                headerValueExtractor.extractType_ = this.f48669f;
                            } else {
                                headerValueExtractor.extractType_ = q2Var.b();
                            }
                        }
                        headerValueExtractor.extractTypeCase_ = this.f48668e;
                        Q();
                        return headerValueExtractor;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                    /* renamed from: Z */
                    public b n() {
                        return (b) super.n();
                    }

                    @Override // com.google.protobuf.p1, com.google.protobuf.r1
                    /* renamed from: a0 */
                    public HeaderValueExtractor getDefaultInstanceForType() {
                        return HeaderValueExtractor.getDefaultInstance();
                    }

                    public b d0(KvElement kvElement) {
                        q2<KvElement, KvElement.b, c> q2Var = this.f48672i;
                        if (q2Var == null) {
                            if (this.f48668e == 4 && this.f48669f != KvElement.getDefaultInstance()) {
                                this.f48669f = KvElement.newBuilder((KvElement) this.f48669f).g0(kvElement).I();
                            } else {
                                this.f48669f = kvElement;
                            }
                            R();
                        } else {
                            if (this.f48668e == 4) {
                                q2Var.e(kvElement);
                            }
                            this.f48672i.g(kvElement);
                        }
                        this.f48668e = 4;
                        return this;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: e0 */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                            io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$HeaderValueExtractor$b");
                    }

                    @Override // com.google.protobuf.a.AbstractC0142a
                    /* renamed from: g0 */
                    public b v(l1 l1Var) {
                        if (l1Var instanceof HeaderValueExtractor) {
                            return h0((HeaderValueExtractor) l1Var);
                        }
                        super.P0(l1Var);
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                    public Descriptors.b getDescriptorForType() {
                        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48711u;
                    }

                    public b h0(HeaderValueExtractor headerValueExtractor) {
                        if (headerValueExtractor == HeaderValueExtractor.getDefaultInstance()) {
                            return this;
                        }
                        if (!headerValueExtractor.getName().isEmpty()) {
                            this.f48670g = headerValueExtractor.name_;
                            R();
                        }
                        if (!headerValueExtractor.getElementSeparator().isEmpty()) {
                            this.f48671h = headerValueExtractor.elementSeparator_;
                            R();
                        }
                        int i9 = b.f48679a[headerValueExtractor.getExtractTypeCase().ordinal()];
                        if (i9 == 1) {
                            k0(headerValueExtractor.getIndex());
                        } else if (i9 == 2) {
                            d0(headerValueExtractor.getElement());
                        }
                        z(((GeneratedMessageV3) headerValueExtractor).unknownFields);
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

                    public b k0(int i9) {
                        this.f48668e = 3;
                        this.f48669f = Integer.valueOf(i9);
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
                        this.f48668e = 0;
                        this.f48670g = "";
                        this.f48671h = "";
                        b0();
                    }

                    private b(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.f48668e = 0;
                        this.f48670g = "";
                        this.f48671h = "";
                        b0();
                    }
                }

                /* loaded from: classes6.dex */
                public interface c extends r1 {
                }

                /* synthetic */ HeaderValueExtractor(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                    this(pVar, f0Var);
                }

                public static HeaderValueExtractor getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.b getDescriptor() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48711u;
                }

                public static b newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static HeaderValueExtractor parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static HeaderValueExtractor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.l(byteBuffer);
                }

                public static e2<HeaderValueExtractor> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.a
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof HeaderValueExtractor)) {
                        return super.equals(obj);
                    }
                    HeaderValueExtractor headerValueExtractor = (HeaderValueExtractor) obj;
                    if (getName().equals(headerValueExtractor.getName()) && getElementSeparator().equals(headerValueExtractor.getElementSeparator()) && getExtractTypeCase().equals(headerValueExtractor.getExtractTypeCase())) {
                        int i9 = this.extractTypeCase_;
                        if (i9 != 3) {
                            if (i9 == 4 && !getElement().equals(headerValueExtractor.getElement())) {
                                return false;
                            }
                        } else if (getIndex() != headerValueExtractor.getIndex()) {
                            return false;
                        }
                        return this.unknownFields.equals(headerValueExtractor.unknownFields);
                    }
                    return false;
                }

                public KvElement getElement() {
                    if (this.extractTypeCase_ == 4) {
                        return (KvElement) this.extractType_;
                    }
                    return KvElement.getDefaultInstance();
                }

                public c getElementOrBuilder() {
                    if (this.extractTypeCase_ == 4) {
                        return (KvElement) this.extractType_;
                    }
                    return KvElement.getDefaultInstance();
                }

                public String getElementSeparator() {
                    Object obj = this.elementSeparator_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.elementSeparator_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getElementSeparatorBytes() {
                    Object obj = this.elementSeparator_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.elementSeparator_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public ExtractTypeCase getExtractTypeCase() {
                    return ExtractTypeCase.forNumber(this.extractTypeCase_);
                }

                public int getIndex() {
                    if (this.extractTypeCase_ == 3) {
                        return ((Integer) this.extractType_).intValue();
                    }
                    return 0;
                }

                public String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public e2<HeaderValueExtractor> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public int getSerializedSize() {
                    int i9 = this.memoizedSize;
                    if (i9 != -1) {
                        return i9;
                    }
                    int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
                    if (!GeneratedMessageV3.isStringEmpty(this.elementSeparator_)) {
                        computeStringSize += GeneratedMessageV3.computeStringSize(2, this.elementSeparator_);
                    }
                    if (this.extractTypeCase_ == 3) {
                        computeStringSize += CodedOutputStream.Y(3, ((Integer) this.extractType_).intValue());
                    }
                    if (this.extractTypeCase_ == 4) {
                        computeStringSize += CodedOutputStream.G(4, (KvElement) this.extractType_);
                    }
                    int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
                public final h3 getUnknownFields() {
                    return this.unknownFields;
                }

                public boolean hasElement() {
                    return this.extractTypeCase_ == 4;
                }

                public boolean hasIndex() {
                    return this.extractTypeCase_ == 3;
                }

                @Override // com.google.protobuf.a
                public int hashCode() {
                    int i9;
                    int index;
                    int i10 = this.memoizedHashCode;
                    if (i10 != 0) {
                        return i10;
                    }
                    int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getElementSeparator().hashCode();
                    int i11 = this.extractTypeCase_;
                    if (i11 == 3) {
                        i9 = ((hashCode * 37) + 3) * 53;
                        index = getIndex();
                    } else {
                        if (i11 == 4) {
                            i9 = ((hashCode * 37) + 4) * 53;
                            index = getElement().hashCode();
                        }
                        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }
                    hashCode = i9 + index;
                    int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode22;
                    return hashCode22;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48712v.d(HeaderValueExtractor.class, b.class);
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
                    return new HeaderValueExtractor();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                    }
                    if (!GeneratedMessageV3.isStringEmpty(this.elementSeparator_)) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.elementSeparator_);
                    }
                    if (this.extractTypeCase_ == 3) {
                        codedOutputStream.c1(3, ((Integer) this.extractType_).intValue());
                    }
                    if (this.extractTypeCase_ == 4) {
                        codedOutputStream.L0(4, (KvElement) this.extractType_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* synthetic */ HeaderValueExtractor(GeneratedMessageV3.b bVar, a aVar) {
                    this(bVar);
                }

                public static b newBuilder(HeaderValueExtractor headerValueExtractor) {
                    return DEFAULT_INSTANCE.toBuilder().h0(headerValueExtractor);
                }

                public static HeaderValueExtractor parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.f(byteBuffer, f0Var);
                }

                private HeaderValueExtractor(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.extractTypeCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static HeaderValueExtractor parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
                }

                public static HeaderValueExtractor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.c(byteString);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
                public HeaderValueExtractor getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b toBuilder() {
                    return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
                }

                public static HeaderValueExtractor parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.b(byteString, f0Var);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
                public b newBuilderForType() {
                    return newBuilder();
                }

                public static HeaderValueExtractor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.a(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.GeneratedMessageV3
                public b newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new b(cVar, null);
                }

                private HeaderValueExtractor() {
                    this.extractTypeCase_ = 0;
                    this.memoizedIsInitialized = (byte) -1;
                    this.name_ = "";
                    this.elementSeparator_ = "";
                }

                public static HeaderValueExtractor parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                    return PARSER.g(bArr, f0Var);
                }

                public static HeaderValueExtractor parseFrom(InputStream inputStream) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static HeaderValueExtractor parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
                }

                private HeaderValueExtractor(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                            this.name_ = pVar.K();
                                        } else if (L == 18) {
                                            this.elementSeparator_ = pVar.K();
                                        } else if (L == 24) {
                                            this.extractType_ = Integer.valueOf(pVar.M());
                                            this.extractTypeCase_ = 3;
                                        } else if (L != 34) {
                                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                            }
                                        } else {
                                            KvElement.b builder = this.extractTypeCase_ == 4 ? ((KvElement) this.extractType_).toBuilder() : null;
                                            o1 B = pVar.B(KvElement.parser(), f0Var);
                                            this.extractType_ = B;
                                            if (builder != null) {
                                                builder.g0((KvElement) B);
                                                this.extractType_ = builder.I();
                                            }
                                            this.extractTypeCase_ = 4;
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

                public static HeaderValueExtractor parseFrom(p pVar) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
                }

                public static HeaderValueExtractor parseFrom(p pVar, f0 f0Var) throws IOException {
                    return (HeaderValueExtractor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
                }
            }

            /* loaded from: classes6.dex */
            public enum TypeCase implements u0.c {
                HEADER_VALUE_EXTRACTOR(1),
                TYPE_NOT_SET(0);
                
                private final int value;

                TypeCase(int i9) {
                    this.value = i9;
                }

                public static TypeCase forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            return null;
                        }
                        return HEADER_VALUE_EXTRACTOR;
                    }
                    return TYPE_NOT_SET;
                }

                @Override // com.google.protobuf.u0.c
                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static TypeCase valueOf(int i9) {
                    return forNumber(i9);
                }
            }

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<FragmentBuilder> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public FragmentBuilder m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new FragmentBuilder(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f48673e;

                /* renamed from: f  reason: collision with root package name */
                private Object f48674f;

                /* renamed from: g  reason: collision with root package name */
                private q2<HeaderValueExtractor, HeaderValueExtractor.b, c> f48675g;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48710t.d(FragmentBuilder.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public FragmentBuilder build() {
                    FragmentBuilder I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public FragmentBuilder I() {
                    FragmentBuilder fragmentBuilder = new FragmentBuilder(this, (a) null);
                    if (this.f48673e == 1) {
                        q2<HeaderValueExtractor, HeaderValueExtractor.b, c> q2Var = this.f48675g;
                        if (q2Var == null) {
                            fragmentBuilder.type_ = this.f48674f;
                        } else {
                            fragmentBuilder.type_ = q2Var.b();
                        }
                    }
                    fragmentBuilder.typeCase_ = this.f48673e;
                    Q();
                    return fragmentBuilder;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public FragmentBuilder getDefaultInstanceForType() {
                    return FragmentBuilder.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.access$3100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$FragmentBuilder$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof FragmentBuilder) {
                        return g0((FragmentBuilder) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(FragmentBuilder fragmentBuilder) {
                    if (fragmentBuilder == FragmentBuilder.getDefaultInstance()) {
                        return this;
                    }
                    if (b.f48680b[fragmentBuilder.getTypeCase().ordinal()] == 1) {
                        h0(fragmentBuilder.getHeaderValueExtractor());
                    }
                    z(((GeneratedMessageV3) fragmentBuilder).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48709s;
                }

                public b h0(HeaderValueExtractor headerValueExtractor) {
                    q2<HeaderValueExtractor, HeaderValueExtractor.b, c> q2Var = this.f48675g;
                    if (q2Var == null) {
                        if (this.f48673e == 1 && this.f48674f != HeaderValueExtractor.getDefaultInstance()) {
                            this.f48674f = HeaderValueExtractor.newBuilder((HeaderValueExtractor) this.f48674f).h0(headerValueExtractor).I();
                        } else {
                            this.f48674f = headerValueExtractor;
                        }
                        R();
                    } else {
                        if (this.f48673e == 1) {
                            q2Var.e(headerValueExtractor);
                        }
                        this.f48675g.g(headerValueExtractor);
                    }
                    this.f48673e = 1;
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
                    this.f48673e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f48673e = 0;
                    b0();
                }
            }

            /* loaded from: classes6.dex */
            public interface c extends r1 {
            }

            /* synthetic */ FragmentBuilder(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static FragmentBuilder getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48709s;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static FragmentBuilder parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static FragmentBuilder parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<FragmentBuilder> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof FragmentBuilder)) {
                    return super.equals(obj);
                }
                FragmentBuilder fragmentBuilder = (FragmentBuilder) obj;
                if (getTypeCase().equals(fragmentBuilder.getTypeCase())) {
                    return (this.typeCase_ != 1 || getHeaderValueExtractor().equals(fragmentBuilder.getHeaderValueExtractor())) && this.unknownFields.equals(fragmentBuilder.unknownFields);
                }
                return false;
            }

            public HeaderValueExtractor getHeaderValueExtractor() {
                if (this.typeCase_ == 1) {
                    return (HeaderValueExtractor) this.type_;
                }
                return HeaderValueExtractor.getDefaultInstance();
            }

            public c getHeaderValueExtractorOrBuilder() {
                if (this.typeCase_ == 1) {
                    return (HeaderValueExtractor) this.type_;
                }
                return HeaderValueExtractor.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<FragmentBuilder> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = (this.typeCase_ == 1 ? 0 + CodedOutputStream.G(1, (HeaderValueExtractor) this.type_) : 0) + this.unknownFields.getSerializedSize();
                this.memoizedSize = G;
                return G;
            }

            public TypeCase getTypeCase() {
                return TypeCase.forNumber(this.typeCase_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasHeaderValueExtractor() {
                return this.typeCase_ == 1;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (this.typeCase_ == 1) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getHeaderValueExtractor().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48710t.d(FragmentBuilder.class, b.class);
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
                return new FragmentBuilder();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.typeCase_ == 1) {
                    codedOutputStream.L0(1, (HeaderValueExtractor) this.type_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ FragmentBuilder(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(FragmentBuilder fragmentBuilder) {
                return DEFAULT_INSTANCE.toBuilder().g0(fragmentBuilder);
            }

            public static FragmentBuilder parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private FragmentBuilder(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.typeCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static FragmentBuilder parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static FragmentBuilder parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public FragmentBuilder getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static FragmentBuilder parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            public static FragmentBuilder parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            private FragmentBuilder() {
                this.typeCase_ = 0;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static FragmentBuilder parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static FragmentBuilder parseFrom(InputStream inputStream) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private FragmentBuilder(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    HeaderValueExtractor.b builder = this.typeCase_ == 1 ? ((HeaderValueExtractor) this.type_).toBuilder() : null;
                                    o1 B = pVar.B(HeaderValueExtractor.parser(), f0Var);
                                    this.type_ = B;
                                    if (builder != null) {
                                        builder.h0((HeaderValueExtractor) B);
                                        this.type_ = builder.I();
                                    }
                                    this.typeCase_ = 1;
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

            public static FragmentBuilder parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static FragmentBuilder parseFrom(p pVar) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static FragmentBuilder parseFrom(p pVar, f0 f0Var) throws IOException {
                return (FragmentBuilder) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<ScopeKeyBuilder> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ScopeKeyBuilder m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ScopeKeyBuilder(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f48676e;

            /* renamed from: f  reason: collision with root package name */
            private List<FragmentBuilder> f48677f;

            /* renamed from: g  reason: collision with root package name */
            private l2<FragmentBuilder, FragmentBuilder.b, c> f48678g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f48676e & 1) == 0) {
                    this.f48677f = new ArrayList(this.f48677f);
                    this.f48676e |= 1;
                }
            }

            private l2<FragmentBuilder, FragmentBuilder.b, c> d0() {
                if (this.f48678g == null) {
                    this.f48678g = new l2<>(this.f48677f, (this.f48676e & 1) != 0, H(), O());
                    this.f48677f = null;
                }
                return this.f48678g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48708r.d(ScopeKeyBuilder.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ScopeKeyBuilder build() {
                ScopeKeyBuilder I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ScopeKeyBuilder I() {
                ScopeKeyBuilder scopeKeyBuilder = new ScopeKeyBuilder(this, (a) null);
                int i9 = this.f48676e;
                l2<FragmentBuilder, FragmentBuilder.b, c> l2Var = this.f48678g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f48677f = Collections.unmodifiableList(this.f48677f);
                        this.f48676e &= -2;
                    }
                    scopeKeyBuilder.fragments_ = this.f48677f;
                } else {
                    scopeKeyBuilder.fragments_ = l2Var.e();
                }
                Q();
                return scopeKeyBuilder;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public ScopeKeyBuilder getDefaultInstanceForType() {
                return ScopeKeyBuilder.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.access$4000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$ScopeKeyBuilder$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48707q;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ScopeKeyBuilder) {
                    return i0((ScopeKeyBuilder) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(ScopeKeyBuilder scopeKeyBuilder) {
                if (scopeKeyBuilder == ScopeKeyBuilder.getDefaultInstance()) {
                    return this;
                }
                if (this.f48678g == null) {
                    if (!scopeKeyBuilder.fragments_.isEmpty()) {
                        if (this.f48677f.isEmpty()) {
                            this.f48677f = scopeKeyBuilder.fragments_;
                            this.f48676e &= -2;
                        } else {
                            a0();
                            this.f48677f.addAll(scopeKeyBuilder.fragments_);
                        }
                        R();
                    }
                } else if (!scopeKeyBuilder.fragments_.isEmpty()) {
                    if (this.f48678g.k()) {
                        this.f48678g.f();
                        this.f48678g = null;
                        this.f48677f = scopeKeyBuilder.fragments_;
                        this.f48676e &= -2;
                        this.f48678g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f48678g.b(scopeKeyBuilder.fragments_);
                    }
                }
                z(((GeneratedMessageV3) scopeKeyBuilder).unknownFields);
                R();
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
                this.f48677f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48677f = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ ScopeKeyBuilder(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ScopeKeyBuilder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48707q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ScopeKeyBuilder parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ScopeKeyBuilder parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ScopeKeyBuilder> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ScopeKeyBuilder)) {
                return super.equals(obj);
            }
            ScopeKeyBuilder scopeKeyBuilder = (ScopeKeyBuilder) obj;
            return getFragmentsList().equals(scopeKeyBuilder.getFragmentsList()) && this.unknownFields.equals(scopeKeyBuilder.unknownFields);
        }

        public FragmentBuilder getFragments(int i9) {
            return this.fragments_.get(i9);
        }

        public int getFragmentsCount() {
            return this.fragments_.size();
        }

        public List<FragmentBuilder> getFragmentsList() {
            return this.fragments_;
        }

        public c getFragmentsOrBuilder(int i9) {
            return this.fragments_.get(i9);
        }

        public List<? extends c> getFragmentsOrBuilderList() {
            return this.fragments_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ScopeKeyBuilder> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.fragments_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.fragments_.get(i11));
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
            if (getFragmentsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFragmentsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48708r.d(ScopeKeyBuilder.class, b.class);
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
            return new ScopeKeyBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.fragments_.size(); i9++) {
                codedOutputStream.L0(1, this.fragments_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ScopeKeyBuilder(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ScopeKeyBuilder scopeKeyBuilder) {
            return DEFAULT_INSTANCE.toBuilder().i0(scopeKeyBuilder);
        }

        public static ScopeKeyBuilder parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ScopeKeyBuilder(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ScopeKeyBuilder parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ScopeKeyBuilder parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ScopeKeyBuilder getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static ScopeKeyBuilder parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ScopeKeyBuilder() {
            this.memoizedIsInitialized = (byte) -1;
            this.fragments_ = Collections.emptyList();
        }

        public static ScopeKeyBuilder parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ScopeKeyBuilder parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ScopeKeyBuilder parseFrom(InputStream inputStream) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ScopeKeyBuilder(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.fragments_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.fragments_.add((FragmentBuilder) pVar.B(FragmentBuilder.parser(), f0Var));
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
                        this.fragments_ = Collections.unmodifiableList(this.fragments_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ScopeKeyBuilder parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ScopeKeyBuilder parseFrom(p pVar) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ScopeKeyBuilder parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ScopeKeyBuilder) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ScopedRoutes> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ScopedRoutes m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ScopedRoutes(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48679a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f48680b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f48681c;

        static {
            int[] iArr = new int[ConfigSpecifierCase.values().length];
            f48681c = iArr;
            try {
                iArr[ConfigSpecifierCase.SCOPED_ROUTE_CONFIGURATIONS_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48681c[ConfigSpecifierCase.SCOPED_RDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48681c[ConfigSpecifierCase.CONFIGSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ScopeKeyBuilder.FragmentBuilder.TypeCase.values().length];
            f48680b = iArr2;
            try {
                iArr2[ScopeKeyBuilder.FragmentBuilder.TypeCase.HEADER_VALUE_EXTRACTOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f48680b[ScopeKeyBuilder.FragmentBuilder.TypeCase.TYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.ExtractTypeCase.values().length];
            f48679a = iArr3;
            try {
                iArr3[ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.ExtractTypeCase.INDEX.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f48679a[ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.ExtractTypeCase.ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f48679a[ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.ExtractTypeCase.EXTRACTTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f48682e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48683f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48684g;

        /* renamed from: h  reason: collision with root package name */
        private ScopeKeyBuilder f48685h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ScopeKeyBuilder, ScopeKeyBuilder.b, d> f48686i;

        /* renamed from: j  reason: collision with root package name */
        private ConfigSource f48687j;

        /* renamed from: k  reason: collision with root package name */
        private q2<ConfigSource, ConfigSource.c, k> f48688k;

        /* renamed from: l  reason: collision with root package name */
        private q2<ScopedRouteConfigurationsList, ScopedRouteConfigurationsList.b, f> f48689l;

        /* renamed from: m  reason: collision with root package name */
        private q2<ScopedRds, ScopedRds.b, e> f48690m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48706p.d(ScopedRoutes.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ScopedRoutes build() {
            ScopedRoutes I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ScopedRoutes I() {
            ScopedRoutes scopedRoutes = new ScopedRoutes(this, (a) null);
            scopedRoutes.name_ = this.f48684g;
            q2<ScopeKeyBuilder, ScopeKeyBuilder.b, d> q2Var = this.f48686i;
            if (q2Var == null) {
                scopedRoutes.scopeKeyBuilder_ = this.f48685h;
            } else {
                scopedRoutes.scopeKeyBuilder_ = q2Var.b();
            }
            q2<ConfigSource, ConfigSource.c, k> q2Var2 = this.f48688k;
            if (q2Var2 == null) {
                scopedRoutes.rdsConfigSource_ = this.f48687j;
            } else {
                scopedRoutes.rdsConfigSource_ = q2Var2.b();
            }
            if (this.f48682e == 4) {
                q2<ScopedRouteConfigurationsList, ScopedRouteConfigurationsList.b, f> q2Var3 = this.f48689l;
                if (q2Var3 == null) {
                    scopedRoutes.configSpecifier_ = this.f48683f;
                } else {
                    scopedRoutes.configSpecifier_ = q2Var3.b();
                }
            }
            if (this.f48682e == 5) {
                q2<ScopedRds, ScopedRds.b, e> q2Var4 = this.f48690m;
                if (q2Var4 == null) {
                    scopedRoutes.configSpecifier_ = this.f48683f;
                } else {
                    scopedRoutes.configSpecifier_ = q2Var4.b();
                }
            }
            scopedRoutes.configSpecifierCase_ = this.f48682e;
            Q();
            return scopedRoutes;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ScopedRoutes getDefaultInstanceForType() {
            return ScopedRoutes.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.access$5200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.ScopedRoutes$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ScopedRoutes) {
                return g0((ScopedRoutes) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(ScopedRoutes scopedRoutes) {
            if (scopedRoutes == ScopedRoutes.getDefaultInstance()) {
                return this;
            }
            if (!scopedRoutes.getName().isEmpty()) {
                this.f48684g = scopedRoutes.name_;
                R();
            }
            if (scopedRoutes.hasScopeKeyBuilder()) {
                i0(scopedRoutes.getScopeKeyBuilder());
            }
            if (scopedRoutes.hasRdsConfigSource()) {
                h0(scopedRoutes.getRdsConfigSource());
            }
            int i9 = b.f48681c[scopedRoutes.getConfigSpecifierCase().ordinal()];
            if (i9 == 1) {
                k0(scopedRoutes.getScopedRouteConfigurationsList());
            } else if (i9 == 2) {
                j0(scopedRoutes.getScopedRds());
            }
            z(((GeneratedMessageV3) scopedRoutes).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48705o;
        }

        public c h0(ConfigSource configSource) {
            q2<ConfigSource, ConfigSource.c, k> q2Var = this.f48688k;
            if (q2Var == null) {
                ConfigSource configSource2 = this.f48687j;
                if (configSource2 != null) {
                    this.f48687j = ConfigSource.newBuilder(configSource2).i0(configSource).I();
                } else {
                    this.f48687j = configSource;
                }
                R();
            } else {
                q2Var.e(configSource);
            }
            return this;
        }

        public c i0(ScopeKeyBuilder scopeKeyBuilder) {
            q2<ScopeKeyBuilder, ScopeKeyBuilder.b, d> q2Var = this.f48686i;
            if (q2Var == null) {
                ScopeKeyBuilder scopeKeyBuilder2 = this.f48685h;
                if (scopeKeyBuilder2 != null) {
                    this.f48685h = ScopeKeyBuilder.newBuilder(scopeKeyBuilder2).i0(scopeKeyBuilder).I();
                } else {
                    this.f48685h = scopeKeyBuilder;
                }
                R();
            } else {
                q2Var.e(scopeKeyBuilder);
            }
            return this;
        }

        public c j0(ScopedRds scopedRds) {
            q2<ScopedRds, ScopedRds.b, e> q2Var = this.f48690m;
            if (q2Var == null) {
                if (this.f48682e == 5 && this.f48683f != ScopedRds.getDefaultInstance()) {
                    this.f48683f = ScopedRds.newBuilder((ScopedRds) this.f48683f).g0(scopedRds).I();
                } else {
                    this.f48683f = scopedRds;
                }
                R();
            } else {
                if (this.f48682e == 5) {
                    q2Var.e(scopedRds);
                }
                this.f48690m.g(scopedRds);
            }
            this.f48682e = 5;
            return this;
        }

        public c k0(ScopedRouteConfigurationsList scopedRouteConfigurationsList) {
            q2<ScopedRouteConfigurationsList, ScopedRouteConfigurationsList.b, f> q2Var = this.f48689l;
            if (q2Var == null) {
                if (this.f48682e == 4 && this.f48683f != ScopedRouteConfigurationsList.getDefaultInstance()) {
                    this.f48683f = ScopedRouteConfigurationsList.newBuilder((ScopedRouteConfigurationsList) this.f48683f).i0(scopedRouteConfigurationsList).I();
                } else {
                    this.f48683f = scopedRouteConfigurationsList;
                }
                R();
            } else {
                if (this.f48682e == 4) {
                    q2Var.e(scopedRouteConfigurationsList);
                }
                this.f48689l.g(scopedRouteConfigurationsList);
            }
            this.f48682e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48682e = 0;
            this.f48684g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48682e = 0;
            this.f48684g = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ScopedRoutes(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ScopedRoutes getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48705o;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ScopedRoutes parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ScopedRoutes parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ScopedRoutes> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScopedRoutes)) {
            return super.equals(obj);
        }
        ScopedRoutes scopedRoutes = (ScopedRoutes) obj;
        if (getName().equals(scopedRoutes.getName()) && hasScopeKeyBuilder() == scopedRoutes.hasScopeKeyBuilder()) {
            if ((!hasScopeKeyBuilder() || getScopeKeyBuilder().equals(scopedRoutes.getScopeKeyBuilder())) && hasRdsConfigSource() == scopedRoutes.hasRdsConfigSource()) {
                if ((!hasRdsConfigSource() || getRdsConfigSource().equals(scopedRoutes.getRdsConfigSource())) && getConfigSpecifierCase().equals(scopedRoutes.getConfigSpecifierCase())) {
                    int i9 = this.configSpecifierCase_;
                    if (i9 != 4) {
                        if (i9 == 5 && !getScopedRds().equals(scopedRoutes.getScopedRds())) {
                            return false;
                        }
                    } else if (!getScopedRouteConfigurationsList().equals(scopedRoutes.getScopedRouteConfigurationsList())) {
                        return false;
                    }
                    return this.unknownFields.equals(scopedRoutes.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public ConfigSpecifierCase getConfigSpecifierCase() {
        return ConfigSpecifierCase.forNumber(this.configSpecifierCase_);
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ScopedRoutes> getParserForType() {
        return PARSER;
    }

    public ConfigSource getRdsConfigSource() {
        ConfigSource configSource = this.rdsConfigSource_;
        return configSource == null ? ConfigSource.getDefaultInstance() : configSource;
    }

    public k getRdsConfigSourceOrBuilder() {
        return getRdsConfigSource();
    }

    public ScopeKeyBuilder getScopeKeyBuilder() {
        ScopeKeyBuilder scopeKeyBuilder = this.scopeKeyBuilder_;
        return scopeKeyBuilder == null ? ScopeKeyBuilder.getDefaultInstance() : scopeKeyBuilder;
    }

    public d getScopeKeyBuilderOrBuilder() {
        return getScopeKeyBuilder();
    }

    public ScopedRds getScopedRds() {
        if (this.configSpecifierCase_ == 5) {
            return (ScopedRds) this.configSpecifier_;
        }
        return ScopedRds.getDefaultInstance();
    }

    public e getScopedRdsOrBuilder() {
        if (this.configSpecifierCase_ == 5) {
            return (ScopedRds) this.configSpecifier_;
        }
        return ScopedRds.getDefaultInstance();
    }

    public ScopedRouteConfigurationsList getScopedRouteConfigurationsList() {
        if (this.configSpecifierCase_ == 4) {
            return (ScopedRouteConfigurationsList) this.configSpecifier_;
        }
        return ScopedRouteConfigurationsList.getDefaultInstance();
    }

    public f getScopedRouteConfigurationsListOrBuilder() {
        if (this.configSpecifierCase_ == 4) {
            return (ScopedRouteConfigurationsList) this.configSpecifier_;
        }
        return ScopedRouteConfigurationsList.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.scopeKeyBuilder_ != null) {
            computeStringSize += CodedOutputStream.G(2, getScopeKeyBuilder());
        }
        if (this.rdsConfigSource_ != null) {
            computeStringSize += CodedOutputStream.G(3, getRdsConfigSource());
        }
        if (this.configSpecifierCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (ScopedRouteConfigurationsList) this.configSpecifier_);
        }
        if (this.configSpecifierCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (ScopedRds) this.configSpecifier_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasRdsConfigSource() {
        return this.rdsConfigSource_ != null;
    }

    public boolean hasScopeKeyBuilder() {
        return this.scopeKeyBuilder_ != null;
    }

    public boolean hasScopedRds() {
        return this.configSpecifierCase_ == 5;
    }

    public boolean hasScopedRouteConfigurationsList() {
        return this.configSpecifierCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasScopeKeyBuilder()) {
            hashCode2 = (((hashCode2 * 37) + 2) * 53) + getScopeKeyBuilder().hashCode();
        }
        if (hasRdsConfigSource()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getRdsConfigSource().hashCode();
        }
        int i11 = this.configSpecifierCase_;
        if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getScopedRouteConfigurationsList().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getScopedRds().hashCode();
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
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.f48706p.d(ScopedRoutes.class, c.class);
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
        return new ScopedRoutes();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.scopeKeyBuilder_ != null) {
            codedOutputStream.L0(2, getScopeKeyBuilder());
        }
        if (this.rdsConfigSource_ != null) {
            codedOutputStream.L0(3, getRdsConfigSource());
        }
        if (this.configSpecifierCase_ == 4) {
            codedOutputStream.L0(4, (ScopedRouteConfigurationsList) this.configSpecifier_);
        }
        if (this.configSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (ScopedRds) this.configSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ScopedRoutes(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ScopedRoutes scopedRoutes) {
        return DEFAULT_INSTANCE.toBuilder().g0(scopedRoutes);
    }

    public static ScopedRoutes parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ScopedRoutes(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.configSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ScopedRoutes parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScopedRoutes parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ScopedRoutes getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static ScopedRoutes parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ScopedRoutes parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ScopedRoutes() {
        this.configSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static ScopedRoutes parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ScopedRoutes parseFrom(InputStream inputStream) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ScopedRoutes parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ScopedRoutes(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 18) {
                                    ScopeKeyBuilder scopeKeyBuilder = this.scopeKeyBuilder_;
                                    ScopeKeyBuilder.b builder = scopeKeyBuilder != null ? scopeKeyBuilder.toBuilder() : null;
                                    ScopeKeyBuilder scopeKeyBuilder2 = (ScopeKeyBuilder) pVar.B(ScopeKeyBuilder.parser(), f0Var);
                                    this.scopeKeyBuilder_ = scopeKeyBuilder2;
                                    if (builder != null) {
                                        builder.i0(scopeKeyBuilder2);
                                        this.scopeKeyBuilder_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    ConfigSource configSource = this.rdsConfigSource_;
                                    ConfigSource.c builder2 = configSource != null ? configSource.toBuilder() : null;
                                    ConfigSource configSource2 = (ConfigSource) pVar.B(ConfigSource.parser(), f0Var);
                                    this.rdsConfigSource_ = configSource2;
                                    if (builder2 != null) {
                                        builder2.i0(configSource2);
                                        this.rdsConfigSource_ = builder2.I();
                                    }
                                } else if (L == 34) {
                                    ScopedRouteConfigurationsList.b builder3 = this.configSpecifierCase_ == 4 ? ((ScopedRouteConfigurationsList) this.configSpecifier_).toBuilder() : null;
                                    o1 B = pVar.B(ScopedRouteConfigurationsList.parser(), f0Var);
                                    this.configSpecifier_ = B;
                                    if (builder3 != null) {
                                        builder3.i0((ScopedRouteConfigurationsList) B);
                                        this.configSpecifier_ = builder3.I();
                                    }
                                    this.configSpecifierCase_ = 4;
                                } else if (L != 42) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    ScopedRds.b builder4 = this.configSpecifierCase_ == 5 ? ((ScopedRds) this.configSpecifier_).toBuilder() : null;
                                    o1 B2 = pVar.B(ScopedRds.parser(), f0Var);
                                    this.configSpecifier_ = B2;
                                    if (builder4 != null) {
                                        builder4.g0((ScopedRds) B2);
                                        this.configSpecifier_ = builder4.I();
                                    }
                                    this.configSpecifierCase_ = 5;
                                }
                            } else {
                                this.name_ = pVar.K();
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

    public static ScopedRoutes parseFrom(p pVar) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ScopedRoutes parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ScopedRoutes) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
