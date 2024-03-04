package io.grpc.alts.internal;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class RpcProtocolVersions extends GeneratedMessageV3 implements z {
    public static final int MAX_RPC_VERSION_FIELD_NUMBER = 1;
    public static final int MIN_RPC_VERSION_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Version maxRpcVersion_;
    private byte memoizedIsInitialized;
    private Version minRpcVersion_;
    private static final RpcProtocolVersions DEFAULT_INSTANCE = new RpcProtocolVersions();
    private static final e2<RpcProtocolVersions> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class Version extends GeneratedMessageV3 implements c {
        public static final int MAJOR_FIELD_NUMBER = 1;
        public static final int MINOR_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int major_;
        private byte memoizedIsInitialized;
        private int minor_;
        private static final Version DEFAULT_INSTANCE = new Version();
        private static final e2<Version> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Version> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Version m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new Version(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f41794e;

            /* renamed from: f  reason: collision with root package name */
            private int f41795f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return d0.f41854d.d(Version.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Version build() {
                Version I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Version I() {
                Version version = new Version(this, (a) null);
                version.major_ = this.f41794e;
                version.minor_ = this.f41795f;
                Q();
                return version;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Version getDefaultInstanceForType() {
                return Version.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.alts.internal.RpcProtocolVersions.Version.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.alts.internal.RpcProtocolVersions.Version.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.alts.internal.RpcProtocolVersions$Version r3 = (io.grpc.alts.internal.RpcProtocolVersions.Version) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.alts.internal.RpcProtocolVersions$Version r4 = (io.grpc.alts.internal.RpcProtocolVersions.Version) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.RpcProtocolVersions.Version.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.RpcProtocolVersions$Version$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Version) {
                    return g0((Version) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Version version) {
                if (version == Version.getDefaultInstance()) {
                    return this;
                }
                if (version.getMajor() != 0) {
                    j0(version.getMajor());
                }
                if (version.getMinor() != 0) {
                    k0(version.getMinor());
                }
                z(((GeneratedMessageV3) version).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return d0.f41853c;
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

            public b j0(int i9) {
                this.f41794e = i9;
                R();
                return this;
            }

            public b k0(int i9) {
                this.f41795f = i9;
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ Version(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Version getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return d0.f41853c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Version parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Version parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Version> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return super.equals(obj);
            }
            Version version = (Version) obj;
            return getMajor() == version.getMajor() && getMinor() == version.getMinor() && this.unknownFields.equals(version.unknownFields);
        }

        public int getMajor() {
            return this.major_;
        }

        public int getMinor() {
            return this.minor_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Version> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = this.major_;
            int Y = i10 != 0 ? 0 + CodedOutputStream.Y(1, i10) : 0;
            int i11 = this.minor_;
            if (i11 != 0) {
                Y += CodedOutputStream.Y(2, i11);
            }
            int serializedSize = Y + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMajor()) * 37) + 2) * 53) + getMinor()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return d0.f41854d.d(Version.class, b.class);
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
            return new Version();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i9 = this.major_;
            if (i9 != 0) {
                codedOutputStream.c1(1, i9);
            }
            int i10 = this.minor_;
            if (i10 != 0) {
                codedOutputStream.c1(2, i10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Version(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Version version) {
            return DEFAULT_INSTANCE.toBuilder().g0(version);
        }

        public static Version parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Version(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Version parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Version parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Version getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Version parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Version() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Version parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Version parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private Version(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 8) {
                                    this.major_ = pVar.M();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.minor_ = pVar.M();
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

        public static Version parseFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Version parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Version parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Version parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<RpcProtocolVersions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RpcProtocolVersions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RpcProtocolVersions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements z {

        /* renamed from: e  reason: collision with root package name */
        private Version f41796e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Version, Version.b, c> f41797f;

        /* renamed from: g  reason: collision with root package name */
        private Version f41798g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Version, Version.b, c> f41799h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d0.f41852b.d(RpcProtocolVersions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RpcProtocolVersions build() {
            RpcProtocolVersions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RpcProtocolVersions I() {
            RpcProtocolVersions rpcProtocolVersions = new RpcProtocolVersions(this, (a) null);
            q2<Version, Version.b, c> q2Var = this.f41797f;
            if (q2Var == null) {
                rpcProtocolVersions.maxRpcVersion_ = this.f41796e;
            } else {
                rpcProtocolVersions.maxRpcVersion_ = q2Var.b();
            }
            q2<Version, Version.b, c> q2Var2 = this.f41799h;
            if (q2Var2 == null) {
                rpcProtocolVersions.minRpcVersion_ = this.f41798g;
            } else {
                rpcProtocolVersions.minRpcVersion_ = q2Var2.b();
            }
            Q();
            return rpcProtocolVersions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RpcProtocolVersions getDefaultInstanceForType() {
            return RpcProtocolVersions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.alts.internal.RpcProtocolVersions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.alts.internal.RpcProtocolVersions.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.alts.internal.RpcProtocolVersions r3 = (io.grpc.alts.internal.RpcProtocolVersions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.alts.internal.RpcProtocolVersions r4 = (io.grpc.alts.internal.RpcProtocolVersions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.alts.internal.RpcProtocolVersions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.alts.internal.RpcProtocolVersions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RpcProtocolVersions) {
                return g0((RpcProtocolVersions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RpcProtocolVersions rpcProtocolVersions) {
            if (rpcProtocolVersions == RpcProtocolVersions.getDefaultInstance()) {
                return this;
            }
            if (rpcProtocolVersions.hasMaxRpcVersion()) {
                h0(rpcProtocolVersions.getMaxRpcVersion());
            }
            if (rpcProtocolVersions.hasMinRpcVersion()) {
                i0(rpcProtocolVersions.getMinRpcVersion());
            }
            z(((GeneratedMessageV3) rpcProtocolVersions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d0.f41851a;
        }

        public b h0(Version version) {
            q2<Version, Version.b, c> q2Var = this.f41797f;
            if (q2Var == null) {
                Version version2 = this.f41796e;
                if (version2 != null) {
                    this.f41796e = Version.newBuilder(version2).g0(version).I();
                } else {
                    this.f41796e = version;
                }
                R();
            } else {
                q2Var.e(version);
            }
            return this;
        }

        public b i0(Version version) {
            q2<Version, Version.b, c> q2Var = this.f41799h;
            if (q2Var == null) {
                Version version2 = this.f41798g;
                if (version2 != null) {
                    this.f41798g = Version.newBuilder(version2).g0(version).I();
                } else {
                    this.f41798g = version;
                }
                R();
            } else {
                q2Var.e(version);
            }
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

        public b l0(Version version) {
            q2<Version, Version.b, c> q2Var = this.f41797f;
            if (q2Var == null) {
                Objects.requireNonNull(version);
                this.f41796e = version;
                R();
            } else {
                q2Var.g(version);
            }
            return this;
        }

        public b m0(Version version) {
            q2<Version, Version.b, c> q2Var = this.f41799h;
            if (q2Var == null) {
                Objects.requireNonNull(version);
                this.f41798g = version;
                R();
            } else {
                q2Var.g(version);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
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

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* synthetic */ RpcProtocolVersions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RpcProtocolVersions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d0.f41851a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RpcProtocolVersions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RpcProtocolVersions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RpcProtocolVersions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RpcProtocolVersions)) {
            return super.equals(obj);
        }
        RpcProtocolVersions rpcProtocolVersions = (RpcProtocolVersions) obj;
        if (hasMaxRpcVersion() != rpcProtocolVersions.hasMaxRpcVersion()) {
            return false;
        }
        if ((!hasMaxRpcVersion() || getMaxRpcVersion().equals(rpcProtocolVersions.getMaxRpcVersion())) && hasMinRpcVersion() == rpcProtocolVersions.hasMinRpcVersion()) {
            return (!hasMinRpcVersion() || getMinRpcVersion().equals(rpcProtocolVersions.getMinRpcVersion())) && this.unknownFields.equals(rpcProtocolVersions.unknownFields);
        }
        return false;
    }

    public Version getMaxRpcVersion() {
        Version version = this.maxRpcVersion_;
        return version == null ? Version.getDefaultInstance() : version;
    }

    public c getMaxRpcVersionOrBuilder() {
        return getMaxRpcVersion();
    }

    public Version getMinRpcVersion() {
        Version version = this.minRpcVersion_;
        return version == null ? Version.getDefaultInstance() : version;
    }

    public c getMinRpcVersionOrBuilder() {
        return getMinRpcVersion();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RpcProtocolVersions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.maxRpcVersion_ != null ? 0 + CodedOutputStream.G(1, getMaxRpcVersion()) : 0;
        if (this.minRpcVersion_ != null) {
            G += CodedOutputStream.G(2, getMinRpcVersion());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMaxRpcVersion() {
        return this.maxRpcVersion_ != null;
    }

    public boolean hasMinRpcVersion() {
        return this.minRpcVersion_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMaxRpcVersion()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMaxRpcVersion().hashCode();
        }
        if (hasMinRpcVersion()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMinRpcVersion().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d0.f41852b.d(RpcProtocolVersions.class, b.class);
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
        return new RpcProtocolVersions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.maxRpcVersion_ != null) {
            codedOutputStream.L0(1, getMaxRpcVersion());
        }
        if (this.minRpcVersion_ != null) {
            codedOutputStream.L0(2, getMinRpcVersion());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RpcProtocolVersions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RpcProtocolVersions rpcProtocolVersions) {
        return DEFAULT_INSTANCE.toBuilder().g0(rpcProtocolVersions);
    }

    public static RpcProtocolVersions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RpcProtocolVersions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RpcProtocolVersions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RpcProtocolVersions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RpcProtocolVersions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RpcProtocolVersions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RpcProtocolVersions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RpcProtocolVersions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RpcProtocolVersions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RpcProtocolVersions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Version.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Version version = this.maxRpcVersion_;
                            builder = version != null ? version.toBuilder() : null;
                            Version version2 = (Version) pVar.B(Version.parser(), f0Var);
                            this.maxRpcVersion_ = version2;
                            if (builder != null) {
                                builder.g0(version2);
                                this.maxRpcVersion_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Version version3 = this.minRpcVersion_;
                            builder = version3 != null ? version3.toBuilder() : null;
                            Version version4 = (Version) pVar.B(Version.parser(), f0Var);
                            this.minRpcVersion_ = version4;
                            if (builder != null) {
                                builder.g0(version4);
                                this.minRpcVersion_ = builder.I();
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

    public static RpcProtocolVersions parseFrom(InputStream inputStream) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RpcProtocolVersions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RpcProtocolVersions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RpcProtocolVersions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RpcProtocolVersions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
