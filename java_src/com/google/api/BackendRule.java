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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class BackendRule extends GeneratedMessageV3 implements j {
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int DEADLINE_FIELD_NUMBER = 3;
    public static final int DISABLE_AUTH_FIELD_NUMBER = 8;
    public static final int JWT_AUDIENCE_FIELD_NUMBER = 7;
    public static final int MIN_DEADLINE_FIELD_NUMBER = 4;
    public static final int OPERATION_DEADLINE_FIELD_NUMBER = 5;
    public static final int PATH_TRANSLATION_FIELD_NUMBER = 6;
    public static final int PROTOCOL_FIELD_NUMBER = 9;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object address_;
    private int authenticationCase_;
    private Object authentication_;
    private double deadline_;
    private byte memoizedIsInitialized;
    private double minDeadline_;
    private double operationDeadline_;
    private int pathTranslation_;
    private volatile Object protocol_;
    private volatile Object selector_;
    private static final BackendRule DEFAULT_INSTANCE = new BackendRule();
    private static final e2<BackendRule> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum AuthenticationCase implements u0.c {
        JWT_AUDIENCE(7),
        DISABLE_AUTH(8),
        AUTHENTICATION_NOT_SET(0);
        
        private final int value;

        AuthenticationCase(int i9) {
            this.value = i9;
        }

        public static AuthenticationCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 7) {
                    if (i9 != 8) {
                        return null;
                    }
                    return DISABLE_AUTH;
                }
                return JWT_AUDIENCE;
            }
            return AUTHENTICATION_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AuthenticationCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes2.dex */
    public enum PathTranslation implements h2 {
        PATH_TRANSLATION_UNSPECIFIED(0),
        CONSTANT_ADDRESS(1),
        APPEND_PATH_TO_ADDRESS(2),
        UNRECOGNIZED(-1);
        
        public static final int APPEND_PATH_TO_ADDRESS_VALUE = 2;
        public static final int CONSTANT_ADDRESS_VALUE = 1;
        public static final int PATH_TRANSLATION_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<PathTranslation> internalValueMap = new a();
        private static final PathTranslation[] VALUES = values();

        /* loaded from: classes2.dex */
        static class a implements u0.d<PathTranslation> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public PathTranslation a(int i9) {
                return PathTranslation.forNumber(i9);
            }
        }

        PathTranslation(int i9) {
            this.value = i9;
        }

        public static PathTranslation forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return APPEND_PATH_TO_ADDRESS;
                }
                return CONSTANT_ADDRESS;
            }
            return PATH_TRANSLATION_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return BackendRule.getDescriptor().k().get(0);
        }

        public static u0.d<PathTranslation> internalGetValueMap() {
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
        public static PathTranslation valueOf(int i9) {
            return forNumber(i9);
        }

        public static PathTranslation valueOf(Descriptors.e eVar) {
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
    public static class a extends com.google.protobuf.c<BackendRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BackendRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new BackendRule(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10672a;

        static {
            int[] iArr = new int[AuthenticationCase.values().length];
            f10672a = iArr;
            try {
                iArr[AuthenticationCase.JWT_AUDIENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10672a[AuthenticationCase.DISABLE_AUTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10672a[AuthenticationCase.AUTHENTICATION_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements j {

        /* renamed from: e  reason: collision with root package name */
        private int f10673e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10674f;

        /* renamed from: g  reason: collision with root package name */
        private Object f10675g;

        /* renamed from: h  reason: collision with root package name */
        private Object f10676h;

        /* renamed from: i  reason: collision with root package name */
        private double f10677i;

        /* renamed from: j  reason: collision with root package name */
        private double f10678j;

        /* renamed from: k  reason: collision with root package name */
        private double f10679k;

        /* renamed from: l  reason: collision with root package name */
        private int f10680l;

        /* renamed from: m  reason: collision with root package name */
        private Object f10681m;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f11395d.d(BackendRule.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BackendRule build() {
            BackendRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BackendRule I() {
            BackendRule backendRule = new BackendRule(this, (a) null);
            backendRule.selector_ = this.f10675g;
            backendRule.address_ = this.f10676h;
            backendRule.deadline_ = this.f10677i;
            backendRule.minDeadline_ = this.f10678j;
            backendRule.operationDeadline_ = this.f10679k;
            backendRule.pathTranslation_ = this.f10680l;
            if (this.f10673e == 7) {
                backendRule.authentication_ = this.f10674f;
            }
            if (this.f10673e == 8) {
                backendRule.authentication_ = this.f10674f;
            }
            backendRule.protocol_ = this.f10681m;
            backendRule.authenticationCase_ = this.f10673e;
            Q();
            return backendRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public BackendRule getDefaultInstanceForType() {
            return BackendRule.getDefaultInstance();
        }

        public c d0(BackendRule backendRule) {
            if (backendRule == BackendRule.getDefaultInstance()) {
                return this;
            }
            if (!backendRule.getSelector().isEmpty()) {
                this.f10675g = backendRule.selector_;
                R();
            }
            if (!backendRule.getAddress().isEmpty()) {
                this.f10676h = backendRule.address_;
                R();
            }
            if (backendRule.getDeadline() != 0.0d) {
                i0(backendRule.getDeadline());
            }
            if (backendRule.getMinDeadline() != 0.0d) {
                l0(backendRule.getMinDeadline());
            }
            if (backendRule.getOperationDeadline() != 0.0d) {
                m0(backendRule.getOperationDeadline());
            }
            if (backendRule.pathTranslation_ != 0) {
                n0(backendRule.getPathTranslationValue());
            }
            if (!backendRule.getProtocol().isEmpty()) {
                this.f10681m = backendRule.protocol_;
                R();
            }
            int i9 = b.f10672a[backendRule.getAuthenticationCase().ordinal()];
            if (i9 == 1) {
                this.f10673e = 7;
                this.f10674f = backendRule.authentication_;
                R();
            } else if (i9 == 2) {
                j0(backendRule.getDisableAuth());
            }
            z(((GeneratedMessageV3) backendRule).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.BackendRule.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.BackendRule.access$1400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.BackendRule r3 = (com.google.api.BackendRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.api.BackendRule r4 = (com.google.api.BackendRule) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.BackendRule.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.BackendRule$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof BackendRule) {
                return d0((BackendRule) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f11394c;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c i0(double d10) {
            this.f10677i = d10;
            R();
            return this;
        }

        public c j0(boolean z10) {
            this.f10673e = 8;
            this.f10674f = Boolean.valueOf(z10);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c l0(double d10) {
            this.f10678j = d10;
            R();
            return this;
        }

        public c m0(double d10) {
            this.f10679k = d10;
            R();
            return this;
        }

        public c n0(int i9) {
            this.f10680l = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private c() {
            this.f10673e = 0;
            this.f10675g = "";
            this.f10676h = "";
            this.f10680l = 0;
            this.f10681m = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10673e = 0;
            this.f10675g = "";
            this.f10676h = "";
            this.f10680l = 0;
            this.f10681m = "";
            b0();
        }
    }

    /* synthetic */ BackendRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BackendRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f11394c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BackendRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BackendRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BackendRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendRule)) {
            return super.equals(obj);
        }
        BackendRule backendRule = (BackendRule) obj;
        if (getSelector().equals(backendRule.getSelector()) && getAddress().equals(backendRule.getAddress()) && Double.doubleToLongBits(getDeadline()) == Double.doubleToLongBits(backendRule.getDeadline()) && Double.doubleToLongBits(getMinDeadline()) == Double.doubleToLongBits(backendRule.getMinDeadline()) && Double.doubleToLongBits(getOperationDeadline()) == Double.doubleToLongBits(backendRule.getOperationDeadline()) && this.pathTranslation_ == backendRule.pathTranslation_ && getProtocol().equals(backendRule.getProtocol()) && getAuthenticationCase().equals(backendRule.getAuthenticationCase())) {
            int i9 = this.authenticationCase_;
            if (i9 != 7) {
                if (i9 == 8 && getDisableAuth() != backendRule.getDisableAuth()) {
                    return false;
                }
            } else if (!getJwtAudience().equals(backendRule.getJwtAudience())) {
                return false;
            }
            return this.unknownFields.equals(backendRule.unknownFields);
        }
        return false;
    }

    public String getAddress() {
        Object obj = this.address_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.address_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAddressBytes() {
        Object obj = this.address_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.address_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public AuthenticationCase getAuthenticationCase() {
        return AuthenticationCase.forNumber(this.authenticationCase_);
    }

    public double getDeadline() {
        return this.deadline_;
    }

    public boolean getDisableAuth() {
        if (this.authenticationCase_ == 8) {
            return ((Boolean) this.authentication_).booleanValue();
        }
        return false;
    }

    public String getJwtAudience() {
        String str = this.authenticationCase_ == 7 ? this.authentication_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.authenticationCase_ == 7) {
            this.authentication_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getJwtAudienceBytes() {
        String str = this.authenticationCase_ == 7 ? this.authentication_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.authenticationCase_ == 7) {
                this.authentication_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public double getMinDeadline() {
        return this.minDeadline_;
    }

    public double getOperationDeadline() {
        return this.operationDeadline_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BackendRule> getParserForType() {
        return PARSER;
    }

    public PathTranslation getPathTranslation() {
        PathTranslation valueOf = PathTranslation.valueOf(this.pathTranslation_);
        return valueOf == null ? PathTranslation.UNRECOGNIZED : valueOf;
    }

    public int getPathTranslationValue() {
        return this.pathTranslation_;
    }

    public String getProtocol() {
        Object obj = this.protocol_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.protocol_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getProtocolBytes() {
        Object obj = this.protocol_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.protocol_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getSelector() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.selector_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSelectorBytes() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.selector_ = copyFromUtf8;
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.selector_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.selector_);
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.address_);
        }
        double d10 = this.deadline_;
        if (d10 != 0.0d) {
            computeStringSize += CodedOutputStream.j(3, d10);
        }
        double d11 = this.minDeadline_;
        if (d11 != 0.0d) {
            computeStringSize += CodedOutputStream.j(4, d11);
        }
        double d12 = this.operationDeadline_;
        if (d12 != 0.0d) {
            computeStringSize += CodedOutputStream.j(5, d12);
        }
        if (this.pathTranslation_ != PathTranslation.PATH_TRANSLATION_UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(6, this.pathTranslation_);
        }
        if (this.authenticationCase_ == 7) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.authentication_);
        }
        if (this.authenticationCase_ == 8) {
            computeStringSize += CodedOutputStream.e(8, ((Boolean) this.authentication_).booleanValue());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(9, this.protocol_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDisableAuth() {
        return this.authenticationCase_ == 8;
    }

    public boolean hasJwtAudience() {
        return this.authenticationCase_ == 7;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSelector().hashCode()) * 37) + 2) * 53) + getAddress().hashCode()) * 37) + 3) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getDeadline()))) * 37) + 4) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getMinDeadline()))) * 37) + 5) * 53) + com.google.protobuf.u0.i(Double.doubleToLongBits(getOperationDeadline()))) * 37) + 6) * 53) + this.pathTranslation_) * 37) + 9) * 53) + getProtocol().hashCode();
        int i11 = this.authenticationCase_;
        if (i11 == 7) {
            i9 = ((hashCode2 * 37) + 7) * 53;
            hashCode = getJwtAudience().hashCode();
        } else {
            if (i11 == 8) {
                i9 = ((hashCode2 * 37) + 8) * 53;
                hashCode = com.google.protobuf.u0.d(getDisableAuth());
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        hashCode2 = i9 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f11395d.d(BackendRule.class, c.class);
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
        return new BackendRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.address_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.address_);
        }
        double d10 = this.deadline_;
        if (d10 != 0.0d) {
            codedOutputStream.t0(3, d10);
        }
        double d11 = this.minDeadline_;
        if (d11 != 0.0d) {
            codedOutputStream.t0(4, d11);
        }
        double d12 = this.operationDeadline_;
        if (d12 != 0.0d) {
            codedOutputStream.t0(5, d12);
        }
        if (this.pathTranslation_ != PathTranslation.PATH_TRANSLATION_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(6, this.pathTranslation_);
        }
        if (this.authenticationCase_ == 7) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.authentication_);
        }
        if (this.authenticationCase_ == 8) {
            codedOutputStream.n0(8, ((Boolean) this.authentication_).booleanValue());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.protocol_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BackendRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(BackendRule backendRule) {
        return DEFAULT_INSTANCE.toBuilder().d0(backendRule);
    }

    public static BackendRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BackendRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BackendRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.authenticationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BackendRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BackendRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).d0(this);
    }

    public static BackendRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static BackendRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private BackendRule() {
        this.authenticationCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
        this.address_ = "";
        this.pathTranslation_ = 0;
        this.protocol_ = "";
    }

    public static BackendRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static BackendRule parseFrom(InputStream inputStream) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BackendRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BackendRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BackendRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackendRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private BackendRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            this.selector_ = pVar.K();
                        } else if (L == 18) {
                            this.address_ = pVar.K();
                        } else if (L == 25) {
                            this.deadline_ = pVar.t();
                        } else if (L == 33) {
                            this.minDeadline_ = pVar.t();
                        } else if (L == 41) {
                            this.operationDeadline_ = pVar.t();
                        } else if (L == 48) {
                            this.pathTranslation_ = pVar.u();
                        } else if (L == 58) {
                            String K = pVar.K();
                            this.authenticationCase_ = 7;
                            this.authentication_ = K;
                        } else if (L == 64) {
                            this.authenticationCase_ = 8;
                            this.authentication_ = Boolean.valueOf(pVar.r());
                        } else if (L != 74) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.protocol_ = pVar.K();
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
