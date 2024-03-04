package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.GenericSecret;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsCertificate;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Secret extends GeneratedMessageV3 implements h {
    public static final int GENERIC_SECRET_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int SESSION_TICKET_KEYS_FIELD_NUMBER = 3;
    public static final int TLS_CERTIFICATE_FIELD_NUMBER = 2;
    public static final int VALIDATION_CONTEXT_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int typeCase_;
    private Object type_;
    private static final Secret DEFAULT_INSTANCE = new Secret();
    private static final e2<Secret> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TypeCase implements u0.c {
        TLS_CERTIFICATE(2),
        SESSION_TICKET_KEYS(3),
        VALIDATION_CONTEXT(4),
        GENERIC_SECRET(5),
        TYPE_NOT_SET(0);
        
        private final int value;

        TypeCase(int i9) {
            this.value = i9;
        }

        public static TypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return GENERIC_SECRET;
                        }
                        return VALIDATION_CONTEXT;
                    }
                    return SESSION_TICKET_KEYS;
                }
                return TLS_CERTIFICATE;
            }
            return TYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Secret> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Secret m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Secret(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49986a;

        static {
            int[] iArr = new int[TypeCase.values().length];
            f49986a = iArr;
            try {
                iArr[TypeCase.TLS_CERTIFICATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49986a[TypeCase.SESSION_TICKET_KEYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49986a[TypeCase.VALIDATION_CONTEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49986a[TypeCase.GENERIC_SECRET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49986a[TypeCase.TYPE_NOT_SET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements h {

        /* renamed from: e  reason: collision with root package name */
        private int f49987e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49988f;

        /* renamed from: g  reason: collision with root package name */
        private Object f49989g;

        /* renamed from: h  reason: collision with root package name */
        private q2<TlsCertificate, TlsCertificate.b, j> f49990h;

        /* renamed from: i  reason: collision with root package name */
        private q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> f49991i;

        /* renamed from: j  reason: collision with root package name */
        private q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> f49992j;

        /* renamed from: k  reason: collision with root package name */
        private q2<GenericSecret, GenericSecret.b, e> f49993k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f50041f.d(Secret.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Secret build() {
            Secret I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Secret I() {
            Secret secret = new Secret(this, (a) null);
            secret.name_ = this.f49989g;
            if (this.f49987e == 2) {
                q2<TlsCertificate, TlsCertificate.b, j> q2Var = this.f49990h;
                if (q2Var == null) {
                    secret.type_ = this.f49988f;
                } else {
                    secret.type_ = q2Var.b();
                }
            }
            if (this.f49987e == 3) {
                q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> q2Var2 = this.f49991i;
                if (q2Var2 == null) {
                    secret.type_ = this.f49988f;
                } else {
                    secret.type_ = q2Var2.b();
                }
            }
            if (this.f49987e == 4) {
                q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var3 = this.f49992j;
                if (q2Var3 == null) {
                    secret.type_ = this.f49988f;
                } else {
                    secret.type_ = q2Var3.b();
                }
            }
            if (this.f49987e == 5) {
                q2<GenericSecret, GenericSecret.b, e> q2Var4 = this.f49993k;
                if (q2Var4 == null) {
                    secret.type_ = this.f49988f;
                } else {
                    secret.type_ = q2Var4.b();
                }
            }
            secret.typeCase_ = this.f49987e;
            Q();
            return secret;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Secret getDefaultInstanceForType() {
            return Secret.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.Secret$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Secret) {
                return g0((Secret) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(Secret secret) {
            if (secret == Secret.getDefaultInstance()) {
                return this;
            }
            if (!secret.getName().isEmpty()) {
                this.f49989g = secret.name_;
                R();
            }
            int i9 = b.f49986a[secret.getTypeCase().ordinal()];
            if (i9 == 1) {
                j0(secret.getTlsCertificate());
            } else if (i9 == 2) {
                i0(secret.getSessionTicketKeys());
            } else if (i9 == 3) {
                l0(secret.getValidationContext());
            } else if (i9 == 4) {
                h0(secret.getGenericSecret());
            }
            z(((GeneratedMessageV3) secret).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f50040e;
        }

        public c h0(GenericSecret genericSecret) {
            q2<GenericSecret, GenericSecret.b, e> q2Var = this.f49993k;
            if (q2Var == null) {
                if (this.f49987e == 5 && this.f49988f != GenericSecret.getDefaultInstance()) {
                    this.f49988f = GenericSecret.newBuilder((GenericSecret) this.f49988f).g0(genericSecret).I();
                } else {
                    this.f49988f = genericSecret;
                }
                R();
            } else {
                if (this.f49987e == 5) {
                    q2Var.e(genericSecret);
                }
                this.f49993k.g(genericSecret);
            }
            this.f49987e = 5;
            return this;
        }

        public c i0(TlsSessionTicketKeys tlsSessionTicketKeys) {
            q2<TlsSessionTicketKeys, TlsSessionTicketKeys.b, m> q2Var = this.f49991i;
            if (q2Var == null) {
                if (this.f49987e == 3 && this.f49988f != TlsSessionTicketKeys.getDefaultInstance()) {
                    this.f49988f = TlsSessionTicketKeys.newBuilder((TlsSessionTicketKeys) this.f49988f).i0(tlsSessionTicketKeys).I();
                } else {
                    this.f49988f = tlsSessionTicketKeys;
                }
                R();
            } else {
                if (this.f49987e == 3) {
                    q2Var.e(tlsSessionTicketKeys);
                }
                this.f49991i.g(tlsSessionTicketKeys);
            }
            this.f49987e = 3;
            return this;
        }

        public c j0(TlsCertificate tlsCertificate) {
            q2<TlsCertificate, TlsCertificate.b, j> q2Var = this.f49990h;
            if (q2Var == null) {
                if (this.f49987e == 2 && this.f49988f != TlsCertificate.getDefaultInstance()) {
                    this.f49988f = TlsCertificate.newBuilder((TlsCertificate) this.f49988f).j0(tlsCertificate).I();
                } else {
                    this.f49988f = tlsCertificate;
                }
                R();
            } else {
                if (this.f49987e == 2) {
                    q2Var.e(tlsCertificate);
                }
                this.f49990h.g(tlsCertificate);
            }
            this.f49987e = 2;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c l0(CertificateValidationContext certificateValidationContext) {
            q2<CertificateValidationContext, CertificateValidationContext.b, io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b> q2Var = this.f49992j;
            if (q2Var == null) {
                if (this.f49987e == 4 && this.f49988f != CertificateValidationContext.getDefaultInstance()) {
                    this.f49988f = CertificateValidationContext.newBuilder((CertificateValidationContext) this.f49988f).n0(certificateValidationContext).I();
                } else {
                    this.f49988f = certificateValidationContext;
                }
                R();
            } else {
                if (this.f49987e == 4) {
                    q2Var.e(certificateValidationContext);
                }
                this.f49992j.g(certificateValidationContext);
            }
            this.f49987e = 4;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49987e = 0;
            this.f49989g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49987e = 0;
            this.f49989g = "";
            b0();
        }
    }

    /* synthetic */ Secret(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Secret getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f50040e;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Secret parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Secret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Secret parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Secret> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Secret)) {
            return super.equals(obj);
        }
        Secret secret = (Secret) obj;
        if (getName().equals(secret.getName()) && getTypeCase().equals(secret.getTypeCase())) {
            int i9 = this.typeCase_;
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5 && !getGenericSecret().equals(secret.getGenericSecret())) {
                            return false;
                        }
                    } else if (!getValidationContext().equals(secret.getValidationContext())) {
                        return false;
                    }
                } else if (!getSessionTicketKeys().equals(secret.getSessionTicketKeys())) {
                    return false;
                }
            } else if (!getTlsCertificate().equals(secret.getTlsCertificate())) {
                return false;
            }
            return this.unknownFields.equals(secret.unknownFields);
        }
        return false;
    }

    public GenericSecret getGenericSecret() {
        if (this.typeCase_ == 5) {
            return (GenericSecret) this.type_;
        }
        return GenericSecret.getDefaultInstance();
    }

    public e getGenericSecretOrBuilder() {
        if (this.typeCase_ == 5) {
            return (GenericSecret) this.type_;
        }
        return GenericSecret.getDefaultInstance();
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
    public e2<Secret> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.typeCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (TlsCertificate) this.type_);
        }
        if (this.typeCase_ == 3) {
            computeStringSize += CodedOutputStream.G(3, (TlsSessionTicketKeys) this.type_);
        }
        if (this.typeCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (CertificateValidationContext) this.type_);
        }
        if (this.typeCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (GenericSecret) this.type_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TlsSessionTicketKeys getSessionTicketKeys() {
        if (this.typeCase_ == 3) {
            return (TlsSessionTicketKeys) this.type_;
        }
        return TlsSessionTicketKeys.getDefaultInstance();
    }

    public m getSessionTicketKeysOrBuilder() {
        if (this.typeCase_ == 3) {
            return (TlsSessionTicketKeys) this.type_;
        }
        return TlsSessionTicketKeys.getDefaultInstance();
    }

    public TlsCertificate getTlsCertificate() {
        if (this.typeCase_ == 2) {
            return (TlsCertificate) this.type_;
        }
        return TlsCertificate.getDefaultInstance();
    }

    public j getTlsCertificateOrBuilder() {
        if (this.typeCase_ == 2) {
            return (TlsCertificate) this.type_;
        }
        return TlsCertificate.getDefaultInstance();
    }

    public TypeCase getTypeCase() {
        return TypeCase.forNumber(this.typeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public CertificateValidationContext getValidationContext() {
        if (this.typeCase_ == 4) {
            return (CertificateValidationContext) this.type_;
        }
        return CertificateValidationContext.getDefaultInstance();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.b getValidationContextOrBuilder() {
        if (this.typeCase_ == 4) {
            return (CertificateValidationContext) this.type_;
        }
        return CertificateValidationContext.getDefaultInstance();
    }

    public boolean hasGenericSecret() {
        return this.typeCase_ == 5;
    }

    public boolean hasSessionTicketKeys() {
        return this.typeCase_ == 3;
    }

    public boolean hasTlsCertificate() {
        return this.typeCase_ == 2;
    }

    public boolean hasValidationContext() {
        return this.typeCase_ == 4;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        int i11 = this.typeCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getTlsCertificate().hashCode();
        } else if (i11 == 3) {
            i9 = ((hashCode2 * 37) + 3) * 53;
            hashCode = getSessionTicketKeys().hashCode();
        } else if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getValidationContext().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getGenericSecret().hashCode();
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
        return i.f50041f.d(Secret.class, c.class);
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
        return new Secret();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.typeCase_ == 2) {
            codedOutputStream.L0(2, (TlsCertificate) this.type_);
        }
        if (this.typeCase_ == 3) {
            codedOutputStream.L0(3, (TlsSessionTicketKeys) this.type_);
        }
        if (this.typeCase_ == 4) {
            codedOutputStream.L0(4, (CertificateValidationContext) this.type_);
        }
        if (this.typeCase_ == 5) {
            codedOutputStream.L0(5, (GenericSecret) this.type_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Secret(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Secret secret) {
        return DEFAULT_INSTANCE.toBuilder().g0(secret);
    }

    public static Secret parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Secret(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.typeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Secret parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Secret) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Secret parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Secret getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static Secret parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Secret parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Secret() {
        this.typeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static Secret parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Secret parseFrom(InputStream inputStream) throws IOException {
        return (Secret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Secret parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Secret) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Secret(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (L == 18) {
                                TlsCertificate.b builder = this.typeCase_ == 2 ? ((TlsCertificate) this.type_).toBuilder() : null;
                                o1 B = pVar.B(TlsCertificate.parser(), f0Var);
                                this.type_ = B;
                                if (builder != null) {
                                    builder.j0((TlsCertificate) B);
                                    this.type_ = builder.I();
                                }
                                this.typeCase_ = 2;
                            } else if (L == 26) {
                                TlsSessionTicketKeys.b builder2 = this.typeCase_ == 3 ? ((TlsSessionTicketKeys) this.type_).toBuilder() : null;
                                o1 B2 = pVar.B(TlsSessionTicketKeys.parser(), f0Var);
                                this.type_ = B2;
                                if (builder2 != null) {
                                    builder2.i0((TlsSessionTicketKeys) B2);
                                    this.type_ = builder2.I();
                                }
                                this.typeCase_ = 3;
                            } else if (L == 34) {
                                CertificateValidationContext.b builder3 = this.typeCase_ == 4 ? ((CertificateValidationContext) this.type_).toBuilder() : null;
                                o1 B3 = pVar.B(CertificateValidationContext.parser(), f0Var);
                                this.type_ = B3;
                                if (builder3 != null) {
                                    builder3.n0((CertificateValidationContext) B3);
                                    this.type_ = builder3.I();
                                }
                                this.typeCase_ = 4;
                            } else if (L != 42) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                GenericSecret.b builder4 = this.typeCase_ == 5 ? ((GenericSecret) this.type_).toBuilder() : null;
                                o1 B4 = pVar.B(GenericSecret.parser(), f0Var);
                                this.type_ = B4;
                                if (builder4 != null) {
                                    builder4.g0((GenericSecret) B4);
                                    this.type_ = builder4.I();
                                }
                                this.typeCase_ = 5;
                            }
                        } else {
                            this.name_ = pVar.K();
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

    public static Secret parseFrom(p pVar) throws IOException {
        return (Secret) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Secret parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Secret) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
