package com.google.cloud.audit;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ServiceAccountDelegationInfo extends GeneratedMessageV3 implements f {
    public static final int FIRST_PARTY_PRINCIPAL_FIELD_NUMBER = 1;
    public static final int PRINCIPAL_SUBJECT_FIELD_NUMBER = 3;
    public static final int THIRD_PARTY_PRINCIPAL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private int authorityCase_;
    private Object authority_;
    private byte memoizedIsInitialized;
    private volatile Object principalSubject_;
    private static final ServiceAccountDelegationInfo DEFAULT_INSTANCE = new ServiceAccountDelegationInfo();
    private static final e2<ServiceAccountDelegationInfo> PARSER = new a();

    /* loaded from: classes2.dex */
    public enum AuthorityCase implements u0.c {
        FIRST_PARTY_PRINCIPAL(1),
        THIRD_PARTY_PRINCIPAL(2),
        AUTHORITY_NOT_SET(0);
        
        private final int value;

        AuthorityCase(int i9) {
            this.value = i9;
        }

        public static AuthorityCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return THIRD_PARTY_PRINCIPAL;
                }
                return FIRST_PARTY_PRINCIPAL;
            }
            return AUTHORITY_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static AuthorityCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes2.dex */
    public static final class FirstPartyPrincipal extends GeneratedMessageV3 implements d {
        private static final FirstPartyPrincipal DEFAULT_INSTANCE = new FirstPartyPrincipal();
        private static final e2<FirstPartyPrincipal> PARSER = new a();
        public static final int PRINCIPAL_EMAIL_FIELD_NUMBER = 1;
        public static final int SERVICE_METADATA_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object principalEmail_;
        private Struct serviceMetadata_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<FirstPartyPrincipal> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FirstPartyPrincipal m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FirstPartyPrincipal(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f11769e;

            /* renamed from: f  reason: collision with root package name */
            private Struct f11770f;

            /* renamed from: g  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f11771g;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.cloud.audit.a.f11793n.d(FirstPartyPrincipal.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FirstPartyPrincipal build() {
                FirstPartyPrincipal I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FirstPartyPrincipal I() {
                FirstPartyPrincipal firstPartyPrincipal = new FirstPartyPrincipal(this, (a) null);
                firstPartyPrincipal.principalEmail_ = this.f11769e;
                q2<Struct, Struct.b, u2> q2Var = this.f11771g;
                if (q2Var == null) {
                    firstPartyPrincipal.serviceMetadata_ = this.f11770f;
                } else {
                    firstPartyPrincipal.serviceMetadata_ = q2Var.b();
                }
                Q();
                return firstPartyPrincipal;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FirstPartyPrincipal getDefaultInstanceForType() {
                return FirstPartyPrincipal.getDefaultInstance();
            }

            public b d0(FirstPartyPrincipal firstPartyPrincipal) {
                if (firstPartyPrincipal == FirstPartyPrincipal.getDefaultInstance()) {
                    return this;
                }
                if (!firstPartyPrincipal.getPrincipalEmail().isEmpty()) {
                    this.f11769e = firstPartyPrincipal.principalEmail_;
                    R();
                }
                if (firstPartyPrincipal.hasServiceMetadata()) {
                    h0(firstPartyPrincipal.getServiceMetadata());
                }
                z(((GeneratedMessageV3) firstPartyPrincipal).unknownFields);
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
            public com.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipal.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipal.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.cloud.audit.ServiceAccountDelegationInfo$FirstPartyPrincipal r3 = (com.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipal) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.cloud.audit.ServiceAccountDelegationInfo$FirstPartyPrincipal r4 = (com.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipal) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipal.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.ServiceAccountDelegationInfo$FirstPartyPrincipal$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FirstPartyPrincipal) {
                    return d0((FirstPartyPrincipal) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.cloud.audit.a.f11792m;
            }

            public b h0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f11771g;
                if (q2Var == null) {
                    Struct struct2 = this.f11770f;
                    if (struct2 != null) {
                        this.f11770f = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f11770f = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
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
                this.f11769e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f11769e = "";
                b0();
            }
        }

        /* synthetic */ FirstPartyPrincipal(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FirstPartyPrincipal getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.cloud.audit.a.f11792m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FirstPartyPrincipal parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FirstPartyPrincipal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FirstPartyPrincipal> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FirstPartyPrincipal)) {
                return super.equals(obj);
            }
            FirstPartyPrincipal firstPartyPrincipal = (FirstPartyPrincipal) obj;
            if (getPrincipalEmail().equals(firstPartyPrincipal.getPrincipalEmail()) && hasServiceMetadata() == firstPartyPrincipal.hasServiceMetadata()) {
                return (!hasServiceMetadata() || getServiceMetadata().equals(firstPartyPrincipal.getServiceMetadata())) && this.unknownFields.equals(firstPartyPrincipal.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FirstPartyPrincipal> getParserForType() {
            return PARSER;
        }

        public String getPrincipalEmail() {
            Object obj = this.principalEmail_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.principalEmail_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getPrincipalEmailBytes() {
            Object obj = this.principalEmail_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.principalEmail_ = copyFromUtf8;
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.principalEmail_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.principalEmail_);
            if (this.serviceMetadata_ != null) {
                computeStringSize += CodedOutputStream.G(2, getServiceMetadata());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Struct getServiceMetadata() {
            Struct struct = this.serviceMetadata_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getServiceMetadataOrBuilder() {
            return getServiceMetadata();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasServiceMetadata() {
            return this.serviceMetadata_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPrincipalEmail().hashCode();
            if (hasServiceMetadata()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getServiceMetadata().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.cloud.audit.a.f11793n.d(FirstPartyPrincipal.class, b.class);
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
            return new FirstPartyPrincipal();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.principalEmail_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.principalEmail_);
            }
            if (this.serviceMetadata_ != null) {
                codedOutputStream.L0(2, getServiceMetadata());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FirstPartyPrincipal(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FirstPartyPrincipal firstPartyPrincipal) {
            return DEFAULT_INSTANCE.toBuilder().d0(firstPartyPrincipal);
        }

        public static FirstPartyPrincipal parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FirstPartyPrincipal parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FirstPartyPrincipal(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FirstPartyPrincipal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FirstPartyPrincipal getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static FirstPartyPrincipal parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FirstPartyPrincipal() {
            this.memoizedIsInitialized = (byte) -1;
            this.principalEmail_ = "";
        }

        public static FirstPartyPrincipal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FirstPartyPrincipal parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FirstPartyPrincipal parseFrom(InputStream inputStream) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private FirstPartyPrincipal(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.principalEmail_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Struct struct = this.serviceMetadata_;
                                Struct.b builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                this.serviceMetadata_ = struct2;
                                if (builder != null) {
                                    builder.i0(struct2);
                                    this.serviceMetadata_ = builder.I();
                                }
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

        public static FirstPartyPrincipal parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static FirstPartyPrincipal parseFrom(p pVar) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FirstPartyPrincipal parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FirstPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes2.dex */
    public static final class ThirdPartyPrincipal extends GeneratedMessageV3 implements e {
        private static final ThirdPartyPrincipal DEFAULT_INSTANCE = new ThirdPartyPrincipal();
        private static final e2<ThirdPartyPrincipal> PARSER = new a();
        public static final int THIRD_PARTY_CLAIMS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private Struct thirdPartyClaims_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<ThirdPartyPrincipal> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ThirdPartyPrincipal m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ThirdPartyPrincipal(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Struct f11772e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f11773f;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.cloud.audit.a.f11795p.d(ThirdPartyPrincipal.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ThirdPartyPrincipal build() {
                ThirdPartyPrincipal I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ThirdPartyPrincipal I() {
                ThirdPartyPrincipal thirdPartyPrincipal = new ThirdPartyPrincipal(this, (a) null);
                q2<Struct, Struct.b, u2> q2Var = this.f11773f;
                if (q2Var == null) {
                    thirdPartyPrincipal.thirdPartyClaims_ = this.f11772e;
                } else {
                    thirdPartyPrincipal.thirdPartyClaims_ = q2Var.b();
                }
                Q();
                return thirdPartyPrincipal;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ThirdPartyPrincipal getDefaultInstanceForType() {
                return ThirdPartyPrincipal.getDefaultInstance();
            }

            public b d0(ThirdPartyPrincipal thirdPartyPrincipal) {
                if (thirdPartyPrincipal == ThirdPartyPrincipal.getDefaultInstance()) {
                    return this;
                }
                if (thirdPartyPrincipal.hasThirdPartyClaims()) {
                    h0(thirdPartyPrincipal.getThirdPartyClaims());
                }
                z(((GeneratedMessageV3) thirdPartyPrincipal).unknownFields);
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
            public com.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.cloud.audit.ServiceAccountDelegationInfo$ThirdPartyPrincipal r3 = (com.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.cloud.audit.ServiceAccountDelegationInfo$ThirdPartyPrincipal r4 = (com.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipal.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.ServiceAccountDelegationInfo$ThirdPartyPrincipal$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ThirdPartyPrincipal) {
                    return d0((ThirdPartyPrincipal) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.cloud.audit.a.f11794o;
            }

            public b h0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f11773f;
                if (q2Var == null) {
                    Struct struct2 = this.f11772e;
                    if (struct2 != null) {
                        this.f11772e = Struct.newBuilder(struct2).i0(struct).I();
                    } else {
                        this.f11772e = struct;
                    }
                    R();
                } else {
                    q2Var.e(struct);
                }
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ ThirdPartyPrincipal(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ThirdPartyPrincipal getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.cloud.audit.a.f11794o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ThirdPartyPrincipal parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ThirdPartyPrincipal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ThirdPartyPrincipal> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ThirdPartyPrincipal)) {
                return super.equals(obj);
            }
            ThirdPartyPrincipal thirdPartyPrincipal = (ThirdPartyPrincipal) obj;
            if (hasThirdPartyClaims() != thirdPartyPrincipal.hasThirdPartyClaims()) {
                return false;
            }
            return (!hasThirdPartyClaims() || getThirdPartyClaims().equals(thirdPartyPrincipal.getThirdPartyClaims())) && this.unknownFields.equals(thirdPartyPrincipal.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ThirdPartyPrincipal> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.thirdPartyClaims_ != null ? 0 + CodedOutputStream.G(1, getThirdPartyClaims()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        public Struct getThirdPartyClaims() {
            Struct struct = this.thirdPartyClaims_;
            return struct == null ? Struct.getDefaultInstance() : struct;
        }

        public u2 getThirdPartyClaimsOrBuilder() {
            return getThirdPartyClaims();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasThirdPartyClaims() {
            return this.thirdPartyClaims_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasThirdPartyClaims()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getThirdPartyClaims().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.cloud.audit.a.f11795p.d(ThirdPartyPrincipal.class, b.class);
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
            return new ThirdPartyPrincipal();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.thirdPartyClaims_ != null) {
                codedOutputStream.L0(1, getThirdPartyClaims());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ThirdPartyPrincipal(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ThirdPartyPrincipal thirdPartyPrincipal) {
            return DEFAULT_INSTANCE.toBuilder().d0(thirdPartyPrincipal);
        }

        public static ThirdPartyPrincipal parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ThirdPartyPrincipal parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ThirdPartyPrincipal(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ThirdPartyPrincipal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ThirdPartyPrincipal getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static ThirdPartyPrincipal parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ThirdPartyPrincipal() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ThirdPartyPrincipal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ThirdPartyPrincipal parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private ThirdPartyPrincipal(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Struct struct = this.thirdPartyClaims_;
                                    Struct.b builder = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                    this.thirdPartyClaims_ = struct2;
                                    if (builder != null) {
                                        builder.i0(struct2);
                                        this.thirdPartyClaims_ = builder.I();
                                    }
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static ThirdPartyPrincipal parseFrom(InputStream inputStream) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ThirdPartyPrincipal parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ThirdPartyPrincipal parseFrom(p pVar) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ThirdPartyPrincipal parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ThirdPartyPrincipal) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ServiceAccountDelegationInfo> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ServiceAccountDelegationInfo m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ServiceAccountDelegationInfo(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11774a;

        static {
            int[] iArr = new int[AuthorityCase.values().length];
            f11774a = iArr;
            try {
                iArr[AuthorityCase.FIRST_PARTY_PRINCIPAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11774a[AuthorityCase.THIRD_PARTY_PRINCIPAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11774a[AuthorityCase.AUTHORITY_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f11775e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11776f;

        /* renamed from: g  reason: collision with root package name */
        private Object f11777g;

        /* renamed from: h  reason: collision with root package name */
        private q2<FirstPartyPrincipal, FirstPartyPrincipal.b, d> f11778h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ThirdPartyPrincipal, ThirdPartyPrincipal.b, e> f11779i;

        /* synthetic */ c(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.audit.a.f11791l.d(ServiceAccountDelegationInfo.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ServiceAccountDelegationInfo build() {
            ServiceAccountDelegationInfo I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ServiceAccountDelegationInfo I() {
            ServiceAccountDelegationInfo serviceAccountDelegationInfo = new ServiceAccountDelegationInfo(this, (a) null);
            serviceAccountDelegationInfo.principalSubject_ = this.f11777g;
            if (this.f11775e == 1) {
                q2<FirstPartyPrincipal, FirstPartyPrincipal.b, d> q2Var = this.f11778h;
                if (q2Var == null) {
                    serviceAccountDelegationInfo.authority_ = this.f11776f;
                } else {
                    serviceAccountDelegationInfo.authority_ = q2Var.b();
                }
            }
            if (this.f11775e == 2) {
                q2<ThirdPartyPrincipal, ThirdPartyPrincipal.b, e> q2Var2 = this.f11779i;
                if (q2Var2 == null) {
                    serviceAccountDelegationInfo.authority_ = this.f11776f;
                } else {
                    serviceAccountDelegationInfo.authority_ = q2Var2.b();
                }
            }
            serviceAccountDelegationInfo.authorityCase_ = this.f11775e;
            Q();
            return serviceAccountDelegationInfo;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ServiceAccountDelegationInfo getDefaultInstanceForType() {
            return ServiceAccountDelegationInfo.getDefaultInstance();
        }

        public c d0(FirstPartyPrincipal firstPartyPrincipal) {
            q2<FirstPartyPrincipal, FirstPartyPrincipal.b, d> q2Var = this.f11778h;
            if (q2Var == null) {
                if (this.f11775e == 1 && this.f11776f != FirstPartyPrincipal.getDefaultInstance()) {
                    this.f11776f = FirstPartyPrincipal.newBuilder((FirstPartyPrincipal) this.f11776f).d0(firstPartyPrincipal).I();
                } else {
                    this.f11776f = firstPartyPrincipal;
                }
                R();
            } else {
                if (this.f11775e == 1) {
                    q2Var.e(firstPartyPrincipal);
                }
                this.f11778h.g(firstPartyPrincipal);
            }
            this.f11775e = 1;
            return this;
        }

        public c e0(ServiceAccountDelegationInfo serviceAccountDelegationInfo) {
            if (serviceAccountDelegationInfo == ServiceAccountDelegationInfo.getDefaultInstance()) {
                return this;
            }
            if (!serviceAccountDelegationInfo.getPrincipalSubject().isEmpty()) {
                this.f11777g = serviceAccountDelegationInfo.principalSubject_;
                R();
            }
            int i9 = b.f11774a[serviceAccountDelegationInfo.getAuthorityCase().ordinal()];
            if (i9 == 1) {
                d0(serviceAccountDelegationInfo.getFirstPartyPrincipal());
            } else if (i9 == 2) {
                i0(serviceAccountDelegationInfo.getThirdPartyPrincipal());
            }
            z(((GeneratedMessageV3) serviceAccountDelegationInfo).unknownFields);
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
        public com.google.cloud.audit.ServiceAccountDelegationInfo.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.audit.ServiceAccountDelegationInfo.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.audit.ServiceAccountDelegationInfo r3 = (com.google.cloud.audit.ServiceAccountDelegationInfo) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.audit.ServiceAccountDelegationInfo r4 = (com.google.cloud.audit.ServiceAccountDelegationInfo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.ServiceAccountDelegationInfo.c.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.ServiceAccountDelegationInfo$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.audit.a.f11790k;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ServiceAccountDelegationInfo) {
                return e0((ServiceAccountDelegationInfo) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(ThirdPartyPrincipal thirdPartyPrincipal) {
            q2<ThirdPartyPrincipal, ThirdPartyPrincipal.b, e> q2Var = this.f11779i;
            if (q2Var == null) {
                if (this.f11775e == 2 && this.f11776f != ThirdPartyPrincipal.getDefaultInstance()) {
                    this.f11776f = ThirdPartyPrincipal.newBuilder((ThirdPartyPrincipal) this.f11776f).d0(thirdPartyPrincipal).I();
                } else {
                    this.f11776f = thirdPartyPrincipal;
                }
                R();
            } else {
                if (this.f11775e == 2) {
                    q2Var.e(thirdPartyPrincipal);
                }
                this.f11779i.g(thirdPartyPrincipal);
            }
            this.f11775e = 2;
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
            this.f11775e = 0;
            this.f11777g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11775e = 0;
            this.f11777g = "";
            b0();
        }
    }

    /* loaded from: classes2.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes2.dex */
    public interface e extends r1 {
    }

    /* synthetic */ ServiceAccountDelegationInfo(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ServiceAccountDelegationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.audit.a.f11790k;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ServiceAccountDelegationInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ServiceAccountDelegationInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ServiceAccountDelegationInfo> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServiceAccountDelegationInfo)) {
            return super.equals(obj);
        }
        ServiceAccountDelegationInfo serviceAccountDelegationInfo = (ServiceAccountDelegationInfo) obj;
        if (getPrincipalSubject().equals(serviceAccountDelegationInfo.getPrincipalSubject()) && getAuthorityCase().equals(serviceAccountDelegationInfo.getAuthorityCase())) {
            int i9 = this.authorityCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getThirdPartyPrincipal().equals(serviceAccountDelegationInfo.getThirdPartyPrincipal())) {
                    return false;
                }
            } else if (!getFirstPartyPrincipal().equals(serviceAccountDelegationInfo.getFirstPartyPrincipal())) {
                return false;
            }
            return this.unknownFields.equals(serviceAccountDelegationInfo.unknownFields);
        }
        return false;
    }

    public AuthorityCase getAuthorityCase() {
        return AuthorityCase.forNumber(this.authorityCase_);
    }

    public FirstPartyPrincipal getFirstPartyPrincipal() {
        if (this.authorityCase_ == 1) {
            return (FirstPartyPrincipal) this.authority_;
        }
        return FirstPartyPrincipal.getDefaultInstance();
    }

    public d getFirstPartyPrincipalOrBuilder() {
        if (this.authorityCase_ == 1) {
            return (FirstPartyPrincipal) this.authority_;
        }
        return FirstPartyPrincipal.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ServiceAccountDelegationInfo> getParserForType() {
        return PARSER;
    }

    public String getPrincipalSubject() {
        Object obj = this.principalSubject_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.principalSubject_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getPrincipalSubjectBytes() {
        Object obj = this.principalSubject_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.principalSubject_ = copyFromUtf8;
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
        int G = this.authorityCase_ == 1 ? 0 + CodedOutputStream.G(1, (FirstPartyPrincipal) this.authority_) : 0;
        if (this.authorityCase_ == 2) {
            G += CodedOutputStream.G(2, (ThirdPartyPrincipal) this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.principalSubject_)) {
            G += GeneratedMessageV3.computeStringSize(3, this.principalSubject_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ThirdPartyPrincipal getThirdPartyPrincipal() {
        if (this.authorityCase_ == 2) {
            return (ThirdPartyPrincipal) this.authority_;
        }
        return ThirdPartyPrincipal.getDefaultInstance();
    }

    public e getThirdPartyPrincipalOrBuilder() {
        if (this.authorityCase_ == 2) {
            return (ThirdPartyPrincipal) this.authority_;
        }
        return ThirdPartyPrincipal.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFirstPartyPrincipal() {
        return this.authorityCase_ == 1;
    }

    public boolean hasThirdPartyPrincipal() {
        return this.authorityCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + getPrincipalSubject().hashCode();
        int i11 = this.authorityCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getFirstPartyPrincipal().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getThirdPartyPrincipal().hashCode();
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
        return com.google.cloud.audit.a.f11791l.d(ServiceAccountDelegationInfo.class, c.class);
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
        return new ServiceAccountDelegationInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.authorityCase_ == 1) {
            codedOutputStream.L0(1, (FirstPartyPrincipal) this.authority_);
        }
        if (this.authorityCase_ == 2) {
            codedOutputStream.L0(2, (ThirdPartyPrincipal) this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.principalSubject_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.principalSubject_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ServiceAccountDelegationInfo(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ServiceAccountDelegationInfo serviceAccountDelegationInfo) {
        return DEFAULT_INSTANCE.toBuilder().e0(serviceAccountDelegationInfo);
    }

    public static ServiceAccountDelegationInfo parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServiceAccountDelegationInfo parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ServiceAccountDelegationInfo(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.authorityCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ServiceAccountDelegationInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ServiceAccountDelegationInfo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).e0(this);
    }

    public static ServiceAccountDelegationInfo parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ServiceAccountDelegationInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ServiceAccountDelegationInfo() {
        this.authorityCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.principalSubject_ = "";
    }

    public static ServiceAccountDelegationInfo parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ServiceAccountDelegationInfo parseFrom(InputStream inputStream) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ServiceAccountDelegationInfo parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ServiceAccountDelegationInfo parseFrom(p pVar) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    private ServiceAccountDelegationInfo(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            FirstPartyPrincipal.b builder = this.authorityCase_ == 1 ? ((FirstPartyPrincipal) this.authority_).toBuilder() : null;
                            o1 B = pVar.B(FirstPartyPrincipal.parser(), f0Var);
                            this.authority_ = B;
                            if (builder != null) {
                                builder.d0((FirstPartyPrincipal) B);
                                this.authority_ = builder.I();
                            }
                            this.authorityCase_ = 1;
                        } else if (L == 18) {
                            ThirdPartyPrincipal.b builder2 = this.authorityCase_ == 2 ? ((ThirdPartyPrincipal) this.authority_).toBuilder() : null;
                            o1 B2 = pVar.B(ThirdPartyPrincipal.parser(), f0Var);
                            this.authority_ = B2;
                            if (builder2 != null) {
                                builder2.d0((ThirdPartyPrincipal) B2);
                                this.authority_ = builder2.I();
                            }
                            this.authorityCase_ = 2;
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.principalSubject_ = pVar.K();
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

    public static ServiceAccountDelegationInfo parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ServiceAccountDelegationInfo) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
