package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RemoteDataSource;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class AsyncDataSource extends GeneratedMessageV3 implements r1 {
    public static final int LOCAL_FIELD_NUMBER = 1;
    public static final int REMOTE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int specifierCase_;
    private Object specifier_;
    private static final AsyncDataSource DEFAULT_INSTANCE = new AsyncDataSource();
    private static final e2<AsyncDataSource> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum SpecifierCase implements u0.c {
        LOCAL(1),
        REMOTE(2),
        SPECIFIER_NOT_SET(0);
        
        private final int value;

        SpecifierCase(int i9) {
            this.value = i9;
        }

        public static SpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return REMOTE;
                }
                return LOCAL;
            }
            return SPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static SpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<AsyncDataSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public AsyncDataSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new AsyncDataSource(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46368a;

        static {
            int[] iArr = new int[SpecifierCase.values().length];
            f46368a = iArr;
            try {
                iArr[SpecifierCase.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46368a[SpecifierCase.REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46368a[SpecifierCase.SPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f46369e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46370f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46371g;

        /* renamed from: h  reason: collision with root package name */
        private q2<RemoteDataSource, RemoteDataSource.b, i0> f46372h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.F.d(AsyncDataSource.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public AsyncDataSource build() {
            AsyncDataSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public AsyncDataSource I() {
            AsyncDataSource asyncDataSource = new AsyncDataSource(this, (a) null);
            if (this.f46369e == 1) {
                q2<DataSource, DataSource.c, n> q2Var = this.f46371g;
                if (q2Var == null) {
                    asyncDataSource.specifier_ = this.f46370f;
                } else {
                    asyncDataSource.specifier_ = q2Var.b();
                }
            }
            if (this.f46369e == 2) {
                q2<RemoteDataSource, RemoteDataSource.b, i0> q2Var2 = this.f46372h;
                if (q2Var2 == null) {
                    asyncDataSource.specifier_ = this.f46370f;
                } else {
                    asyncDataSource.specifier_ = q2Var2.b();
                }
            }
            asyncDataSource.specifierCase_ = this.f46369e;
            Q();
            return asyncDataSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public AsyncDataSource getDefaultInstanceForType() {
            return AsyncDataSource.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.AsyncDataSource$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof AsyncDataSource) {
                return g0((AsyncDataSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(AsyncDataSource asyncDataSource) {
            if (asyncDataSource == AsyncDataSource.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f46368a[asyncDataSource.getSpecifierCase().ordinal()];
            if (i9 == 1) {
                h0(asyncDataSource.getLocal());
            } else if (i9 == 2) {
                i0(asyncDataSource.getRemote());
            }
            z(((GeneratedMessageV3) asyncDataSource).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.E;
        }

        public c h0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46371g;
            if (q2Var == null) {
                if (this.f46369e == 1 && this.f46370f != DataSource.getDefaultInstance()) {
                    this.f46370f = DataSource.newBuilder((DataSource) this.f46370f).g0(dataSource).I();
                } else {
                    this.f46370f = dataSource;
                }
                R();
            } else {
                if (this.f46369e == 1) {
                    q2Var.e(dataSource);
                }
                this.f46371g.g(dataSource);
            }
            this.f46369e = 1;
            return this;
        }

        public c i0(RemoteDataSource remoteDataSource) {
            q2<RemoteDataSource, RemoteDataSource.b, i0> q2Var = this.f46372h;
            if (q2Var == null) {
                if (this.f46369e == 2 && this.f46370f != RemoteDataSource.getDefaultInstance()) {
                    this.f46370f = RemoteDataSource.newBuilder((RemoteDataSource) this.f46370f).g0(remoteDataSource).I();
                } else {
                    this.f46370f = remoteDataSource;
                }
                R();
            } else {
                if (this.f46369e == 2) {
                    q2Var.e(remoteDataSource);
                }
                this.f46372h.g(remoteDataSource);
            }
            this.f46369e = 2;
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
            this.f46369e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46369e = 0;
            b0();
        }
    }

    /* synthetic */ AsyncDataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static AsyncDataSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.E;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AsyncDataSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AsyncDataSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<AsyncDataSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AsyncDataSource)) {
            return super.equals(obj);
        }
        AsyncDataSource asyncDataSource = (AsyncDataSource) obj;
        if (getSpecifierCase().equals(asyncDataSource.getSpecifierCase())) {
            int i9 = this.specifierCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getRemote().equals(asyncDataSource.getRemote())) {
                    return false;
                }
            } else if (!getLocal().equals(asyncDataSource.getLocal())) {
                return false;
            }
            return this.unknownFields.equals(asyncDataSource.unknownFields);
        }
        return false;
    }

    public DataSource getLocal() {
        if (this.specifierCase_ == 1) {
            return (DataSource) this.specifier_;
        }
        return DataSource.getDefaultInstance();
    }

    public n getLocalOrBuilder() {
        if (this.specifierCase_ == 1) {
            return (DataSource) this.specifier_;
        }
        return DataSource.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<AsyncDataSource> getParserForType() {
        return PARSER;
    }

    public RemoteDataSource getRemote() {
        if (this.specifierCase_ == 2) {
            return (RemoteDataSource) this.specifier_;
        }
        return RemoteDataSource.getDefaultInstance();
    }

    public i0 getRemoteOrBuilder() {
        if (this.specifierCase_ == 2) {
            return (RemoteDataSource) this.specifier_;
        }
        return RemoteDataSource.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.specifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (DataSource) this.specifier_) : 0;
        if (this.specifierCase_ == 2) {
            G += CodedOutputStream.G(2, (RemoteDataSource) this.specifier_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SpecifierCase getSpecifierCase() {
        return SpecifierCase.forNumber(this.specifierCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLocal() {
        return this.specifierCase_ == 1;
    }

    public boolean hasRemote() {
        return this.specifierCase_ == 2;
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
        int i11 = this.specifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getLocal().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getRemote().hashCode();
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
        return g.F.d(AsyncDataSource.class, c.class);
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
        return new AsyncDataSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.specifierCase_ == 1) {
            codedOutputStream.L0(1, (DataSource) this.specifier_);
        }
        if (this.specifierCase_ == 2) {
            codedOutputStream.L0(2, (RemoteDataSource) this.specifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ AsyncDataSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(AsyncDataSource asyncDataSource) {
        return DEFAULT_INSTANCE.toBuilder().g0(asyncDataSource);
    }

    public static AsyncDataSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private AsyncDataSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.specifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AsyncDataSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncDataSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public AsyncDataSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static AsyncDataSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static AsyncDataSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private AsyncDataSource() {
        this.specifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AsyncDataSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static AsyncDataSource parseFrom(InputStream inputStream) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private AsyncDataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                DataSource.c builder = this.specifierCase_ == 1 ? ((DataSource) this.specifier_).toBuilder() : null;
                                o1 B = pVar.B(DataSource.parser(), f0Var);
                                this.specifier_ = B;
                                if (builder != null) {
                                    builder.g0((DataSource) B);
                                    this.specifier_ = builder.I();
                                }
                                this.specifierCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                RemoteDataSource.b builder2 = this.specifierCase_ == 2 ? ((RemoteDataSource) this.specifier_).toBuilder() : null;
                                o1 B2 = pVar.B(RemoteDataSource.parser(), f0Var);
                                this.specifier_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((RemoteDataSource) B2);
                                    this.specifier_ = builder2.I();
                                }
                                this.specifierCase_ = 2;
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

    public static AsyncDataSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static AsyncDataSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static AsyncDataSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (AsyncDataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
