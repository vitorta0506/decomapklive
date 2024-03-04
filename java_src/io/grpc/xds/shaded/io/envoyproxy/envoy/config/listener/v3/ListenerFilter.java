package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Any;
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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilterChainMatchPredicate;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ListenerFilter extends GeneratedMessageV3 implements h {
    public static final int FILTER_DISABLED_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int configTypeCase_;
    private Object configType_;
    private ListenerFilterChainMatchPredicate filterDisabled_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final ListenerFilter DEFAULT_INSTANCE = new ListenerFilter();
    private static final e2<ListenerFilter> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConfigTypeCase implements u0.c {
        TYPED_CONFIG(3),
        CONFIGTYPE_NOT_SET(0);
        
        private final int value;

        ConfigTypeCase(int i9) {
            this.value = i9;
        }

        public static ConfigTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 3) {
                    return null;
                }
                return TYPED_CONFIG;
            }
            return CONFIGTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ConfigTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ListenerFilter> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListenerFilter m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListenerFilter(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48799a;

        static {
            int[] iArr = new int[ConfigTypeCase.values().length];
            f48799a = iArr;
            try {
                iArr[ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48799a[ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f48800e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48801f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48802g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f48803h;

        /* renamed from: i  reason: collision with root package name */
        private ListenerFilterChainMatchPredicate f48804i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ListenerFilterChainMatchPredicate, ListenerFilterChainMatchPredicate.c, g> f48805j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f48850n.d(ListenerFilter.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListenerFilter build() {
            ListenerFilter I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListenerFilter I() {
            ListenerFilter listenerFilter = new ListenerFilter(this, (a) null);
            listenerFilter.name_ = this.f48802g;
            if (this.f48800e == 3) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48803h;
                if (q2Var == null) {
                    listenerFilter.configType_ = this.f48801f;
                } else {
                    listenerFilter.configType_ = q2Var.b();
                }
            }
            q2<ListenerFilterChainMatchPredicate, ListenerFilterChainMatchPredicate.c, g> q2Var2 = this.f48805j;
            if (q2Var2 == null) {
                listenerFilter.filterDisabled_ = this.f48804i;
            } else {
                listenerFilter.filterDisabled_ = q2Var2.b();
            }
            listenerFilter.configTypeCase_ = this.f48800e;
            Q();
            return listenerFilter;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ListenerFilter getDefaultInstanceForType() {
            return ListenerFilter.getDefaultInstance();
        }

        public c d0(ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate) {
            q2<ListenerFilterChainMatchPredicate, ListenerFilterChainMatchPredicate.c, g> q2Var = this.f48805j;
            if (q2Var == null) {
                ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate2 = this.f48804i;
                if (listenerFilterChainMatchPredicate2 != null) {
                    this.f48804i = ListenerFilterChainMatchPredicate.newBuilder(listenerFilterChainMatchPredicate2).i0(listenerFilterChainMatchPredicate).I();
                } else {
                    this.f48804i = listenerFilterChainMatchPredicate;
                }
                R();
            } else {
                q2Var.e(listenerFilterChainMatchPredicate);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ListenerFilter) {
                return h0((ListenerFilter) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f48849m;
        }

        public c h0(ListenerFilter listenerFilter) {
            if (listenerFilter == ListenerFilter.getDefaultInstance()) {
                return this;
            }
            if (!listenerFilter.getName().isEmpty()) {
                this.f48802g = listenerFilter.name_;
                R();
            }
            if (listenerFilter.hasFilterDisabled()) {
                d0(listenerFilter.getFilterDisabled());
            }
            if (b.f48799a[listenerFilter.getConfigTypeCase().ordinal()] == 1) {
                i0(listenerFilter.getTypedConfig());
            }
            z(((GeneratedMessageV3) listenerFilter).unknownFields);
            R();
            return this;
        }

        public c i0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48803h;
            if (q2Var == null) {
                if (this.f48800e == 3 && this.f48801f != Any.getDefaultInstance()) {
                    this.f48801f = Any.newBuilder((Any) this.f48801f).d0(any).I();
                } else {
                    this.f48801f = any;
                }
                R();
            } else {
                if (this.f48800e == 3) {
                    q2Var.e(any);
                }
                this.f48803h.g(any);
            }
            this.f48800e = 3;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48800e = 0;
            this.f48802g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48800e = 0;
            this.f48802g = "";
            b0();
        }
    }

    /* synthetic */ ListenerFilter(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListenerFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f48849m;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListenerFilter parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListenerFilter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListenerFilter> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListenerFilter)) {
            return super.equals(obj);
        }
        ListenerFilter listenerFilter = (ListenerFilter) obj;
        if (getName().equals(listenerFilter.getName()) && hasFilterDisabled() == listenerFilter.hasFilterDisabled()) {
            if ((!hasFilterDisabled() || getFilterDisabled().equals(listenerFilter.getFilterDisabled())) && getConfigTypeCase().equals(listenerFilter.getConfigTypeCase())) {
                return (this.configTypeCase_ != 3 || getTypedConfig().equals(listenerFilter.getTypedConfig())) && this.unknownFields.equals(listenerFilter.unknownFields);
            }
            return false;
        }
        return false;
    }

    public ConfigTypeCase getConfigTypeCase() {
        return ConfigTypeCase.forNumber(this.configTypeCase_);
    }

    public ListenerFilterChainMatchPredicate getFilterDisabled() {
        ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate = this.filterDisabled_;
        return listenerFilterChainMatchPredicate == null ? ListenerFilterChainMatchPredicate.getDefaultInstance() : listenerFilterChainMatchPredicate;
    }

    public g getFilterDisabledOrBuilder() {
        return getFilterDisabled();
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
    public e2<ListenerFilter> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.configTypeCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
        }
        if (this.filterDisabled_ != null) {
            computeStringSize += CodedOutputStream.G(4, getFilterDisabled());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Any getTypedConfig() {
        if (this.configTypeCase_ == 3) {
            return (Any) this.configType_;
        }
        return Any.getDefaultInstance();
    }

    public com.google.protobuf.f getTypedConfigOrBuilder() {
        if (this.configTypeCase_ == 3) {
            return (Any) this.configType_;
        }
        return Any.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFilterDisabled() {
        return this.filterDisabled_ != null;
    }

    public boolean hasTypedConfig() {
        return this.configTypeCase_ == 3;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasFilterDisabled()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getFilterDisabled().hashCode();
        }
        if (this.configTypeCase_ == 3) {
            hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f48850n.d(ListenerFilter.class, c.class);
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
        return new ListenerFilter();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.configTypeCase_ == 3) {
            codedOutputStream.L0(3, (Any) this.configType_);
        }
        if (this.filterDisabled_ != null) {
            codedOutputStream.L0(4, getFilterDisabled());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListenerFilter(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ListenerFilter listenerFilter) {
        return DEFAULT_INSTANCE.toBuilder().h0(listenerFilter);
    }

    public static ListenerFilter parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListenerFilter(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.configTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListenerFilter parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListenerFilter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListenerFilter getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static ListenerFilter parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ListenerFilter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ListenerFilter() {
        this.configTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static ListenerFilter parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListenerFilter parseFrom(InputStream inputStream) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ListenerFilter parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ListenerFilter(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 26) {
                                Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                o1 B = pVar.B(Any.parser(), f0Var);
                                this.configType_ = B;
                                if (builder != null) {
                                    builder.d0((Any) B);
                                    this.configType_ = builder.I();
                                }
                                this.configTypeCase_ = 3;
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate = this.filterDisabled_;
                                ListenerFilterChainMatchPredicate.c builder2 = listenerFilterChainMatchPredicate != null ? listenerFilterChainMatchPredicate.toBuilder() : null;
                                ListenerFilterChainMatchPredicate listenerFilterChainMatchPredicate2 = (ListenerFilterChainMatchPredicate) pVar.B(ListenerFilterChainMatchPredicate.parser(), f0Var);
                                this.filterDisabled_ = listenerFilterChainMatchPredicate2;
                                if (builder2 != null) {
                                    builder2.i0(listenerFilterChainMatchPredicate2);
                                    this.filterDisabled_ = builder2.I();
                                }
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static ListenerFilter parseFrom(p pVar) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListenerFilter parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListenerFilter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
