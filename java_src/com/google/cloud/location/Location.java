package com.google.cloud.location;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class Location extends GeneratedMessageV3 implements com.google.cloud.location.a {
    public static final int DISPLAY_NAME_FIELD_NUMBER = 5;
    public static final int LABELS_FIELD_NUMBER = 2;
    public static final int LOCATION_ID_FIELD_NUMBER = 4;
    public static final int METADATA_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object displayName_;
    private g1<String, String> labels_;
    private volatile Object locationId_;
    private byte memoizedIsInitialized;
    private Any metadata_;
    private volatile Object name_;
    private static final Location DEFAULT_INSTANCE = new Location();
    private static final e2<Location> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Location> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Location m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Location(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements com.google.cloud.location.a {

        /* renamed from: e  reason: collision with root package name */
        private Object f11806e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11807f;

        /* renamed from: g  reason: collision with root package name */
        private Object f11808g;

        /* renamed from: h  reason: collision with root package name */
        private g1<String, String> f11809h;

        /* renamed from: i  reason: collision with root package name */
        private Any f11810i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Any, Any.b, f> f11811j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private g1<String, String> b0() {
            g1<String, String> g1Var = this.f11809h;
            return g1Var == null ? g1.g(c.f11812a) : g1Var;
        }

        private g1<String, String> d0() {
            R();
            if (this.f11809h == null) {
                this.f11809h = g1.p(c.f11812a);
            }
            if (!this.f11809h.m()) {
                this.f11809h = this.f11809h.f();
            }
            return this.f11809h;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.location.b.f11820h.d(Location.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 2) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 2) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Location build() {
            Location I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Location I() {
            Location location = new Location(this, (a) null);
            location.name_ = this.f11806e;
            location.locationId_ = this.f11807f;
            location.displayName_ = this.f11808g;
            location.labels_ = b0();
            location.labels_.n();
            q2<Any, Any.b, f> q2Var = this.f11811j;
            if (q2Var == null) {
                location.metadata_ = this.f11810i;
            } else {
                location.metadata_ = q2Var.b();
            }
            Q();
            return location;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Location getDefaultInstanceForType() {
            return Location.getDefaultInstance();
        }

        public b g0(Location location) {
            if (location == Location.getDefaultInstance()) {
                return this;
            }
            if (!location.getName().isEmpty()) {
                this.f11806e = location.name_;
                R();
            }
            if (!location.getLocationId().isEmpty()) {
                this.f11807f = location.locationId_;
                R();
            }
            if (!location.getDisplayName().isEmpty()) {
                this.f11808g = location.displayName_;
                R();
            }
            d0().o(location.internalGetLabels());
            if (location.hasMetadata()) {
                j0(location.getMetadata());
            }
            z(((GeneratedMessageV3) location).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.location.b.f11819g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.location.Location.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.location.Location.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.location.Location r3 = (com.google.cloud.location.Location) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.location.Location r4 = (com.google.cloud.location.Location) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.location.Location.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.location.Location$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Location) {
                return g0((Location) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Any any) {
            q2<Any, Any.b, f> q2Var = this.f11811j;
            if (q2Var == null) {
                Any any2 = this.f11810i;
                if (any2 != null) {
                    this.f11810i = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f11810i = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11806e = "";
            this.f11807f = "";
            this.f11808g = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11806e = "";
            this.f11807f = "";
            this.f11808g = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f11812a;

        static {
            Descriptors.b bVar = com.google.cloud.location.b.f11821i;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f11812a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ Location(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Location getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.location.b.f11819g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetLabels() {
        g1<String, String> g1Var = this.labels_;
        return g1Var == null ? g1.g(c.f11812a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Location parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Location) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Location parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Location> parser() {
        return PARSER;
    }

    public boolean containsLabels(String str) {
        Objects.requireNonNull(str);
        return internalGetLabels().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Location)) {
            return super.equals(obj);
        }
        Location location = (Location) obj;
        if (getName().equals(location.getName()) && getLocationId().equals(location.getLocationId()) && getDisplayName().equals(location.getDisplayName()) && internalGetLabels().equals(location.internalGetLabels()) && hasMetadata() == location.hasMetadata()) {
            return (!hasMetadata() || getMetadata().equals(location.getMetadata())) && this.unknownFields.equals(location.unknownFields);
        }
        return false;
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

    @Deprecated
    public Map<String, String> getLabels() {
        return getLabelsMap();
    }

    public int getLabelsCount() {
        return internalGetLabels().i().size();
    }

    public Map<String, String> getLabelsMap() {
        return internalGetLabels().i();
    }

    public String getLabelsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetLabels().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getLabelsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetLabels().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public String getLocationId() {
        Object obj = this.locationId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.locationId_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLocationIdBytes() {
        Object obj = this.locationId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.locationId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Any getMetadata() {
        Any any = this.metadata_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public f getMetadataOrBuilder() {
        return getMetadata();
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
    public e2<Location> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        for (Map.Entry<String, String> entry : internalGetLabels().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(2, c.f11812a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(3, getMetadata());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.locationId_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.locationId_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.displayName_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 4) * 53) + getLocationId().hashCode()) * 37) + 5) * 53) + getDisplayName().hashCode();
        if (!internalGetLabels().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetLabels().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getMetadata().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.location.b.f11820h.d(Location.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetLabels();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new Location();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetLabels(), c.f11812a, 2);
        if (this.metadata_ != null) {
            codedOutputStream.L0(3, getMetadata());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.locationId_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.locationId_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.displayName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Location(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Location location) {
        return DEFAULT_INSTANCE.toBuilder().g0(location);
    }

    public static Location parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Location) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Location parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Location(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Location parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Location getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Location parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Location() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.locationId_ = "";
        this.displayName_ = "";
    }

    public static Location parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Location parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Location parseFrom(InputStream inputStream) throws IOException {
        return (Location) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Location parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Location) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Location parseFrom(p pVar) throws IOException {
        return (Location) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    private Location(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.labels_ = g1.p(c.f11812a);
                                z11 |= true;
                            }
                            e1 e1Var = (e1) pVar.B(c.f11812a.getParserForType(), f0Var);
                            this.labels_.l().put(e1Var.f(), e1Var.h());
                        } else if (L == 26) {
                            Any any = this.metadata_;
                            Any.b builder = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.metadata_ = any2;
                            if (builder != null) {
                                builder.d0(any2);
                                this.metadata_ = builder.I();
                            }
                        } else if (L == 34) {
                            this.locationId_ = pVar.K();
                        } else if (L != 42) {
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Location parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Location) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
