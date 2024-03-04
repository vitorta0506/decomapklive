package com.google.api;

import com.google.api.Advice;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
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
public final class ConfigChange extends GeneratedMessageV3 implements r1 {
    public static final int ADVICES_FIELD_NUMBER = 5;
    public static final int CHANGE_TYPE_FIELD_NUMBER = 4;
    public static final int ELEMENT_FIELD_NUMBER = 1;
    public static final int NEW_VALUE_FIELD_NUMBER = 3;
    public static final int OLD_VALUE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<Advice> advices_;
    private int changeType_;
    private volatile Object element_;
    private byte memoizedIsInitialized;
    private volatile Object newValue_;
    private volatile Object oldValue_;
    private static final ConfigChange DEFAULT_INSTANCE = new ConfigChange();
    private static final e2<ConfigChange> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ConfigChange> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ConfigChange m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ConfigChange(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10688e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10689f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10690g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10691h;

        /* renamed from: i  reason: collision with root package name */
        private int f10692i;

        /* renamed from: j  reason: collision with root package name */
        private List<Advice> f10693j;

        /* renamed from: k  reason: collision with root package name */
        private l2<Advice, Advice.b, com.google.api.a> f10694k;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10688e & 1) == 0) {
                this.f10693j = new ArrayList(this.f10693j);
                this.f10688e |= 1;
            }
        }

        private l2<Advice, Advice.b, com.google.api.a> b0() {
            if (this.f10694k == null) {
                this.f10694k = new l2<>(this.f10693j, (this.f10688e & 1) != 0, H(), O());
                this.f10693j = null;
            }
            return this.f10694k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n.f11421b.d(ConfigChange.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ConfigChange build() {
            ConfigChange I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ConfigChange I() {
            ConfigChange configChange = new ConfigChange(this, (a) null);
            configChange.element_ = this.f10689f;
            configChange.oldValue_ = this.f10690g;
            configChange.newValue_ = this.f10691h;
            configChange.changeType_ = this.f10692i;
            l2<Advice, Advice.b, com.google.api.a> l2Var = this.f10694k;
            if (l2Var == null) {
                if ((this.f10688e & 1) != 0) {
                    this.f10693j = Collections.unmodifiableList(this.f10693j);
                    this.f10688e &= -2;
                }
                configChange.advices_ = this.f10693j;
            } else {
                configChange.advices_ = l2Var.e();
            }
            Q();
            return configChange;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ConfigChange getDefaultInstanceForType() {
            return ConfigChange.getDefaultInstance();
        }

        public b g0(ConfigChange configChange) {
            if (configChange == ConfigChange.getDefaultInstance()) {
                return this;
            }
            if (!configChange.getElement().isEmpty()) {
                this.f10689f = configChange.element_;
                R();
            }
            if (!configChange.getOldValue().isEmpty()) {
                this.f10690g = configChange.oldValue_;
                R();
            }
            if (!configChange.getNewValue().isEmpty()) {
                this.f10691h = configChange.newValue_;
                R();
            }
            if (configChange.changeType_ != 0) {
                k0(configChange.getChangeTypeValue());
            }
            if (this.f10694k == null) {
                if (!configChange.advices_.isEmpty()) {
                    if (this.f10693j.isEmpty()) {
                        this.f10693j = configChange.advices_;
                        this.f10688e &= -2;
                    } else {
                        a0();
                        this.f10693j.addAll(configChange.advices_);
                    }
                    R();
                }
            } else if (!configChange.advices_.isEmpty()) {
                if (this.f10694k.k()) {
                    this.f10694k.f();
                    this.f10694k = null;
                    this.f10693j = configChange.advices_;
                    this.f10688e &= -2;
                    this.f10694k = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f10694k.b(configChange.advices_);
                }
            }
            z(((GeneratedMessageV3) configChange).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n.f11420a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.ConfigChange.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.ConfigChange.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.ConfigChange r3 = (com.google.api.ConfigChange) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.ConfigChange r4 = (com.google.api.ConfigChange) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.ConfigChange.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.ConfigChange$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ConfigChange) {
                return g0((ConfigChange) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(int i9) {
            this.f10692i = i9;
            R();
            return this;
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
            this.f10689f = "";
            this.f10690g = "";
            this.f10691h = "";
            this.f10692i = 0;
            this.f10693j = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10689f = "";
            this.f10690g = "";
            this.f10691h = "";
            this.f10692i = 0;
            this.f10693j = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ConfigChange(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ConfigChange getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n.f11420a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ConfigChange parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ConfigChange parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ConfigChange> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConfigChange)) {
            return super.equals(obj);
        }
        ConfigChange configChange = (ConfigChange) obj;
        return getElement().equals(configChange.getElement()) && getOldValue().equals(configChange.getOldValue()) && getNewValue().equals(configChange.getNewValue()) && this.changeType_ == configChange.changeType_ && getAdvicesList().equals(configChange.getAdvicesList()) && this.unknownFields.equals(configChange.unknownFields);
    }

    public Advice getAdvices(int i9) {
        return this.advices_.get(i9);
    }

    public int getAdvicesCount() {
        return this.advices_.size();
    }

    public List<Advice> getAdvicesList() {
        return this.advices_;
    }

    public com.google.api.a getAdvicesOrBuilder(int i9) {
        return this.advices_.get(i9);
    }

    public List<? extends com.google.api.a> getAdvicesOrBuilderList() {
        return this.advices_;
    }

    public ChangeType getChangeType() {
        ChangeType valueOf = ChangeType.valueOf(this.changeType_);
        return valueOf == null ? ChangeType.UNRECOGNIZED : valueOf;
    }

    public int getChangeTypeValue() {
        return this.changeType_;
    }

    public String getElement() {
        Object obj = this.element_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.element_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getElementBytes() {
        Object obj = this.element_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.element_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getNewValue() {
        Object obj = this.newValue_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.newValue_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNewValueBytes() {
        Object obj = this.newValue_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.newValue_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getOldValue() {
        Object obj = this.oldValue_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.oldValue_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOldValueBytes() {
        Object obj = this.oldValue_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.oldValue_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ConfigChange> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.element_) ? GeneratedMessageV3.computeStringSize(1, this.element_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.oldValue_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.oldValue_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.newValue_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.newValue_);
        }
        if (this.changeType_ != ChangeType.CHANGE_TYPE_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(4, this.changeType_);
        }
        for (int i10 = 0; i10 < this.advices_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(5, this.advices_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getElement().hashCode()) * 37) + 2) * 53) + getOldValue().hashCode()) * 37) + 3) * 53) + getNewValue().hashCode()) * 37) + 4) * 53) + this.changeType_;
        if (getAdvicesCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getAdvicesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n.f11421b.d(ConfigChange.class, b.class);
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
        return new ConfigChange();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.element_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.element_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.oldValue_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.oldValue_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.newValue_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.newValue_);
        }
        if (this.changeType_ != ChangeType.CHANGE_TYPE_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.changeType_);
        }
        for (int i9 = 0; i9 < this.advices_.size(); i9++) {
            codedOutputStream.L0(5, this.advices_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ConfigChange(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ConfigChange configChange) {
        return DEFAULT_INSTANCE.toBuilder().g0(configChange);
    }

    public static ConfigChange parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ConfigChange parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ConfigChange(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ConfigChange parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ConfigChange getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ConfigChange parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ConfigChange() {
        this.memoizedIsInitialized = (byte) -1;
        this.element_ = "";
        this.oldValue_ = "";
        this.newValue_ = "";
        this.changeType_ = 0;
        this.advices_ = Collections.emptyList();
    }

    public static ConfigChange parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ConfigChange parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ConfigChange parseFrom(InputStream inputStream) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ConfigChange parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ConfigChange parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ConfigChange parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ConfigChange) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ConfigChange(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.element_ = pVar.K();
                        } else if (L == 18) {
                            this.oldValue_ = pVar.K();
                        } else if (L == 26) {
                            this.newValue_ = pVar.K();
                        } else if (L == 32) {
                            this.changeType_ = pVar.u();
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.advices_ = new ArrayList();
                                z11 |= true;
                            }
                            this.advices_.add(pVar.B(Advice.parser(), f0Var));
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
                    this.advices_ = Collections.unmodifiableList(this.advices_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
