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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.z2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class UpdateFailureState extends GeneratedMessageV3 implements g {
    public static final int DETAILS_FIELD_NUMBER = 3;
    public static final int FAILED_CONFIGURATION_FIELD_NUMBER = 1;
    public static final int LAST_UPDATE_ATTEMPT_FIELD_NUMBER = 2;
    public static final int VERSION_INFO_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object details_;
    private Any failedConfiguration_;
    private Timestamp lastUpdateAttempt_;
    private byte memoizedIsInitialized;
    private volatile Object versionInfo_;
    private static final UpdateFailureState DEFAULT_INSTANCE = new UpdateFailureState();
    private static final e2<UpdateFailureState> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<UpdateFailureState> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpdateFailureState m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpdateFailureState(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private Any f45890e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f45891f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f45892g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f45893h;

        /* renamed from: i  reason: collision with root package name */
        private Object f45894i;

        /* renamed from: j  reason: collision with root package name */
        private Object f45895j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45899d.d(UpdateFailureState.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpdateFailureState build() {
            UpdateFailureState I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpdateFailureState I() {
            UpdateFailureState updateFailureState = new UpdateFailureState(this, (a) null);
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45891f;
            if (q2Var == null) {
                updateFailureState.failedConfiguration_ = this.f45890e;
            } else {
                updateFailureState.failedConfiguration_ = q2Var.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var2 = this.f45893h;
            if (q2Var2 == null) {
                updateFailureState.lastUpdateAttempt_ = this.f45892g;
            } else {
                updateFailureState.lastUpdateAttempt_ = q2Var2.b();
            }
            updateFailureState.details_ = this.f45894i;
            updateFailureState.versionInfo_ = this.f45895j;
            Q();
            return updateFailureState;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpdateFailureState getDefaultInstanceForType() {
            return UpdateFailureState.getDefaultInstance();
        }

        public b d0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45891f;
            if (q2Var == null) {
                Any any2 = this.f45890e;
                if (any2 != null) {
                    this.f45890e = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f45890e = any;
                }
                R();
            } else {
                q2Var.e(any);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.UpdateFailureState$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpdateFailureState) {
                return h0((UpdateFailureState) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45898c;
        }

        public b h0(UpdateFailureState updateFailureState) {
            if (updateFailureState == UpdateFailureState.getDefaultInstance()) {
                return this;
            }
            if (updateFailureState.hasFailedConfiguration()) {
                d0(updateFailureState.getFailedConfiguration());
            }
            if (updateFailureState.hasLastUpdateAttempt()) {
                i0(updateFailureState.getLastUpdateAttempt());
            }
            if (!updateFailureState.getDetails().isEmpty()) {
                this.f45894i = updateFailureState.details_;
                R();
            }
            if (!updateFailureState.getVersionInfo().isEmpty()) {
                this.f45895j = updateFailureState.versionInfo_;
                R();
            }
            z(((GeneratedMessageV3) updateFailureState).unknownFields);
            R();
            return this;
        }

        public b i0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f45893h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f45892g;
                if (timestamp2 != null) {
                    this.f45892g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f45892g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
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
            this.f45894i = "";
            this.f45895j = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45894i = "";
            this.f45895j = "";
            b0();
        }
    }

    /* synthetic */ UpdateFailureState(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpdateFailureState getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45898c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpdateFailureState parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpdateFailureState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpdateFailureState> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdateFailureState)) {
            return super.equals(obj);
        }
        UpdateFailureState updateFailureState = (UpdateFailureState) obj;
        if (hasFailedConfiguration() != updateFailureState.hasFailedConfiguration()) {
            return false;
        }
        if ((!hasFailedConfiguration() || getFailedConfiguration().equals(updateFailureState.getFailedConfiguration())) && hasLastUpdateAttempt() == updateFailureState.hasLastUpdateAttempt()) {
            return (!hasLastUpdateAttempt() || getLastUpdateAttempt().equals(updateFailureState.getLastUpdateAttempt())) && getDetails().equals(updateFailureState.getDetails()) && getVersionInfo().equals(updateFailureState.getVersionInfo()) && this.unknownFields.equals(updateFailureState.unknownFields);
        }
        return false;
    }

    public String getDetails() {
        Object obj = this.details_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.details_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDetailsBytes() {
        Object obj = this.details_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.details_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Any getFailedConfiguration() {
        Any any = this.failedConfiguration_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getFailedConfigurationOrBuilder() {
        return getFailedConfiguration();
    }

    public Timestamp getLastUpdateAttempt() {
        Timestamp timestamp = this.lastUpdateAttempt_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getLastUpdateAttemptOrBuilder() {
        return getLastUpdateAttempt();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpdateFailureState> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.failedConfiguration_ != null ? 0 + CodedOutputStream.G(1, getFailedConfiguration()) : 0;
        if (this.lastUpdateAttempt_ != null) {
            G += CodedOutputStream.G(2, getLastUpdateAttempt());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.details_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.details_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            G += GeneratedMessageV3.computeStringSize(4, this.versionInfo_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
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

    public boolean hasFailedConfiguration() {
        return this.failedConfiguration_ != null;
    }

    public boolean hasLastUpdateAttempt() {
        return this.lastUpdateAttempt_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasFailedConfiguration()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getFailedConfiguration().hashCode();
        }
        if (hasLastUpdateAttempt()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLastUpdateAttempt().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 3) * 53) + getDetails().hashCode()) * 37) + 4) * 53) + getVersionInfo().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.b.f45899d.d(UpdateFailureState.class, b.class);
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
        return new UpdateFailureState();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.failedConfiguration_ != null) {
            codedOutputStream.L0(1, getFailedConfiguration());
        }
        if (this.lastUpdateAttempt_ != null) {
            codedOutputStream.L0(2, getLastUpdateAttempt());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.details_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.details_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.versionInfo_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.versionInfo_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpdateFailureState(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpdateFailureState updateFailureState) {
        return DEFAULT_INSTANCE.toBuilder().h0(updateFailureState);
    }

    public static UpdateFailureState parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpdateFailureState(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpdateFailureState parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdateFailureState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpdateFailureState getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static UpdateFailureState parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpdateFailureState() {
        this.memoizedIsInitialized = (byte) -1;
        this.details_ = "";
        this.versionInfo_ = "";
    }

    public static UpdateFailureState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpdateFailureState parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static UpdateFailureState parseFrom(InputStream inputStream) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private UpdateFailureState(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Any any = this.failedConfiguration_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.failedConfiguration_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.failedConfiguration_ = builder.I();
                                }
                            } else if (L == 18) {
                                Timestamp timestamp = this.lastUpdateAttempt_;
                                Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.lastUpdateAttempt_ = timestamp2;
                                if (builder2 != null) {
                                    builder2.g0(timestamp2);
                                    this.lastUpdateAttempt_ = builder2.I();
                                }
                            } else if (L == 26) {
                                this.details_ = pVar.K();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
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

    public static UpdateFailureState parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpdateFailureState parseFrom(p pVar) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpdateFailureState parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpdateFailureState) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
