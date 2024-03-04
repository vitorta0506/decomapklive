package com.google.cloud.audit;

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
import com.google.protobuf.p;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ResourceLocation extends GeneratedMessageV3 implements e {
    public static final int CURRENT_LOCATIONS_FIELD_NUMBER = 1;
    public static final int ORIGINAL_LOCATIONS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private z0 currentLocations_;
    private byte memoizedIsInitialized;
    private z0 originalLocations_;
    private static final ResourceLocation DEFAULT_INSTANCE = new ResourceLocation();
    private static final e2<ResourceLocation> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ResourceLocation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResourceLocation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ResourceLocation(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e {

        /* renamed from: e  reason: collision with root package name */
        private int f11766e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f11767f;

        /* renamed from: g  reason: collision with root package name */
        private z0 f11768g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11766e & 1) == 0) {
                this.f11767f = new y0(this.f11767f);
                this.f11766e |= 1;
            }
        }

        private void b0() {
            if ((this.f11766e & 2) == 0) {
                this.f11768g = new y0(this.f11768g);
                this.f11766e |= 2;
            }
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.cloud.audit.a.f11789j.d(ResourceLocation.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResourceLocation build() {
            ResourceLocation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResourceLocation I() {
            ResourceLocation resourceLocation = new ResourceLocation(this, (a) null);
            if ((this.f11766e & 1) != 0) {
                this.f11767f = this.f11767f.V0();
                this.f11766e &= -2;
            }
            resourceLocation.currentLocations_ = this.f11767f;
            if ((this.f11766e & 2) != 0) {
                this.f11768g = this.f11768g.V0();
                this.f11766e &= -3;
            }
            resourceLocation.originalLocations_ = this.f11768g;
            Q();
            return resourceLocation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ResourceLocation getDefaultInstanceForType() {
            return ResourceLocation.getDefaultInstance();
        }

        public b g0(ResourceLocation resourceLocation) {
            if (resourceLocation == ResourceLocation.getDefaultInstance()) {
                return this;
            }
            if (!resourceLocation.currentLocations_.isEmpty()) {
                if (this.f11767f.isEmpty()) {
                    this.f11767f = resourceLocation.currentLocations_;
                    this.f11766e &= -2;
                } else {
                    a0();
                    this.f11767f.addAll(resourceLocation.currentLocations_);
                }
                R();
            }
            if (!resourceLocation.originalLocations_.isEmpty()) {
                if (this.f11768g.isEmpty()) {
                    this.f11768g = resourceLocation.originalLocations_;
                    this.f11766e &= -3;
                } else {
                    b0();
                    this.f11768g.addAll(resourceLocation.originalLocations_);
                }
                R();
            }
            z(((GeneratedMessageV3) resourceLocation).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.cloud.audit.a.f11788i;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.audit.ResourceLocation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.audit.ResourceLocation.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.audit.ResourceLocation r3 = (com.google.cloud.audit.ResourceLocation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.audit.ResourceLocation r4 = (com.google.cloud.audit.ResourceLocation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.audit.ResourceLocation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.audit.ResourceLocation$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ResourceLocation) {
                return g0((ResourceLocation) l1Var);
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
            z0 z0Var = y0.f15344d;
            this.f11767f = z0Var;
            this.f11768g = z0Var;
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            z0 z0Var = y0.f15344d;
            this.f11767f = z0Var;
            this.f11768g = z0Var;
            e0();
        }
    }

    /* synthetic */ ResourceLocation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResourceLocation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.cloud.audit.a.f11788i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResourceLocation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResourceLocation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResourceLocation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResourceLocation)) {
            return super.equals(obj);
        }
        ResourceLocation resourceLocation = (ResourceLocation) obj;
        return m200getCurrentLocationsList().equals(resourceLocation.m200getCurrentLocationsList()) && m201getOriginalLocationsList().equals(resourceLocation.m201getOriginalLocationsList()) && this.unknownFields.equals(resourceLocation.unknownFields);
    }

    public String getCurrentLocations(int i9) {
        return this.currentLocations_.get(i9);
    }

    public ByteString getCurrentLocationsBytes(int i9) {
        return this.currentLocations_.j0(i9);
    }

    public int getCurrentLocationsCount() {
        return this.currentLocations_.size();
    }

    public String getOriginalLocations(int i9) {
        return this.originalLocations_.get(i9);
    }

    public ByteString getOriginalLocationsBytes(int i9) {
        return this.originalLocations_.j0(i9);
    }

    public int getOriginalLocationsCount() {
        return this.originalLocations_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResourceLocation> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.currentLocations_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.currentLocations_.c1(i11));
        }
        int size = i10 + 0 + (m200getCurrentLocationsList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.originalLocations_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.originalLocations_.c1(i13));
        }
        int size2 = size + i12 + (m201getOriginalLocationsList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size2;
        return size2;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getCurrentLocationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m200getCurrentLocationsList().hashCode();
        }
        if (getOriginalLocationsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m201getOriginalLocationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.cloud.audit.a.f11789j.d(ResourceLocation.class, b.class);
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
        return new ResourceLocation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.currentLocations_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.currentLocations_.c1(i9));
        }
        for (int i10 = 0; i10 < this.originalLocations_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.originalLocations_.c1(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResourceLocation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ResourceLocation resourceLocation) {
        return DEFAULT_INSTANCE.toBuilder().g0(resourceLocation);
    }

    public static ResourceLocation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResourceLocation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getCurrentLocationsList */
    public i2 m200getCurrentLocationsList() {
        return this.currentLocations_;
    }

    /* renamed from: getOriginalLocationsList */
    public i2 m201getOriginalLocationsList() {
        return this.originalLocations_;
    }

    private ResourceLocation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResourceLocation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResourceLocation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ResourceLocation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResourceLocation() {
        this.memoizedIsInitialized = (byte) -1;
        z0 z0Var = y0.f15344d;
        this.currentLocations_ = z0Var;
        this.originalLocations_ = z0Var;
    }

    public static ResourceLocation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ResourceLocation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResourceLocation parseFrom(InputStream inputStream) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ResourceLocation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ResourceLocation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.currentLocations_ = new y0();
                                    z11 |= true;
                                }
                                this.currentLocations_.add(K);
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K2 = pVar.K();
                                if (!(z11 & true)) {
                                    this.originalLocations_ = new y0();
                                    z11 |= true;
                                }
                                this.originalLocations_.add(K2);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.currentLocations_ = this.currentLocations_.V0();
                }
                if (z11 & true) {
                    this.originalLocations_ = this.originalLocations_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ResourceLocation parseFrom(p pVar) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResourceLocation parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ResourceLocation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
