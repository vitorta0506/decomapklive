package com.google.type;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.r1;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class PostalAddress extends GeneratedMessageV3 implements r1 {
    public static final int ADDRESS_LINES_FIELD_NUMBER = 9;
    public static final int ADMINISTRATIVE_AREA_FIELD_NUMBER = 6;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    public static final int LOCALITY_FIELD_NUMBER = 7;
    public static final int ORGANIZATION_FIELD_NUMBER = 11;
    public static final int POSTAL_CODE_FIELD_NUMBER = 4;
    public static final int RECIPIENTS_FIELD_NUMBER = 10;
    public static final int REGION_CODE_FIELD_NUMBER = 2;
    public static final int REVISION_FIELD_NUMBER = 1;
    public static final int SORTING_CODE_FIELD_NUMBER = 5;
    public static final int SUBLOCALITY_FIELD_NUMBER = 8;
    private static final long serialVersionUID = 0;
    private z0 addressLines_;
    private volatile Object administrativeArea_;
    private volatile Object languageCode_;
    private volatile Object locality_;
    private byte memoizedIsInitialized;
    private volatile Object organization_;
    private volatile Object postalCode_;
    private z0 recipients_;
    private volatile Object regionCode_;
    private int revision_;
    private volatile Object sortingCode_;
    private volatile Object sublocality_;
    private static final PostalAddress DEFAULT_INSTANCE = new PostalAddress();
    private static final e2<PostalAddress> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<PostalAddress> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PostalAddress m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PostalAddress(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15767e;

        /* renamed from: f  reason: collision with root package name */
        private int f15768f;

        /* renamed from: g  reason: collision with root package name */
        private Object f15769g;

        /* renamed from: h  reason: collision with root package name */
        private Object f15770h;

        /* renamed from: i  reason: collision with root package name */
        private Object f15771i;

        /* renamed from: j  reason: collision with root package name */
        private Object f15772j;

        /* renamed from: k  reason: collision with root package name */
        private Object f15773k;

        /* renamed from: l  reason: collision with root package name */
        private Object f15774l;

        /* renamed from: m  reason: collision with root package name */
        private Object f15775m;

        /* renamed from: n  reason: collision with root package name */
        private z0 f15776n;

        /* renamed from: o  reason: collision with root package name */
        private z0 f15777o;

        /* renamed from: p  reason: collision with root package name */
        private Object f15778p;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15767e & 1) == 0) {
                this.f15776n = new y0(this.f15776n);
                this.f15767e |= 1;
            }
        }

        private void b0() {
            if ((this.f15767e & 2) == 0) {
                this.f15777o = new y0(this.f15777o);
                this.f15767e |= 2;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return p.f15830b.d(PostalAddress.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PostalAddress build() {
            PostalAddress I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PostalAddress I() {
            PostalAddress postalAddress = new PostalAddress(this, (a) null);
            postalAddress.revision_ = this.f15768f;
            postalAddress.regionCode_ = this.f15769g;
            postalAddress.languageCode_ = this.f15770h;
            postalAddress.postalCode_ = this.f15771i;
            postalAddress.sortingCode_ = this.f15772j;
            postalAddress.administrativeArea_ = this.f15773k;
            postalAddress.locality_ = this.f15774l;
            postalAddress.sublocality_ = this.f15775m;
            if ((this.f15767e & 1) != 0) {
                this.f15776n = this.f15776n.V0();
                this.f15767e &= -2;
            }
            postalAddress.addressLines_ = this.f15776n;
            if ((this.f15767e & 2) != 0) {
                this.f15777o = this.f15777o.V0();
                this.f15767e &= -3;
            }
            postalAddress.recipients_ = this.f15777o;
            postalAddress.organization_ = this.f15778p;
            Q();
            return postalAddress;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public PostalAddress getDefaultInstanceForType() {
            return PostalAddress.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.type.PostalAddress.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.type.PostalAddress.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.type.PostalAddress r3 = (com.google.type.PostalAddress) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.type.PostalAddress r4 = (com.google.type.PostalAddress) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.type.PostalAddress.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.type.PostalAddress$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return p.f15829a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof PostalAddress) {
                return i0((PostalAddress) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(PostalAddress postalAddress) {
            if (postalAddress == PostalAddress.getDefaultInstance()) {
                return this;
            }
            if (postalAddress.getRevision() != 0) {
                l0(postalAddress.getRevision());
            }
            if (!postalAddress.getRegionCode().isEmpty()) {
                this.f15769g = postalAddress.regionCode_;
                R();
            }
            if (!postalAddress.getLanguageCode().isEmpty()) {
                this.f15770h = postalAddress.languageCode_;
                R();
            }
            if (!postalAddress.getPostalCode().isEmpty()) {
                this.f15771i = postalAddress.postalCode_;
                R();
            }
            if (!postalAddress.getSortingCode().isEmpty()) {
                this.f15772j = postalAddress.sortingCode_;
                R();
            }
            if (!postalAddress.getAdministrativeArea().isEmpty()) {
                this.f15773k = postalAddress.administrativeArea_;
                R();
            }
            if (!postalAddress.getLocality().isEmpty()) {
                this.f15774l = postalAddress.locality_;
                R();
            }
            if (!postalAddress.getSublocality().isEmpty()) {
                this.f15775m = postalAddress.sublocality_;
                R();
            }
            if (!postalAddress.addressLines_.isEmpty()) {
                if (this.f15776n.isEmpty()) {
                    this.f15776n = postalAddress.addressLines_;
                    this.f15767e &= -2;
                } else {
                    a0();
                    this.f15776n.addAll(postalAddress.addressLines_);
                }
                R();
            }
            if (!postalAddress.recipients_.isEmpty()) {
                if (this.f15777o.isEmpty()) {
                    this.f15777o = postalAddress.recipients_;
                    this.f15767e &= -3;
                } else {
                    b0();
                    this.f15777o.addAll(postalAddress.recipients_);
                }
                R();
            }
            if (!postalAddress.getOrganization().isEmpty()) {
                this.f15778p = postalAddress.organization_;
                R();
            }
            z(((GeneratedMessageV3) postalAddress).unknownFields);
            R();
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
            this.f15768f = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f15769g = "";
            this.f15770h = "";
            this.f15771i = "";
            this.f15772j = "";
            this.f15773k = "";
            this.f15774l = "";
            this.f15775m = "";
            z0 z0Var = y0.f15344d;
            this.f15776n = z0Var;
            this.f15777o = z0Var;
            this.f15778p = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15769g = "";
            this.f15770h = "";
            this.f15771i = "";
            this.f15772j = "";
            this.f15773k = "";
            this.f15774l = "";
            this.f15775m = "";
            z0 z0Var = y0.f15344d;
            this.f15776n = z0Var;
            this.f15777o = z0Var;
            this.f15778p = "";
            e0();
        }
    }

    /* synthetic */ PostalAddress(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PostalAddress getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return p.f15829a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PostalAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PostalAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PostalAddress> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PostalAddress)) {
            return super.equals(obj);
        }
        PostalAddress postalAddress = (PostalAddress) obj;
        return getRevision() == postalAddress.getRevision() && getRegionCode().equals(postalAddress.getRegionCode()) && getLanguageCode().equals(postalAddress.getLanguageCode()) && getPostalCode().equals(postalAddress.getPostalCode()) && getSortingCode().equals(postalAddress.getSortingCode()) && getAdministrativeArea().equals(postalAddress.getAdministrativeArea()) && getLocality().equals(postalAddress.getLocality()) && getSublocality().equals(postalAddress.getSublocality()) && m224getAddressLinesList().equals(postalAddress.m224getAddressLinesList()) && m225getRecipientsList().equals(postalAddress.m225getRecipientsList()) && getOrganization().equals(postalAddress.getOrganization()) && this.unknownFields.equals(postalAddress.unknownFields);
    }

    public String getAddressLines(int i9) {
        return this.addressLines_.get(i9);
    }

    public ByteString getAddressLinesBytes(int i9) {
        return this.addressLines_.j0(i9);
    }

    public int getAddressLinesCount() {
        return this.addressLines_.size();
    }

    public String getAdministrativeArea() {
        Object obj = this.administrativeArea_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.administrativeArea_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAdministrativeAreaBytes() {
        Object obj = this.administrativeArea_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.administrativeArea_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getLanguageCode() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.languageCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLanguageCodeBytes() {
        Object obj = this.languageCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.languageCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getLocality() {
        Object obj = this.locality_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.locality_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLocalityBytes() {
        Object obj = this.locality_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.locality_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getOrganization() {
        Object obj = this.organization_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.organization_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getOrganizationBytes() {
        Object obj = this.organization_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.organization_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PostalAddress> getParserForType() {
        return PARSER;
    }

    public String getPostalCode() {
        Object obj = this.postalCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.postalCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPostalCodeBytes() {
        Object obj = this.postalCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.postalCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getRecipients(int i9) {
        return this.recipients_.get(i9);
    }

    public ByteString getRecipientsBytes(int i9) {
        return this.recipients_.j0(i9);
    }

    public int getRecipientsCount() {
        return this.recipients_.size();
    }

    public String getRegionCode() {
        Object obj = this.regionCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.regionCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRegionCodeBytes() {
        Object obj = this.regionCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.regionCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getRevision() {
        return this.revision_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = this.revision_;
        int x10 = i10 != 0 ? CodedOutputStream.x(1, i10) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.regionCode_)) {
            x10 += GeneratedMessageV3.computeStringSize(2, this.regionCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
            x10 += GeneratedMessageV3.computeStringSize(3, this.languageCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.postalCode_)) {
            x10 += GeneratedMessageV3.computeStringSize(4, this.postalCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sortingCode_)) {
            x10 += GeneratedMessageV3.computeStringSize(5, this.sortingCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.administrativeArea_)) {
            x10 += GeneratedMessageV3.computeStringSize(6, this.administrativeArea_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.locality_)) {
            x10 += GeneratedMessageV3.computeStringSize(7, this.locality_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sublocality_)) {
            x10 += GeneratedMessageV3.computeStringSize(8, this.sublocality_);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.addressLines_.size(); i12++) {
            i11 += GeneratedMessageV3.computeStringSizeNoTag(this.addressLines_.c1(i12));
        }
        int size = x10 + i11 + (m224getAddressLinesList().size() * 1);
        int i13 = 0;
        for (int i14 = 0; i14 < this.recipients_.size(); i14++) {
            i13 += GeneratedMessageV3.computeStringSizeNoTag(this.recipients_.c1(i14));
        }
        int size2 = size + i13 + (m225getRecipientsList().size() * 1);
        if (!GeneratedMessageV3.isStringEmpty(this.organization_)) {
            size2 += GeneratedMessageV3.computeStringSize(11, this.organization_);
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSortingCode() {
        Object obj = this.sortingCode_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sortingCode_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSortingCodeBytes() {
        Object obj = this.sortingCode_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sortingCode_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getSublocality() {
        Object obj = this.sublocality_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sublocality_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSublocalityBytes() {
        Object obj = this.sublocality_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sublocality_ = copyFromUtf8;
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
        int hashCode = ((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRevision()) * 37) + 2) * 53) + getRegionCode().hashCode()) * 37) + 3) * 53) + getLanguageCode().hashCode()) * 37) + 4) * 53) + getPostalCode().hashCode()) * 37) + 5) * 53) + getSortingCode().hashCode()) * 37) + 6) * 53) + getAdministrativeArea().hashCode()) * 37) + 7) * 53) + getLocality().hashCode()) * 37) + 8) * 53) + getSublocality().hashCode();
        if (getAddressLinesCount() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + m224getAddressLinesList().hashCode();
        }
        if (getRecipientsCount() > 0) {
            hashCode = (((hashCode * 37) + 10) * 53) + m225getRecipientsList().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 11) * 53) + getOrganization().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return p.f15830b.d(PostalAddress.class, b.class);
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
        return new PostalAddress();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i9 = this.revision_;
        if (i9 != 0) {
            codedOutputStream.H0(1, i9);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.regionCode_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.regionCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.languageCode_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.languageCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.postalCode_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.postalCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sortingCode_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.sortingCode_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.administrativeArea_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.administrativeArea_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.locality_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.locality_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sublocality_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.sublocality_);
        }
        for (int i10 = 0; i10 < this.addressLines_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.addressLines_.c1(i10));
        }
        for (int i11 = 0; i11 < this.recipients_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.recipients_.c1(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.organization_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.organization_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PostalAddress(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(PostalAddress postalAddress) {
        return DEFAULT_INSTANCE.toBuilder().i0(postalAddress);
    }

    public static PostalAddress parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PostalAddress parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAddressLinesList */
    public i2 m224getAddressLinesList() {
        return this.addressLines_;
    }

    /* renamed from: getRecipientsList */
    public i2 m225getRecipientsList() {
        return this.recipients_;
    }

    private PostalAddress(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PostalAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PostalAddress getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static PostalAddress parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private PostalAddress() {
        this.memoizedIsInitialized = (byte) -1;
        this.regionCode_ = "";
        this.languageCode_ = "";
        this.postalCode_ = "";
        this.sortingCode_ = "";
        this.administrativeArea_ = "";
        this.locality_ = "";
        this.sublocality_ = "";
        z0 z0Var = y0.f15344d;
        this.addressLines_ = z0Var;
        this.recipients_ = z0Var;
        this.organization_ = "";
    }

    public static PostalAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static PostalAddress parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PostalAddress parseFrom(InputStream inputStream) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static PostalAddress parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static PostalAddress parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PostalAddress parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (PostalAddress) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private PostalAddress(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 8:
                            this.revision_ = pVar.z();
                            continue;
                        case 18:
                            this.regionCode_ = pVar.K();
                            continue;
                        case 26:
                            this.languageCode_ = pVar.K();
                            continue;
                        case 34:
                            this.postalCode_ = pVar.K();
                            continue;
                        case 42:
                            this.sortingCode_ = pVar.K();
                            continue;
                        case 50:
                            this.administrativeArea_ = pVar.K();
                            continue;
                        case 58:
                            this.locality_ = pVar.K();
                            continue;
                        case 66:
                            this.sublocality_ = pVar.K();
                            continue;
                        case 74:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.addressLines_ = new y0();
                                z11 |= true;
                            }
                            this.addressLines_.add(K);
                            continue;
                        case 82:
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.recipients_ = new y0();
                                z11 |= true;
                            }
                            this.recipients_.add(K2);
                            continue;
                        case 90:
                            this.organization_ = pVar.K();
                            continue;
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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
                    this.addressLines_ = this.addressLines_.V0();
                }
                if (z11 & true) {
                    this.recipients_ = this.recipients_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
