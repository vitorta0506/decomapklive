package com.google.api;

import com.google.api.DocumentationRule;
import com.google.api.Page;
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
public final class Documentation extends GeneratedMessageV3 implements w {
    public static final int DOCUMENTATION_ROOT_URL_FIELD_NUMBER = 4;
    public static final int OVERVIEW_FIELD_NUMBER = 2;
    public static final int PAGES_FIELD_NUMBER = 5;
    public static final int RULES_FIELD_NUMBER = 3;
    public static final int SERVICE_ROOT_URL_FIELD_NUMBER = 6;
    public static final int SUMMARY_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object documentationRootUrl_;
    private byte memoizedIsInitialized;
    private volatile Object overview_;
    private List<Page> pages_;
    private List<DocumentationRule> rules_;
    private volatile Object serviceRootUrl_;
    private volatile Object summary_;
    private static final Documentation DEFAULT_INSTANCE = new Documentation();
    private static final e2<Documentation> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Documentation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Documentation m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Documentation(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements w {

        /* renamed from: e  reason: collision with root package name */
        private int f10740e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10741f;

        /* renamed from: g  reason: collision with root package name */
        private List<Page> f10742g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Page, Page.b, x0> f10743h;

        /* renamed from: i  reason: collision with root package name */
        private List<DocumentationRule> f10744i;

        /* renamed from: j  reason: collision with root package name */
        private l2<DocumentationRule, DocumentationRule.b, y> f10745j;

        /* renamed from: k  reason: collision with root package name */
        private Object f10746k;

        /* renamed from: l  reason: collision with root package name */
        private Object f10747l;

        /* renamed from: m  reason: collision with root package name */
        private Object f10748m;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10740e & 1) == 0) {
                this.f10742g = new ArrayList(this.f10742g);
                this.f10740e |= 1;
            }
        }

        private void b0() {
            if ((this.f10740e & 2) == 0) {
                this.f10744i = new ArrayList(this.f10744i);
                this.f10740e |= 2;
            }
        }

        private l2<Page, Page.b, x0> e0() {
            if (this.f10743h == null) {
                this.f10743h = new l2<>(this.f10742g, (this.f10740e & 1) != 0, H(), O());
                this.f10742g = null;
            }
            return this.f10743h;
        }

        private l2<DocumentationRule, DocumentationRule.b, y> g0() {
            if (this.f10745j == null) {
                this.f10745j = new l2<>(this.f10744i, (this.f10740e & 2) != 0, H(), O());
                this.f10744i = null;
            }
            return this.f10745j;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return x.f11501b.d(Documentation.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Documentation build() {
            Documentation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Documentation I() {
            Documentation documentation = new Documentation(this, (a) null);
            documentation.summary_ = this.f10741f;
            l2<Page, Page.b, x0> l2Var = this.f10743h;
            if (l2Var == null) {
                if ((this.f10740e & 1) != 0) {
                    this.f10742g = Collections.unmodifiableList(this.f10742g);
                    this.f10740e &= -2;
                }
                documentation.pages_ = this.f10742g;
            } else {
                documentation.pages_ = l2Var.e();
            }
            l2<DocumentationRule, DocumentationRule.b, y> l2Var2 = this.f10745j;
            if (l2Var2 == null) {
                if ((this.f10740e & 2) != 0) {
                    this.f10744i = Collections.unmodifiableList(this.f10744i);
                    this.f10740e &= -3;
                }
                documentation.rules_ = this.f10744i;
            } else {
                documentation.rules_ = l2Var2.e();
            }
            documentation.documentationRootUrl_ = this.f10746k;
            documentation.serviceRootUrl_ = this.f10747l;
            documentation.overview_ = this.f10748m;
            Q();
            return documentation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Documentation getDefaultInstanceForType() {
            return Documentation.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return x.f11500a;
        }

        public b i0(Documentation documentation) {
            if (documentation == Documentation.getDefaultInstance()) {
                return this;
            }
            if (!documentation.getSummary().isEmpty()) {
                this.f10741f = documentation.summary_;
                R();
            }
            if (this.f10743h == null) {
                if (!documentation.pages_.isEmpty()) {
                    if (this.f10742g.isEmpty()) {
                        this.f10742g = documentation.pages_;
                        this.f10740e &= -2;
                    } else {
                        a0();
                        this.f10742g.addAll(documentation.pages_);
                    }
                    R();
                }
            } else if (!documentation.pages_.isEmpty()) {
                if (this.f10743h.k()) {
                    this.f10743h.f();
                    this.f10743h = null;
                    this.f10742g = documentation.pages_;
                    this.f10740e &= -2;
                    this.f10743h = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10743h.b(documentation.pages_);
                }
            }
            if (this.f10745j == null) {
                if (!documentation.rules_.isEmpty()) {
                    if (this.f10744i.isEmpty()) {
                        this.f10744i = documentation.rules_;
                        this.f10740e &= -3;
                    } else {
                        b0();
                        this.f10744i.addAll(documentation.rules_);
                    }
                    R();
                }
            } else if (!documentation.rules_.isEmpty()) {
                if (this.f10745j.k()) {
                    this.f10745j.f();
                    this.f10745j = null;
                    this.f10744i = documentation.rules_;
                    this.f10740e &= -3;
                    this.f10745j = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f10745j.b(documentation.rules_);
                }
            }
            if (!documentation.getDocumentationRootUrl().isEmpty()) {
                this.f10746k = documentation.documentationRootUrl_;
                R();
            }
            if (!documentation.getServiceRootUrl().isEmpty()) {
                this.f10747l = documentation.serviceRootUrl_;
                R();
            }
            if (!documentation.getOverview().isEmpty()) {
                this.f10748m = documentation.overview_;
                R();
            }
            z(((GeneratedMessageV3) documentation).unknownFields);
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
        public com.google.api.Documentation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Documentation.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Documentation r3 = (com.google.api.Documentation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Documentation r4 = (com.google.api.Documentation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Documentation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Documentation$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Documentation) {
                return i0((Documentation) l1Var);
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
            this.f10741f = "";
            this.f10742g = Collections.emptyList();
            this.f10744i = Collections.emptyList();
            this.f10746k = "";
            this.f10747l = "";
            this.f10748m = "";
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10741f = "";
            this.f10742g = Collections.emptyList();
            this.f10744i = Collections.emptyList();
            this.f10746k = "";
            this.f10747l = "";
            this.f10748m = "";
            h0();
        }
    }

    /* synthetic */ Documentation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Documentation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return x.f11500a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Documentation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Documentation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Documentation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Documentation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Documentation)) {
            return super.equals(obj);
        }
        Documentation documentation = (Documentation) obj;
        return getSummary().equals(documentation.getSummary()) && getPagesList().equals(documentation.getPagesList()) && getRulesList().equals(documentation.getRulesList()) && getDocumentationRootUrl().equals(documentation.getDocumentationRootUrl()) && getServiceRootUrl().equals(documentation.getServiceRootUrl()) && getOverview().equals(documentation.getOverview()) && this.unknownFields.equals(documentation.unknownFields);
    }

    public String getDocumentationRootUrl() {
        Object obj = this.documentationRootUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.documentationRootUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDocumentationRootUrlBytes() {
        Object obj = this.documentationRootUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.documentationRootUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getOverview() {
        Object obj = this.overview_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.overview_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOverviewBytes() {
        Object obj = this.overview_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.overview_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Page getPages(int i9) {
        return this.pages_.get(i9);
    }

    public int getPagesCount() {
        return this.pages_.size();
    }

    public List<Page> getPagesList() {
        return this.pages_;
    }

    public x0 getPagesOrBuilder(int i9) {
        return this.pages_.get(i9);
    }

    public List<? extends x0> getPagesOrBuilderList() {
        return this.pages_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Documentation> getParserForType() {
        return PARSER;
    }

    public DocumentationRule getRules(int i9) {
        return this.rules_.get(i9);
    }

    public int getRulesCount() {
        return this.rules_.size();
    }

    public List<DocumentationRule> getRulesList() {
        return this.rules_;
    }

    public y getRulesOrBuilder(int i9) {
        return this.rules_.get(i9);
    }

    public List<? extends y> getRulesOrBuilderList() {
        return this.rules_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.summary_) ? GeneratedMessageV3.computeStringSize(1, this.summary_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.overview_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.overview_);
        }
        for (int i10 = 0; i10 < this.rules_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.rules_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.documentationRootUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.documentationRootUrl_);
        }
        for (int i11 = 0; i11 < this.pages_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(5, this.pages_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceRootUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.serviceRootUrl_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getServiceRootUrl() {
        Object obj = this.serviceRootUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.serviceRootUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getServiceRootUrlBytes() {
        Object obj = this.serviceRootUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serviceRootUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getSummary() {
        Object obj = this.summary_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.summary_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSummaryBytes() {
        Object obj = this.summary_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.summary_ = copyFromUtf8;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSummary().hashCode();
        if (getPagesCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getPagesList().hashCode();
        }
        if (getRulesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRulesList().hashCode();
        }
        int hashCode2 = (((((((((((((hashCode * 37) + 4) * 53) + getDocumentationRootUrl().hashCode()) * 37) + 6) * 53) + getServiceRootUrl().hashCode()) * 37) + 2) * 53) + getOverview().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return x.f11501b.d(Documentation.class, b.class);
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
        return new Documentation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.summary_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.summary_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.overview_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.overview_);
        }
        for (int i9 = 0; i9 < this.rules_.size(); i9++) {
            codedOutputStream.L0(3, this.rules_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.documentationRootUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.documentationRootUrl_);
        }
        for (int i10 = 0; i10 < this.pages_.size(); i10++) {
            codedOutputStream.L0(5, this.pages_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serviceRootUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.serviceRootUrl_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Documentation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Documentation documentation) {
        return DEFAULT_INSTANCE.toBuilder().i0(documentation);
    }

    public static Documentation parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Documentation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Documentation parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Documentation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Documentation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Documentation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Documentation parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Documentation() {
        this.memoizedIsInitialized = (byte) -1;
        this.summary_ = "";
        this.pages_ = Collections.emptyList();
        this.rules_ = Collections.emptyList();
        this.documentationRootUrl_ = "";
        this.serviceRootUrl_ = "";
        this.overview_ = "";
    }

    public static Documentation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Documentation parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Documentation parseFrom(InputStream inputStream) throws IOException {
        return (Documentation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Documentation parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Documentation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Documentation parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Documentation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Documentation parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Documentation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Documentation(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.summary_ = pVar.K();
                        } else if (L == 18) {
                            this.overview_ = pVar.K();
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.rules_ = new ArrayList();
                                z11 |= true;
                            }
                            this.rules_.add(pVar.B(DocumentationRule.parser(), f0Var));
                        } else if (L == 34) {
                            this.documentationRootUrl_ = pVar.K();
                        } else if (L == 42) {
                            if (!(z11 & true)) {
                                this.pages_ = new ArrayList();
                                z11 |= true;
                            }
                            this.pages_.add(pVar.B(Page.parser(), f0Var));
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.serviceRootUrl_ = pVar.K();
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
                    this.rules_ = Collections.unmodifiableList(this.rules_);
                }
                if (z11 & true) {
                    this.pages_ = Collections.unmodifiableList(this.pages_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
