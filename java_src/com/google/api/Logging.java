package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l2;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Logging extends GeneratedMessageV3 implements n0 {
    public static final int CONSUMER_DESTINATIONS_FIELD_NUMBER = 2;
    private static final Logging DEFAULT_INSTANCE = new Logging();
    private static final e2<Logging> PARSER = new a();
    public static final int PRODUCER_DESTINATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<LoggingDestination> consumerDestinations_;
    private byte memoizedIsInitialized;
    private List<LoggingDestination> producerDestinations_;

    /* loaded from: classes2.dex */
    public static final class LoggingDestination extends GeneratedMessageV3 implements c {
        public static final int LOGS_FIELD_NUMBER = 1;
        public static final int MONITORED_RESOURCE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private com.google.protobuf.z0 logs_;
        private byte memoizedIsInitialized;
        private volatile Object monitoredResource_;
        private static final LoggingDestination DEFAULT_INSTANCE = new LoggingDestination();
        private static final e2<LoggingDestination> PARSER = new a();

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<LoggingDestination> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public LoggingDestination m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new LoggingDestination(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private int f10789e;

            /* renamed from: f  reason: collision with root package name */
            private Object f10790f;

            /* renamed from: g  reason: collision with root package name */
            private com.google.protobuf.z0 f10791g;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void a0() {
                if ((this.f10789e & 1) == 0) {
                    this.f10791g = new com.google.protobuf.y0(this.f10791g);
                    this.f10789e |= 1;
                }
            }

            private void d0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o0.f11438d.d(LoggingDestination.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public LoggingDestination build() {
                LoggingDestination I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public LoggingDestination I() {
                LoggingDestination loggingDestination = new LoggingDestination(this, (a) null);
                loggingDestination.monitoredResource_ = this.f10790f;
                if ((this.f10789e & 1) != 0) {
                    this.f10791g = this.f10791g.V0();
                    this.f10789e &= -2;
                }
                loggingDestination.logs_ = this.f10791g;
                Q();
                return loggingDestination;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public LoggingDestination getDefaultInstanceForType() {
                return LoggingDestination.getDefaultInstance();
            }

            public b e0(LoggingDestination loggingDestination) {
                if (loggingDestination == LoggingDestination.getDefaultInstance()) {
                    return this;
                }
                if (!loggingDestination.getMonitoredResource().isEmpty()) {
                    this.f10790f = loggingDestination.monitoredResource_;
                    R();
                }
                if (!loggingDestination.logs_.isEmpty()) {
                    if (this.f10791g.isEmpty()) {
                        this.f10791g = loggingDestination.logs_;
                        this.f10789e &= -2;
                    } else {
                        a0();
                        this.f10791g.addAll(loggingDestination.logs_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) loggingDestination).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.api.Logging.LoggingDestination.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Logging.LoggingDestination.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Logging$LoggingDestination r3 = (com.google.api.Logging.LoggingDestination) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.e0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.api.Logging$LoggingDestination r4 = (com.google.api.Logging.LoggingDestination) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.e0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Logging.LoggingDestination.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Logging$LoggingDestination$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o0.f11437c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof LoggingDestination) {
                    return e0((LoggingDestination) l1Var);
                }
                super.P0(l1Var);
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

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f10790f = "";
                this.f10791g = com.google.protobuf.y0.f15344d;
                d0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10790f = "";
                this.f10791g = com.google.protobuf.y0.f15344d;
                d0();
            }
        }

        /* synthetic */ LoggingDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static LoggingDestination getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o0.f11437c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LoggingDestination parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LoggingDestination parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<LoggingDestination> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LoggingDestination)) {
                return super.equals(obj);
            }
            LoggingDestination loggingDestination = (LoggingDestination) obj;
            return getMonitoredResource().equals(loggingDestination.getMonitoredResource()) && m195getLogsList().equals(loggingDestination.m195getLogsList()) && this.unknownFields.equals(loggingDestination.unknownFields);
        }

        public String getLogs(int i9) {
            return this.logs_.get(i9);
        }

        public ByteString getLogsBytes(int i9) {
            return this.logs_.j0(i9);
        }

        public int getLogsCount() {
            return this.logs_.size();
        }

        public String getMonitoredResource() {
            Object obj = this.monitoredResource_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.monitoredResource_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getMonitoredResourceBytes() {
            Object obj = this.monitoredResource_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.monitoredResource_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<LoggingDestination> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.logs_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.logs_.c1(i11));
            }
            int size = 0 + i10 + (m195getLogsList().size() * 1);
            if (!GeneratedMessageV3.isStringEmpty(this.monitoredResource_)) {
                size += GeneratedMessageV3.computeStringSize(3, this.monitoredResource_);
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getMonitoredResource().hashCode();
            if (getLogsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + m195getLogsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o0.f11438d.d(LoggingDestination.class, b.class);
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
            return new LoggingDestination();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.logs_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.logs_.c1(i9));
            }
            if (!GeneratedMessageV3.isStringEmpty(this.monitoredResource_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.monitoredResource_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ LoggingDestination(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(LoggingDestination loggingDestination) {
            return DEFAULT_INSTANCE.toBuilder().e0(loggingDestination);
        }

        public static LoggingDestination parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static LoggingDestination parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getLogsList */
        public i2 m195getLogsList() {
            return this.logs_;
        }

        private LoggingDestination(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LoggingDestination parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public LoggingDestination getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
        }

        public static LoggingDestination parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private LoggingDestination() {
            this.memoizedIsInitialized = (byte) -1;
            this.monitoredResource_ = "";
            this.logs_ = com.google.protobuf.y0.f15344d;
        }

        public static LoggingDestination parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static LoggingDestination parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static LoggingDestination parseFrom(InputStream inputStream) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static LoggingDestination parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private LoggingDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.logs_ = new com.google.protobuf.y0();
                                        z11 |= true;
                                    }
                                    this.logs_.add(K);
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.monitoredResource_ = pVar.K();
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
                    if (z11 & true) {
                        this.logs_ = this.logs_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static LoggingDestination parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static LoggingDestination parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (LoggingDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Logging> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Logging m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Logging(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements n0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10792e;

        /* renamed from: f  reason: collision with root package name */
        private List<LoggingDestination> f10793f;

        /* renamed from: g  reason: collision with root package name */
        private l2<LoggingDestination, LoggingDestination.b, c> f10794g;

        /* renamed from: h  reason: collision with root package name */
        private List<LoggingDestination> f10795h;

        /* renamed from: i  reason: collision with root package name */
        private l2<LoggingDestination, LoggingDestination.b, c> f10796i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10792e & 2) == 0) {
                this.f10795h = new ArrayList(this.f10795h);
                this.f10792e |= 2;
            }
        }

        private void b0() {
            if ((this.f10792e & 1) == 0) {
                this.f10793f = new ArrayList(this.f10793f);
                this.f10792e |= 1;
            }
        }

        private l2<LoggingDestination, LoggingDestination.b, c> d0() {
            if (this.f10796i == null) {
                this.f10796i = new l2<>(this.f10795h, (this.f10792e & 2) != 0, H(), O());
                this.f10795h = null;
            }
            return this.f10796i;
        }

        private l2<LoggingDestination, LoggingDestination.b, c> g0() {
            if (this.f10794g == null) {
                this.f10794g = new l2<>(this.f10793f, (this.f10792e & 1) != 0, H(), O());
                this.f10793f = null;
            }
            return this.f10794g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o0.f11436b.d(Logging.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Logging build() {
            Logging I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Logging I() {
            Logging logging = new Logging(this, (a) null);
            int i9 = this.f10792e;
            l2<LoggingDestination, LoggingDestination.b, c> l2Var = this.f10794g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10793f = Collections.unmodifiableList(this.f10793f);
                    this.f10792e &= -2;
                }
                logging.producerDestinations_ = this.f10793f;
            } else {
                logging.producerDestinations_ = l2Var.e();
            }
            l2<LoggingDestination, LoggingDestination.b, c> l2Var2 = this.f10796i;
            if (l2Var2 == null) {
                if ((this.f10792e & 2) != 0) {
                    this.f10795h = Collections.unmodifiableList(this.f10795h);
                    this.f10792e &= -3;
                }
                logging.consumerDestinations_ = this.f10795h;
            } else {
                logging.consumerDestinations_ = l2Var2.e();
            }
            Q();
            return logging;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: e0 */
        public Logging getDefaultInstanceForType() {
            return Logging.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o0.f11435a;
        }

        public b i0(Logging logging) {
            if (logging == Logging.getDefaultInstance()) {
                return this;
            }
            if (this.f10794g == null) {
                if (!logging.producerDestinations_.isEmpty()) {
                    if (this.f10793f.isEmpty()) {
                        this.f10793f = logging.producerDestinations_;
                        this.f10792e &= -2;
                    } else {
                        b0();
                        this.f10793f.addAll(logging.producerDestinations_);
                    }
                    R();
                }
            } else if (!logging.producerDestinations_.isEmpty()) {
                if (this.f10794g.k()) {
                    this.f10794g.f();
                    this.f10794g = null;
                    this.f10793f = logging.producerDestinations_;
                    this.f10792e &= -2;
                    this.f10794g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f10794g.b(logging.producerDestinations_);
                }
            }
            if (this.f10796i == null) {
                if (!logging.consumerDestinations_.isEmpty()) {
                    if (this.f10795h.isEmpty()) {
                        this.f10795h = logging.consumerDestinations_;
                        this.f10792e &= -3;
                    } else {
                        a0();
                        this.f10795h.addAll(logging.consumerDestinations_);
                    }
                    R();
                }
            } else if (!logging.consumerDestinations_.isEmpty()) {
                if (this.f10796i.k()) {
                    this.f10796i.f();
                    this.f10796i = null;
                    this.f10795h = logging.consumerDestinations_;
                    this.f10792e &= -3;
                    this.f10796i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10796i.b(logging.consumerDestinations_);
                }
            }
            z(((GeneratedMessageV3) logging).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Logging.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Logging.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Logging r3 = (com.google.api.Logging) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Logging r4 = (com.google.api.Logging) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Logging.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Logging$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Logging) {
                return i0((Logging) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10793f = Collections.emptyList();
            this.f10795h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10793f = Collections.emptyList();
            this.f10795h = Collections.emptyList();
            h0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ Logging(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Logging getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o0.f11435a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Logging parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Logging) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Logging parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Logging> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Logging)) {
            return super.equals(obj);
        }
        Logging logging = (Logging) obj;
        return getProducerDestinationsList().equals(logging.getProducerDestinationsList()) && getConsumerDestinationsList().equals(logging.getConsumerDestinationsList()) && this.unknownFields.equals(logging.unknownFields);
    }

    public LoggingDestination getConsumerDestinations(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public int getConsumerDestinationsCount() {
        return this.consumerDestinations_.size();
    }

    public List<LoggingDestination> getConsumerDestinationsList() {
        return this.consumerDestinations_;
    }

    public c getConsumerDestinationsOrBuilder(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public List<? extends c> getConsumerDestinationsOrBuilderList() {
        return this.consumerDestinations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Logging> getParserForType() {
        return PARSER;
    }

    public LoggingDestination getProducerDestinations(int i9) {
        return this.producerDestinations_.get(i9);
    }

    public int getProducerDestinationsCount() {
        return this.producerDestinations_.size();
    }

    public List<LoggingDestination> getProducerDestinationsList() {
        return this.producerDestinations_;
    }

    public c getProducerDestinationsOrBuilder(int i9) {
        return this.producerDestinations_.get(i9);
    }

    public List<? extends c> getProducerDestinationsOrBuilderList() {
        return this.producerDestinations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.producerDestinations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.producerDestinations_.get(i11));
        }
        for (int i12 = 0; i12 < this.consumerDestinations_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.consumerDestinations_.get(i12));
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
        if (getProducerDestinationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getProducerDestinationsList().hashCode();
        }
        if (getConsumerDestinationsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getConsumerDestinationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o0.f11436b.d(Logging.class, b.class);
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
        return new Logging();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.producerDestinations_.size(); i9++) {
            codedOutputStream.L0(1, this.producerDestinations_.get(i9));
        }
        for (int i10 = 0; i10 < this.consumerDestinations_.size(); i10++) {
            codedOutputStream.L0(2, this.consumerDestinations_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Logging(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Logging logging) {
        return DEFAULT_INSTANCE.toBuilder().i0(logging);
    }

    public static Logging parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Logging) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Logging parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Logging(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Logging parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Logging getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Logging parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Logging() {
        this.memoizedIsInitialized = (byte) -1;
        this.producerDestinations_ = Collections.emptyList();
        this.consumerDestinations_ = Collections.emptyList();
    }

    public static Logging parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Logging parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Logging parseFrom(InputStream inputStream) throws IOException {
        return (Logging) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Logging parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Logging) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Logging(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.producerDestinations_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.producerDestinations_.add(pVar.B(LoggingDestination.parser(), f0Var));
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.consumerDestinations_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.consumerDestinations_.add(pVar.B(LoggingDestination.parser(), f0Var));
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
                if (z11 & true) {
                    this.producerDestinations_ = Collections.unmodifiableList(this.producerDestinations_);
                }
                if (z11 & true) {
                    this.consumerDestinations_ = Collections.unmodifiableList(this.consumerDestinations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Logging parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Logging) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Logging parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Logging) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
