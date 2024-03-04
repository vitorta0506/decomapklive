package io.grpc.xds.shaded.com.github.xds.core.v3;

import com.google.protobuf.Any;
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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.com.github.xds.core.v3.ResourceLocator;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class CollectionEntry extends GeneratedMessageV3 implements io.grpc.xds.shaded.com.github.xds.core.v3.c {
    public static final int INLINE_ENTRY_FIELD_NUMBER = 2;
    public static final int LOCATOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private int resourceSpecifierCase_;
    private Object resourceSpecifier_;
    private static final CollectionEntry DEFAULT_INSTANCE = new CollectionEntry();
    private static final e2<CollectionEntry> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class InlineEntry extends GeneratedMessageV3 implements d {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int RESOURCE_FIELD_NUMBER = 3;
        public static final int VERSION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private Any resource_;
        private volatile Object version_;
        private static final InlineEntry DEFAULT_INSTANCE = new InlineEntry();
        private static final e2<InlineEntry> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<InlineEntry> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public InlineEntry m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new InlineEntry(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Object f45480e;

            /* renamed from: f  reason: collision with root package name */
            private Object f45481f;

            /* renamed from: g  reason: collision with root package name */
            private Any f45482g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f45483h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45517d.d(InlineEntry.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public InlineEntry build() {
                InlineEntry I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public InlineEntry I() {
                InlineEntry inlineEntry = new InlineEntry(this, (a) null);
                inlineEntry.name_ = this.f45480e;
                inlineEntry.version_ = this.f45481f;
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45483h;
                if (q2Var == null) {
                    inlineEntry.resource_ = this.f45482g;
                } else {
                    inlineEntry.resource_ = q2Var.b();
                }
                Q();
                return inlineEntry;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public InlineEntry getDefaultInstanceForType() {
                return InlineEntry.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.InlineEntry.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.InlineEntry.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry$InlineEntry r3 = (io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.InlineEntry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry$InlineEntry r4 = (io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.InlineEntry) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.InlineEntry.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry$InlineEntry$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof InlineEntry) {
                    return g0((InlineEntry) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(InlineEntry inlineEntry) {
                if (inlineEntry == InlineEntry.getDefaultInstance()) {
                    return this;
                }
                if (!inlineEntry.getName().isEmpty()) {
                    this.f45480e = inlineEntry.name_;
                    R();
                }
                if (!inlineEntry.getVersion().isEmpty()) {
                    this.f45481f = inlineEntry.version_;
                    R();
                }
                if (inlineEntry.hasResource()) {
                    h0(inlineEntry.getResource());
                }
                z(((GeneratedMessageV3) inlineEntry).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45516c;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f45483h;
                if (q2Var == null) {
                    Any any2 = this.f45482g;
                    if (any2 != null) {
                        this.f45482g = Any.newBuilder(any2).d0(any).I();
                    } else {
                        this.f45482g = any;
                    }
                    R();
                } else {
                    q2Var.e(any);
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f45480e = "";
                this.f45481f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f45480e = "";
                this.f45481f = "";
                b0();
            }
        }

        /* synthetic */ InlineEntry(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static InlineEntry getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45516c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static InlineEntry parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static InlineEntry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<InlineEntry> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof InlineEntry)) {
                return super.equals(obj);
            }
            InlineEntry inlineEntry = (InlineEntry) obj;
            if (getName().equals(inlineEntry.getName()) && getVersion().equals(inlineEntry.getVersion()) && hasResource() == inlineEntry.hasResource()) {
                return (!hasResource() || getResource().equals(inlineEntry.getResource())) && this.unknownFields.equals(inlineEntry.unknownFields);
            }
            return false;
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
        public e2<InlineEntry> getParserForType() {
            return PARSER;
        }

        public Any getResource() {
            Any any = this.resource_;
            return any == null ? Any.getDefaultInstance() : any;
        }

        public com.google.protobuf.f getResourceOrBuilder() {
            return getResource();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.version_);
            }
            if (this.resource_ != null) {
                computeStringSize += CodedOutputStream.G(3, getResource());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public String getVersion() {
            Object obj = this.version_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.version_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getVersionBytes() {
            Object obj = this.version_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.version_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean hasResource() {
            return this.resource_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getVersion().hashCode();
            if (hasResource()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getResource().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45517d.d(InlineEntry.class, b.class);
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
            return new InlineEntry();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.version_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.version_);
            }
            if (this.resource_ != null) {
                codedOutputStream.L0(3, getResource());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ InlineEntry(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(InlineEntry inlineEntry) {
            return DEFAULT_INSTANCE.toBuilder().g0(inlineEntry);
        }

        public static InlineEntry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private InlineEntry(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InlineEntry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static InlineEntry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public InlineEntry getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static InlineEntry parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private InlineEntry() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.version_ = "";
        }

        public static InlineEntry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static InlineEntry parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static InlineEntry parseFrom(InputStream inputStream) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private InlineEntry(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                this.version_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Any any = this.resource_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.resource_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.resource_ = builder.I();
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

        public static InlineEntry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static InlineEntry parseFrom(p pVar) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static InlineEntry parseFrom(p pVar, f0 f0Var) throws IOException {
            return (InlineEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum ResourceSpecifierCase implements u0.c {
        LOCATOR(1),
        INLINE_ENTRY(2),
        RESOURCESPECIFIER_NOT_SET(0);
        
        private final int value;

        ResourceSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ResourceSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return INLINE_ENTRY;
                }
                return LOCATOR;
            }
            return RESOURCESPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ResourceSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<CollectionEntry> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public CollectionEntry m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new CollectionEntry(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45484a;

        static {
            int[] iArr = new int[ResourceSpecifierCase.values().length];
            f45484a = iArr;
            try {
                iArr[ResourceSpecifierCase.LOCATOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45484a[ResourceSpecifierCase.INLINE_ENTRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45484a[ResourceSpecifierCase.RESOURCESPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.com.github.xds.core.v3.c {

        /* renamed from: e  reason: collision with root package name */
        private int f45485e;

        /* renamed from: f  reason: collision with root package name */
        private Object f45486f;

        /* renamed from: g  reason: collision with root package name */
        private q2<ResourceLocator, ResourceLocator.c, g> f45487g;

        /* renamed from: h  reason: collision with root package name */
        private q2<InlineEntry, InlineEntry.b, d> f45488h;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45515b.d(CollectionEntry.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public CollectionEntry build() {
            CollectionEntry I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public CollectionEntry I() {
            CollectionEntry collectionEntry = new CollectionEntry(this, (a) null);
            if (this.f45485e == 1) {
                q2<ResourceLocator, ResourceLocator.c, g> q2Var = this.f45487g;
                if (q2Var == null) {
                    collectionEntry.resourceSpecifier_ = this.f45486f;
                } else {
                    collectionEntry.resourceSpecifier_ = q2Var.b();
                }
            }
            if (this.f45485e == 2) {
                q2<InlineEntry, InlineEntry.b, d> q2Var2 = this.f45488h;
                if (q2Var2 == null) {
                    collectionEntry.resourceSpecifier_ = this.f45486f;
                } else {
                    collectionEntry.resourceSpecifier_ = q2Var2.b();
                }
            }
            collectionEntry.resourceSpecifierCase_ = this.f45485e;
            Q();
            return collectionEntry;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public CollectionEntry getDefaultInstanceForType() {
            return CollectionEntry.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry r3 = (io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry r4 = (io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.com.github.xds.core.v3.CollectionEntry$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof CollectionEntry) {
                return g0((CollectionEntry) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(CollectionEntry collectionEntry) {
            if (collectionEntry == CollectionEntry.getDefaultInstance()) {
                return this;
            }
            int i9 = b.f45484a[collectionEntry.getResourceSpecifierCase().ordinal()];
            if (i9 == 1) {
                i0(collectionEntry.getLocator());
            } else if (i9 == 2) {
                h0(collectionEntry.getInlineEntry());
            }
            z(((GeneratedMessageV3) collectionEntry).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45514a;
        }

        public c h0(InlineEntry inlineEntry) {
            q2<InlineEntry, InlineEntry.b, d> q2Var = this.f45488h;
            if (q2Var == null) {
                if (this.f45485e == 2 && this.f45486f != InlineEntry.getDefaultInstance()) {
                    this.f45486f = InlineEntry.newBuilder((InlineEntry) this.f45486f).g0(inlineEntry).I();
                } else {
                    this.f45486f = inlineEntry;
                }
                R();
            } else {
                if (this.f45485e == 2) {
                    q2Var.e(inlineEntry);
                }
                this.f45488h.g(inlineEntry);
            }
            this.f45485e = 2;
            return this;
        }

        public c i0(ResourceLocator resourceLocator) {
            q2<ResourceLocator, ResourceLocator.c, g> q2Var = this.f45487g;
            if (q2Var == null) {
                if (this.f45485e == 1 && this.f45486f != ResourceLocator.getDefaultInstance()) {
                    this.f45486f = ResourceLocator.newBuilder((ResourceLocator) this.f45486f).j0(resourceLocator).I();
                } else {
                    this.f45486f = resourceLocator;
                }
                R();
            } else {
                if (this.f45485e == 1) {
                    q2Var.e(resourceLocator);
                }
                this.f45487g.g(resourceLocator);
            }
            this.f45485e = 1;
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

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f45485e = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f45485e = 0;
            b0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* synthetic */ CollectionEntry(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static CollectionEntry getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45514a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static CollectionEntry parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static CollectionEntry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<CollectionEntry> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CollectionEntry)) {
            return super.equals(obj);
        }
        CollectionEntry collectionEntry = (CollectionEntry) obj;
        if (getResourceSpecifierCase().equals(collectionEntry.getResourceSpecifierCase())) {
            int i9 = this.resourceSpecifierCase_;
            if (i9 != 1) {
                if (i9 == 2 && !getInlineEntry().equals(collectionEntry.getInlineEntry())) {
                    return false;
                }
            } else if (!getLocator().equals(collectionEntry.getLocator())) {
                return false;
            }
            return this.unknownFields.equals(collectionEntry.unknownFields);
        }
        return false;
    }

    public InlineEntry getInlineEntry() {
        if (this.resourceSpecifierCase_ == 2) {
            return (InlineEntry) this.resourceSpecifier_;
        }
        return InlineEntry.getDefaultInstance();
    }

    public d getInlineEntryOrBuilder() {
        if (this.resourceSpecifierCase_ == 2) {
            return (InlineEntry) this.resourceSpecifier_;
        }
        return InlineEntry.getDefaultInstance();
    }

    public ResourceLocator getLocator() {
        if (this.resourceSpecifierCase_ == 1) {
            return (ResourceLocator) this.resourceSpecifier_;
        }
        return ResourceLocator.getDefaultInstance();
    }

    public g getLocatorOrBuilder() {
        if (this.resourceSpecifierCase_ == 1) {
            return (ResourceLocator) this.resourceSpecifier_;
        }
        return ResourceLocator.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<CollectionEntry> getParserForType() {
        return PARSER;
    }

    public ResourceSpecifierCase getResourceSpecifierCase() {
        return ResourceSpecifierCase.forNumber(this.resourceSpecifierCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.resourceSpecifierCase_ == 1 ? 0 + CodedOutputStream.G(1, (ResourceLocator) this.resourceSpecifier_) : 0;
        if (this.resourceSpecifierCase_ == 2) {
            G += CodedOutputStream.G(2, (InlineEntry) this.resourceSpecifier_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasInlineEntry() {
        return this.resourceSpecifierCase_ == 2;
    }

    public boolean hasLocator() {
        return this.resourceSpecifierCase_ == 1;
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
        int i11 = this.resourceSpecifierCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getLocator().hashCode();
        } else {
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getInlineEntry().hashCode();
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
        return io.grpc.xds.shaded.com.github.xds.core.v3.d.f45515b.d(CollectionEntry.class, c.class);
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
        return new CollectionEntry();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.resourceSpecifierCase_ == 1) {
            codedOutputStream.L0(1, (ResourceLocator) this.resourceSpecifier_);
        }
        if (this.resourceSpecifierCase_ == 2) {
            codedOutputStream.L0(2, (InlineEntry) this.resourceSpecifier_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ CollectionEntry(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(CollectionEntry collectionEntry) {
        return DEFAULT_INSTANCE.toBuilder().g0(collectionEntry);
    }

    public static CollectionEntry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private CollectionEntry(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.resourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CollectionEntry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static CollectionEntry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public CollectionEntry getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static CollectionEntry parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static CollectionEntry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private CollectionEntry() {
        this.resourceSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static CollectionEntry parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static CollectionEntry parseFrom(InputStream inputStream) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private CollectionEntry(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                ResourceLocator.c builder = this.resourceSpecifierCase_ == 1 ? ((ResourceLocator) this.resourceSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(ResourceLocator.parser(), f0Var);
                                this.resourceSpecifier_ = B;
                                if (builder != null) {
                                    builder.j0((ResourceLocator) B);
                                    this.resourceSpecifier_ = builder.I();
                                }
                                this.resourceSpecifierCase_ = 1;
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                InlineEntry.b builder2 = this.resourceSpecifierCase_ == 2 ? ((InlineEntry) this.resourceSpecifier_).toBuilder() : null;
                                o1 B2 = pVar.B(InlineEntry.parser(), f0Var);
                                this.resourceSpecifier_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((InlineEntry) B2);
                                    this.resourceSpecifier_ = builder2.I();
                                }
                                this.resourceSpecifierCase_ = 2;
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

    public static CollectionEntry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static CollectionEntry parseFrom(p pVar) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static CollectionEntry parseFrom(p pVar, f0 f0Var) throws IOException {
        return (CollectionEntry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
