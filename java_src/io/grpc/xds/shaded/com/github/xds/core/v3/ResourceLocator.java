package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.com.github.xds.core.v3.ContextParams;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ResourceLocator extends GeneratedMessageV3 implements g {
    public static final int AUTHORITY_FIELD_NUMBER = 3;
    public static final int DIRECTIVES_FIELD_NUMBER = 6;
    public static final int EXACT_CONTEXT_FIELD_NUMBER = 5;
    public static final int ID_FIELD_NUMBER = 2;
    public static final int RESOURCE_TYPE_FIELD_NUMBER = 4;
    public static final int SCHEME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object authority_;
    private int contextParamSpecifierCase_;
    private Object contextParamSpecifier_;
    private List<Directive> directives_;
    private volatile Object id_;
    private byte memoizedIsInitialized;
    private volatile Object resourceType_;
    private int scheme_;
    private static final ResourceLocator DEFAULT_INSTANCE = new ResourceLocator();
    private static final e2<ResourceLocator> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum ContextParamSpecifierCase implements u0.c {
        EXACT_CONTEXT(5),
        CONTEXTPARAMSPECIFIER_NOT_SET(0);
        
        private final int value;

        ContextParamSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ContextParamSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 5) {
                    return null;
                }
                return EXACT_CONTEXT;
            }
            return CONTEXTPARAMSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ContextParamSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public static final class Directive extends GeneratedMessageV3 implements d {
        public static final int ALT_FIELD_NUMBER = 1;
        public static final int ENTRY_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int directiveCase_;
        private Object directive_;
        private byte memoizedIsInitialized;
        private static final Directive DEFAULT_INSTANCE = new Directive();
        private static final e2<Directive> PARSER = new a();

        /* loaded from: classes5.dex */
        public enum DirectiveCase implements u0.c {
            ALT(1),
            ENTRY(2),
            DIRECTIVE_NOT_SET(0);
            
            private final int value;

            DirectiveCase(int i9) {
                this.value = i9;
            }

            public static DirectiveCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return ENTRY;
                    }
                    return ALT;
                }
                return DIRECTIVE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static DirectiveCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<Directive> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Directive m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Directive(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f45491e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45492f;

            /* renamed from: g  reason: collision with root package name */
            private q2<ResourceLocator, c, g> f45493g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.f45527d.d(Directive.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Directive build() {
                Directive I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Directive I() {
                Directive directive = new Directive(this, (a) null);
                if (this.f45491e == 1) {
                    q2<ResourceLocator, c, g> q2Var = this.f45493g;
                    if (q2Var == null) {
                        directive.directive_ = this.f45492f;
                    } else {
                        directive.directive_ = q2Var.b();
                    }
                }
                if (this.f45491e == 2) {
                    directive.directive_ = this.f45492f;
                }
                directive.directiveCase_ = this.f45491e;
                Q();
                return directive;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Directive getDefaultInstanceForType() {
                return Directive.getDefaultInstance();
            }

            public b d0(ResourceLocator resourceLocator) {
                q2<ResourceLocator, c, g> q2Var = this.f45493g;
                if (q2Var == null) {
                    if (this.f45491e == 1 && this.f45492f != ResourceLocator.getDefaultInstance()) {
                        this.f45492f = ResourceLocator.newBuilder((ResourceLocator) this.f45492f).j0(resourceLocator).I();
                    } else {
                        this.f45492f = resourceLocator;
                    }
                    R();
                } else {
                    if (this.f45491e == 1) {
                        q2Var.e(resourceLocator);
                    }
                    this.f45493g.g(resourceLocator);
                }
                this.f45491e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.Directive.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.Directive.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator$Directive r3 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.Directive) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.h0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator$Directive r4 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.Directive) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.h0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.Directive.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator$Directive$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Directive) {
                    return h0((Directive) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return h.f45526c;
            }

            public b h0(Directive directive) {
                if (directive == Directive.getDefaultInstance()) {
                    return this;
                }
                int i9 = b.f45494a[directive.getDirectiveCase().ordinal()];
                if (i9 == 1) {
                    d0(directive.getAlt());
                } else if (i9 == 2) {
                    this.f45491e = 2;
                    this.f45492f = directive.directive_;
                    R();
                }
                z(((GeneratedMessageV3) directive).unknownFields);
                R();
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45491e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45491e = 0;
                b0();
            }
        }

        /* synthetic */ Directive(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Directive getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.f45526c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Directive parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Directive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Directive parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Directive> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Directive)) {
                return super.equals(obj);
            }
            Directive directive = (Directive) obj;
            if (getDirectiveCase().equals(directive.getDirectiveCase())) {
                int i9 = this.directiveCase_;
                if (i9 != 1) {
                    if (i9 == 2 && !getEntry().equals(directive.getEntry())) {
                        return false;
                    }
                } else if (!getAlt().equals(directive.getAlt())) {
                    return false;
                }
                return this.unknownFields.equals(directive.unknownFields);
            }
            return false;
        }

        public ResourceLocator getAlt() {
            if (this.directiveCase_ == 1) {
                return (ResourceLocator) this.directive_;
            }
            return ResourceLocator.getDefaultInstance();
        }

        public g getAltOrBuilder() {
            if (this.directiveCase_ == 1) {
                return (ResourceLocator) this.directive_;
            }
            return ResourceLocator.getDefaultInstance();
        }

        public DirectiveCase getDirectiveCase() {
            return DirectiveCase.forNumber(this.directiveCase_);
        }

        public String getEntry() {
            String str = this.directiveCase_ == 2 ? this.directive_ : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.directiveCase_ == 2) {
                this.directive_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getEntryBytes() {
            String str = this.directiveCase_ == 2 ? this.directive_ : "";
            if (str instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                if (this.directiveCase_ == 2) {
                    this.directive_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) str;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Directive> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.directiveCase_ == 1 ? 0 + CodedOutputStream.G(1, (ResourceLocator) this.directive_) : 0;
            if (this.directiveCase_ == 2) {
                G += GeneratedMessageV3.computeStringSize(2, this.directive_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAlt() {
            return this.directiveCase_ == 1;
        }

        public boolean hasEntry() {
            return this.directiveCase_ == 2;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = 779 + getDescriptor().hashCode();
            int i11 = this.directiveCase_;
            if (i11 == 1) {
                i9 = ((hashCode2 * 37) + 1) * 53;
                hashCode = getAlt().hashCode();
            } else {
                if (i11 == 2) {
                    i9 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getEntry().hashCode();
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
            return h.f45527d.d(Directive.class, b.class);
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
            return new Directive();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.directiveCase_ == 1) {
                codedOutputStream.L0(1, (ResourceLocator) this.directive_);
            }
            if (this.directiveCase_ == 2) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.directive_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Directive(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Directive directive) {
            return DEFAULT_INSTANCE.toBuilder().h0(directive);
        }

        public static Directive parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Directive(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.directiveCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Directive parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Directive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Directive parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Directive getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Directive parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Directive parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Directive() {
            this.directiveCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Directive parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Directive parseFrom(InputStream inputStream) throws IOException {
            return (Directive) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Directive(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                c builder = this.directiveCase_ == 1 ? ((ResourceLocator) this.directive_).toBuilder() : null;
                                o1 B = pVar.B(ResourceLocator.parser(), f0Var);
                                this.directive_ = B;
                                if (builder != null) {
                                    builder.j0((ResourceLocator) B);
                                    this.directive_ = builder.I();
                                }
                                this.directiveCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K = pVar.K();
                                this.directiveCase_ = 2;
                                this.directive_ = K;
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

        public static Directive parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Directive) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Directive parseFrom(p pVar) throws IOException {
            return (Directive) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Directive parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Directive) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum Scheme implements h2 {
        XDSTP(0),
        HTTP(1),
        FILE(2),
        UNRECOGNIZED(-1);
        
        public static final int FILE_VALUE = 2;
        public static final int HTTP_VALUE = 1;
        public static final int XDSTP_VALUE = 0;
        private final int value;
        private static final u0.d<Scheme> internalValueMap = new a();
        private static final Scheme[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<Scheme> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Scheme a(int i9) {
                return Scheme.forNumber(i9);
            }
        }

        Scheme(int i9) {
            this.value = i9;
        }

        public static Scheme forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return FILE;
                }
                return HTTP;
            }
            return XDSTP;
        }

        public static final Descriptors.d getDescriptor() {
            return ResourceLocator.getDescriptor().k().get(0);
        }

        public static u0.d<Scheme> internalGetValueMap() {
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
        public static Scheme valueOf(int i9) {
            return forNumber(i9);
        }

        public static Scheme valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<ResourceLocator> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResourceLocator m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ResourceLocator(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45494a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f45495b;

        static {
            int[] iArr = new int[ContextParamSpecifierCase.values().length];
            f45495b = iArr;
            try {
                iArr[ContextParamSpecifierCase.EXACT_CONTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45495b[ContextParamSpecifierCase.CONTEXTPARAMSPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Directive.DirectiveCase.values().length];
            f45494a = iArr2;
            try {
                iArr2[Directive.DirectiveCase.ALT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45494a[Directive.DirectiveCase.ENTRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45494a[Directive.DirectiveCase.DIRECTIVE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f45496e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45497f;

        /* renamed from: g  reason: collision with root package name */
        private int f45498g;

        /* renamed from: h  reason: collision with root package name */
        private int f45499h;

        /* renamed from: i  reason: collision with root package name */
        private Object f45500i;

        /* renamed from: j  reason: collision with root package name */
        private Object f45501j;

        /* renamed from: k  reason: collision with root package name */
        private Object f45502k;

        /* renamed from: l  reason: collision with root package name */
        private q2<ContextParams, ContextParams.b, e> f45503l;

        /* renamed from: m  reason: collision with root package name */
        private List<Directive> f45504m;

        /* renamed from: n  reason: collision with root package name */
        private l2<Directive, Directive.b, d> f45505n;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f45498g & 1) == 0) {
                this.f45504m = new ArrayList(this.f45504m);
                this.f45498g |= 1;
            }
        }

        private l2<Directive, Directive.b, d> d0() {
            if (this.f45505n == null) {
                this.f45505n = new l2<>(this.f45504m, (this.f45498g & 1) != 0, H(), O());
                this.f45504m = null;
            }
            return this.f45505n;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f45525b.d(ResourceLocator.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResourceLocator build() {
            ResourceLocator I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResourceLocator I() {
            ResourceLocator resourceLocator = new ResourceLocator(this, (a) null);
            resourceLocator.scheme_ = this.f45499h;
            resourceLocator.id_ = this.f45500i;
            resourceLocator.authority_ = this.f45501j;
            resourceLocator.resourceType_ = this.f45502k;
            if (this.f45496e == 5) {
                q2<ContextParams, ContextParams.b, e> q2Var = this.f45503l;
                if (q2Var == null) {
                    resourceLocator.contextParamSpecifier_ = this.f45497f;
                } else {
                    resourceLocator.contextParamSpecifier_ = q2Var.b();
                }
            }
            l2<Directive, Directive.b, d> l2Var = this.f45505n;
            if (l2Var == null) {
                if ((this.f45498g & 1) != 0) {
                    this.f45504m = Collections.unmodifiableList(this.f45504m);
                    this.f45498g &= -2;
                }
                resourceLocator.directives_ = this.f45504m;
            } else {
                resourceLocator.directives_ = l2Var.e();
            }
            resourceLocator.contextParamSpecifierCase_ = this.f45496e;
            Q();
            return resourceLocator;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ResourceLocator getDefaultInstanceForType() {
            return ResourceLocator.getDefaultInstance();
        }

        public c g0(ContextParams contextParams) {
            q2<ContextParams, ContextParams.b, e> q2Var = this.f45503l;
            if (q2Var == null) {
                if (this.f45496e == 5 && this.f45497f != ContextParams.getDefaultInstance()) {
                    this.f45497f = ContextParams.newBuilder((ContextParams) this.f45497f).i0(contextParams).I();
                } else {
                    this.f45497f = contextParams;
                }
                R();
            } else {
                if (this.f45496e == 5) {
                    q2Var.e(contextParams);
                }
                this.f45503l.g(contextParams);
            }
            this.f45496e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f45524a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator r3 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator r4 = (io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ResourceLocator) {
                return j0((ResourceLocator) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c j0(ResourceLocator resourceLocator) {
            if (resourceLocator == ResourceLocator.getDefaultInstance()) {
                return this;
            }
            if (resourceLocator.scheme_ != 0) {
                m0(resourceLocator.getSchemeValue());
            }
            if (!resourceLocator.getId().isEmpty()) {
                this.f45500i = resourceLocator.id_;
                R();
            }
            if (!resourceLocator.getAuthority().isEmpty()) {
                this.f45501j = resourceLocator.authority_;
                R();
            }
            if (!resourceLocator.getResourceType().isEmpty()) {
                this.f45502k = resourceLocator.resourceType_;
                R();
            }
            if (this.f45505n == null) {
                if (!resourceLocator.directives_.isEmpty()) {
                    if (this.f45504m.isEmpty()) {
                        this.f45504m = resourceLocator.directives_;
                        this.f45498g &= -2;
                    } else {
                        a0();
                        this.f45504m.addAll(resourceLocator.directives_);
                    }
                    R();
                }
            } else if (!resourceLocator.directives_.isEmpty()) {
                if (this.f45505n.k()) {
                    this.f45505n.f();
                    this.f45505n = null;
                    this.f45504m = resourceLocator.directives_;
                    this.f45498g &= -2;
                    this.f45505n = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f45505n.b(resourceLocator.directives_);
                }
            }
            if (b.f45495b[resourceLocator.getContextParamSpecifierCase().ordinal()] == 1) {
                g0(resourceLocator.getExactContext());
            }
            z(((GeneratedMessageV3) resourceLocator).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c m0(int i9) {
            this.f45499h = i9;
            R();
            return this;
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
            this.f45496e = 0;
            this.f45499h = 0;
            this.f45500i = "";
            this.f45501j = "";
            this.f45502k = "";
            this.f45504m = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45496e = 0;
            this.f45499h = 0;
            this.f45500i = "";
            this.f45501j = "";
            this.f45502k = "";
            this.f45504m = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ResourceLocator(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResourceLocator getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f45524a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResourceLocator parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResourceLocator parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResourceLocator> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResourceLocator)) {
            return super.equals(obj);
        }
        ResourceLocator resourceLocator = (ResourceLocator) obj;
        if (this.scheme_ == resourceLocator.scheme_ && getId().equals(resourceLocator.getId()) && getAuthority().equals(resourceLocator.getAuthority()) && getResourceType().equals(resourceLocator.getResourceType()) && getDirectivesList().equals(resourceLocator.getDirectivesList()) && getContextParamSpecifierCase().equals(resourceLocator.getContextParamSpecifierCase())) {
            return (this.contextParamSpecifierCase_ != 5 || getExactContext().equals(resourceLocator.getExactContext())) && this.unknownFields.equals(resourceLocator.unknownFields);
        }
        return false;
    }

    public String getAuthority() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.authority_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAuthorityBytes() {
        Object obj = this.authority_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.authority_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public ContextParamSpecifierCase getContextParamSpecifierCase() {
        return ContextParamSpecifierCase.forNumber(this.contextParamSpecifierCase_);
    }

    public Directive getDirectives(int i9) {
        return this.directives_.get(i9);
    }

    public int getDirectivesCount() {
        return this.directives_.size();
    }

    public List<Directive> getDirectivesList() {
        return this.directives_;
    }

    public d getDirectivesOrBuilder(int i9) {
        return this.directives_.get(i9);
    }

    public List<? extends d> getDirectivesOrBuilderList() {
        return this.directives_;
    }

    public ContextParams getExactContext() {
        if (this.contextParamSpecifierCase_ == 5) {
            return (ContextParams) this.contextParamSpecifier_;
        }
        return ContextParams.getDefaultInstance();
    }

    public e getExactContextOrBuilder() {
        if (this.contextParamSpecifierCase_ == 5) {
            return (ContextParams) this.contextParamSpecifier_;
        }
        return ContextParams.getDefaultInstance();
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResourceLocator> getParserForType() {
        return PARSER;
    }

    public String getResourceType() {
        Object obj = this.resourceType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.resourceType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getResourceTypeBytes() {
        Object obj = this.resourceType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.resourceType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Scheme getScheme() {
        Scheme valueOf = Scheme.valueOf(this.scheme_);
        return valueOf == null ? Scheme.UNRECOGNIZED : valueOf;
    }

    public int getSchemeValue() {
        return this.scheme_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int l10 = this.scheme_ != Scheme.XDSTP.getNumber() ? CodedOutputStream.l(1, this.scheme_) + 0 : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            l10 += GeneratedMessageV3.computeStringSize(2, this.id_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            l10 += GeneratedMessageV3.computeStringSize(3, this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceType_)) {
            l10 += GeneratedMessageV3.computeStringSize(4, this.resourceType_);
        }
        if (this.contextParamSpecifierCase_ == 5) {
            l10 += CodedOutputStream.G(5, (ContextParams) this.contextParamSpecifier_);
        }
        for (int i10 = 0; i10 < this.directives_.size(); i10++) {
            l10 += CodedOutputStream.G(6, this.directives_.get(i10));
        }
        int serializedSize = l10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasExactContext() {
        return this.contextParamSpecifierCase_ == 5;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.scheme_) * 37) + 2) * 53) + getId().hashCode()) * 37) + 3) * 53) + getAuthority().hashCode()) * 37) + 4) * 53) + getResourceType().hashCode();
        if (getDirectivesCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getDirectivesList().hashCode();
        }
        if (this.contextParamSpecifierCase_ == 5) {
            hashCode = (((hashCode * 37) + 5) * 53) + getExactContext().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f45525b.d(ResourceLocator.class, c.class);
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
        return new ResourceLocator();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.scheme_ != Scheme.XDSTP.getNumber()) {
            codedOutputStream.v0(1, this.scheme_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.id_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.id_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.authority_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.authority_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.resourceType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.resourceType_);
        }
        if (this.contextParamSpecifierCase_ == 5) {
            codedOutputStream.L0(5, (ContextParams) this.contextParamSpecifier_);
        }
        for (int i9 = 0; i9 < this.directives_.size(); i9++) {
            codedOutputStream.L0(6, this.directives_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResourceLocator(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ResourceLocator resourceLocator) {
        return DEFAULT_INSTANCE.toBuilder().j0(resourceLocator);
    }

    public static ResourceLocator parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ResourceLocator(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.contextParamSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResourceLocator parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceLocator parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResourceLocator getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).j0(this);
    }

    public static ResourceLocator parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ResourceLocator parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ResourceLocator() {
        this.contextParamSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.scheme_ = 0;
        this.id_ = "";
        this.authority_ = "";
        this.resourceType_ = "";
        this.directives_ = Collections.emptyList();
    }

    public static ResourceLocator parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResourceLocator parseFrom(InputStream inputStream) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ResourceLocator parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceLocator parseFrom(p pVar) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResourceLocator parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ResourceLocator) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private ResourceLocator(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 8) {
                            this.scheme_ = pVar.u();
                        } else if (L == 18) {
                            this.id_ = pVar.K();
                        } else if (L == 26) {
                            this.authority_ = pVar.K();
                        } else if (L == 34) {
                            this.resourceType_ = pVar.K();
                        } else if (L == 42) {
                            ContextParams.b builder = this.contextParamSpecifierCase_ == 5 ? ((ContextParams) this.contextParamSpecifier_).toBuilder() : null;
                            o1 B = pVar.B(ContextParams.parser(), f0Var);
                            this.contextParamSpecifier_ = B;
                            if (builder != null) {
                                builder.i0((ContextParams) B);
                                this.contextParamSpecifier_ = builder.I();
                            }
                            this.contextParamSpecifierCase_ = 5;
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.directives_ = new ArrayList();
                                z11 |= true;
                            }
                            this.directives_.add((Directive) pVar.B(Directive.parser(), f0Var));
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
                    this.directives_ = Collections.unmodifiableList(this.directives_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
