package com.google.api;

import com.google.api.UsageRule;
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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Usage extends GeneratedMessageV3 implements m1 {
    private static final Usage DEFAULT_INSTANCE = new Usage();
    private static final e2<Usage> PARSER = new a();
    public static final int PRODUCER_NOTIFICATION_CHANNEL_FIELD_NUMBER = 7;
    public static final int REQUIREMENTS_FIELD_NUMBER = 1;
    public static final int RULES_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object producerNotificationChannel_;
    private com.google.protobuf.z0 requirements_;
    private List<UsageRule> rules_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Usage> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Usage m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Usage(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements m1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10925e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.protobuf.z0 f10926f;

        /* renamed from: g  reason: collision with root package name */
        private List<UsageRule> f10927g;

        /* renamed from: h  reason: collision with root package name */
        private l2<UsageRule, UsageRule.b, o1> f10928h;

        /* renamed from: i  reason: collision with root package name */
        private Object f10929i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10925e & 1) == 0) {
                this.f10926f = new com.google.protobuf.y0(this.f10926f);
                this.f10925e |= 1;
            }
        }

        private void b0() {
            if ((this.f10925e & 2) == 0) {
                this.f10927g = new ArrayList(this.f10927g);
                this.f10925e |= 2;
            }
        }

        private l2<UsageRule, UsageRule.b, o1> e0() {
            if (this.f10928h == null) {
                this.f10928h = new l2<>(this.f10927g, (this.f10925e & 2) != 0, H(), O());
                this.f10927g = null;
            }
            return this.f10928h;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n1.f11426b.d(Usage.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Usage build() {
            Usage I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Usage I() {
            Usage usage = new Usage(this, (a) null);
            if ((this.f10925e & 1) != 0) {
                this.f10926f = this.f10926f.V0();
                this.f10925e &= -2;
            }
            usage.requirements_ = this.f10926f;
            l2<UsageRule, UsageRule.b, o1> l2Var = this.f10928h;
            if (l2Var == null) {
                if ((this.f10925e & 2) != 0) {
                    this.f10927g = Collections.unmodifiableList(this.f10927g);
                    this.f10925e &= -3;
                }
                usage.rules_ = this.f10927g;
            } else {
                usage.rules_ = l2Var.e();
            }
            usage.producerNotificationChannel_ = this.f10929i;
            Q();
            return usage;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Usage getDefaultInstanceForType() {
            return Usage.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n1.f11425a;
        }

        public b h0(Usage usage) {
            if (usage == Usage.getDefaultInstance()) {
                return this;
            }
            if (!usage.requirements_.isEmpty()) {
                if (this.f10926f.isEmpty()) {
                    this.f10926f = usage.requirements_;
                    this.f10925e &= -2;
                } else {
                    a0();
                    this.f10926f.addAll(usage.requirements_);
                }
                R();
            }
            if (this.f10928h == null) {
                if (!usage.rules_.isEmpty()) {
                    if (this.f10927g.isEmpty()) {
                        this.f10927g = usage.rules_;
                        this.f10925e &= -3;
                    } else {
                        b0();
                        this.f10927g.addAll(usage.rules_);
                    }
                    R();
                }
            } else if (!usage.rules_.isEmpty()) {
                if (this.f10928h.k()) {
                    this.f10928h.f();
                    this.f10928h = null;
                    this.f10927g = usage.rules_;
                    this.f10925e &= -3;
                    this.f10928h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10928h.b(usage.rules_);
                }
            }
            if (!usage.getProducerNotificationChannel().isEmpty()) {
                this.f10929i = usage.producerNotificationChannel_;
                R();
            }
            z(((GeneratedMessageV3) usage).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Usage.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Usage.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Usage r3 = (com.google.api.Usage) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Usage r4 = (com.google.api.Usage) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Usage.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Usage$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Usage) {
                return h0((Usage) l1Var);
            }
            super.P0(l1Var);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10926f = com.google.protobuf.y0.f15344d;
            this.f10927g = Collections.emptyList();
            this.f10929i = "";
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10926f = com.google.protobuf.y0.f15344d;
            this.f10927g = Collections.emptyList();
            this.f10929i = "";
            g0();
        }
    }

    /* synthetic */ Usage(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Usage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n1.f11425a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Usage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Usage) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Usage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Usage> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Usage)) {
            return super.equals(obj);
        }
        Usage usage = (Usage) obj;
        return m199getRequirementsList().equals(usage.m199getRequirementsList()) && getRulesList().equals(usage.getRulesList()) && getProducerNotificationChannel().equals(usage.getProducerNotificationChannel()) && this.unknownFields.equals(usage.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Usage> getParserForType() {
        return PARSER;
    }

    public String getProducerNotificationChannel() {
        Object obj = this.producerNotificationChannel_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.producerNotificationChannel_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getProducerNotificationChannelBytes() {
        Object obj = this.producerNotificationChannel_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.producerNotificationChannel_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getRequirements(int i9) {
        return this.requirements_.get(i9);
    }

    public ByteString getRequirementsBytes(int i9) {
        return this.requirements_.j0(i9);
    }

    public int getRequirementsCount() {
        return this.requirements_.size();
    }

    public UsageRule getRules(int i9) {
        return this.rules_.get(i9);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<UsageRule> getRulesList() {
        return this.rules_;
    }

    public o1 getRulesOrBuilder(int i9) {
        return this.rules_.get(i9);
    }

    public List<? extends o1> getRulesOrBuilderList() {
        return this.rules_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.requirements_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.requirements_.c1(i11));
        }
        int size = i10 + 0 + (m199getRequirementsList().size() * 1);
        for (int i12 = 0; i12 < this.rules_.size(); i12++) {
            size += CodedOutputStream.G(6, this.rules_.get(i12));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.producerNotificationChannel_)) {
            size += GeneratedMessageV3.computeStringSize(7, this.producerNotificationChannel_);
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getRequirementsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m199getRequirementsList().hashCode();
        }
        if (getRulesCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getRulesList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + getProducerNotificationChannel().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n1.f11426b.d(Usage.class, b.class);
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
        return new Usage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.requirements_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.requirements_.c1(i9));
        }
        for (int i10 = 0; i10 < this.rules_.size(); i10++) {
            codedOutputStream.L0(6, this.rules_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.producerNotificationChannel_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.producerNotificationChannel_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Usage(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Usage usage) {
        return DEFAULT_INSTANCE.toBuilder().h0(usage);
    }

    public static Usage parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Usage) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Usage parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getRequirementsList */
    public i2 m199getRequirementsList() {
        return this.requirements_;
    }

    private Usage(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Usage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Usage getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static Usage parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Usage() {
        this.memoizedIsInitialized = (byte) -1;
        this.requirements_ = com.google.protobuf.y0.f15344d;
        this.rules_ = Collections.emptyList();
        this.producerNotificationChannel_ = "";
    }

    public static Usage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Usage parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Usage parseFrom(InputStream inputStream) throws IOException {
        return (Usage) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Usage parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Usage) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Usage parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Usage) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Usage(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.requirements_ = new com.google.protobuf.y0();
                                    z11 |= true;
                                }
                                this.requirements_.add(K);
                            } else if (L == 50) {
                                if (!(z11 & true)) {
                                    this.rules_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.rules_.add(pVar.B(UsageRule.parser(), f0Var));
                            } else if (L != 58) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.producerNotificationChannel_ = pVar.K();
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
                    this.requirements_ = this.requirements_.V0();
                }
                if (z11 & true) {
                    this.rules_ = Collections.unmodifiableList(this.rules_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Usage parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Usage) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
