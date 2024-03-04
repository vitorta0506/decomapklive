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
public final class LogDescriptor extends GeneratedMessageV3 implements l0 {
    public static final int DESCRIPTION_FIELD_NUMBER = 3;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 4;
    public static final int LABELS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object description_;
    private volatile Object displayName_;
    private List<LabelDescriptor> labels_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final LogDescriptor DEFAULT_INSTANCE = new LogDescriptor();
    private static final e2<LogDescriptor> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<LogDescriptor> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LogDescriptor m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new LogDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10783e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10784f;

        /* renamed from: g  reason: collision with root package name */
        private List<LabelDescriptor> f10785g;

        /* renamed from: h  reason: collision with root package name */
        private l2<LabelDescriptor, LabelDescriptor.b, i0> f10786h;

        /* renamed from: i  reason: collision with root package name */
        private Object f10787i;

        /* renamed from: j  reason: collision with root package name */
        private Object f10788j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10783e & 1) == 0) {
                this.f10785g = new ArrayList(this.f10785g);
                this.f10783e |= 1;
            }
        }

        private l2<LabelDescriptor, LabelDescriptor.b, i0> d0() {
            if (this.f10786h == null) {
                this.f10786h = new l2<>(this.f10785g, (this.f10783e & 1) != 0, H(), O());
                this.f10785g = null;
            }
            return this.f10786h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m0.f11418b.d(LogDescriptor.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LogDescriptor build() {
            LogDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LogDescriptor I() {
            LogDescriptor logDescriptor = new LogDescriptor(this, (a) null);
            logDescriptor.name_ = this.f10784f;
            l2<LabelDescriptor, LabelDescriptor.b, i0> l2Var = this.f10786h;
            if (l2Var == null) {
                if ((this.f10783e & 1) != 0) {
                    this.f10785g = Collections.unmodifiableList(this.f10785g);
                    this.f10783e &= -2;
                }
                logDescriptor.labels_ = this.f10785g;
            } else {
                logDescriptor.labels_ = l2Var.e();
            }
            logDescriptor.description_ = this.f10787i;
            logDescriptor.displayName_ = this.f10788j;
            Q();
            return logDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LogDescriptor getDefaultInstanceForType() {
            return LogDescriptor.getDefaultInstance();
        }

        public b g0(LogDescriptor logDescriptor) {
            if (logDescriptor == LogDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!logDescriptor.getName().isEmpty()) {
                this.f10784f = logDescriptor.name_;
                R();
            }
            if (this.f10786h == null) {
                if (!logDescriptor.labels_.isEmpty()) {
                    if (this.f10785g.isEmpty()) {
                        this.f10785g = logDescriptor.labels_;
                        this.f10783e &= -2;
                    } else {
                        a0();
                        this.f10785g.addAll(logDescriptor.labels_);
                    }
                    R();
                }
            } else if (!logDescriptor.labels_.isEmpty()) {
                if (this.f10786h.k()) {
                    this.f10786h.f();
                    this.f10786h = null;
                    this.f10785g = logDescriptor.labels_;
                    this.f10783e &= -2;
                    this.f10786h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10786h.b(logDescriptor.labels_);
                }
            }
            if (!logDescriptor.getDescription().isEmpty()) {
                this.f10787i = logDescriptor.description_;
                R();
            }
            if (!logDescriptor.getDisplayName().isEmpty()) {
                this.f10788j = logDescriptor.displayName_;
                R();
            }
            z(((GeneratedMessageV3) logDescriptor).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m0.f11417a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.LogDescriptor.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.LogDescriptor.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.LogDescriptor r3 = (com.google.api.LogDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.LogDescriptor r4 = (com.google.api.LogDescriptor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.LogDescriptor.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.LogDescriptor$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof LogDescriptor) {
                return g0((LogDescriptor) l1Var);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10784f = "";
            this.f10785g = Collections.emptyList();
            this.f10787i = "";
            this.f10788j = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10784f = "";
            this.f10785g = Collections.emptyList();
            this.f10787i = "";
            this.f10788j = "";
            e0();
        }
    }

    /* synthetic */ LogDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LogDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m0.f11417a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LogDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LogDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LogDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogDescriptor)) {
            return super.equals(obj);
        }
        LogDescriptor logDescriptor = (LogDescriptor) obj;
        return getName().equals(logDescriptor.getName()) && getLabelsList().equals(logDescriptor.getLabelsList()) && getDescription().equals(logDescriptor.getDescription()) && getDisplayName().equals(logDescriptor.getDisplayName()) && this.unknownFields.equals(logDescriptor.unknownFields);
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
    public e2<LogDescriptor> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.labels_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.labels_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.description_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.displayName_);
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getLabelsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLabelsList().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 3) * 53) + getDescription().hashCode()) * 37) + 4) * 53) + getDisplayName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m0.f11418b.d(LogDescriptor.class, b.class);
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
        return new LogDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.labels_.size(); i9++) {
            codedOutputStream.L0(2, this.labels_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.description_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.displayName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LogDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LogDescriptor logDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().g0(logDescriptor);
    }

    public static LogDescriptor parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LogDescriptor parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private LogDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LogDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LogDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static LogDescriptor parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LogDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.labels_ = Collections.emptyList();
        this.description_ = "";
        this.displayName_ = "";
    }

    public static LogDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LogDescriptor parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LogDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static LogDescriptor parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LogDescriptor parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LogDescriptor parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (LogDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LogDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.name_ = pVar.K();
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.labels_ = new ArrayList();
                                z11 |= true;
                            }
                            this.labels_.add(pVar.B(LabelDescriptor.parser(), f0Var));
                        } else if (L == 26) {
                            this.description_ = pVar.K();
                        } else if (L != 34) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.displayName_ = pVar.K();
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
                    this.labels_ = Collections.unmodifiableList(this.labels_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
