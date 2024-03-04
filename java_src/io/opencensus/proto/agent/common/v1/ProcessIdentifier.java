package io.opencensus.proto.agent.common.v1;

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
/* loaded from: classes4.dex */
public final class ProcessIdentifier extends GeneratedMessageV3 implements d {
    public static final int HOST_NAME_FIELD_NUMBER = 1;
    public static final int PID_FIELD_NUMBER = 2;
    public static final int START_TIMESTAMP_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object hostName_;
    private byte memoizedIsInitialized;
    private int pid_;
    private Timestamp startTimestamp_;
    private static final ProcessIdentifier DEFAULT_INSTANCE = new ProcessIdentifier();
    private static final e2<ProcessIdentifier> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends com.google.protobuf.c<ProcessIdentifier> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ProcessIdentifier m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ProcessIdentifier(pVar, f0Var, null);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private Object f50916e;

        /* renamed from: f  reason: collision with root package name */
        private int f50917f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f50918g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f50919h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.agent.common.v1.a.f50926f.d(ProcessIdentifier.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ProcessIdentifier build() {
            ProcessIdentifier I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ProcessIdentifier I() {
            ProcessIdentifier processIdentifier = new ProcessIdentifier(this, (a) null);
            processIdentifier.hostName_ = this.f50916e;
            processIdentifier.pid_ = this.f50917f;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f50919h;
            if (q2Var == null) {
                processIdentifier.startTimestamp_ = this.f50918g;
            } else {
                processIdentifier.startTimestamp_ = q2Var.b();
            }
            Q();
            return processIdentifier;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ProcessIdentifier getDefaultInstanceForType() {
            return ProcessIdentifier.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.agent.common.v1.ProcessIdentifier.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.agent.common.v1.ProcessIdentifier.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.agent.common.v1.ProcessIdentifier r3 = (io.opencensus.proto.agent.common.v1.ProcessIdentifier) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.agent.common.v1.ProcessIdentifier r4 = (io.opencensus.proto.agent.common.v1.ProcessIdentifier) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.agent.common.v1.ProcessIdentifier.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.agent.common.v1.ProcessIdentifier$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ProcessIdentifier) {
                return g0((ProcessIdentifier) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ProcessIdentifier processIdentifier) {
            if (processIdentifier == ProcessIdentifier.getDefaultInstance()) {
                return this;
            }
            if (!processIdentifier.getHostName().isEmpty()) {
                this.f50916e = processIdentifier.hostName_;
                R();
            }
            if (processIdentifier.getPid() != 0) {
                k0(processIdentifier.getPid());
            }
            if (processIdentifier.hasStartTimestamp()) {
                h0(processIdentifier.getStartTimestamp());
            }
            z(((GeneratedMessageV3) processIdentifier).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.agent.common.v1.a.f50925e;
        }

        public b h0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f50919h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f50918g;
                if (timestamp2 != null) {
                    this.f50918g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f50918g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
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
            this.f50917f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.V(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50916e = "";
            this.f50918g = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50916e = "";
            this.f50918g = null;
            b0();
        }
    }

    /* synthetic */ ProcessIdentifier(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ProcessIdentifier getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.agent.common.v1.a.f50925e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ProcessIdentifier parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ProcessIdentifier parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ProcessIdentifier> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProcessIdentifier)) {
            return super.equals(obj);
        }
        ProcessIdentifier processIdentifier = (ProcessIdentifier) obj;
        boolean z10 = ((getHostName().equals(processIdentifier.getHostName())) && getPid() == processIdentifier.getPid()) && hasStartTimestamp() == processIdentifier.hasStartTimestamp();
        if (hasStartTimestamp()) {
            z10 = z10 && getStartTimestamp().equals(processIdentifier.getStartTimestamp());
        }
        return z10 && this.unknownFields.equals(processIdentifier.unknownFields);
    }

    public String getHostName() {
        Object obj = this.hostName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.hostName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getHostNameBytes() {
        Object obj = this.hostName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hostName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ProcessIdentifier> getParserForType() {
        return PARSER;
    }

    public int getPid() {
        return this.pid_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = getHostNameBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.hostName_);
        int i10 = this.pid_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.Y(2, i10);
        }
        if (this.startTimestamp_ != null) {
            computeStringSize += CodedOutputStream.G(3, getStartTimestamp());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Timestamp getStartTimestamp() {
        Timestamp timestamp = this.startTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getStartTimestampOrBuilder() {
        return getStartTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasStartTimestamp() {
        return this.startTimestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getHostName().hashCode()) * 37) + 2) * 53) + getPid();
        if (hasStartTimestamp()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getStartTimestamp().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.agent.common.v1.a.f50926f.d(ProcessIdentifier.class, b.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getHostNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.hostName_);
        }
        int i9 = this.pid_;
        if (i9 != 0) {
            codedOutputStream.c1(2, i9);
        }
        if (this.startTimestamp_ != null) {
            codedOutputStream.L0(3, getStartTimestamp());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ProcessIdentifier(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ProcessIdentifier processIdentifier) {
        return DEFAULT_INSTANCE.toBuilder().g0(processIdentifier);
    }

    public static ProcessIdentifier parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ProcessIdentifier(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ProcessIdentifier parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ProcessIdentifier parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ProcessIdentifier getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ProcessIdentifier parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ProcessIdentifier() {
        this.memoizedIsInitialized = (byte) -1;
        this.hostName_ = "";
        this.pid_ = 0;
    }

    public static ProcessIdentifier parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ProcessIdentifier parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ProcessIdentifier parseFrom(InputStream inputStream) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ProcessIdentifier(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.hostName_ = pVar.K();
                        } else if (L == 16) {
                            this.pid_ = pVar.M();
                        } else if (L != 26) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Timestamp timestamp = this.startTimestamp_;
                            Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.startTimestamp_ = timestamp2;
                            if (builder != null) {
                                builder.g0(timestamp2);
                                this.startTimestamp_ = builder.I();
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

    public static ProcessIdentifier parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ProcessIdentifier parseFrom(p pVar) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ProcessIdentifier parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ProcessIdentifier) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
