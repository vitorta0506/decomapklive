package io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.z2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SecretsConfigDump extends GeneratedMessageV3 implements r1 {
    public static final int DYNAMIC_ACTIVE_SECRETS_FIELD_NUMBER = 2;
    public static final int DYNAMIC_WARMING_SECRETS_FIELD_NUMBER = 3;
    public static final int STATIC_SECRETS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<DynamicSecret> dynamicActiveSecrets_;
    private List<DynamicSecret> dynamicWarmingSecrets_;
    private byte memoizedIsInitialized;
    private List<StaticSecret> staticSecrets_;
    private static final SecretsConfigDump DEFAULT_INSTANCE = new SecretsConfigDump();
    private static final e2<SecretsConfigDump> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class DynamicSecret extends GeneratedMessageV3 implements c {
        public static final int CLIENT_STATUS_FIELD_NUMBER = 6;
        public static final int ERROR_STATE_FIELD_NUMBER = 5;
        public static final int LAST_UPDATED_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SECRET_FIELD_NUMBER = 4;
        public static final int VERSION_INFO_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int clientStatus_;
        private UpdateFailureState errorState_;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any secret_;
        private volatile Object versionInfo_;
        private static final DynamicSecret DEFAULT_INSTANCE = new DynamicSecret();
        private static final e2<DynamicSecret> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DynamicSecret> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DynamicSecret m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DynamicSecret(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f45869e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45870f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f45871g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45872h;

            /* renamed from: i  reason: collision with root package name */
            private Any f45873i;

            /* renamed from: j  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45874j;

            /* renamed from: k  reason: collision with root package name */
            private UpdateFailureState f45875k;

            /* renamed from: l  reason: collision with root package name */
            private q2<UpdateFailureState, UpdateFailureState.b, g> f45876l;

            /* renamed from: m  reason: collision with root package name */
            private int f45877m;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.J.d(DynamicSecret.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DynamicSecret build() {
                DynamicSecret I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DynamicSecret I() {
                DynamicSecret dynamicSecret = new DynamicSecret(this, (a) null);
                dynamicSecret.name_ = this.f45869e;
                dynamicSecret.versionInfo_ = this.f45870f;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45872h;
                if (q2Var == null) {
                    dynamicSecret.lastUpdated_ = this.f45871g;
                } else {
                    dynamicSecret.lastUpdated_ = q2Var.b();
                }
                q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f45874j;
                if (q2Var2 == null) {
                    dynamicSecret.secret_ = this.f45873i;
                } else {
                    dynamicSecret.secret_ = q2Var2.b();
                }
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var3 = this.f45876l;
                if (q2Var3 == null) {
                    dynamicSecret.errorState_ = this.f45875k;
                } else {
                    dynamicSecret.errorState_ = q2Var3.b();
                }
                dynamicSecret.clientStatus_ = this.f45877m;
                Q();
                return dynamicSecret;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DynamicSecret getDefaultInstanceForType() {
                return DynamicSecret.getDefaultInstance();
            }

            public b d0(UpdateFailureState updateFailureState) {
                q2<UpdateFailureState, UpdateFailureState.b, g> q2Var = this.f45876l;
                if (q2Var == null) {
                    UpdateFailureState updateFailureState2 = this.f45875k;
                    if (updateFailureState2 != null) {
                        this.f45875k = UpdateFailureState.newBuilder(updateFailureState2).h0(updateFailureState).I();
                    } else {
                        this.f45875k = updateFailureState;
                    }
                    R();
                } else {
                    q2Var.e(updateFailureState);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.DynamicSecret.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.DynamicSecret.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$DynamicSecret r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.DynamicSecret) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$DynamicSecret r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.DynamicSecret) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.DynamicSecret.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$DynamicSecret$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DynamicSecret) {
                    return h0((DynamicSecret) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.I;
            }

            public b h0(DynamicSecret dynamicSecret) {
                if (dynamicSecret == DynamicSecret.getDefaultInstance()) {
                    return this;
                }
                if (!dynamicSecret.getName().isEmpty()) {
                    this.f45869e = dynamicSecret.name_;
                    R();
                }
                if (!dynamicSecret.getVersionInfo().isEmpty()) {
                    this.f45870f = dynamicSecret.versionInfo_;
                    R();
                }
                if (dynamicSecret.hasLastUpdated()) {
                    i0(dynamicSecret.getLastUpdated());
                }
                if (dynamicSecret.hasSecret()) {
                    j0(dynamicSecret.getSecret());
                }
                if (dynamicSecret.hasErrorState()) {
                    d0(dynamicSecret.getErrorState());
                }
                if (dynamicSecret.clientStatus_ != 0) {
                    l0(dynamicSecret.getClientStatusValue());
                }
                z(((GeneratedMessageV3) dynamicSecret).unknownFields);
                R();
                return this;
            }

            public b i0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45872h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45871g;
                    if (timestamp2 != null) {
                        this.f45871g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45871g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b j0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45874j;
                if (q2Var == null) {
                    Any any2 = this.f45873i;
                    if (any2 != null) {
                        this.f45873i = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45873i = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b l0(int i9) {
                this.f45877m = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f45869e = "";
                this.f45870f = "";
                this.f45877m = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45869e = "";
                this.f45870f = "";
                this.f45877m = 0;
                b0();
            }
        }

        /* synthetic */ DynamicSecret(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DynamicSecret getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.I;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DynamicSecret parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DynamicSecret parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DynamicSecret> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DynamicSecret)) {
                return super.equals(obj);
            }
            DynamicSecret dynamicSecret = (DynamicSecret) obj;
            if (getName().equals(dynamicSecret.getName()) && getVersionInfo().equals(dynamicSecret.getVersionInfo()) && hasLastUpdated() == dynamicSecret.hasLastUpdated()) {
                if ((!hasLastUpdated() || getLastUpdated().equals(dynamicSecret.getLastUpdated())) && hasSecret() == dynamicSecret.hasSecret()) {
                    if ((!hasSecret() || getSecret().equals(dynamicSecret.getSecret())) && hasErrorState() == dynamicSecret.hasErrorState()) {
                        return (!hasErrorState() || getErrorState().equals(dynamicSecret.getErrorState())) && this.clientStatus_ == dynamicSecret.clientStatus_ && this.unknownFields.equals(dynamicSecret.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public ClientResourceStatus getClientStatus() {
            ClientResourceStatus valueOf = ClientResourceStatus.valueOf(this.clientStatus_);
            return valueOf == null ? ClientResourceStatus.UNRECOGNIZED : valueOf;
        }

        public int getClientStatusValue() {
            return this.clientStatus_;
        }

        public UpdateFailureState getErrorState() {
            UpdateFailureState updateFailureState = this.errorState_;
            return updateFailureState == null ? UpdateFailureState.getDefaultInstance() : updateFailureState;
        }

        public g getErrorStateOrBuilder() {
            return getErrorState();
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
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
        public e2<DynamicSecret> getParserForType() {
            return PARSER;
        }

        public Any getSecret() {
            Any any = this.secret_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getSecretOrBuilder() {
            return getSecret();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.versionInfo_);
            }
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(3, getLastUpdated());
            }
            if (this.secret_ != null) {
                computeStringSize += CodedOutputStream.G(4, getSecret());
            }
            if (this.errorState_ != null) {
                computeStringSize += CodedOutputStream.G(5, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.l(6, this.clientStatus_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getVersionInfo() {
            Object obj = this.versionInfo_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.versionInfo_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getVersionInfoBytes() {
            Object obj = this.versionInfo_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.versionInfo_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean hasErrorState() {
            return this.errorState_ != null;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasSecret() {
            return this.secret_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getVersionInfo().hashCode();
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLastUpdated().hashCode();
            }
            if (hasSecret()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getSecret().hashCode();
            }
            if (hasErrorState()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getErrorState().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 6) * 53) + this.clientStatus_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.J.d(DynamicSecret.class, b.class);
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
            return new DynamicSecret();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.versionInfo_);
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(3, getLastUpdated());
            }
            if (this.secret_ != null) {
                codedOutputStream.L0(4, getSecret());
            }
            if (this.errorState_ != null) {
                codedOutputStream.L0(5, getErrorState());
            }
            if (this.clientStatus_ != ClientResourceStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(6, this.clientStatus_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DynamicSecret(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DynamicSecret dynamicSecret) {
            return DEFAULT_INSTANCE.toBuilder().h0(dynamicSecret);
        }

        public static DynamicSecret parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DynamicSecret(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DynamicSecret parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DynamicSecret parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DynamicSecret getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static DynamicSecret parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DynamicSecret() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.versionInfo_ = "";
            this.clientStatus_ = 0;
        }

        public static DynamicSecret parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DynamicSecret parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DynamicSecret parseFrom(InputStream inputStream) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DynamicSecret parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private DynamicSecret(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                } else if (L != 18) {
                                    if (L == 26) {
                                        Timestamp timestamp = this.lastUpdated_;
                                        Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                        this.lastUpdated_ = timestamp2;
                                        if (builder != null) {
                                            builder.g0(timestamp2);
                                            this.lastUpdated_ = builder.I();
                                        }
                                    } else if (L == 34) {
                                        Any any = this.secret_;
                                        Any.b builder2 = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.secret_ = any2;
                                        if (builder2 != null) {
                                            builder2.d0(any2);
                                            this.secret_ = builder2.I();
                                        }
                                    } else if (L == 42) {
                                        UpdateFailureState updateFailureState = this.errorState_;
                                        UpdateFailureState.b builder3 = updateFailureState != null ? updateFailureState.toBuilder() : null;
                                        UpdateFailureState updateFailureState2 = (UpdateFailureState) pVar.B(UpdateFailureState.parser(), f0Var);
                                        this.errorState_ = updateFailureState2;
                                        if (builder3 != null) {
                                            builder3.h0(updateFailureState2);
                                            this.errorState_ = builder3.I();
                                        }
                                    } else if (L != 48) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.clientStatus_ = pVar.u();
                                    }
                                } else {
                                    this.versionInfo_ = pVar.K();
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

        public static DynamicSecret parseFrom(p pVar) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DynamicSecret parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DynamicSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class StaticSecret extends GeneratedMessageV3 implements d {
        public static final int LAST_UPDATED_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SECRET_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private Timestamp lastUpdated_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any secret_;
        private static final StaticSecret DEFAULT_INSTANCE = new StaticSecret();
        private static final e2<StaticSecret> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<StaticSecret> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StaticSecret m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StaticSecret(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f45878e;

            /* renamed from: f  reason: collision with root package name */
            private Timestamp f45879f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f45880g;

            /* renamed from: h  reason: collision with root package name */
            private Any f45881h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45882i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.L.d(StaticSecret.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StaticSecret build() {
                StaticSecret I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StaticSecret I() {
                StaticSecret staticSecret = new StaticSecret(this, (a) null);
                staticSecret.name_ = this.f45878e;
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45880g;
                if (q2Var == null) {
                    staticSecret.lastUpdated_ = this.f45879f;
                } else {
                    staticSecret.lastUpdated_ = q2Var.b();
                }
                q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f45882i;
                if (q2Var2 == null) {
                    staticSecret.secret_ = this.f45881h;
                } else {
                    staticSecret.secret_ = q2Var2.b();
                }
                Q();
                return staticSecret;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StaticSecret getDefaultInstanceForType() {
                return StaticSecret.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.StaticSecret.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.StaticSecret.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$StaticSecret r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.StaticSecret) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$StaticSecret r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.StaticSecret) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.StaticSecret.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$StaticSecret$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StaticSecret) {
                    return g0((StaticSecret) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(StaticSecret staticSecret) {
                if (staticSecret == StaticSecret.getDefaultInstance()) {
                    return this;
                }
                if (!staticSecret.getName().isEmpty()) {
                    this.f45878e = staticSecret.name_;
                    R();
                }
                if (staticSecret.hasLastUpdated()) {
                    h0(staticSecret.getLastUpdated());
                }
                if (staticSecret.hasSecret()) {
                    i0(staticSecret.getSecret());
                }
                z(((GeneratedMessageV3) staticSecret).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.K;
            }

            public b h0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f45880g;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f45879f;
                    if (timestamp2 != null) {
                        this.f45879f = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f45879f = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45882i;
                if (q2Var == null) {
                    Any any2 = this.f45881h;
                    if (any2 != null) {
                        this.f45881h = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45881h = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45878e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45878e = "";
                b0();
            }
        }

        /* synthetic */ StaticSecret(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StaticSecret getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.K;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StaticSecret parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StaticSecret parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StaticSecret> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StaticSecret)) {
                return super.equals(obj);
            }
            StaticSecret staticSecret = (StaticSecret) obj;
            if (getName().equals(staticSecret.getName()) && hasLastUpdated() == staticSecret.hasLastUpdated()) {
                if ((!hasLastUpdated() || getLastUpdated().equals(staticSecret.getLastUpdated())) && hasSecret() == staticSecret.hasSecret()) {
                    return (!hasSecret() || getSecret().equals(staticSecret.getSecret())) && this.unknownFields.equals(staticSecret.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Timestamp getLastUpdated() {
            Timestamp timestamp = this.lastUpdated_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getLastUpdatedOrBuilder() {
            return getLastUpdated();
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
        public e2<StaticSecret> getParserForType() {
            return PARSER;
        }

        public Any getSecret() {
            Any any = this.secret_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getSecretOrBuilder() {
            return getSecret();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.lastUpdated_ != null) {
                computeStringSize += CodedOutputStream.G(2, getLastUpdated());
            }
            if (this.secret_ != null) {
                computeStringSize += CodedOutputStream.G(3, getSecret());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasLastUpdated() {
            return this.lastUpdated_ != null;
        }

        public boolean hasSecret() {
            return this.secret_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (hasLastUpdated()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getLastUpdated().hashCode();
            }
            if (hasSecret()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getSecret().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.L.d(StaticSecret.class, b.class);
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
            return new StaticSecret();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.lastUpdated_ != null) {
                codedOutputStream.L0(2, getLastUpdated());
            }
            if (this.secret_ != null) {
                codedOutputStream.L0(3, getSecret());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StaticSecret(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StaticSecret staticSecret) {
            return DEFAULT_INSTANCE.toBuilder().g0(staticSecret);
        }

        public static StaticSecret parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StaticSecret(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StaticSecret parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticSecret parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StaticSecret getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static StaticSecret parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StaticSecret() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static StaticSecret parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StaticSecret parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StaticSecret parseFrom(InputStream inputStream) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private StaticSecret(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        Timestamp timestamp = this.lastUpdated_;
                                        Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                        this.lastUpdated_ = timestamp2;
                                        if (builder != null) {
                                            builder.g0(timestamp2);
                                            this.lastUpdated_ = builder.I();
                                        }
                                    } else if (L != 26) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        Any any = this.secret_;
                                        Any.b builder2 = any != null ? any.toBuilder() : null;
                                        Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                        this.secret_ = any2;
                                        if (builder2 != null) {
                                            builder2.d0(any2);
                                            this.secret_ = builder2.I();
                                        }
                                    }
                                } else {
                                    this.name_ = pVar.K();
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

        public static StaticSecret parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StaticSecret parseFrom(p pVar) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StaticSecret parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StaticSecret) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<SecretsConfigDump> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SecretsConfigDump m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SecretsConfigDump(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f45883e;

        /* renamed from: f  reason: collision with root package name */
        private List<StaticSecret> f45884f;

        /* renamed from: g  reason: collision with root package name */
        private l2<StaticSecret, StaticSecret.b, d> f45885g;

        /* renamed from: h  reason: collision with root package name */
        private List<DynamicSecret> f45886h;

        /* renamed from: i  reason: collision with root package name */
        private l2<DynamicSecret, DynamicSecret.b, c> f45887i;

        /* renamed from: j  reason: collision with root package name */
        private List<DynamicSecret> f45888j;

        /* renamed from: k  reason: collision with root package name */
        private l2<DynamicSecret, DynamicSecret.b, c> f45889k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45883e & 2) == 0) {
                this.f45886h = new ArrayList(this.f45886h);
                this.f45883e |= 2;
            }
        }

        private void b0() {
            if ((this.f45883e & 4) == 0) {
                this.f45888j = new ArrayList(this.f45888j);
                this.f45883e |= 4;
            }
        }

        private void d0() {
            if ((this.f45883e & 1) == 0) {
                this.f45884f = new ArrayList(this.f45884f);
                this.f45883e |= 1;
            }
        }

        private l2<DynamicSecret, DynamicSecret.b, c> g0() {
            if (this.f45887i == null) {
                this.f45887i = new l2<>(this.f45886h, (this.f45883e & 2) != 0, H(), O());
                this.f45886h = null;
            }
            return this.f45887i;
        }

        private l2<DynamicSecret, DynamicSecret.b, c> h0() {
            if (this.f45889k == null) {
                this.f45889k = new l2<>(this.f45888j, (this.f45883e & 4) != 0, H(), O());
                this.f45888j = null;
            }
            return this.f45889k;
        }

        private l2<StaticSecret, StaticSecret.b, d> i0() {
            if (this.f45885g == null) {
                this.f45885g = new l2<>(this.f45884f, (this.f45883e & 1) != 0, H(), O());
                this.f45884f = null;
            }
            return this.f45885g;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                g0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.H.d(SecretsConfigDump.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SecretsConfigDump build() {
            SecretsConfigDump I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SecretsConfigDump I() {
            SecretsConfigDump secretsConfigDump = new SecretsConfigDump(this, (a) null);
            int i9 = this.f45883e;
            l2<StaticSecret, StaticSecret.b, d> l2Var = this.f45885g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f45884f = Collections.unmodifiableList(this.f45884f);
                    this.f45883e &= -2;
                }
                secretsConfigDump.staticSecrets_ = this.f45884f;
            } else {
                secretsConfigDump.staticSecrets_ = l2Var.e();
            }
            l2<DynamicSecret, DynamicSecret.b, c> l2Var2 = this.f45887i;
            if (l2Var2 == null) {
                if ((this.f45883e & 2) != 0) {
                    this.f45886h = Collections.unmodifiableList(this.f45886h);
                    this.f45883e &= -3;
                }
                secretsConfigDump.dynamicActiveSecrets_ = this.f45886h;
            } else {
                secretsConfigDump.dynamicActiveSecrets_ = l2Var2.e();
            }
            l2<DynamicSecret, DynamicSecret.b, c> l2Var3 = this.f45889k;
            if (l2Var3 == null) {
                if ((this.f45883e & 4) != 0) {
                    this.f45888j = Collections.unmodifiableList(this.f45888j);
                    this.f45883e &= -5;
                }
                secretsConfigDump.dynamicWarmingSecrets_ = this.f45888j;
            } else {
                secretsConfigDump.dynamicWarmingSecrets_ = l2Var3.e();
            }
            Q();
            return secretsConfigDump;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public SecretsConfigDump getDefaultInstanceForType() {
            return SecretsConfigDump.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.G;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.access$3700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.SecretsConfigDump$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SecretsConfigDump) {
                return m0((SecretsConfigDump) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b m0(SecretsConfigDump secretsConfigDump) {
            if (secretsConfigDump == SecretsConfigDump.getDefaultInstance()) {
                return this;
            }
            if (this.f45885g == null) {
                if (!secretsConfigDump.staticSecrets_.isEmpty()) {
                    if (this.f45884f.isEmpty()) {
                        this.f45884f = secretsConfigDump.staticSecrets_;
                        this.f45883e &= -2;
                    } else {
                        d0();
                        this.f45884f.addAll(secretsConfigDump.staticSecrets_);
                    }
                    R();
                }
            } else if (!secretsConfigDump.staticSecrets_.isEmpty()) {
                if (this.f45885g.k()) {
                    this.f45885g.f();
                    this.f45885g = null;
                    this.f45884f = secretsConfigDump.staticSecrets_;
                    this.f45883e &= -2;
                    this.f45885g = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f45885g.b(secretsConfigDump.staticSecrets_);
                }
            }
            if (this.f45887i == null) {
                if (!secretsConfigDump.dynamicActiveSecrets_.isEmpty()) {
                    if (this.f45886h.isEmpty()) {
                        this.f45886h = secretsConfigDump.dynamicActiveSecrets_;
                        this.f45883e &= -3;
                    } else {
                        a0();
                        this.f45886h.addAll(secretsConfigDump.dynamicActiveSecrets_);
                    }
                    R();
                }
            } else if (!secretsConfigDump.dynamicActiveSecrets_.isEmpty()) {
                if (this.f45887i.k()) {
                    this.f45887i.f();
                    this.f45887i = null;
                    this.f45886h = secretsConfigDump.dynamicActiveSecrets_;
                    this.f45883e &= -3;
                    this.f45887i = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f45887i.b(secretsConfigDump.dynamicActiveSecrets_);
                }
            }
            if (this.f45889k == null) {
                if (!secretsConfigDump.dynamicWarmingSecrets_.isEmpty()) {
                    if (this.f45888j.isEmpty()) {
                        this.f45888j = secretsConfigDump.dynamicWarmingSecrets_;
                        this.f45883e &= -5;
                    } else {
                        b0();
                        this.f45888j.addAll(secretsConfigDump.dynamicWarmingSecrets_);
                    }
                    R();
                }
            } else if (!secretsConfigDump.dynamicWarmingSecrets_.isEmpty()) {
                if (this.f45889k.k()) {
                    this.f45889k.f();
                    this.f45889k = null;
                    this.f45888j = secretsConfigDump.dynamicWarmingSecrets_;
                    this.f45883e &= -5;
                    this.f45889k = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f45889k.b(secretsConfigDump.dynamicWarmingSecrets_);
                }
            }
            z(((GeneratedMessageV3) secretsConfigDump).unknownFields);
            R();
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
            this.f45884f = Collections.emptyList();
            this.f45886h = Collections.emptyList();
            this.f45888j = Collections.emptyList();
            j0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45884f = Collections.emptyList();
            this.f45886h = Collections.emptyList();
            this.f45888j = Collections.emptyList();
            j0();
        }
    }

    /* loaded from: classes5.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ SecretsConfigDump(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SecretsConfigDump getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.G;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SecretsConfigDump parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SecretsConfigDump parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SecretsConfigDump> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecretsConfigDump)) {
            return super.equals(obj);
        }
        SecretsConfigDump secretsConfigDump = (SecretsConfigDump) obj;
        return getStaticSecretsList().equals(secretsConfigDump.getStaticSecretsList()) && getDynamicActiveSecretsList().equals(secretsConfigDump.getDynamicActiveSecretsList()) && getDynamicWarmingSecretsList().equals(secretsConfigDump.getDynamicWarmingSecretsList()) && this.unknownFields.equals(secretsConfigDump.unknownFields);
    }

    public DynamicSecret getDynamicActiveSecrets(int i9) {
        return this.dynamicActiveSecrets_.get(i9);
    }

    public int getDynamicActiveSecretsCount() {
        return this.dynamicActiveSecrets_.size();
    }

    public List<DynamicSecret> getDynamicActiveSecretsList() {
        return this.dynamicActiveSecrets_;
    }

    public c getDynamicActiveSecretsOrBuilder(int i9) {
        return this.dynamicActiveSecrets_.get(i9);
    }

    public List<? extends c> getDynamicActiveSecretsOrBuilderList() {
        return this.dynamicActiveSecrets_;
    }

    public DynamicSecret getDynamicWarmingSecrets(int i9) {
        return this.dynamicWarmingSecrets_.get(i9);
    }

    public int getDynamicWarmingSecretsCount() {
        return this.dynamicWarmingSecrets_.size();
    }

    public List<DynamicSecret> getDynamicWarmingSecretsList() {
        return this.dynamicWarmingSecrets_;
    }

    public c getDynamicWarmingSecretsOrBuilder(int i9) {
        return this.dynamicWarmingSecrets_.get(i9);
    }

    public List<? extends c> getDynamicWarmingSecretsOrBuilderList() {
        return this.dynamicWarmingSecrets_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SecretsConfigDump> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.staticSecrets_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.staticSecrets_.get(i11));
        }
        for (int i12 = 0; i12 < this.dynamicActiveSecrets_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.dynamicActiveSecrets_.get(i12));
        }
        for (int i13 = 0; i13 < this.dynamicWarmingSecrets_.size(); i13++) {
            i10 += CodedOutputStream.G(3, this.dynamicWarmingSecrets_.get(i13));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StaticSecret getStaticSecrets(int i9) {
        return this.staticSecrets_.get(i9);
    }

    public int getStaticSecretsCount() {
        return this.staticSecrets_.size();
    }

    public List<StaticSecret> getStaticSecretsList() {
        return this.staticSecrets_;
    }

    public d getStaticSecretsOrBuilder(int i9) {
        return this.staticSecrets_.get(i9);
    }

    public List<? extends d> getStaticSecretsOrBuilderList() {
        return this.staticSecrets_;
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
        if (getStaticSecretsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStaticSecretsList().hashCode();
        }
        if (getDynamicActiveSecretsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDynamicActiveSecretsList().hashCode();
        }
        if (getDynamicWarmingSecretsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDynamicWarmingSecretsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.H.d(SecretsConfigDump.class, b.class);
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
        return new SecretsConfigDump();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.staticSecrets_.size(); i9++) {
            codedOutputStream.L0(1, this.staticSecrets_.get(i9));
        }
        for (int i10 = 0; i10 < this.dynamicActiveSecrets_.size(); i10++) {
            codedOutputStream.L0(2, this.dynamicActiveSecrets_.get(i10));
        }
        for (int i11 = 0; i11 < this.dynamicWarmingSecrets_.size(); i11++) {
            codedOutputStream.L0(3, this.dynamicWarmingSecrets_.get(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SecretsConfigDump(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SecretsConfigDump secretsConfigDump) {
        return DEFAULT_INSTANCE.toBuilder().m0(secretsConfigDump);
    }

    public static SecretsConfigDump parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SecretsConfigDump(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SecretsConfigDump parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SecretsConfigDump parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SecretsConfigDump getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).m0(this);
    }

    public static SecretsConfigDump parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SecretsConfigDump() {
        this.memoizedIsInitialized = (byte) -1;
        this.staticSecrets_ = Collections.emptyList();
        this.dynamicActiveSecrets_ = Collections.emptyList();
        this.dynamicWarmingSecrets_ = Collections.emptyList();
    }

    public static SecretsConfigDump parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SecretsConfigDump parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SecretsConfigDump parseFrom(InputStream inputStream) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SecretsConfigDump parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private SecretsConfigDump(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                if (!(z11 & true)) {
                                    this.staticSecrets_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.staticSecrets_.add((StaticSecret) pVar.B(StaticSecret.parser(), f0Var));
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.dynamicActiveSecrets_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicActiveSecrets_.add((DynamicSecret) pVar.B(DynamicSecret.parser(), f0Var));
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dynamicWarmingSecrets_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dynamicWarmingSecrets_.add((DynamicSecret) pVar.B(DynamicSecret.parser(), f0Var));
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
                if (z11 & true) {
                    this.staticSecrets_ = Collections.unmodifiableList(this.staticSecrets_);
                }
                if (z11 & true) {
                    this.dynamicActiveSecrets_ = Collections.unmodifiableList(this.dynamicActiveSecrets_);
                }
                if (z11 & true) {
                    this.dynamicWarmingSecrets_ = Collections.unmodifiableList(this.dynamicWarmingSecrets_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SecretsConfigDump parseFrom(p pVar) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SecretsConfigDump parseFrom(p pVar, f0 f0Var) throws IOException {
        return (SecretsConfigDump) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
