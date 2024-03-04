package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.c1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Admin extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a {
    public static final int ACCESS_LOG_FIELD_NUMBER = 5;
    public static final int ACCESS_LOG_PATH_FIELD_NUMBER = 1;
    public static final int ADDRESS_FIELD_NUMBER = 3;
    private static final Admin DEFAULT_INSTANCE = new Admin();
    private static final e2<Admin> PARSER = new a();
    public static final int PROFILE_PATH_FIELD_NUMBER = 2;
    public static final int SOCKET_OPTIONS_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object accessLogPath_;
    private List<AccessLog> accessLog_;
    private Address address_;
    private byte memoizedIsInitialized;
    private volatile Object profilePath_;
    private List<SocketOption> socketOptions_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Admin> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Admin m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Admin(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f47416e;

        /* renamed from: f  reason: collision with root package name */
        private List<AccessLog> f47417f;

        /* renamed from: g  reason: collision with root package name */
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> f47418g;

        /* renamed from: h  reason: collision with root package name */
        private Object f47419h;

        /* renamed from: i  reason: collision with root package name */
        private Object f47420i;

        /* renamed from: j  reason: collision with root package name */
        private Address f47421j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f47422k;

        /* renamed from: l  reason: collision with root package name */
        private List<SocketOption> f47423l;

        /* renamed from: m  reason: collision with root package name */
        private l2<SocketOption, SocketOption.c, c1> f47424m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47416e & 1) == 0) {
                this.f47417f = new ArrayList(this.f47417f);
                this.f47416e |= 1;
            }
        }

        private void b0() {
            if ((this.f47416e & 2) == 0) {
                this.f47423l = new ArrayList(this.f47423l);
                this.f47416e |= 2;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> d0() {
            if (this.f47418g == null) {
                this.f47418g = new l2<>(this.f47417f, (this.f47416e & 1) != 0, H(), O());
                this.f47417f = null;
            }
            return this.f47418g;
        }

        private l2<SocketOption, SocketOption.c, c1> g0() {
            if (this.f47424m == null) {
                this.f47424m = new l2<>(this.f47423l, (this.f47416e & 2) != 0, H(), O());
                this.f47423l = null;
            }
            return this.f47424m;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c.f47533j.d(Admin.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Admin build() {
            Admin I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Admin I() {
            Admin admin = new Admin(this, (a) null);
            int i9 = this.f47416e;
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> l2Var = this.f47418g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47417f = Collections.unmodifiableList(this.f47417f);
                    this.f47416e &= -2;
                }
                admin.accessLog_ = this.f47417f;
            } else {
                admin.accessLog_ = l2Var.e();
            }
            admin.accessLogPath_ = this.f47419h;
            admin.profilePath_ = this.f47420i;
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f47422k;
            if (q2Var == null) {
                admin.address_ = this.f47421j;
            } else {
                admin.address_ = q2Var.b();
            }
            l2<SocketOption, SocketOption.c, c1> l2Var2 = this.f47424m;
            if (l2Var2 == null) {
                if ((this.f47416e & 2) != 0) {
                    this.f47423l = Collections.unmodifiableList(this.f47423l);
                    this.f47416e &= -3;
                }
                admin.socketOptions_ = this.f47423l;
            } else {
                admin.socketOptions_ = l2Var2.e();
            }
            Q();
            return admin;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public Admin getDefaultInstanceForType() {
            return Admin.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c.f47532i;
        }

        public b i0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f47422k;
            if (q2Var == null) {
                Address address2 = this.f47421j;
                if (address2 != null) {
                    this.f47421j = Address.newBuilder(address2).h0(address).I();
                } else {
                    this.f47421j = address;
                }
                R();
            } else {
                q2Var.e(address);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Admin$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Admin) {
                return l0((Admin) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(Admin admin) {
            if (admin == Admin.getDefaultInstance()) {
                return this;
            }
            if (this.f47418g == null) {
                if (!admin.accessLog_.isEmpty()) {
                    if (this.f47417f.isEmpty()) {
                        this.f47417f = admin.accessLog_;
                        this.f47416e &= -2;
                    } else {
                        a0();
                        this.f47417f.addAll(admin.accessLog_);
                    }
                    R();
                }
            } else if (!admin.accessLog_.isEmpty()) {
                if (this.f47418g.k()) {
                    this.f47418g.f();
                    this.f47418g = null;
                    this.f47417f = admin.accessLog_;
                    this.f47416e &= -2;
                    this.f47418g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f47418g.b(admin.accessLog_);
                }
            }
            if (!admin.getAccessLogPath().isEmpty()) {
                this.f47419h = admin.accessLogPath_;
                R();
            }
            if (!admin.getProfilePath().isEmpty()) {
                this.f47420i = admin.profilePath_;
                R();
            }
            if (admin.hasAddress()) {
                i0(admin.getAddress());
            }
            if (this.f47424m == null) {
                if (!admin.socketOptions_.isEmpty()) {
                    if (this.f47423l.isEmpty()) {
                        this.f47423l = admin.socketOptions_;
                        this.f47416e &= -3;
                    } else {
                        b0();
                        this.f47423l.addAll(admin.socketOptions_);
                    }
                    R();
                }
            } else if (!admin.socketOptions_.isEmpty()) {
                if (this.f47424m.k()) {
                    this.f47424m.f();
                    this.f47424m = null;
                    this.f47423l = admin.socketOptions_;
                    this.f47416e &= -3;
                    this.f47424m = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f47424m.b(admin.socketOptions_);
                }
            }
            z(((GeneratedMessageV3) admin).unknownFields);
            R();
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
            this.f47417f = Collections.emptyList();
            this.f47419h = "";
            this.f47420i = "";
            this.f47423l = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47417f = Collections.emptyList();
            this.f47419h = "";
            this.f47420i = "";
            this.f47423l = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ Admin(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Admin getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c.f47532i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Admin parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Admin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Admin parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Admin> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Admin)) {
            return super.equals(obj);
        }
        Admin admin = (Admin) obj;
        if (getAccessLogList().equals(admin.getAccessLogList()) && getAccessLogPath().equals(admin.getAccessLogPath()) && getProfilePath().equals(admin.getProfilePath()) && hasAddress() == admin.hasAddress()) {
            return (!hasAddress() || getAddress().equals(admin.getAddress())) && getSocketOptionsList().equals(admin.getSocketOptionsList()) && this.unknownFields.equals(admin.unknownFields);
        }
        return false;
    }

    public AccessLog getAccessLog(int i9) {
        return this.accessLog_.get(i9);
    }

    public int getAccessLogCount() {
        return this.accessLog_.size();
    }

    public List<AccessLog> getAccessLogList() {
        return this.accessLog_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b getAccessLogOrBuilder(int i9) {
        return this.accessLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> getAccessLogOrBuilderList() {
        return this.accessLog_;
    }

    @Deprecated
    public String getAccessLogPath() {
        Object obj = this.accessLogPath_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.accessLogPath_ = stringUtf8;
        return stringUtf8;
    }

    @Deprecated
    public ByteString getAccessLogPathBytes() {
        Object obj = this.accessLogPath_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.accessLogPath_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Address getAddress() {
        Address address = this.address_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getAddressOrBuilder() {
        return getAddress();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Admin> getParserForType() {
        return PARSER;
    }

    public String getProfilePath() {
        Object obj = this.profilePath_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.profilePath_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getProfilePathBytes() {
        Object obj = this.profilePath_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.profilePath_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.accessLogPath_) ? GeneratedMessageV3.computeStringSize(1, this.accessLogPath_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.profilePath_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.profilePath_);
        }
        if (this.address_ != null) {
            computeStringSize += CodedOutputStream.G(3, getAddress());
        }
        for (int i10 = 0; i10 < this.socketOptions_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(4, this.socketOptions_.get(i10));
        }
        for (int i11 = 0; i11 < this.accessLog_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(5, this.accessLog_.get(i11));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketOption getSocketOptions(int i9) {
        return this.socketOptions_.get(i9);
    }

    public int getSocketOptionsCount() {
        return this.socketOptions_.size();
    }

    public List<SocketOption> getSocketOptionsList() {
        return this.socketOptions_;
    }

    public c1 getSocketOptionsOrBuilder(int i9) {
        return this.socketOptions_.get(i9);
    }

    public List<? extends c1> getSocketOptionsOrBuilderList() {
        return this.socketOptions_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAddress() {
        return this.address_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getAccessLogCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getAccessLogList().hashCode();
        }
        int hashCode2 = (((((((hashCode * 37) + 1) * 53) + getAccessLogPath().hashCode()) * 37) + 2) * 53) + getProfilePath().hashCode();
        if (hasAddress()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getAddress().hashCode();
        }
        if (getSocketOptionsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getSocketOptionsList().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c.f47533j.d(Admin.class, b.class);
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
        return new Admin();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.accessLogPath_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.accessLogPath_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.profilePath_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.profilePath_);
        }
        if (this.address_ != null) {
            codedOutputStream.L0(3, getAddress());
        }
        for (int i9 = 0; i9 < this.socketOptions_.size(); i9++) {
            codedOutputStream.L0(4, this.socketOptions_.get(i9));
        }
        for (int i10 = 0; i10 < this.accessLog_.size(); i10++) {
            codedOutputStream.L0(5, this.accessLog_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Admin(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Admin admin) {
        return DEFAULT_INSTANCE.toBuilder().l0(admin);
    }

    public static Admin parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Admin(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Admin parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Admin) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Admin parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Admin getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static Admin parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Admin() {
        this.memoizedIsInitialized = (byte) -1;
        this.accessLog_ = Collections.emptyList();
        this.accessLogPath_ = "";
        this.profilePath_ = "";
        this.socketOptions_ = Collections.emptyList();
    }

    public static Admin parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Admin parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Admin parseFrom(InputStream inputStream) throws IOException {
        return (Admin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Admin parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Admin) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Admin(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.accessLogPath_ = pVar.K();
                        } else if (L == 18) {
                            this.profilePath_ = pVar.K();
                        } else if (L == 26) {
                            Address address = this.address_;
                            Address.c builder = address != null ? address.toBuilder() : null;
                            Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                            this.address_ = address2;
                            if (builder != null) {
                                builder.h0(address2);
                                this.address_ = builder.I();
                            }
                        } else if (L == 34) {
                            if (!(z11 & true)) {
                                this.socketOptions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.socketOptions_.add((SocketOption) pVar.B(SocketOption.parser(), f0Var));
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.accessLog_ = new ArrayList();
                                z11 |= true;
                            }
                            this.accessLog_.add((AccessLog) pVar.B(AccessLog.parser(), f0Var));
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
                    this.socketOptions_ = Collections.unmodifiableList(this.socketOptions_);
                }
                if (z11 & true) {
                    this.accessLog_ = Collections.unmodifiableList(this.accessLog_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Admin parseFrom(p pVar) throws IOException {
        return (Admin) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Admin parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Admin) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
