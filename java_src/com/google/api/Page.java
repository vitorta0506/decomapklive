package com.google.api;

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
public final class Page extends GeneratedMessageV3 implements x0 {
    public static final int CONTENT_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SUBPAGES_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object content_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Page> subpages_;
    private static final Page DEFAULT_INSTANCE = new Page();
    private static final e2<Page> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Page> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Page m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Page(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements x0 {

        /* renamed from: e  reason: collision with root package name */
        private int f10846e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10847f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10848g;

        /* renamed from: h  reason: collision with root package name */
        private List<Page> f10849h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Page, b, x0> f10850i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10846e & 1) == 0) {
                this.f10849h = new ArrayList(this.f10849h);
                this.f10846e |= 1;
            }
        }

        private l2<Page, b, x0> d0() {
            if (this.f10850i == null) {
                this.f10850i = new l2<>(this.f10849h, (this.f10846e & 1) != 0, H(), O());
                this.f10849h = null;
            }
            return this.f10850i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return x.f11505f.d(Page.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Page build() {
            Page I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Page I() {
            Page page = new Page(this, (a) null);
            page.name_ = this.f10847f;
            page.content_ = this.f10848g;
            l2<Page, b, x0> l2Var = this.f10850i;
            if (l2Var == null) {
                if ((this.f10846e & 1) != 0) {
                    this.f10849h = Collections.unmodifiableList(this.f10849h);
                    this.f10846e &= -2;
                }
                page.subpages_ = this.f10849h;
            } else {
                page.subpages_ = l2Var.e();
            }
            Q();
            return page;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public Page getDefaultInstanceForType() {
            return Page.getDefaultInstance();
        }

        public b g0(Page page) {
            if (page == Page.getDefaultInstance()) {
                return this;
            }
            if (!page.getName().isEmpty()) {
                this.f10847f = page.name_;
                R();
            }
            if (!page.getContent().isEmpty()) {
                this.f10848g = page.content_;
                R();
            }
            if (this.f10850i == null) {
                if (!page.subpages_.isEmpty()) {
                    if (this.f10849h.isEmpty()) {
                        this.f10849h = page.subpages_;
                        this.f10846e &= -2;
                    } else {
                        a0();
                        this.f10849h.addAll(page.subpages_);
                    }
                    R();
                }
            } else if (!page.subpages_.isEmpty()) {
                if (this.f10850i.k()) {
                    this.f10850i.f();
                    this.f10850i = null;
                    this.f10849h = page.subpages_;
                    this.f10846e &= -2;
                    this.f10850i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10850i.b(page.subpages_);
                }
            }
            z(((GeneratedMessageV3) page).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return x.f11504e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.Page.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Page.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Page r3 = (com.google.api.Page) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Page r4 = (com.google.api.Page) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Page.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Page$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Page) {
                return g0((Page) l1Var);
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
            this.f10847f = "";
            this.f10848g = "";
            this.f10849h = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10847f = "";
            this.f10848g = "";
            this.f10849h = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ Page(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Page getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return x.f11504e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Page parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Page) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Page parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Page> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Page)) {
            return super.equals(obj);
        }
        Page page = (Page) obj;
        return getName().equals(page.getName()) && getContent().equals(page.getContent()) && getSubpagesList().equals(page.getSubpagesList()) && this.unknownFields.equals(page.unknownFields);
    }

    public String getContent() {
        Object obj = this.content_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.content_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getContentBytes() {
        Object obj = this.content_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
    public e2<Page> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.content_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.content_);
        }
        for (int i10 = 0; i10 < this.subpages_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.subpages_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Page getSubpages(int i9) {
        return this.subpages_.get(i9);
    }

    public int getSubpagesCount() {
        return this.subpages_.size();
    }

    public List<Page> getSubpagesList() {
        return this.subpages_;
    }

    public x0 getSubpagesOrBuilder(int i9) {
        return this.subpages_.get(i9);
    }

    public List<? extends x0> getSubpagesOrBuilderList() {
        return this.subpages_;
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getContent().hashCode();
        if (getSubpagesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getSubpagesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return x.f11505f.d(Page.class, b.class);
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
        return new Page();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.content_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.content_);
        }
        for (int i9 = 0; i9 < this.subpages_.size(); i9++) {
            codedOutputStream.L0(3, this.subpages_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Page(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Page page) {
        return DEFAULT_INSTANCE.toBuilder().g0(page);
    }

    public static Page parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Page) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Page parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Page(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Page parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Page getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Page parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Page() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.content_ = "";
        this.subpages_ = Collections.emptyList();
    }

    public static Page parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Page parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Page parseFrom(InputStream inputStream) throws IOException {
        return (Page) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Page parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Page) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Page parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Page) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Page(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                this.content_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.subpages_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.subpages_.add(pVar.B(parser(), f0Var));
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
                    this.subpages_ = Collections.unmodifiableList(this.subpages_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Page parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Page) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
