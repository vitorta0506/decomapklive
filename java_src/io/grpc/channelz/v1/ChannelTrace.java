package io.grpc.channelz.v1;

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
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.channelz.v1.ChannelTraceEvent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ChannelTrace extends GeneratedMessageV3 implements g {
    public static final int CREATION_TIMESTAMP_FIELD_NUMBER = 2;
    public static final int EVENTS_FIELD_NUMBER = 3;
    public static final int NUM_EVENTS_LOGGED_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Timestamp creationTimestamp_;
    private List<ChannelTraceEvent> events_;
    private byte memoizedIsInitialized;
    private long numEventsLogged_;
    private static final ChannelTrace DEFAULT_INSTANCE = new ChannelTrace();
    private static final e2<ChannelTrace> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ChannelTrace> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ChannelTrace m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ChannelTrace(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f42100e;

        /* renamed from: f  reason: collision with root package name */
        private long f42101f;

        /* renamed from: g  reason: collision with root package name */
        private Timestamp f42102g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42103h;

        /* renamed from: i  reason: collision with root package name */
        private List<ChannelTraceEvent> f42104i;

        /* renamed from: j  reason: collision with root package name */
        private l2<ChannelTraceEvent, ChannelTraceEvent.c, f> f42105j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42100e & 1) == 0) {
                this.f42104i = new ArrayList(this.f42104i);
                this.f42100e |= 1;
            }
        }

        private l2<ChannelTraceEvent, ChannelTraceEvent.c, f> d0() {
            if (this.f42105j == null) {
                this.f42105j = new l2<>(this.f42104i, (this.f42100e & 1) != 0, H(), O());
                this.f42104i = null;
            }
            return this.f42105j;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42276l.d(ChannelTrace.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ChannelTrace build() {
            ChannelTrace I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ChannelTrace I() {
            ChannelTrace channelTrace = new ChannelTrace(this, (a) null);
            channelTrace.numEventsLogged_ = this.f42101f;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42103h;
            if (q2Var == null) {
                channelTrace.creationTimestamp_ = this.f42102g;
            } else {
                channelTrace.creationTimestamp_ = q2Var.b();
            }
            l2<ChannelTraceEvent, ChannelTraceEvent.c, f> l2Var = this.f42105j;
            if (l2Var == null) {
                if ((this.f42100e & 1) != 0) {
                    this.f42104i = Collections.unmodifiableList(this.f42104i);
                    this.f42100e &= -2;
                }
                channelTrace.events_ = this.f42104i;
            } else {
                channelTrace.events_ = l2Var.e();
            }
            Q();
            return channelTrace;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ChannelTrace getDefaultInstanceForType() {
            return ChannelTrace.getDefaultInstance();
        }

        public b g0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42103h;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42102g;
                if (timestamp2 != null) {
                    this.f42102g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42102g = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42274k;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.ChannelTrace.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.ChannelTrace.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.ChannelTrace r3 = (io.grpc.channelz.v1.ChannelTrace) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.ChannelTrace r4 = (io.grpc.channelz.v1.ChannelTrace) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.ChannelTrace.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.ChannelTrace$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ChannelTrace) {
                return j0((ChannelTrace) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(ChannelTrace channelTrace) {
            if (channelTrace == ChannelTrace.getDefaultInstance()) {
                return this;
            }
            if (channelTrace.getNumEventsLogged() != 0) {
                m0(channelTrace.getNumEventsLogged());
            }
            if (channelTrace.hasCreationTimestamp()) {
                g0(channelTrace.getCreationTimestamp());
            }
            if (this.f42105j == null) {
                if (!channelTrace.events_.isEmpty()) {
                    if (this.f42104i.isEmpty()) {
                        this.f42104i = channelTrace.events_;
                        this.f42100e &= -2;
                    } else {
                        a0();
                        this.f42104i.addAll(channelTrace.events_);
                    }
                    R();
                }
            } else if (!channelTrace.events_.isEmpty()) {
                if (this.f42105j.k()) {
                    this.f42105j.f();
                    this.f42105j = null;
                    this.f42104i = channelTrace.events_;
                    this.f42100e &= -2;
                    this.f42105j = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f42105j.b(channelTrace.events_);
                }
            }
            z(((GeneratedMessageV3) channelTrace).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(long j10) {
            this.f42101f = j10;
            R();
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
            this.f42104i = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42104i = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ChannelTrace(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ChannelTrace getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42274k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChannelTrace parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ChannelTrace parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ChannelTrace> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelTrace)) {
            return super.equals(obj);
        }
        ChannelTrace channelTrace = (ChannelTrace) obj;
        if (getNumEventsLogged() == channelTrace.getNumEventsLogged() && hasCreationTimestamp() == channelTrace.hasCreationTimestamp()) {
            return (!hasCreationTimestamp() || getCreationTimestamp().equals(channelTrace.getCreationTimestamp())) && getEventsList().equals(channelTrace.getEventsList()) && this.unknownFields.equals(channelTrace.unknownFields);
        }
        return false;
    }

    public Timestamp getCreationTimestamp() {
        Timestamp timestamp = this.creationTimestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getCreationTimestampOrBuilder() {
        return getCreationTimestamp();
    }

    public ChannelTraceEvent getEvents(int i9) {
        return this.events_.get(i9);
    }

    public int getEventsCount() {
        return this.events_.size();
    }

    public List<ChannelTraceEvent> getEventsList() {
        return this.events_;
    }

    public f getEventsOrBuilder(int i9) {
        return this.events_.get(i9);
    }

    public List<? extends f> getEventsOrBuilderList() {
        return this.events_;
    }

    public long getNumEventsLogged() {
        return this.numEventsLogged_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ChannelTrace> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        long j10 = this.numEventsLogged_;
        int z10 = j10 != 0 ? CodedOutputStream.z(1, j10) + 0 : 0;
        if (this.creationTimestamp_ != null) {
            z10 += CodedOutputStream.G(2, getCreationTimestamp());
        }
        for (int i10 = 0; i10 < this.events_.size(); i10++) {
            z10 += CodedOutputStream.G(3, this.events_.get(i10));
        }
        int serializedSize = z10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCreationTimestamp() {
        return this.creationTimestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.i(getNumEventsLogged());
        if (hasCreationTimestamp()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getCreationTimestamp().hashCode();
        }
        if (getEventsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getEventsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42276l.d(ChannelTrace.class, b.class);
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
        return new ChannelTrace();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        long j10 = this.numEventsLogged_;
        if (j10 != 0) {
            codedOutputStream.J0(1, j10);
        }
        if (this.creationTimestamp_ != null) {
            codedOutputStream.L0(2, getCreationTimestamp());
        }
        for (int i9 = 0; i9 < this.events_.size(); i9++) {
            codedOutputStream.L0(3, this.events_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ChannelTrace(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ChannelTrace channelTrace) {
        return DEFAULT_INSTANCE.toBuilder().j0(channelTrace);
    }

    public static ChannelTrace parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ChannelTrace(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChannelTrace parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelTrace parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ChannelTrace getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static ChannelTrace parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ChannelTrace() {
        this.memoizedIsInitialized = (byte) -1;
        this.events_ = Collections.emptyList();
    }

    public static ChannelTrace parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ChannelTrace parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ChannelTrace parseFrom(InputStream inputStream) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ChannelTrace(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 8) {
                            this.numEventsLogged_ = pVar.A();
                        } else if (L == 18) {
                            Timestamp timestamp = this.creationTimestamp_;
                            Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.creationTimestamp_ = timestamp2;
                            if (builder != null) {
                                builder.g0(timestamp2);
                                this.creationTimestamp_ = builder.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.events_ = new ArrayList();
                                z11 |= true;
                            }
                            this.events_.add((ChannelTraceEvent) pVar.B(ChannelTraceEvent.parser(), f0Var));
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
                    this.events_ = Collections.unmodifiableList(this.events_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ChannelTrace parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelTrace parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ChannelTrace parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ChannelTrace) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
