package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class MonitoredResourceMetadata extends GeneratedMessageV3 implements r1 {
    private static final MonitoredResourceMetadata DEFAULT_INSTANCE = new MonitoredResourceMetadata();
    private static final e2<MonitoredResourceMetadata> PARSER = new a();
    public static final int SYSTEM_LABELS_FIELD_NUMBER = 1;
    public static final int USER_LABELS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Struct systemLabels_;
    private com.google.protobuf.g1<String, String> userLabels_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<MonitoredResourceMetadata> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MonitoredResourceMetadata m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new MonitoredResourceMetadata(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Struct f10833e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f10834f;

        /* renamed from: g  reason: collision with root package name */
        private com.google.protobuf.g1<String, String> f10835g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private com.google.protobuf.g1<String, String> b0() {
            R();
            if (this.f10835g == null) {
                this.f10835g = com.google.protobuf.g1.p(c.f10836a);
            }
            if (!this.f10835g.m()) {
                this.f10835g = this.f10835g.f();
            }
            return this.f10835g;
        }

        private com.google.protobuf.g1<String, String> d0() {
            com.google.protobuf.g1<String, String> g1Var = this.f10835g;
            return g1Var == null ? com.google.protobuf.g1.g(c.f10836a) : g1Var;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return t0.f11476h.d(MonitoredResourceMetadata.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 == 2) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 == 2) {
                return b0();
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
        public MonitoredResourceMetadata build() {
            MonitoredResourceMetadata I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MonitoredResourceMetadata I() {
            MonitoredResourceMetadata monitoredResourceMetadata = new MonitoredResourceMetadata(this, (a) null);
            q2<Struct, Struct.b, u2> q2Var = this.f10834f;
            if (q2Var == null) {
                monitoredResourceMetadata.systemLabels_ = this.f10833e;
            } else {
                monitoredResourceMetadata.systemLabels_ = q2Var.b();
            }
            monitoredResourceMetadata.userLabels_ = d0();
            monitoredResourceMetadata.userLabels_.n();
            Q();
            return monitoredResourceMetadata;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public MonitoredResourceMetadata getDefaultInstanceForType() {
            return MonitoredResourceMetadata.getDefaultInstance();
        }

        public b g0(MonitoredResourceMetadata monitoredResourceMetadata) {
            if (monitoredResourceMetadata == MonitoredResourceMetadata.getDefaultInstance()) {
                return this;
            }
            if (monitoredResourceMetadata.hasSystemLabels()) {
                j0(monitoredResourceMetadata.getSystemLabels());
            }
            b0().o(monitoredResourceMetadata.internalGetUserLabels());
            z(((GeneratedMessageV3) monitoredResourceMetadata).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return t0.f11475g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.MonitoredResourceMetadata.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.MonitoredResourceMetadata.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.MonitoredResourceMetadata r3 = (com.google.api.MonitoredResourceMetadata) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.MonitoredResourceMetadata r4 = (com.google.api.MonitoredResourceMetadata) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.MonitoredResourceMetadata.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.MonitoredResourceMetadata$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof MonitoredResourceMetadata) {
                return g0((MonitoredResourceMetadata) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f10834f;
            if (q2Var == null) {
                Struct struct2 = this.f10833e;
                if (struct2 != null) {
                    this.f10833e = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f10833e = struct;
                }
                R();
            } else {
                q2Var.e(struct);
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
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, String> f10836a;

        static {
            Descriptors.b bVar = t0.f11477i;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f10836a = com.google.protobuf.e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* synthetic */ MonitoredResourceMetadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MonitoredResourceMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return t0.f11475g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, String> internalGetUserLabels() {
        com.google.protobuf.g1<String, String> g1Var = this.userLabels_;
        return g1Var == null ? com.google.protobuf.g1.g(c.f10836a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MonitoredResourceMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MonitoredResourceMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MonitoredResourceMetadata> parser() {
        return PARSER;
    }

    public boolean containsUserLabels(String str) {
        Objects.requireNonNull(str);
        return internalGetUserLabels().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MonitoredResourceMetadata)) {
            return super.equals(obj);
        }
        MonitoredResourceMetadata monitoredResourceMetadata = (MonitoredResourceMetadata) obj;
        if (hasSystemLabels() != monitoredResourceMetadata.hasSystemLabels()) {
            return false;
        }
        return (!hasSystemLabels() || getSystemLabels().equals(monitoredResourceMetadata.getSystemLabels())) && internalGetUserLabels().equals(monitoredResourceMetadata.internalGetUserLabels()) && this.unknownFields.equals(monitoredResourceMetadata.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MonitoredResourceMetadata> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.systemLabels_ != null ? 0 + CodedOutputStream.G(1, getSystemLabels()) : 0;
        for (Map.Entry<String, String> entry : internalGetUserLabels().i().entrySet()) {
            G += CodedOutputStream.G(2, c.f10836a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Struct getSystemLabels() {
        Struct struct = this.systemLabels_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getSystemLabelsOrBuilder() {
        return getSystemLabels();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public Map<String, String> getUserLabels() {
        return getUserLabelsMap();
    }

    public int getUserLabelsCount() {
        return internalGetUserLabels().i().size();
    }

    public Map<String, String> getUserLabelsMap() {
        return internalGetUserLabels().i();
    }

    public String getUserLabelsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetUserLabels().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getUserLabelsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetUserLabels().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public boolean hasSystemLabels() {
        return this.systemLabels_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasSystemLabels()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getSystemLabels().hashCode();
        }
        if (!internalGetUserLabels().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetUserLabels().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return t0.f11476h.d(MonitoredResourceMetadata.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetUserLabels();
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
        return new MonitoredResourceMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.systemLabels_ != null) {
            codedOutputStream.L0(1, getSystemLabels());
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetUserLabels(), c.f10836a, 2);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MonitoredResourceMetadata(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MonitoredResourceMetadata monitoredResourceMetadata) {
        return DEFAULT_INSTANCE.toBuilder().g0(monitoredResourceMetadata);
    }

    public static MonitoredResourceMetadata parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MonitoredResourceMetadata parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MonitoredResourceMetadata(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MonitoredResourceMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MonitoredResourceMetadata getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static MonitoredResourceMetadata parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MonitoredResourceMetadata() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MonitoredResourceMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MonitoredResourceMetadata parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    private MonitoredResourceMetadata(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                Struct struct = this.systemLabels_;
                                Struct.b builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                                this.systemLabels_ = struct2;
                                if (builder != null) {
                                    builder.i0(struct2);
                                    this.systemLabels_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.userLabels_ = com.google.protobuf.g1.p(c.f10836a);
                                    z11 |= true;
                                }
                                com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(c.f10836a.getParserForType(), f0Var);
                                this.userLabels_.l().put(e1Var.f(), e1Var.h());
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

    public static MonitoredResourceMetadata parseFrom(InputStream inputStream) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static MonitoredResourceMetadata parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MonitoredResourceMetadata parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MonitoredResourceMetadata parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (MonitoredResourceMetadata) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
