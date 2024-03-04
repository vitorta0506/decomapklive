package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ResourceDescriptor extends GeneratedMessageV3 implements r1 {
    public static final int HISTORY_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_FIELD_NUMBER = 3;
    public static final int PATTERN_FIELD_NUMBER = 2;
    public static final int PLURAL_FIELD_NUMBER = 5;
    public static final int SINGULAR_FIELD_NUMBER = 6;
    public static final int STYLE_FIELD_NUMBER = 10;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int history_;
    private byte memoizedIsInitialized;
    private volatile Object nameField_;
    private com.google.protobuf.z0 pattern_;
    private volatile Object plural_;
    private volatile Object singular_;
    private int styleMemoizedSerializedSize;
    private List<Integer> style_;
    private volatile Object type_;
    private static final u0.h.a<Integer, Style> style_converter_ = new a();
    private static final ResourceDescriptor DEFAULT_INSTANCE = new ResourceDescriptor();
    private static final e2<ResourceDescriptor> PARSER = new b();

    /* loaded from: classes2.dex */
    public enum History implements h2 {
        HISTORY_UNSPECIFIED(0),
        ORIGINALLY_SINGLE_PATTERN(1),
        FUTURE_MULTI_PATTERN(2),
        UNRECOGNIZED(-1);
        
        public static final int FUTURE_MULTI_PATTERN_VALUE = 2;
        public static final int HISTORY_UNSPECIFIED_VALUE = 0;
        public static final int ORIGINALLY_SINGLE_PATTERN_VALUE = 1;
        private final int value;
        private static final u0.d<History> internalValueMap = new a();
        private static final History[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<History> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public History a(int i9) {
                return History.forNumber(i9);
            }
        }

        History(int i9) {
            this.value = i9;
        }

        public static History forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return FUTURE_MULTI_PATTERN;
                }
                return ORIGINALLY_SINGLE_PATTERN;
            }
            return HISTORY_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return ResourceDescriptor.getDescriptor().k().get(0);
        }

        public static u0.d<History> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static History valueOf(int i9) {
            return forNumber(i9);
        }

        public static History valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes2.dex */
    public enum Style implements h2 {
        STYLE_UNSPECIFIED(0),
        DECLARATIVE_FRIENDLY(1),
        UNRECOGNIZED(-1);
        
        public static final int DECLARATIVE_FRIENDLY_VALUE = 1;
        public static final int STYLE_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<Style> internalValueMap = new a();
        private static final Style[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<Style> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Style a(int i9) {
                return Style.forNumber(i9);
            }
        }

        Style(int i9) {
            this.value = i9;
        }

        public static Style forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return DECLARATIVE_FRIENDLY;
            }
            return STYLE_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return ResourceDescriptor.getDescriptor().k().get(1);
        }

        public static u0.d<Style> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Style valueOf(int i9) {
            return forNumber(i9);
        }

        public static Style valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements u0.h.a<Integer, Style> {
        a() {
        }

        @Override // com.google.protobuf.u0.h.a
        /* renamed from: a */
        public Style convert(Integer num) {
            Style valueOf = Style.valueOf(num.intValue());
            return valueOf == null ? Style.UNRECOGNIZED : valueOf;
        }
    }

    /* loaded from: classes2.dex */
    static class b extends com.google.protobuf.c<ResourceDescriptor> {
        b() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResourceDescriptor m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ResourceDescriptor(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10873e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10874f;

        /* renamed from: g  reason: collision with root package name */
        private com.google.protobuf.z0 f10875g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10876h;

        /* renamed from: i  reason: collision with root package name */
        private int f10877i;

        /* renamed from: j  reason: collision with root package name */
        private Object f10878j;

        /* renamed from: k  reason: collision with root package name */
        private Object f10879k;

        /* renamed from: l  reason: collision with root package name */
        private List<Integer> f10880l;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10873e & 1) == 0) {
                this.f10875g = new com.google.protobuf.y0(this.f10875g);
                this.f10873e |= 1;
            }
        }

        private void b0() {
            if ((this.f10873e & 2) == 0) {
                this.f10880l = new ArrayList(this.f10880l);
                this.f10873e |= 2;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return c1.f10974e.d(ResourceDescriptor.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResourceDescriptor build() {
            ResourceDescriptor I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResourceDescriptor I() {
            ResourceDescriptor resourceDescriptor = new ResourceDescriptor(this, (a) null);
            resourceDescriptor.type_ = this.f10874f;
            if ((this.f10873e & 1) != 0) {
                this.f10875g = this.f10875g.V0();
                this.f10873e &= -2;
            }
            resourceDescriptor.pattern_ = this.f10875g;
            resourceDescriptor.nameField_ = this.f10876h;
            resourceDescriptor.history_ = this.f10877i;
            resourceDescriptor.plural_ = this.f10878j;
            resourceDescriptor.singular_ = this.f10879k;
            if ((this.f10873e & 2) != 0) {
                this.f10880l = Collections.unmodifiableList(this.f10880l);
                this.f10873e &= -3;
            }
            resourceDescriptor.style_ = this.f10880l;
            Q();
            return resourceDescriptor;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ResourceDescriptor getDefaultInstanceForType() {
            return ResourceDescriptor.getDefaultInstance();
        }

        public c g0(ResourceDescriptor resourceDescriptor) {
            if (resourceDescriptor == ResourceDescriptor.getDefaultInstance()) {
                return this;
            }
            if (!resourceDescriptor.getType().isEmpty()) {
                this.f10874f = resourceDescriptor.type_;
                R();
            }
            if (!resourceDescriptor.pattern_.isEmpty()) {
                if (this.f10875g.isEmpty()) {
                    this.f10875g = resourceDescriptor.pattern_;
                    this.f10873e &= -2;
                } else {
                    a0();
                    this.f10875g.addAll(resourceDescriptor.pattern_);
                }
                R();
            }
            if (!resourceDescriptor.getNameField().isEmpty()) {
                this.f10876h = resourceDescriptor.nameField_;
                R();
            }
            if (resourceDescriptor.history_ != 0) {
                l0(resourceDescriptor.getHistoryValue());
            }
            if (!resourceDescriptor.getPlural().isEmpty()) {
                this.f10878j = resourceDescriptor.plural_;
                R();
            }
            if (!resourceDescriptor.getSingular().isEmpty()) {
                this.f10879k = resourceDescriptor.singular_;
                R();
            }
            if (!resourceDescriptor.style_.isEmpty()) {
                if (this.f10880l.isEmpty()) {
                    this.f10880l = resourceDescriptor.style_;
                    this.f10873e &= -3;
                } else {
                    b0();
                    this.f10880l.addAll(resourceDescriptor.style_);
                }
                R();
            }
            z(((GeneratedMessageV3) resourceDescriptor).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return c1.f10973d;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.ResourceDescriptor.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.ResourceDescriptor.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.ResourceDescriptor r3 = (com.google.api.ResourceDescriptor) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.ResourceDescriptor r4 = (com.google.api.ResourceDescriptor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.ResourceDescriptor.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.ResourceDescriptor$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ResourceDescriptor) {
                return g0((ResourceDescriptor) l1Var);
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

        public c l0(int i9) {
            this.f10877i = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f10874f = "";
            this.f10875g = com.google.protobuf.y0.f15344d;
            this.f10876h = "";
            this.f10877i = 0;
            this.f10878j = "";
            this.f10879k = "";
            this.f10880l = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10874f = "";
            this.f10875g = com.google.protobuf.y0.f15344d;
            this.f10876h = "";
            this.f10877i = 0;
            this.f10878j = "";
            this.f10879k = "";
            this.f10880l = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ResourceDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResourceDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return c1.f10973d;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResourceDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResourceDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResourceDescriptor> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResourceDescriptor)) {
            return super.equals(obj);
        }
        ResourceDescriptor resourceDescriptor = (ResourceDescriptor) obj;
        return getType().equals(resourceDescriptor.getType()) && m198getPatternList().equals(resourceDescriptor.m198getPatternList()) && getNameField().equals(resourceDescriptor.getNameField()) && this.history_ == resourceDescriptor.history_ && getPlural().equals(resourceDescriptor.getPlural()) && getSingular().equals(resourceDescriptor.getSingular()) && this.style_.equals(resourceDescriptor.style_) && this.unknownFields.equals(resourceDescriptor.unknownFields);
    }

    public History getHistory() {
        History valueOf = History.valueOf(this.history_);
        return valueOf == null ? History.UNRECOGNIZED : valueOf;
    }

    public int getHistoryValue() {
        return this.history_;
    }

    public String getNameField() {
        Object obj = this.nameField_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.nameField_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameFieldBytes() {
        Object obj = this.nameField_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.nameField_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResourceDescriptor> getParserForType() {
        return PARSER;
    }

    public String getPattern(int i9) {
        return this.pattern_.get(i9);
    }

    public ByteString getPatternBytes(int i9) {
        return this.pattern_.j0(i9);
    }

    public int getPatternCount() {
        return this.pattern_.size();
    }

    public String getPlural() {
        Object obj = this.plural_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.plural_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPluralBytes() {
        Object obj = this.plural_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.plural_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.type_) ? GeneratedMessageV3.computeStringSize(1, this.type_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.pattern_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.pattern_.c1(i11));
        }
        int size = computeStringSize + i10 + (m198getPatternList().size() * 1);
        if (!GeneratedMessageV3.isStringEmpty(this.nameField_)) {
            size += GeneratedMessageV3.computeStringSize(3, this.nameField_);
        }
        if (this.history_ != History.HISTORY_UNSPECIFIED.getNumber()) {
            size += CodedOutputStream.l(4, this.history_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.plural_)) {
            size += GeneratedMessageV3.computeStringSize(5, this.plural_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.singular_)) {
            size += GeneratedMessageV3.computeStringSize(6, this.singular_);
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.style_.size(); i13++) {
            i12 += CodedOutputStream.m(this.style_.get(i13).intValue());
        }
        int i14 = size + i12;
        if (!getStyleList().isEmpty()) {
            i14 = i14 + 1 + CodedOutputStream.Z(i12);
        }
        this.styleMemoizedSerializedSize = i12;
        int serializedSize = i14 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSingular() {
        Object obj = this.singular_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.singular_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSingularBytes() {
        Object obj = this.singular_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.singular_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Style getStyle(int i9) {
        return style_converter_.convert(this.style_.get(i9));
    }

    public int getStyleCount() {
        return this.style_.size();
    }

    public List<Style> getStyleList() {
        return new u0.h(this.style_, style_converter_);
    }

    public int getStyleValue(int i9) {
        return this.style_.get(i9).intValue();
    }

    public List<Integer> getStyleValueList() {
        return this.style_;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode();
        if (getPatternCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m198getPatternList().hashCode();
        }
        int hashCode2 = (((((((((((((((hashCode * 37) + 3) * 53) + getNameField().hashCode()) * 37) + 4) * 53) + this.history_) * 37) + 5) * 53) + getPlural().hashCode()) * 37) + 6) * 53) + getSingular().hashCode();
        if (getStyleCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 10) * 53) + this.style_.hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return c1.f10974e.d(ResourceDescriptor.class, c.class);
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
        return new ResourceDescriptor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        for (int i9 = 0; i9 < this.pattern_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.pattern_.c1(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.nameField_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.nameField_);
        }
        if (this.history_ != History.HISTORY_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(4, this.history_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.plural_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.plural_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.singular_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.singular_);
        }
        if (getStyleList().size() > 0) {
            codedOutputStream.d1(82);
            codedOutputStream.d1(this.styleMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.style_.size(); i10++) {
            codedOutputStream.w0(this.style_.get(i10).intValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResourceDescriptor(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ResourceDescriptor resourceDescriptor) {
        return DEFAULT_INSTANCE.toBuilder().g0(resourceDescriptor);
    }

    public static ResourceDescriptor parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceDescriptor parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getPatternList */
    public i2 m198getPatternList() {
        return this.pattern_;
    }

    private ResourceDescriptor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResourceDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResourceDescriptor getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static ResourceDescriptor parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private ResourceDescriptor() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
        this.pattern_ = com.google.protobuf.y0.f15344d;
        this.nameField_ = "";
        this.history_ = 0;
        this.plural_ = "";
        this.singular_ = "";
        this.style_ = Collections.emptyList();
    }

    public static ResourceDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static ResourceDescriptor parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResourceDescriptor parseFrom(InputStream inputStream) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ResourceDescriptor parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceDescriptor parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResourceDescriptor parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ResourceDescriptor) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private ResourceDescriptor(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.type_ = pVar.K();
                        } else if (L == 18) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.pattern_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.pattern_.add(K);
                        } else if (L == 26) {
                            this.nameField_ = pVar.K();
                        } else if (L == 32) {
                            this.history_ = pVar.u();
                        } else if (L == 42) {
                            this.plural_ = pVar.K();
                        } else if (L == 50) {
                            this.singular_ = pVar.K();
                        } else if (L == 80) {
                            int u10 = pVar.u();
                            if (!(z11 & true)) {
                                this.style_ = new ArrayList();
                                z11 |= true;
                            }
                            this.style_.add(Integer.valueOf(u10));
                        } else if (L != 82) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            int q10 = pVar.q(pVar.D());
                            while (pVar.e() > 0) {
                                int u11 = pVar.u();
                                if (!(z11 & true)) {
                                    this.style_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.style_.add(Integer.valueOf(u11));
                            }
                            pVar.p(q10);
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
                    this.pattern_ = this.pattern_.V0();
                }
                if (z11 & true) {
                    this.style_ = Collections.unmodifiableList(this.style_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
