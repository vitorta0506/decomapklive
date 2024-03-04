package io.opencensus.proto.agent.common.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.opencensus.proto.agent.common.v1.LibraryInfo;
import io.opencensus.proto.agent.common.v1.ProcessIdentifier;
import io.opencensus.proto.agent.common.v1.ServiceInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Node extends GeneratedMessageV3 implements io.opencensus.proto.agent.common.v1.c {
    public static final int ATTRIBUTES_FIELD_NUMBER = 4;
    public static final int IDENTIFIER_FIELD_NUMBER = 1;
    public static final int LIBRARY_INFO_FIELD_NUMBER = 2;
    public static final int SERVICE_INFO_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private g1<String, String> attributes_;
    private int bitField0_;
    private ProcessIdentifier identifier_;
    private LibraryInfo libraryInfo_;
    private byte memoizedIsInitialized;
    private ServiceInfo serviceInfo_;
    private static final Node DEFAULT_INSTANCE = new Node();
    private static final e2<Node> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends com.google.protobuf.c<Node> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Node m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Node(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final e1<String, String> f50908a;

        static {
            Descriptors.b bVar = io.opencensus.proto.agent.common.v1.a.f50923c;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f50908a = e1.k(bVar, fieldType, "", fieldType, "");
        }
    }

    /* loaded from: classes4.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.opencensus.proto.agent.common.v1.c {

        /* renamed from: e  reason: collision with root package name */
        private ProcessIdentifier f50909e;

        /* renamed from: f  reason: collision with root package name */
        private q2<ProcessIdentifier, ProcessIdentifier.b, d> f50910f;

        /* renamed from: g  reason: collision with root package name */
        private LibraryInfo f50911g;

        /* renamed from: h  reason: collision with root package name */
        private q2<LibraryInfo, LibraryInfo.b, io.opencensus.proto.agent.common.v1.b> f50912h;

        /* renamed from: i  reason: collision with root package name */
        private ServiceInfo f50913i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ServiceInfo, ServiceInfo.b, e> f50914j;

        /* renamed from: k  reason: collision with root package name */
        private g1<String, String> f50915k;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private g1<String, String> b0() {
            g1<String, String> g1Var = this.f50915k;
            return g1Var == null ? g1.g(b.f50908a) : g1Var;
        }

        private g1<String, String> d0() {
            R();
            if (this.f50915k == null) {
                this.f50915k = g1.p(b.f50908a);
            }
            if (!this.f50915k.m()) {
                this.f50915k = this.f50915k.f();
            }
            return this.f50915k;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.opencensus.proto.agent.common.v1.a.f50922b.d(Node.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 M(int i9) {
            if (i9 == 4) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected g1 N(int i9) {
            if (i9 == 4) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Node build() {
            Node I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Node I() {
            Node node = new Node(this, (a) null);
            q2<ProcessIdentifier, ProcessIdentifier.b, d> q2Var = this.f50910f;
            if (q2Var == null) {
                node.identifier_ = this.f50909e;
            } else {
                node.identifier_ = q2Var.b();
            }
            q2<LibraryInfo, LibraryInfo.b, io.opencensus.proto.agent.common.v1.b> q2Var2 = this.f50912h;
            if (q2Var2 == null) {
                node.libraryInfo_ = this.f50911g;
            } else {
                node.libraryInfo_ = q2Var2.b();
            }
            q2<ServiceInfo, ServiceInfo.b, e> q2Var3 = this.f50914j;
            if (q2Var3 == null) {
                node.serviceInfo_ = this.f50913i;
            } else {
                node.serviceInfo_ = q2Var3.b();
            }
            node.attributes_ = b0();
            node.attributes_.n();
            node.bitField0_ = 0;
            Q();
            return node;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Node getDefaultInstanceForType() {
            return Node.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.agent.common.v1.Node.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.agent.common.v1.Node.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.agent.common.v1.Node r3 = (io.opencensus.proto.agent.common.v1.Node) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.agent.common.v1.Node r4 = (io.opencensus.proto.agent.common.v1.Node) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.agent.common.v1.Node.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.agent.common.v1.Node$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.opencensus.proto.agent.common.v1.a.f50921a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Node) {
                return i0((Node) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(Node node) {
            if (node == Node.getDefaultInstance()) {
                return this;
            }
            if (node.hasIdentifier()) {
                j0(node.getIdentifier());
            }
            if (node.hasLibraryInfo()) {
                k0(node.getLibraryInfo());
            }
            if (node.hasServiceInfo()) {
                l0(node.getServiceInfo());
            }
            d0().o(node.internalGetAttributes());
            z(((GeneratedMessageV3) node).unknownFields);
            R();
            return this;
        }

        public c j0(ProcessIdentifier processIdentifier) {
            q2<ProcessIdentifier, ProcessIdentifier.b, d> q2Var = this.f50910f;
            if (q2Var == null) {
                ProcessIdentifier processIdentifier2 = this.f50909e;
                if (processIdentifier2 != null) {
                    this.f50909e = ProcessIdentifier.newBuilder(processIdentifier2).g0(processIdentifier).I();
                } else {
                    this.f50909e = processIdentifier;
                }
                R();
            } else {
                q2Var.e(processIdentifier);
            }
            return this;
        }

        public c k0(LibraryInfo libraryInfo) {
            q2<LibraryInfo, LibraryInfo.b, io.opencensus.proto.agent.common.v1.b> q2Var = this.f50912h;
            if (q2Var == null) {
                LibraryInfo libraryInfo2 = this.f50911g;
                if (libraryInfo2 != null) {
                    this.f50911g = LibraryInfo.newBuilder(libraryInfo2).g0(libraryInfo).I();
                } else {
                    this.f50911g = libraryInfo;
                }
                R();
            } else {
                q2Var.e(libraryInfo);
            }
            return this;
        }

        public c l0(ServiceInfo serviceInfo) {
            q2<ServiceInfo, ServiceInfo.b, e> q2Var = this.f50914j;
            if (q2Var == null) {
                ServiceInfo serviceInfo2 = this.f50913i;
                if (serviceInfo2 != null) {
                    this.f50913i = ServiceInfo.newBuilder(serviceInfo2).g0(serviceInfo).I();
                } else {
                    this.f50913i = serviceInfo;
                }
                R();
            } else {
                q2Var.e(serviceInfo);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.V(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50909e = null;
            this.f50911g = null;
            this.f50913i = null;
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50909e = null;
            this.f50911g = null;
            this.f50913i = null;
            e0();
        }
    }

    /* synthetic */ Node(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Node getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.opencensus.proto.agent.common.v1.a.f50921a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g1<String, String> internalGetAttributes() {
        g1<String, String> g1Var = this.attributes_;
        return g1Var == null ? g1.g(b.f50908a) : g1Var;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Node parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Node) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Node parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Node> parser() {
        return PARSER;
    }

    public boolean containsAttributes(String str) {
        Objects.requireNonNull(str);
        return internalGetAttributes().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Node)) {
            return super.equals(obj);
        }
        Node node = (Node) obj;
        boolean z10 = hasIdentifier() == node.hasIdentifier();
        if (hasIdentifier()) {
            z10 = z10 && getIdentifier().equals(node.getIdentifier());
        }
        boolean z11 = z10 && hasLibraryInfo() == node.hasLibraryInfo();
        if (hasLibraryInfo()) {
            z11 = z11 && getLibraryInfo().equals(node.getLibraryInfo());
        }
        boolean z12 = z11 && hasServiceInfo() == node.hasServiceInfo();
        if (hasServiceInfo()) {
            z12 = z12 && getServiceInfo().equals(node.getServiceInfo());
        }
        return (z12 && internalGetAttributes().equals(node.internalGetAttributes())) && this.unknownFields.equals(node.unknownFields);
    }

    @Deprecated
    public Map<String, String> getAttributes() {
        return getAttributesMap();
    }

    public int getAttributesCount() {
        return internalGetAttributes().i().size();
    }

    public Map<String, String> getAttributesMap() {
        return internalGetAttributes().i();
    }

    public String getAttributesOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetAttributes().i();
        return i9.containsKey(str) ? i9.get(str) : str2;
    }

    public String getAttributesOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> i9 = internalGetAttributes().i();
        if (i9.containsKey(str)) {
            return i9.get(str);
        }
        throw new IllegalArgumentException();
    }

    public ProcessIdentifier getIdentifier() {
        ProcessIdentifier processIdentifier = this.identifier_;
        return processIdentifier == null ? ProcessIdentifier.getDefaultInstance() : processIdentifier;
    }

    public d getIdentifierOrBuilder() {
        return getIdentifier();
    }

    public LibraryInfo getLibraryInfo() {
        LibraryInfo libraryInfo = this.libraryInfo_;
        return libraryInfo == null ? LibraryInfo.getDefaultInstance() : libraryInfo;
    }

    public io.opencensus.proto.agent.common.v1.b getLibraryInfoOrBuilder() {
        return getLibraryInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Node> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.identifier_ != null ? 0 + CodedOutputStream.G(1, getIdentifier()) : 0;
        if (this.libraryInfo_ != null) {
            G += CodedOutputStream.G(2, getLibraryInfo());
        }
        if (this.serviceInfo_ != null) {
            G += CodedOutputStream.G(3, getServiceInfo());
        }
        for (Map.Entry<String, String> entry : internalGetAttributes().i().entrySet()) {
            G += CodedOutputStream.G(4, b.f50908a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ServiceInfo getServiceInfo() {
        ServiceInfo serviceInfo = this.serviceInfo_;
        return serviceInfo == null ? ServiceInfo.getDefaultInstance() : serviceInfo;
    }

    public e getServiceInfoOrBuilder() {
        return getServiceInfo();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasIdentifier() {
        return this.identifier_ != null;
    }

    public boolean hasLibraryInfo() {
        return this.libraryInfo_ != null;
    }

    public boolean hasServiceInfo() {
        return this.serviceInfo_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasIdentifier()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getIdentifier().hashCode();
        }
        if (hasLibraryInfo()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getLibraryInfo().hashCode();
        }
        if (hasServiceInfo()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getServiceInfo().hashCode();
        }
        if (!internalGetAttributes().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 4) * 53) + internalGetAttributes().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.opencensus.proto.agent.common.v1.a.f50922b.d(Node.class, c.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected g1 internalGetMapField(int i9) {
        if (i9 == 4) {
            return internalGetAttributes();
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.identifier_ != null) {
            codedOutputStream.L0(1, getIdentifier());
        }
        if (this.libraryInfo_ != null) {
            codedOutputStream.L0(2, getLibraryInfo());
        }
        if (this.serviceInfo_ != null) {
            codedOutputStream.L0(3, getServiceInfo());
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAttributes(), b.f50908a, 4);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Node(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Node node) {
        return DEFAULT_INSTANCE.toBuilder().i0(node);
    }

    public static Node parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Node(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Node parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Node parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Node getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static Node parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private Node() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Node parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static Node parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    private Node(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                ProcessIdentifier processIdentifier = this.identifier_;
                                ProcessIdentifier.b builder = processIdentifier != null ? processIdentifier.toBuilder() : null;
                                ProcessIdentifier processIdentifier2 = (ProcessIdentifier) pVar.B(ProcessIdentifier.parser(), f0Var);
                                this.identifier_ = processIdentifier2;
                                if (builder != null) {
                                    builder.g0(processIdentifier2);
                                    this.identifier_ = builder.I();
                                }
                            } else if (L == 18) {
                                LibraryInfo libraryInfo = this.libraryInfo_;
                                LibraryInfo.b builder2 = libraryInfo != null ? libraryInfo.toBuilder() : null;
                                LibraryInfo libraryInfo2 = (LibraryInfo) pVar.B(LibraryInfo.parser(), f0Var);
                                this.libraryInfo_ = libraryInfo2;
                                if (builder2 != null) {
                                    builder2.g0(libraryInfo2);
                                    this.libraryInfo_ = builder2.I();
                                }
                            } else if (L == 26) {
                                ServiceInfo serviceInfo = this.serviceInfo_;
                                ServiceInfo.b builder3 = serviceInfo != null ? serviceInfo.toBuilder() : null;
                                ServiceInfo serviceInfo2 = (ServiceInfo) pVar.B(ServiceInfo.parser(), f0Var);
                                this.serviceInfo_ = serviceInfo2;
                                if (builder3 != null) {
                                    builder3.g0(serviceInfo2);
                                    this.serviceInfo_ = builder3.I();
                                }
                            } else if (L != 34) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.attributes_ = g1.p(b.f50908a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(b.f50908a.getParserForType(), f0Var);
                                this.attributes_.l().put(e1Var.f(), e1Var.h());
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

    public static Node parseFrom(InputStream inputStream) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Node parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Node parseFrom(p pVar) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Node parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Node) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
