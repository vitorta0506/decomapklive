package com.google.api;

import com.google.api.LabelDescriptor;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class MonitoredResourceDescriptor extends GeneratedMessageV3 implements s0 {
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 2;
    public static final int LABELS_FIELD_NUMBER = 4;
    public static final int LAUNCH_STAGE_FIELD_NUMBER = 7;
    public static final int NAME_FIELD_NUMBER = 5;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private volatile Object displayName_;
    private List<LabelDescriptor> labels_;
    private int launchStage_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private volatile Object type_;
    private static final MonitoredResourceDescriptor DEFAULT_INSTANCE = new MonitoredResourceDescriptor();
    private static final e2<MonitoredResourceDescriptor> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<MonitoredResourceDescriptor> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MonitoredResourceDescriptor m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new MonitoredResourceDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements s0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10825e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10826f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10827g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10828h;

        /* renamed from: i  reason: collision with root package name */
        private Object f10829i;

        /* renamed from: j  reason: collision with root package name */
        private List<LabelDescriptor> f10830j;

        /* renamed from: k  reason: collision with root package name */
        private l2<LabelDescriptor, LabelDescriptor.b, i0> f10831k;

        /* renamed from: l  reason: collision with root package name */
        private int f10832l;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10825e & 1) == 0) {
                this.f10830j = new ArrayList(this.f10830j);
                this.f10825e |= 1;
            }
        }

        private l2<LabelDescriptor, LabelDescriptor.b, i0> d0() {
            if (this.f10831k == null) {
                this.f10831k = new l2<>(this.f10830j, (this.f10825e & 1) != 0, H(), O());
                this.f10830j = null;
            }
            return this.f10831k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return t0.f11470b.d(MonitoredResourceDescriptor.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MonitoredResourceDescriptor build() {
            MonitoredResourceDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MonitoredResourceDescriptor I() {
            MonitoredResourceDescriptor monitoredResourceDescriptor = new MonitoredResourceDescriptor(this, (a) null);
            monitoredResourceDescriptor.name_ = this.f10826f;
            monitoredResourceDescriptor.type_ = this.f10827g;
            monitoredResourceDescriptor.displayName_ = this.f10828h;
            monitoredResourceDescriptor.description_ = this.f10829i;
            l2<LabelDescriptor, LabelDescriptor.b, i0> l2Var = this.f10831k;
            if (l2Var == null) {
                if ((this.f10825e & 1) != 0) {
                    this.f10830j = Collections.unmodifiableList(this.f10830j);
                    this.f10825e &= -2;
                }
                monitoredResourceDescriptor.labels_ = this.f10830j;
            } else {
                monitoredResourceDescriptor.labels_ = l2Var.e();
            }
            monitoredResourceDescriptor.launchStage_ = this.f10832l;
            Q();
            return monitoredResourceDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public MonitoredResourceDescriptor getDefaultInstanceForType() {
            return MonitoredResourceDescriptor.getDefaultInstance();
        }

        public b g0(MonitoredResourceDescriptor monitoredResourceDescriptor) {
            if (monitoredResourceDescriptor == MonitoredResourceDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!monitoredResourceDescriptor.getName().isEmpty()) {
                this.f10826f = monitoredResourceDescriptor.name_;
                R();
            }
            if (!monitoredResourceDescriptor.getType().isEmpty()) {
                this.f10827g = monitoredResourceDescriptor.type_;
                R();
            }
            if (!monitoredResourceDescriptor.getDisplayName().isEmpty()) {
                this.f10828h = monitoredResourceDescriptor.displayName_;
                R();
            }
            if (!monitoredResourceDescriptor.getDescription().isEmpty()) {
                this.f10829i = monitoredResourceDescriptor.description_;
                R();
            }
            if (this.f10831k == null) {
                if (!monitoredResourceDescriptor.labels_.isEmpty()) {
                    if (this.f10830j.isEmpty()) {
                        this.f10830j = monitoredResourceDescriptor.labels_;
                        this.f10825e &= -2;
                    } else {
                        a0();
                        this.f10830j.addAll(monitoredResourceDescriptor.labels_);
                    }
                    R();
                }
            } else if (!monitoredResourceDescriptor.labels_.isEmpty()) {
                if (this.f10831k.k()) {
                    this.f10831k.f();
                    this.f10831k = null;
                    this.f10830j = monitoredResourceDescriptor.labels_;
                    this.f10825e &= -2;
                    this.f10831k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10831k.b(monitoredResourceDescriptor.labels_);
                }
            }
            if (monitoredResourceDescriptor.launchStage_ != 0) {
                l0(monitoredResourceDescriptor.getLaunchStageValue());
            }
            z(((GeneratedMessageV3) monitoredResourceDescriptor).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return t0.f11469a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.MonitoredResourceDescriptor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.MonitoredResourceDescriptor.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.MonitoredResourceDescriptor r3 = (com.google.api.MonitoredResourceDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.MonitoredResourceDescriptor r4 = (com.google.api.MonitoredResourceDescriptor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.MonitoredResourceDescriptor.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.MonitoredResourceDescriptor$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof MonitoredResourceDescriptor) {
                return g0((MonitoredResourceDescriptor) l1Var);
            }
            super.P0(l1Var);
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

        public b l0(int i9) {
            this.f10832l = i9;
            R();
            return this;
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
            this.f10826f = "";
            this.f10827g = "";
            this.f10828h = "";
            this.f10829i = "";
            this.f10830j = Collections.emptyList();
            this.f10832l = 0;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10826f = "";
            this.f10827g = "";
            this.f10828h = "";
            this.f10829i = "";
            this.f10830j = Collections.emptyList();
            this.f10832l = 0;
            e0();
        }
    }

    /* synthetic */ MonitoredResourceDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MonitoredResourceDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return t0.f11469a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MonitoredResourceDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MonitoredResourceDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MonitoredResourceDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MonitoredResourceDescriptor)) {
            return super.equals(obj);
        }
        MonitoredResourceDescriptor monitoredResourceDescriptor = (MonitoredResourceDescriptor) obj;
        return getName().equals(monitoredResourceDescriptor.getName()) && getType().equals(monitoredResourceDescriptor.getType()) && getDisplayName().equals(monitoredResourceDescriptor.getDisplayName()) && getDescription().equals(monitoredResourceDescriptor.getDescription()) && getLabelsList().equals(monitoredResourceDescriptor.getLabelsList()) && this.launchStage_ == monitoredResourceDescriptor.launchStage_ && this.unknownFields.equals(monitoredResourceDescriptor.unknownFields);
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getDisplayName() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.displayName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDisplayNameBytes() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.displayName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public LabelDescriptor getLabels(int i9) {
        return this.labels_.get(i9);
    }

    public int getLabelsCount() {
        return this.labels_.size();
    }

    public List<LabelDescriptor> getLabelsList() {
        return this.labels_;
    }

    public i0 getLabelsOrBuilder(int i9) {
        return this.labels_.get(i9);
    }

    public List<? extends i0> getLabelsOrBuilderList() {
        return this.labels_;
    }

    public LaunchStage getLaunchStage() {
        LaunchStage valueOf = LaunchStage.valueOf(this.launchStage_);
        return valueOf == null ? LaunchStage.UNRECOGNIZED : valueOf;
    }

    public int getLaunchStageValue() {
        return this.launchStage_;
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
    public e2<MonitoredResourceDescriptor> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.type_) ? GeneratedMessageV3.computeStringSize(1, this.type_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.displayName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.description_);
        }
        for (int i10 = 0; i10 < this.labels_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(4, this.labels_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.name_);
        }
        if (this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(7, this.launchStage_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 5) * 53) + getName().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + getDisplayName().hashCode()) * 37) + 3) * 53) + getDescription().hashCode();
        if (getLabelsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getLabelsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + this.launchStage_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return t0.f11470b.d(MonitoredResourceDescriptor.class, b.class);
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
        return new MonitoredResourceDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.displayName_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.description_);
        }
        for (int i9 = 0; i9 < this.labels_.size(); i9++) {
            codedOutputStream.L0(4, this.labels_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.name_);
        }
        if (this.launchStage_ != LaunchStage.LAUNCH_STAGE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(7, this.launchStage_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MonitoredResourceDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MonitoredResourceDescriptor monitoredResourceDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().g0(monitoredResourceDescriptor);
    }

    public static MonitoredResourceDescriptor parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MonitoredResourceDescriptor parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MonitoredResourceDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MonitoredResourceDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MonitoredResourceDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static MonitoredResourceDescriptor parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MonitoredResourceDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.type_ = "";
        this.displayName_ = "";
        this.description_ = "";
        this.labels_ = Collections.emptyList();
        this.launchStage_ = 0;
    }

    public static MonitoredResourceDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MonitoredResourceDescriptor parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MonitoredResourceDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static MonitoredResourceDescriptor parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MonitoredResourceDescriptor parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MonitoredResourceDescriptor parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private MonitoredResourceDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.type_ = pVar.K();
                            } else if (L == 18) {
                                this.displayName_ = pVar.K();
                            } else if (L == 26) {
                                this.description_ = pVar.K();
                            } else if (L == 34) {
                                if (!(z11 & true)) {
                                    this.labels_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.labels_.add(pVar.B(LabelDescriptor.parser(), f0Var));
                            } else if (L == 42) {
                                this.name_ = pVar.K();
                            } else if (L != 56) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.launchStage_ = pVar.u();
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
                    this.labels_ = Collections.unmodifiableList(this.labels_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
