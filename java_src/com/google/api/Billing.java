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
public final class Billing extends GeneratedMessageV3 implements k {
    public static final int CONSUMER_DESTINATIONS_FIELD_NUMBER = 8;
    private static final Billing DEFAULT_INSTANCE = new Billing();
    private static final e2<Billing> PARSER = new a();
    private static final long serialVersionUID = 0;
    private List<BillingDestination> consumerDestinations_;
    private byte memoizedIsInitialized;

    /* loaded from: classes2.dex */
    public static final class BillingDestination extends GeneratedMessageV3 implements b {
        public static final int METRICS_FIELD_NUMBER = 2;
        public static final int MONITORED_RESOURCE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private com.google.protobuf.z0 metrics_;
        private volatile Object monitoredResource_;
        private static final BillingDestination DEFAULT_INSTANCE = new BillingDestination();
        private static final e2<BillingDestination> PARSER = new a();

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<BillingDestination> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public BillingDestination m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new BillingDestination(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements b {

            /* renamed from: e  reason: collision with root package name */
            private int f10682e;

            /* renamed from: f  reason: collision with root package name */
            private Object f10683f;

            /* renamed from: g  reason: collision with root package name */
            private com.google.protobuf.z0 f10684g;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void a0() {
                if ((this.f10682e & 1) == 0) {
                    this.f10684g = new com.google.protobuf.y0(this.f10684g);
                    this.f10682e |= 1;
                }
            }

            private void d0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f11411d.d(BillingDestination.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public BillingDestination build() {
                BillingDestination I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public BillingDestination I() {
                BillingDestination billingDestination = new BillingDestination(this, (a) null);
                billingDestination.monitoredResource_ = this.f10683f;
                if ((this.f10682e & 1) != 0) {
                    this.f10684g = this.f10684g.V0();
                    this.f10682e &= -2;
                }
                billingDestination.metrics_ = this.f10684g;
                Q();
                return billingDestination;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public BillingDestination getDefaultInstanceForType() {
                return BillingDestination.getDefaultInstance();
            }

            public b e0(BillingDestination billingDestination) {
                if (billingDestination == BillingDestination.getDefaultInstance()) {
                    return this;
                }
                if (!billingDestination.getMonitoredResource().isEmpty()) {
                    this.f10683f = billingDestination.monitoredResource_;
                    R();
                }
                if (!billingDestination.metrics_.isEmpty()) {
                    if (this.f10684g.isEmpty()) {
                        this.f10684g = billingDestination.metrics_;
                        this.f10682e &= -2;
                    } else {
                        a0();
                        this.f10684g.addAll(billingDestination.metrics_);
                    }
                    R();
                }
                z(((GeneratedMessageV3) billingDestination).unknownFields);
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
            public com.google.api.Billing.BillingDestination.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.api.Billing.BillingDestination.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.api.Billing$BillingDestination r3 = (com.google.api.Billing.BillingDestination) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.api.Billing$BillingDestination r4 = (com.google.api.Billing.BillingDestination) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.api.Billing.BillingDestination.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Billing$BillingDestination$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f11410c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof BillingDestination) {
                    return e0((BillingDestination) l1Var);
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
                this.f10683f = "";
                this.f10684g = com.google.protobuf.y0.f15344d;
                d0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f10683f = "";
                this.f10684g = com.google.protobuf.y0.f15344d;
                d0();
            }
        }

        /* synthetic */ BillingDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static BillingDestination getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f11410c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BillingDestination parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BillingDestination parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<BillingDestination> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BillingDestination)) {
                return super.equals(obj);
            }
            BillingDestination billingDestination = (BillingDestination) obj;
            return getMonitoredResource().equals(billingDestination.getMonitoredResource()) && m189getMetricsList().equals(billingDestination.m189getMetricsList()) && this.unknownFields.equals(billingDestination.unknownFields);
        }

        public String getMetrics(int i9) {
            return this.metrics_.get(i9);
        }

        public ByteString getMetricsBytes(int i9) {
            return this.metrics_.j0(i9);
        }

        public int getMetricsCount() {
            return this.metrics_.size();
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
        public e2<BillingDestination> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.monitoredResource_) ? GeneratedMessageV3.computeStringSize(1, this.monitoredResource_) + 0 : 0;
            int i10 = 0;
            for (int i11 = 0; i11 < this.metrics_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.metrics_.c1(i11));
            }
            int size = computeStringSize + i10 + (m189getMetricsList().size() * 1) + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMonitoredResource().hashCode();
            if (getMetricsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + m189getMetricsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return l.f11411d.d(BillingDestination.class, b.class);
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
            return new BillingDestination();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.monitoredResource_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.monitoredResource_);
            }
            for (int i9 = 0; i9 < this.metrics_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.metrics_.c1(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ BillingDestination(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(BillingDestination billingDestination) {
            return DEFAULT_INSTANCE.toBuilder().e0(billingDestination);
        }

        public static BillingDestination parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static BillingDestination parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getMetricsList */
        public i2 m189getMetricsList() {
            return this.metrics_;
        }

        private BillingDestination(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BillingDestination parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public BillingDestination getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).e0(this);
        }

        public static BillingDestination parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private BillingDestination() {
            this.memoizedIsInitialized = (byte) -1;
            this.monitoredResource_ = "";
            this.metrics_ = com.google.protobuf.y0.f15344d;
        }

        public static BillingDestination parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static BillingDestination parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static BillingDestination parseFrom(InputStream inputStream) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static BillingDestination parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private BillingDestination(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.monitoredResource_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    String K = pVar.K();
                                    if (!(z11 & true)) {
                                        this.metrics_ = new com.google.protobuf.y0();
                                        z11 |= true;
                                    }
                                    this.metrics_.add(K);
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
                        this.metrics_ = this.metrics_.V0();
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static BillingDestination parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static BillingDestination parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (BillingDestination) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Billing> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Billing m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Billing(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public interface b extends r1 {
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f10685e;

        /* renamed from: f  reason: collision with root package name */
        private List<BillingDestination> f10686f;

        /* renamed from: g  reason: collision with root package name */
        private l2<BillingDestination, BillingDestination.b, b> f10687g;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10685e & 1) == 0) {
                this.f10686f = new ArrayList(this.f10686f);
                this.f10685e |= 1;
            }
        }

        private l2<BillingDestination, BillingDestination.b, b> b0() {
            if (this.f10687g == null) {
                this.f10687g = new l2<>(this.f10686f, (this.f10685e & 1) != 0, H(), O());
                this.f10686f = null;
            }
            return this.f10687g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f11409b.d(Billing.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Billing build() {
            Billing I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Billing I() {
            Billing billing = new Billing(this, (a) null);
            int i9 = this.f10685e;
            l2<BillingDestination, BillingDestination.b, b> l2Var = this.f10687g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10686f = Collections.unmodifiableList(this.f10686f);
                    this.f10685e &= -2;
                }
                billing.consumerDestinations_ = this.f10686f;
            } else {
                billing.consumerDestinations_ = l2Var.e();
            }
            Q();
            return billing;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Billing getDefaultInstanceForType() {
            return Billing.getDefaultInstance();
        }

        public c g0(Billing billing) {
            if (billing == Billing.getDefaultInstance()) {
                return this;
            }
            if (this.f10687g == null) {
                if (!billing.consumerDestinations_.isEmpty()) {
                    if (this.f10686f.isEmpty()) {
                        this.f10686f = billing.consumerDestinations_;
                        this.f10685e &= -2;
                    } else {
                        a0();
                        this.f10686f.addAll(billing.consumerDestinations_);
                    }
                    R();
                }
            } else if (!billing.consumerDestinations_.isEmpty()) {
                if (this.f10687g.k()) {
                    this.f10687g.f();
                    this.f10687g = null;
                    this.f10686f = billing.consumerDestinations_;
                    this.f10685e &= -2;
                    this.f10687g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f10687g.b(billing.consumerDestinations_);
                }
            }
            z(((GeneratedMessageV3) billing).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f11408a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Billing.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Billing.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Billing r3 = (com.google.api.Billing) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Billing r4 = (com.google.api.Billing) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Billing.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Billing$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Billing) {
                return g0((Billing) l1Var);
            }
            super.P0(l1Var);
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

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f10686f = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10686f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Billing(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Billing getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f11408a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Billing parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Billing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Billing parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Billing> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Billing)) {
            return super.equals(obj);
        }
        Billing billing = (Billing) obj;
        return getConsumerDestinationsList().equals(billing.getConsumerDestinationsList()) && this.unknownFields.equals(billing.unknownFields);
    }

    public BillingDestination getConsumerDestinations(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public int getConsumerDestinationsCount() {
        return this.consumerDestinations_.size();
    }

    public List<BillingDestination> getConsumerDestinationsList() {
        return this.consumerDestinations_;
    }

    public b getConsumerDestinationsOrBuilder(int i9) {
        return this.consumerDestinations_.get(i9);
    }

    public List<? extends b> getConsumerDestinationsOrBuilderList() {
        return this.consumerDestinations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Billing> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.consumerDestinations_.size(); i11++) {
            i10 += CodedOutputStream.G(8, this.consumerDestinations_.get(i11));
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
        if (getConsumerDestinationsCount() > 0) {
            hashCode = (((hashCode * 37) + 8) * 53) + getConsumerDestinationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f11409b.d(Billing.class, c.class);
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
        return new Billing();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.consumerDestinations_.size(); i9++) {
            codedOutputStream.L0(8, this.consumerDestinations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Billing(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Billing billing) {
        return DEFAULT_INSTANCE.toBuilder().g0(billing);
    }

    public static Billing parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Billing) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Billing parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Billing(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Billing parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Billing getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Billing parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private Billing() {
        this.memoizedIsInitialized = (byte) -1;
        this.consumerDestinations_ = Collections.emptyList();
    }

    public static Billing parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static Billing parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Billing parseFrom(InputStream inputStream) throws IOException {
        return (Billing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Billing(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 66) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.consumerDestinations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.consumerDestinations_.add(pVar.B(BillingDestination.parser(), f0Var));
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
                    this.consumerDestinations_ = Collections.unmodifiableList(this.consumerDestinations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Billing parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Billing) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Billing parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Billing) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Billing parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Billing) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
