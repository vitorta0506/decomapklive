package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.PrivateKeyProvider;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.n;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class TlsCertificate extends GeneratedMessageV3 implements i {
    public static final int CERTIFICATE_CHAIN_FIELD_NUMBER = 1;
    public static final int OCSP_STAPLE_FIELD_NUMBER = 4;
    public static final int PASSWORD_FIELD_NUMBER = 3;
    public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
    public static final int PRIVATE_KEY_PROVIDER_FIELD_NUMBER = 6;
    public static final int SIGNED_CERTIFICATE_TIMESTAMP_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private DataSource certificateChain_;
    private byte memoizedIsInitialized;
    private DataSource ocspStaple_;
    private DataSource password_;
    private PrivateKeyProvider privateKeyProvider_;
    private DataSource privateKey_;
    private List<DataSource> signedCertificateTimestamp_;
    private static final TlsCertificate DEFAULT_INSTANCE = new TlsCertificate();
    private static final e2<TlsCertificate> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<TlsCertificate> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TlsCertificate m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TlsCertificate(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f46211e;

        /* renamed from: f  reason: collision with root package name */
        private DataSource f46212f;

        /* renamed from: g  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46213g;

        /* renamed from: h  reason: collision with root package name */
        private DataSource f46214h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46215i;

        /* renamed from: j  reason: collision with root package name */
        private PrivateKeyProvider f46216j;

        /* renamed from: k  reason: collision with root package name */
        private q2<PrivateKeyProvider, PrivateKeyProvider.c, f> f46217k;

        /* renamed from: l  reason: collision with root package name */
        private DataSource f46218l;

        /* renamed from: m  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46219m;

        /* renamed from: n  reason: collision with root package name */
        private DataSource f46220n;

        /* renamed from: o  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f46221o;

        /* renamed from: p  reason: collision with root package name */
        private List<DataSource> f46222p;

        /* renamed from: q  reason: collision with root package name */
        private l2<DataSource, DataSource.c, n> f46223q;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46211e & 1) == 0) {
                this.f46222p = new ArrayList(this.f46222p);
                this.f46211e |= 1;
            }
        }

        private l2<DataSource, DataSource.c, n> d0() {
            if (this.f46223q == null) {
                this.f46223q = new l2<>(this.f46222p, (this.f46211e & 1) != 0, H(), O());
                this.f46222p = null;
            }
            return this.f46223q;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46243f.d(TlsCertificate.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TlsCertificate build() {
            TlsCertificate I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TlsCertificate I() {
            TlsCertificate tlsCertificate = new TlsCertificate(this, (a) null);
            q2<DataSource, DataSource.c, n> q2Var = this.f46213g;
            if (q2Var == null) {
                tlsCertificate.certificateChain_ = this.f46212f;
            } else {
                tlsCertificate.certificateChain_ = q2Var.b();
            }
            q2<DataSource, DataSource.c, n> q2Var2 = this.f46215i;
            if (q2Var2 == null) {
                tlsCertificate.privateKey_ = this.f46214h;
            } else {
                tlsCertificate.privateKey_ = q2Var2.b();
            }
            q2<PrivateKeyProvider, PrivateKeyProvider.c, f> q2Var3 = this.f46217k;
            if (q2Var3 == null) {
                tlsCertificate.privateKeyProvider_ = this.f46216j;
            } else {
                tlsCertificate.privateKeyProvider_ = q2Var3.b();
            }
            q2<DataSource, DataSource.c, n> q2Var4 = this.f46219m;
            if (q2Var4 == null) {
                tlsCertificate.password_ = this.f46218l;
            } else {
                tlsCertificate.password_ = q2Var4.b();
            }
            q2<DataSource, DataSource.c, n> q2Var5 = this.f46221o;
            if (q2Var5 == null) {
                tlsCertificate.ocspStaple_ = this.f46220n;
            } else {
                tlsCertificate.ocspStaple_ = q2Var5.b();
            }
            l2<DataSource, DataSource.c, n> l2Var = this.f46223q;
            if (l2Var == null) {
                if ((this.f46211e & 1) != 0) {
                    this.f46222p = Collections.unmodifiableList(this.f46222p);
                    this.f46211e &= -2;
                }
                tlsCertificate.signedCertificateTimestamp_ = this.f46222p;
            } else {
                tlsCertificate.signedCertificateTimestamp_ = l2Var.e();
            }
            Q();
            return tlsCertificate;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public TlsCertificate getDefaultInstanceForType() {
            return TlsCertificate.getDefaultInstance();
        }

        public b g0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46213g;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46212f;
                if (dataSource2 != null) {
                    this.f46212f = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46212f = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46242e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.TlsCertificate$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TlsCertificate) {
                return j0((TlsCertificate) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(TlsCertificate tlsCertificate) {
            if (tlsCertificate == TlsCertificate.getDefaultInstance()) {
                return this;
            }
            if (tlsCertificate.hasCertificateChain()) {
                g0(tlsCertificate.getCertificateChain());
            }
            if (tlsCertificate.hasPrivateKey()) {
                m0(tlsCertificate.getPrivateKey());
            }
            if (tlsCertificate.hasPrivateKeyProvider()) {
                n0(tlsCertificate.getPrivateKeyProvider());
            }
            if (tlsCertificate.hasPassword()) {
                l0(tlsCertificate.getPassword());
            }
            if (tlsCertificate.hasOcspStaple()) {
                k0(tlsCertificate.getOcspStaple());
            }
            if (this.f46223q == null) {
                if (!tlsCertificate.signedCertificateTimestamp_.isEmpty()) {
                    if (this.f46222p.isEmpty()) {
                        this.f46222p = tlsCertificate.signedCertificateTimestamp_;
                        this.f46211e &= -2;
                    } else {
                        a0();
                        this.f46222p.addAll(tlsCertificate.signedCertificateTimestamp_);
                    }
                    R();
                }
            } else if (!tlsCertificate.signedCertificateTimestamp_.isEmpty()) {
                if (this.f46223q.k()) {
                    this.f46223q.f();
                    this.f46223q = null;
                    this.f46222p = tlsCertificate.signedCertificateTimestamp_;
                    this.f46211e &= -2;
                    this.f46223q = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46223q.b(tlsCertificate.signedCertificateTimestamp_);
                }
            }
            z(((GeneratedMessageV3) tlsCertificate).unknownFields);
            R();
            return this;
        }

        public b k0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46221o;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46220n;
                if (dataSource2 != null) {
                    this.f46220n = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46220n = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        public b l0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46219m;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46218l;
                if (dataSource2 != null) {
                    this.f46218l = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46218l = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        public b m0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f46215i;
            if (q2Var == null) {
                DataSource dataSource2 = this.f46214h;
                if (dataSource2 != null) {
                    this.f46214h = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f46214h = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        public b n0(PrivateKeyProvider privateKeyProvider) {
            q2<PrivateKeyProvider, PrivateKeyProvider.c, f> q2Var = this.f46217k;
            if (q2Var == null) {
                PrivateKeyProvider privateKeyProvider2 = this.f46216j;
                if (privateKeyProvider2 != null) {
                    this.f46216j = PrivateKeyProvider.newBuilder(privateKeyProvider2).h0(privateKeyProvider).I();
                } else {
                    this.f46216j = privateKeyProvider;
                }
                R();
            } else {
                q2Var.e(privateKeyProvider);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46222p = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46222p = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ TlsCertificate(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TlsCertificate getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46242e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TlsCertificate parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TlsCertificate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TlsCertificate> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TlsCertificate)) {
            return super.equals(obj);
        }
        TlsCertificate tlsCertificate = (TlsCertificate) obj;
        if (hasCertificateChain() != tlsCertificate.hasCertificateChain()) {
            return false;
        }
        if ((!hasCertificateChain() || getCertificateChain().equals(tlsCertificate.getCertificateChain())) && hasPrivateKey() == tlsCertificate.hasPrivateKey()) {
            if ((!hasPrivateKey() || getPrivateKey().equals(tlsCertificate.getPrivateKey())) && hasPrivateKeyProvider() == tlsCertificate.hasPrivateKeyProvider()) {
                if ((!hasPrivateKeyProvider() || getPrivateKeyProvider().equals(tlsCertificate.getPrivateKeyProvider())) && hasPassword() == tlsCertificate.hasPassword()) {
                    if ((!hasPassword() || getPassword().equals(tlsCertificate.getPassword())) && hasOcspStaple() == tlsCertificate.hasOcspStaple()) {
                        return (!hasOcspStaple() || getOcspStaple().equals(tlsCertificate.getOcspStaple())) && getSignedCertificateTimestampList().equals(tlsCertificate.getSignedCertificateTimestampList()) && this.unknownFields.equals(tlsCertificate.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public DataSource getCertificateChain() {
        DataSource dataSource = this.certificateChain_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getCertificateChainOrBuilder() {
        return getCertificateChain();
    }

    public DataSource getOcspStaple() {
        DataSource dataSource = this.ocspStaple_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getOcspStapleOrBuilder() {
        return getOcspStaple();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TlsCertificate> getParserForType() {
        return PARSER;
    }

    public DataSource getPassword() {
        DataSource dataSource = this.password_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getPasswordOrBuilder() {
        return getPassword();
    }

    public DataSource getPrivateKey() {
        DataSource dataSource = this.privateKey_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public n getPrivateKeyOrBuilder() {
        return getPrivateKey();
    }

    public PrivateKeyProvider getPrivateKeyProvider() {
        PrivateKeyProvider privateKeyProvider = this.privateKeyProvider_;
        return privateKeyProvider == null ? PrivateKeyProvider.getDefaultInstance() : privateKeyProvider;
    }

    public f getPrivateKeyProviderOrBuilder() {
        return getPrivateKeyProvider();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.certificateChain_ != null ? CodedOutputStream.G(1, getCertificateChain()) + 0 : 0;
        if (this.privateKey_ != null) {
            G += CodedOutputStream.G(2, getPrivateKey());
        }
        if (this.password_ != null) {
            G += CodedOutputStream.G(3, getPassword());
        }
        if (this.ocspStaple_ != null) {
            G += CodedOutputStream.G(4, getOcspStaple());
        }
        for (int i10 = 0; i10 < this.signedCertificateTimestamp_.size(); i10++) {
            G += CodedOutputStream.G(5, this.signedCertificateTimestamp_.get(i10));
        }
        if (this.privateKeyProvider_ != null) {
            G += CodedOutputStream.G(6, getPrivateKeyProvider());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public DataSource getSignedCertificateTimestamp(int i9) {
        return this.signedCertificateTimestamp_.get(i9);
    }

    public int getSignedCertificateTimestampCount() {
        return this.signedCertificateTimestamp_.size();
    }

    public List<DataSource> getSignedCertificateTimestampList() {
        return this.signedCertificateTimestamp_;
    }

    public n getSignedCertificateTimestampOrBuilder(int i9) {
        return this.signedCertificateTimestamp_.get(i9);
    }

    public List<? extends n> getSignedCertificateTimestampOrBuilderList() {
        return this.signedCertificateTimestamp_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCertificateChain() {
        return this.certificateChain_ != null;
    }

    public boolean hasOcspStaple() {
        return this.ocspStaple_ != null;
    }

    public boolean hasPassword() {
        return this.password_ != null;
    }

    public boolean hasPrivateKey() {
        return this.privateKey_ != null;
    }

    public boolean hasPrivateKeyProvider() {
        return this.privateKeyProvider_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasCertificateChain()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getCertificateChain().hashCode();
        }
        if (hasPrivateKey()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPrivateKey().hashCode();
        }
        if (hasPrivateKeyProvider()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getPrivateKeyProvider().hashCode();
        }
        if (hasPassword()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPassword().hashCode();
        }
        if (hasOcspStaple()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getOcspStaple().hashCode();
        }
        if (getSignedCertificateTimestampCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSignedCertificateTimestampList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.b.f46243f.d(TlsCertificate.class, b.class);
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
        return new TlsCertificate();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.certificateChain_ != null) {
            codedOutputStream.L0(1, getCertificateChain());
        }
        if (this.privateKey_ != null) {
            codedOutputStream.L0(2, getPrivateKey());
        }
        if (this.password_ != null) {
            codedOutputStream.L0(3, getPassword());
        }
        if (this.ocspStaple_ != null) {
            codedOutputStream.L0(4, getOcspStaple());
        }
        for (int i9 = 0; i9 < this.signedCertificateTimestamp_.size(); i9++) {
            codedOutputStream.L0(5, this.signedCertificateTimestamp_.get(i9));
        }
        if (this.privateKeyProvider_ != null) {
            codedOutputStream.L0(6, getPrivateKeyProvider());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TlsCertificate(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TlsCertificate tlsCertificate) {
        return DEFAULT_INSTANCE.toBuilder().j0(tlsCertificate);
    }

    public static TlsCertificate parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TlsCertificate(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TlsCertificate parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TlsCertificate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TlsCertificate getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static TlsCertificate parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TlsCertificate() {
        this.memoizedIsInitialized = (byte) -1;
        this.signedCertificateTimestamp_ = Collections.emptyList();
    }

    public static TlsCertificate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TlsCertificate parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TlsCertificate parseFrom(InputStream inputStream) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private TlsCertificate(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            DataSource dataSource = this.certificateChain_;
                            DataSource.c builder = dataSource != null ? dataSource.toBuilder() : null;
                            DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.certificateChain_ = dataSource2;
                            if (builder != null) {
                                builder.g0(dataSource2);
                                this.certificateChain_ = builder.I();
                            }
                        } else if (L == 18) {
                            DataSource dataSource3 = this.privateKey_;
                            DataSource.c builder2 = dataSource3 != null ? dataSource3.toBuilder() : null;
                            DataSource dataSource4 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.privateKey_ = dataSource4;
                            if (builder2 != null) {
                                builder2.g0(dataSource4);
                                this.privateKey_ = builder2.I();
                            }
                        } else if (L == 26) {
                            DataSource dataSource5 = this.password_;
                            DataSource.c builder3 = dataSource5 != null ? dataSource5.toBuilder() : null;
                            DataSource dataSource6 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.password_ = dataSource6;
                            if (builder3 != null) {
                                builder3.g0(dataSource6);
                                this.password_ = builder3.I();
                            }
                        } else if (L == 34) {
                            DataSource dataSource7 = this.ocspStaple_;
                            DataSource.c builder4 = dataSource7 != null ? dataSource7.toBuilder() : null;
                            DataSource dataSource8 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.ocspStaple_ = dataSource8;
                            if (builder4 != null) {
                                builder4.g0(dataSource8);
                                this.ocspStaple_ = builder4.I();
                            }
                        } else if (L == 42) {
                            if (!(z11 & true)) {
                                this.signedCertificateTimestamp_ = new ArrayList();
                                z11 |= true;
                            }
                            this.signedCertificateTimestamp_.add((DataSource) pVar.B(DataSource.parser(), f0Var));
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            PrivateKeyProvider privateKeyProvider = this.privateKeyProvider_;
                            PrivateKeyProvider.c builder5 = privateKeyProvider != null ? privateKeyProvider.toBuilder() : null;
                            PrivateKeyProvider privateKeyProvider2 = (PrivateKeyProvider) pVar.B(PrivateKeyProvider.parser(), f0Var);
                            this.privateKeyProvider_ = privateKeyProvider2;
                            if (builder5 != null) {
                                builder5.h0(privateKeyProvider2);
                                this.privateKeyProvider_ = builder5.I();
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
                    this.signedCertificateTimestamp_ = Collections.unmodifiableList(this.signedCertificateTimestamp_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static TlsCertificate parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TlsCertificate parseFrom(p pVar) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TlsCertificate parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TlsCertificate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
