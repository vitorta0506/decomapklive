package io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3;

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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.Trigger;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class OverloadAction extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TRIGGERS_FIELD_NUMBER = 2;
    public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Trigger> triggers_;
    private Any typedConfig_;
    private static final OverloadAction DEFAULT_INSTANCE = new OverloadAction();
    private static final e2<OverloadAction> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<OverloadAction> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OverloadAction m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OverloadAction(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f48931e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48932f;

        /* renamed from: g  reason: collision with root package name */
        private List<Trigger> f48933g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Trigger, Trigger.c, h> f48934h;

        /* renamed from: i  reason: collision with root package name */
        private Any f48935i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f48936j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48931e & 1) == 0) {
                this.f48933g = new ArrayList(this.f48933g);
                this.f48931e |= 1;
            }
        }

        private l2<Trigger, Trigger.c, h> d0() {
            if (this.f48934h == null) {
                this.f48934h = new l2<>(this.f48933g, (this.f48931e & 1) != 0, H(), O());
                this.f48933g = null;
            }
            return this.f48934h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48982n.d(OverloadAction.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OverloadAction build() {
            OverloadAction I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OverloadAction I() {
            OverloadAction overloadAction = new OverloadAction(this, (a) null);
            overloadAction.name_ = this.f48932f;
            l2<Trigger, Trigger.c, h> l2Var = this.f48934h;
            if (l2Var == null) {
                if ((this.f48931e & 1) != 0) {
                    this.f48933g = Collections.unmodifiableList(this.f48933g);
                    this.f48931e &= -2;
                }
                overloadAction.triggers_ = this.f48933g;
            } else {
                overloadAction.triggers_ = l2Var.e();
            }
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48936j;
            if (q2Var == null) {
                overloadAction.typedConfig_ = this.f48935i;
            } else {
                overloadAction.typedConfig_ = q2Var.b();
            }
            Q();
            return overloadAction;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public OverloadAction getDefaultInstanceForType() {
            return OverloadAction.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.OverloadAction$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48981m;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof OverloadAction) {
                return i0((OverloadAction) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(OverloadAction overloadAction) {
            if (overloadAction == OverloadAction.getDefaultInstance()) {
                return this;
            }
            if (!overloadAction.getName().isEmpty()) {
                this.f48932f = overloadAction.name_;
                R();
            }
            if (this.f48934h == null) {
                if (!overloadAction.triggers_.isEmpty()) {
                    if (this.f48933g.isEmpty()) {
                        this.f48933g = overloadAction.triggers_;
                        this.f48931e &= -2;
                    } else {
                        a0();
                        this.f48933g.addAll(overloadAction.triggers_);
                    }
                    R();
                }
            } else if (!overloadAction.triggers_.isEmpty()) {
                if (this.f48934h.k()) {
                    this.f48934h.f();
                    this.f48934h = null;
                    this.f48933g = overloadAction.triggers_;
                    this.f48931e &= -2;
                    this.f48934h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48934h.b(overloadAction.triggers_);
                }
            }
            if (overloadAction.hasTypedConfig()) {
                j0(overloadAction.getTypedConfig());
            }
            z(((GeneratedMessageV3) overloadAction).unknownFields);
            R();
            return this;
        }

        public b j0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48936j;
            if (q2Var == null) {
                Any any2 = this.f48935i;
                if (any2 != null) {
                    this.f48935i = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f48935i = any;
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f48932f = "";
            this.f48933g = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48932f = "";
            this.f48933g = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ OverloadAction(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OverloadAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48981m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OverloadAction parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OverloadAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OverloadAction> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OverloadAction)) {
            return super.equals(obj);
        }
        OverloadAction overloadAction = (OverloadAction) obj;
        if (getName().equals(overloadAction.getName()) && getTriggersList().equals(overloadAction.getTriggersList()) && hasTypedConfig() == overloadAction.hasTypedConfig()) {
            return (!hasTypedConfig() || getTypedConfig().equals(overloadAction.getTypedConfig())) && this.unknownFields.equals(overloadAction.unknownFields);
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
    public e2<OverloadAction> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.triggers_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.triggers_.get(i10));
        }
        if (this.typedConfig_ != null) {
            computeStringSize += CodedOutputStream.G(3, getTypedConfig());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Trigger getTriggers(int i9) {
        return this.triggers_.get(i9);
    }

    public int getTriggersCount() {
        return this.triggers_.size();
    }

    public List<Trigger> getTriggersList() {
        return this.triggers_;
    }

    public h getTriggersOrBuilder(int i9) {
        return this.triggers_.get(i9);
    }

    public List<? extends h> getTriggersOrBuilderList() {
        return this.triggers_;
    }

    public Any getTypedConfig() {
        Any any = this.typedConfig_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getTypedConfigOrBuilder() {
        return getTypedConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasTypedConfig() {
        return this.typedConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getTriggersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getTriggersList().hashCode();
        }
        if (hasTypedConfig()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48982n.d(OverloadAction.class, b.class);
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
        return new OverloadAction();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.triggers_.size(); i9++) {
            codedOutputStream.L0(2, this.triggers_.get(i9));
        }
        if (this.typedConfig_ != null) {
            codedOutputStream.L0(3, getTypedConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OverloadAction(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(OverloadAction overloadAction) {
        return DEFAULT_INSTANCE.toBuilder().i0(overloadAction);
    }

    public static OverloadAction parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private OverloadAction(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OverloadAction parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OverloadAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OverloadAction getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static OverloadAction parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private OverloadAction() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.triggers_ = Collections.emptyList();
    }

    public static OverloadAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static OverloadAction parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static OverloadAction parseFrom(InputStream inputStream) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private OverloadAction(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.triggers_ = new ArrayList();
                                z11 |= true;
                            }
                            this.triggers_.add((Trigger) pVar.B(Trigger.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Any any = this.typedConfig_;
                            Any.b builder = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                            this.typedConfig_ = any2;
                            if (builder != null) {
                                builder.d0(any2);
                                this.typedConfig_ = builder.I();
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
                if (z11 & true) {
                    this.triggers_ = Collections.unmodifiableList(this.triggers_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static OverloadAction parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OverloadAction parseFrom(p pVar) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static OverloadAction parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OverloadAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
