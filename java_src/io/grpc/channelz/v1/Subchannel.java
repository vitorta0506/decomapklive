package io.grpc.channelz.v1;

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
import com.google.protobuf.q2;
import io.grpc.channelz.v1.ChannelData;
import io.grpc.channelz.v1.ChannelRef;
import io.grpc.channelz.v1.SocketRef;
import io.grpc.channelz.v1.SubchannelRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Subchannel extends GeneratedMessageV3 implements q {
    public static final int CHANNEL_REF_FIELD_NUMBER = 3;
    public static final int DATA_FIELD_NUMBER = 2;
    private static final Subchannel DEFAULT_INSTANCE = new Subchannel();
    private static final e2<Subchannel> PARSER = new a();
    public static final int REF_FIELD_NUMBER = 1;
    public static final int SOCKET_REF_FIELD_NUMBER = 5;
    public static final int SUBCHANNEL_REF_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<ChannelRef> channelRef_;
    private ChannelData data_;
    private byte memoizedIsInitialized;
    private SubchannelRef ref_;
    private List<SocketRef> socketRef_;
    private List<SubchannelRef> subchannelRef_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Subchannel> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Subchannel m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Subchannel(pVar, f0Var, null);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements q {

        /* renamed from: e  reason: collision with root package name */
        private int f42241e;

        /* renamed from: f  reason: collision with root package name */
        private SubchannelRef f42242f;

        /* renamed from: g  reason: collision with root package name */
        private q2<SubchannelRef, SubchannelRef.b, r> f42243g;

        /* renamed from: h  reason: collision with root package name */
        private ChannelData f42244h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ChannelData, ChannelData.b, c> f42245i;

        /* renamed from: j  reason: collision with root package name */
        private List<ChannelRef> f42246j;

        /* renamed from: k  reason: collision with root package name */
        private l2<ChannelRef, ChannelRef.b, e> f42247k;

        /* renamed from: l  reason: collision with root package name */
        private List<SubchannelRef> f42248l;

        /* renamed from: m  reason: collision with root package name */
        private l2<SubchannelRef, SubchannelRef.b, r> f42249m;

        /* renamed from: n  reason: collision with root package name */
        private List<SocketRef> f42250n;

        /* renamed from: o  reason: collision with root package name */
        private l2<SocketRef, SocketRef.b, p> f42251o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f42241e & 1) == 0) {
                this.f42246j = new ArrayList(this.f42246j);
                this.f42241e |= 1;
            }
        }

        private void b0() {
            if ((this.f42241e & 4) == 0) {
                this.f42250n = new ArrayList(this.f42250n);
                this.f42241e |= 4;
            }
        }

        private void d0() {
            if ((this.f42241e & 2) == 0) {
                this.f42248l = new ArrayList(this.f42248l);
                this.f42241e |= 2;
            }
        }

        private l2<ChannelRef, ChannelRef.b, e> e0() {
            if (this.f42247k == null) {
                this.f42247k = new l2<>(this.f42246j, (this.f42241e & 1) != 0, H(), O());
                this.f42246j = null;
            }
            return this.f42247k;
        }

        private l2<SocketRef, SocketRef.b, p> h0() {
            if (this.f42251o == null) {
                this.f42251o = new l2<>(this.f42250n, (this.f42241e & 4) != 0, H(), O());
                this.f42250n = null;
            }
            return this.f42251o;
        }

        private l2<SubchannelRef, SubchannelRef.b, r> i0() {
            if (this.f42249m == null) {
                this.f42249m = new l2<>(this.f42248l, (this.f42241e & 2) != 0, H(), O());
                this.f42248l = null;
            }
            return this.f42249m;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                i0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42260d.d(Subchannel.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Subchannel build() {
            Subchannel I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Subchannel I() {
            Subchannel subchannel = new Subchannel(this, (a) null);
            q2<SubchannelRef, SubchannelRef.b, r> q2Var = this.f42243g;
            if (q2Var == null) {
                subchannel.ref_ = this.f42242f;
            } else {
                subchannel.ref_ = q2Var.b();
            }
            q2<ChannelData, ChannelData.b, c> q2Var2 = this.f42245i;
            if (q2Var2 == null) {
                subchannel.data_ = this.f42244h;
            } else {
                subchannel.data_ = q2Var2.b();
            }
            l2<ChannelRef, ChannelRef.b, e> l2Var = this.f42247k;
            if (l2Var == null) {
                if ((this.f42241e & 1) != 0) {
                    this.f42246j = Collections.unmodifiableList(this.f42246j);
                    this.f42241e &= -2;
                }
                subchannel.channelRef_ = this.f42246j;
            } else {
                subchannel.channelRef_ = l2Var.e();
            }
            l2<SubchannelRef, SubchannelRef.b, r> l2Var2 = this.f42249m;
            if (l2Var2 == null) {
                if ((this.f42241e & 2) != 0) {
                    this.f42248l = Collections.unmodifiableList(this.f42248l);
                    this.f42241e &= -3;
                }
                subchannel.subchannelRef_ = this.f42248l;
            } else {
                subchannel.subchannelRef_ = l2Var2.e();
            }
            l2<SocketRef, SocketRef.b, p> l2Var3 = this.f42251o;
            if (l2Var3 == null) {
                if ((this.f42241e & 4) != 0) {
                    this.f42250n = Collections.unmodifiableList(this.f42250n);
                    this.f42241e &= -5;
                }
                subchannel.socketRef_ = this.f42250n;
            } else {
                subchannel.socketRef_ = l2Var3.e();
            }
            Q();
            return subchannel;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public Subchannel getDefaultInstanceForType() {
            return Subchannel.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42258c;
        }

        public b k0(ChannelData channelData) {
            q2<ChannelData, ChannelData.b, c> q2Var = this.f42245i;
            if (q2Var == null) {
                ChannelData channelData2 = this.f42244h;
                if (channelData2 != null) {
                    this.f42244h = ChannelData.newBuilder(channelData2).g0(channelData).I();
                } else {
                    this.f42244h = channelData;
                }
                R();
            } else {
                q2Var.e(channelData);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.Subchannel.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.Subchannel.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.Subchannel r3 = (io.grpc.channelz.v1.Subchannel) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.n0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.channelz.v1.Subchannel r4 = (io.grpc.channelz.v1.Subchannel) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.n0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.Subchannel.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.Subchannel$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Subchannel) {
                return n0((Subchannel) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b n0(Subchannel subchannel) {
            if (subchannel == Subchannel.getDefaultInstance()) {
                return this;
            }
            if (subchannel.hasRef()) {
                o0(subchannel.getRef());
            }
            if (subchannel.hasData()) {
                k0(subchannel.getData());
            }
            if (this.f42247k == null) {
                if (!subchannel.channelRef_.isEmpty()) {
                    if (this.f42246j.isEmpty()) {
                        this.f42246j = subchannel.channelRef_;
                        this.f42241e &= -2;
                    } else {
                        a0();
                        this.f42246j.addAll(subchannel.channelRef_);
                    }
                    R();
                }
            } else if (!subchannel.channelRef_.isEmpty()) {
                if (this.f42247k.k()) {
                    this.f42247k.f();
                    this.f42247k = null;
                    this.f42246j = subchannel.channelRef_;
                    this.f42241e &= -2;
                    this.f42247k = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f42247k.b(subchannel.channelRef_);
                }
            }
            if (this.f42249m == null) {
                if (!subchannel.subchannelRef_.isEmpty()) {
                    if (this.f42248l.isEmpty()) {
                        this.f42248l = subchannel.subchannelRef_;
                        this.f42241e &= -3;
                    } else {
                        d0();
                        this.f42248l.addAll(subchannel.subchannelRef_);
                    }
                    R();
                }
            } else if (!subchannel.subchannelRef_.isEmpty()) {
                if (this.f42249m.k()) {
                    this.f42249m.f();
                    this.f42249m = null;
                    this.f42248l = subchannel.subchannelRef_;
                    this.f42241e &= -3;
                    this.f42249m = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f42249m.b(subchannel.subchannelRef_);
                }
            }
            if (this.f42251o == null) {
                if (!subchannel.socketRef_.isEmpty()) {
                    if (this.f42250n.isEmpty()) {
                        this.f42250n = subchannel.socketRef_;
                        this.f42241e &= -5;
                    } else {
                        b0();
                        this.f42250n.addAll(subchannel.socketRef_);
                    }
                    R();
                }
            } else if (!subchannel.socketRef_.isEmpty()) {
                if (this.f42251o.k()) {
                    this.f42251o.f();
                    this.f42251o = null;
                    this.f42250n = subchannel.socketRef_;
                    this.f42241e &= -5;
                    this.f42251o = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f42251o.b(subchannel.socketRef_);
                }
            }
            z(((GeneratedMessageV3) subchannel).unknownFields);
            R();
            return this;
        }

        public b o0(SubchannelRef subchannelRef) {
            q2<SubchannelRef, SubchannelRef.b, r> q2Var = this.f42243g;
            if (q2Var == null) {
                SubchannelRef subchannelRef2 = this.f42242f;
                if (subchannelRef2 != null) {
                    this.f42242f = SubchannelRef.newBuilder(subchannelRef2).g0(subchannelRef).I();
                } else {
                    this.f42242f = subchannelRef;
                }
                R();
            } else {
                q2Var.e(subchannelRef);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f42246j = Collections.emptyList();
            this.f42248l = Collections.emptyList();
            this.f42250n = Collections.emptyList();
            j0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42246j = Collections.emptyList();
            this.f42248l = Collections.emptyList();
            this.f42250n = Collections.emptyList();
            j0();
        }
    }

    /* synthetic */ Subchannel(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Subchannel getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42258c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Subchannel parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Subchannel parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Subchannel> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Subchannel)) {
            return super.equals(obj);
        }
        Subchannel subchannel = (Subchannel) obj;
        if (hasRef() != subchannel.hasRef()) {
            return false;
        }
        if ((!hasRef() || getRef().equals(subchannel.getRef())) && hasData() == subchannel.hasData()) {
            return (!hasData() || getData().equals(subchannel.getData())) && getChannelRefList().equals(subchannel.getChannelRefList()) && getSubchannelRefList().equals(subchannel.getSubchannelRefList()) && getSocketRefList().equals(subchannel.getSocketRefList()) && this.unknownFields.equals(subchannel.unknownFields);
        }
        return false;
    }

    public ChannelRef getChannelRef(int i9) {
        return this.channelRef_.get(i9);
    }

    public int getChannelRefCount() {
        return this.channelRef_.size();
    }

    public List<ChannelRef> getChannelRefList() {
        return this.channelRef_;
    }

    public e getChannelRefOrBuilder(int i9) {
        return this.channelRef_.get(i9);
    }

    public List<? extends e> getChannelRefOrBuilderList() {
        return this.channelRef_;
    }

    public ChannelData getData() {
        ChannelData channelData = this.data_;
        return channelData == null ? ChannelData.getDefaultInstance() : channelData;
    }

    public c getDataOrBuilder() {
        return getData();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Subchannel> getParserForType() {
        return PARSER;
    }

    public SubchannelRef getRef() {
        SubchannelRef subchannelRef = this.ref_;
        return subchannelRef == null ? SubchannelRef.getDefaultInstance() : subchannelRef;
    }

    public r getRefOrBuilder() {
        return getRef();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.ref_ != null ? CodedOutputStream.G(1, getRef()) + 0 : 0;
        if (this.data_ != null) {
            G += CodedOutputStream.G(2, getData());
        }
        for (int i10 = 0; i10 < this.channelRef_.size(); i10++) {
            G += CodedOutputStream.G(3, this.channelRef_.get(i10));
        }
        for (int i11 = 0; i11 < this.subchannelRef_.size(); i11++) {
            G += CodedOutputStream.G(4, this.subchannelRef_.get(i11));
        }
        for (int i12 = 0; i12 < this.socketRef_.size(); i12++) {
            G += CodedOutputStream.G(5, this.socketRef_.get(i12));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketRef getSocketRef(int i9) {
        return this.socketRef_.get(i9);
    }

    public int getSocketRefCount() {
        return this.socketRef_.size();
    }

    public List<SocketRef> getSocketRefList() {
        return this.socketRef_;
    }

    public p getSocketRefOrBuilder(int i9) {
        return this.socketRef_.get(i9);
    }

    public List<? extends p> getSocketRefOrBuilderList() {
        return this.socketRef_;
    }

    public SubchannelRef getSubchannelRef(int i9) {
        return this.subchannelRef_.get(i9);
    }

    public int getSubchannelRefCount() {
        return this.subchannelRef_.size();
    }

    public List<SubchannelRef> getSubchannelRefList() {
        return this.subchannelRef_;
    }

    public r getSubchannelRefOrBuilder(int i9) {
        return this.subchannelRef_.get(i9);
    }

    public List<? extends r> getSubchannelRefOrBuilderList() {
        return this.subchannelRef_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasData() {
        return this.data_ != null;
    }

    public boolean hasRef() {
        return this.ref_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasRef()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getRef().hashCode();
        }
        if (hasData()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getData().hashCode();
        }
        if (getChannelRefCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getChannelRefList().hashCode();
        }
        if (getSubchannelRefCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getSubchannelRefList().hashCode();
        }
        if (getSocketRefCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getSocketRefList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f42260d.d(Subchannel.class, b.class);
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
        return new Subchannel();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.ref_ != null) {
            codedOutputStream.L0(1, getRef());
        }
        if (this.data_ != null) {
            codedOutputStream.L0(2, getData());
        }
        for (int i9 = 0; i9 < this.channelRef_.size(); i9++) {
            codedOutputStream.L0(3, this.channelRef_.get(i9));
        }
        for (int i10 = 0; i10 < this.subchannelRef_.size(); i10++) {
            codedOutputStream.L0(4, this.subchannelRef_.get(i10));
        }
        for (int i11 = 0; i11 < this.socketRef_.size(); i11++) {
            codedOutputStream.L0(5, this.socketRef_.get(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Subchannel(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Subchannel subchannel) {
        return DEFAULT_INSTANCE.toBuilder().n0(subchannel);
    }

    public static Subchannel parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Subchannel(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Subchannel parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Subchannel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Subchannel getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).n0(this);
    }

    public static Subchannel parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Subchannel() {
        this.memoizedIsInitialized = (byte) -1;
        this.channelRef_ = Collections.emptyList();
        this.subchannelRef_ = Collections.emptyList();
        this.socketRef_ = Collections.emptyList();
    }

    public static Subchannel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Subchannel parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Subchannel parseFrom(InputStream inputStream) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Subchannel parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Subchannel(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            SubchannelRef subchannelRef = this.ref_;
                            SubchannelRef.b builder = subchannelRef != null ? subchannelRef.toBuilder() : null;
                            SubchannelRef subchannelRef2 = (SubchannelRef) pVar.B(SubchannelRef.parser(), f0Var);
                            this.ref_ = subchannelRef2;
                            if (builder != null) {
                                builder.g0(subchannelRef2);
                                this.ref_ = builder.I();
                            }
                        } else if (L == 18) {
                            ChannelData channelData = this.data_;
                            ChannelData.b builder2 = channelData != null ? channelData.toBuilder() : null;
                            ChannelData channelData2 = (ChannelData) pVar.B(ChannelData.parser(), f0Var);
                            this.data_ = channelData2;
                            if (builder2 != null) {
                                builder2.g0(channelData2);
                                this.data_ = builder2.I();
                            }
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.channelRef_ = new ArrayList();
                                z11 |= true;
                            }
                            this.channelRef_.add((ChannelRef) pVar.B(ChannelRef.parser(), f0Var));
                        } else if (L == 34) {
                            if (!(z11 & true)) {
                                this.subchannelRef_ = new ArrayList();
                                z11 |= true;
                            }
                            this.subchannelRef_.add((SubchannelRef) pVar.B(SubchannelRef.parser(), f0Var));
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.socketRef_ = new ArrayList();
                                z11 |= true;
                            }
                            this.socketRef_.add((SocketRef) pVar.B(SocketRef.parser(), f0Var));
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
                    this.channelRef_ = Collections.unmodifiableList(this.channelRef_);
                }
                if (z11 & true) {
                    this.subchannelRef_ = Collections.unmodifiableList(this.subchannelRef_);
                }
                if (z11 & true) {
                    this.socketRef_ = Collections.unmodifiableList(this.socketRef_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Subchannel parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Subchannel parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Subchannel) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
