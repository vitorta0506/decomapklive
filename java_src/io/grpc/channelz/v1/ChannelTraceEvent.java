package io.grpc.channelz.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.grpc.channelz.v1.ChannelRef;
import io.grpc.channelz.v1.SubchannelRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class ChannelTraceEvent extends GeneratedMessageV3 implements f {
    public static final int CHANNEL_REF_FIELD_NUMBER = 4;
    public static final int DESCRIPTION_FIELD_NUMBER = 1;
    public static final int SEVERITY_FIELD_NUMBER = 2;
    public static final int SUBCHANNEL_REF_FIELD_NUMBER = 5;
    public static final int TIMESTAMP_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int childRefCase_;
    private Object childRef_;
    private volatile Object description_;
    private byte memoizedIsInitialized;
    private int severity_;
    private Timestamp timestamp_;
    private static final ChannelTraceEvent DEFAULT_INSTANCE = new ChannelTraceEvent();
    private static final e2<ChannelTraceEvent> PARSER = new a();

    /* loaded from: classes5.dex */
    public enum ChildRefCase implements u0.c {
        CHANNEL_REF(4),
        SUBCHANNEL_REF(5),
        CHILDREF_NOT_SET(0);
        
        private final int value;

        ChildRefCase(int i9) {
            this.value = i9;
        }

        public static ChildRefCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 4) {
                    if (i9 != 5) {
                        return null;
                    }
                    return SUBCHANNEL_REF;
                }
                return CHANNEL_REF;
            }
            return CHILDREF_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ChildRefCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* loaded from: classes5.dex */
    public enum Severity implements h2 {
        CT_UNKNOWN(0),
        CT_INFO(1),
        CT_WARNING(2),
        CT_ERROR(3),
        UNRECOGNIZED(-1);
        
        public static final int CT_ERROR_VALUE = 3;
        public static final int CT_INFO_VALUE = 1;
        public static final int CT_UNKNOWN_VALUE = 0;
        public static final int CT_WARNING_VALUE = 2;
        private final int value;
        private static final u0.d<Severity> internalValueMap = new a();
        private static final Severity[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<Severity> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public Severity a(int i9) {
                return Severity.forNumber(i9);
            }
        }

        Severity(int i9) {
            this.value = i9;
        }

        public static Severity forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return CT_ERROR;
                    }
                    return CT_WARNING;
                }
                return CT_INFO;
            }
            return CT_UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return ChannelTraceEvent.getDescriptor().k().get(0);
        }

        public static u0.d<Severity> internalGetValueMap() {
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
        public static Severity valueOf(int i9) {
            return forNumber(i9);
        }

        public static Severity valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<ChannelTraceEvent> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ChannelTraceEvent m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ChannelTraceEvent(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42106a;

        static {
            int[] iArr = new int[ChildRefCase.values().length];
            f42106a = iArr;
            try {
                iArr[ChildRefCase.CHANNEL_REF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42106a[ChildRefCase.SUBCHANNEL_REF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f42106a[ChildRefCase.CHILDREF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f42107e;

        /* renamed from: f  reason: collision with root package name */
        private Object f42108f;

        /* renamed from: g  reason: collision with root package name */
        private Object f42109g;

        /* renamed from: h  reason: collision with root package name */
        private int f42110h;

        /* renamed from: i  reason: collision with root package name */
        private Timestamp f42111i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f42112j;

        /* renamed from: k  reason: collision with root package name */
        private q2<ChannelRef, ChannelRef.b, e> f42113k;

        /* renamed from: l  reason: collision with root package name */
        private q2<SubchannelRef, SubchannelRef.b, r> f42114l;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f42272j.d(ChannelTraceEvent.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ChannelTraceEvent build() {
            ChannelTraceEvent I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ChannelTraceEvent I() {
            ChannelTraceEvent channelTraceEvent = new ChannelTraceEvent(this, (a) null);
            channelTraceEvent.description_ = this.f42109g;
            channelTraceEvent.severity_ = this.f42110h;
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42112j;
            if (q2Var == null) {
                channelTraceEvent.timestamp_ = this.f42111i;
            } else {
                channelTraceEvent.timestamp_ = q2Var.b();
            }
            if (this.f42107e == 4) {
                q2<ChannelRef, ChannelRef.b, e> q2Var2 = this.f42113k;
                if (q2Var2 == null) {
                    channelTraceEvent.childRef_ = this.f42108f;
                } else {
                    channelTraceEvent.childRef_ = q2Var2.b();
                }
            }
            if (this.f42107e == 5) {
                q2<SubchannelRef, SubchannelRef.b, r> q2Var3 = this.f42114l;
                if (q2Var3 == null) {
                    channelTraceEvent.childRef_ = this.f42108f;
                } else {
                    channelTraceEvent.childRef_ = q2Var3.b();
                }
            }
            channelTraceEvent.childRefCase_ = this.f42107e;
            Q();
            return channelTraceEvent;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ChannelTraceEvent getDefaultInstanceForType() {
            return ChannelTraceEvent.getDefaultInstance();
        }

        public c d0(ChannelRef channelRef) {
            q2<ChannelRef, ChannelRef.b, e> q2Var = this.f42113k;
            if (q2Var == null) {
                if (this.f42107e == 4 && this.f42108f != ChannelRef.getDefaultInstance()) {
                    this.f42108f = ChannelRef.newBuilder((ChannelRef) this.f42108f).g0(channelRef).I();
                } else {
                    this.f42108f = channelRef;
                }
                R();
            } else {
                if (this.f42107e == 4) {
                    q2Var.e(channelRef);
                }
                this.f42113k.g(channelRef);
            }
            this.f42107e = 4;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.channelz.v1.ChannelTraceEvent.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.channelz.v1.ChannelTraceEvent.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.channelz.v1.ChannelTraceEvent r3 = (io.grpc.channelz.v1.ChannelTraceEvent) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.channelz.v1.ChannelTraceEvent r4 = (io.grpc.channelz.v1.ChannelTraceEvent) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.channelz.v1.ChannelTraceEvent.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.channelz.v1.ChannelTraceEvent$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ChannelTraceEvent) {
                return h0((ChannelTraceEvent) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h.f42270i;
        }

        public c h0(ChannelTraceEvent channelTraceEvent) {
            if (channelTraceEvent == ChannelTraceEvent.getDefaultInstance()) {
                return this;
            }
            if (!channelTraceEvent.getDescription().isEmpty()) {
                this.f42109g = channelTraceEvent.description_;
                R();
            }
            if (channelTraceEvent.severity_ != 0) {
                m0(channelTraceEvent.getSeverityValue());
            }
            if (channelTraceEvent.hasTimestamp()) {
                j0(channelTraceEvent.getTimestamp());
            }
            int i9 = b.f42106a[channelTraceEvent.getChildRefCase().ordinal()];
            if (i9 == 1) {
                d0(channelTraceEvent.getChannelRef());
            } else if (i9 == 2) {
                i0(channelTraceEvent.getSubchannelRef());
            }
            z(((GeneratedMessageV3) channelTraceEvent).unknownFields);
            R();
            return this;
        }

        public c i0(SubchannelRef subchannelRef) {
            q2<SubchannelRef, SubchannelRef.b, r> q2Var = this.f42114l;
            if (q2Var == null) {
                if (this.f42107e == 5 && this.f42108f != SubchannelRef.getDefaultInstance()) {
                    this.f42108f = SubchannelRef.newBuilder((SubchannelRef) this.f42108f).g0(subchannelRef).I();
                } else {
                    this.f42108f = subchannelRef;
                }
                R();
            } else {
                if (this.f42107e == 5) {
                    q2Var.e(subchannelRef);
                }
                this.f42114l.g(subchannelRef);
            }
            this.f42107e = 5;
            return this;
        }

        public c j0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f42112j;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f42111i;
                if (timestamp2 != null) {
                    this.f42111i = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f42111i = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
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
            this.f42110h = i9;
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
            this.f42107e = 0;
            this.f42109g = "";
            this.f42110h = 0;
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f42107e = 0;
            this.f42109g = "";
            this.f42110h = 0;
            b0();
        }
    }

    /* synthetic */ ChannelTraceEvent(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ChannelTraceEvent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f42270i;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ChannelTraceEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ChannelTraceEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ChannelTraceEvent> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ChannelTraceEvent)) {
            return super.equals(obj);
        }
        ChannelTraceEvent channelTraceEvent = (ChannelTraceEvent) obj;
        if (getDescription().equals(channelTraceEvent.getDescription()) && this.severity_ == channelTraceEvent.severity_ && hasTimestamp() == channelTraceEvent.hasTimestamp()) {
            if ((!hasTimestamp() || getTimestamp().equals(channelTraceEvent.getTimestamp())) && getChildRefCase().equals(channelTraceEvent.getChildRefCase())) {
                int i9 = this.childRefCase_;
                if (i9 != 4) {
                    if (i9 == 5 && !getSubchannelRef().equals(channelTraceEvent.getSubchannelRef())) {
                        return false;
                    }
                } else if (!getChannelRef().equals(channelTraceEvent.getChannelRef())) {
                    return false;
                }
                return this.unknownFields.equals(channelTraceEvent.unknownFields);
            }
            return false;
        }
        return false;
    }

    public ChannelRef getChannelRef() {
        if (this.childRefCase_ == 4) {
            return (ChannelRef) this.childRef_;
        }
        return ChannelRef.getDefaultInstance();
    }

    public e getChannelRefOrBuilder() {
        if (this.childRefCase_ == 4) {
            return (ChannelRef) this.childRef_;
        }
        return ChannelRef.getDefaultInstance();
    }

    public ChildRefCase getChildRefCase() {
        return ChildRefCase.forNumber(this.childRefCase_);
    }

    public String getDescription() {
        Object obj = this.description_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.description_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDescriptionBytes() {
        Object obj = this.description_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.description_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ChannelTraceEvent> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.description_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.description_);
        if (this.severity_ != Severity.CT_UNKNOWN.getNumber()) {
            computeStringSize += CodedOutputStream.l(2, this.severity_);
        }
        if (this.timestamp_ != null) {
            computeStringSize += CodedOutputStream.G(3, getTimestamp());
        }
        if (this.childRefCase_ == 4) {
            computeStringSize += CodedOutputStream.G(4, (ChannelRef) this.childRef_);
        }
        if (this.childRefCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (SubchannelRef) this.childRef_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Severity getSeverity() {
        Severity valueOf = Severity.valueOf(this.severity_);
        return valueOf == null ? Severity.UNRECOGNIZED : valueOf;
    }

    public int getSeverityValue() {
        return this.severity_;
    }

    public SubchannelRef getSubchannelRef() {
        if (this.childRefCase_ == 5) {
            return (SubchannelRef) this.childRef_;
        }
        return SubchannelRef.getDefaultInstance();
    }

    public r getSubchannelRefOrBuilder() {
        if (this.childRefCase_ == 5) {
            return (SubchannelRef) this.childRef_;
        }
        return SubchannelRef.getDefaultInstance();
    }

    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getTimestampOrBuilder() {
        return getTimestamp();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasChannelRef() {
        return this.childRefCase_ == 4;
    }

    public boolean hasSubchannelRef() {
        return this.childRefCase_ == 5;
    }

    public boolean hasTimestamp() {
        return this.timestamp_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDescription().hashCode()) * 37) + 2) * 53) + this.severity_;
        if (hasTimestamp()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getTimestamp().hashCode();
        }
        int i11 = this.childRefCase_;
        if (i11 == 4) {
            i9 = ((hashCode2 * 37) + 4) * 53;
            hashCode = getChannelRef().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getSubchannelRef().hashCode();
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
        return h.f42272j.d(ChannelTraceEvent.class, c.class);
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
        return new ChannelTraceEvent();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.description_);
        }
        if (this.severity_ != Severity.CT_UNKNOWN.getNumber()) {
            codedOutputStream.v0(2, this.severity_);
        }
        if (this.timestamp_ != null) {
            codedOutputStream.L0(3, getTimestamp());
        }
        if (this.childRefCase_ == 4) {
            codedOutputStream.L0(4, (ChannelRef) this.childRef_);
        }
        if (this.childRefCase_ == 5) {
            codedOutputStream.L0(5, (SubchannelRef) this.childRef_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ChannelTraceEvent(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ChannelTraceEvent channelTraceEvent) {
        return DEFAULT_INSTANCE.toBuilder().h0(channelTraceEvent);
    }

    public static ChannelTraceEvent parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ChannelTraceEvent(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.childRefCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ChannelTraceEvent parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ChannelTraceEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ChannelTraceEvent getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
    }

    public static ChannelTraceEvent parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static ChannelTraceEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private ChannelTraceEvent() {
        this.childRefCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.description_ = "";
        this.severity_ = 0;
    }

    public static ChannelTraceEvent parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ChannelTraceEvent parseFrom(InputStream inputStream) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ChannelTraceEvent parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ChannelTraceEvent(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.description_ = pVar.K();
                            } else if (L != 16) {
                                if (L == 26) {
                                    Timestamp timestamp = this.timestamp_;
                                    Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                    this.timestamp_ = timestamp2;
                                    if (builder != null) {
                                        builder.g0(timestamp2);
                                        this.timestamp_ = builder.I();
                                    }
                                } else if (L == 34) {
                                    ChannelRef.b builder2 = this.childRefCase_ == 4 ? ((ChannelRef) this.childRef_).toBuilder() : null;
                                    o1 B = pVar.B(ChannelRef.parser(), f0Var);
                                    this.childRef_ = B;
                                    if (builder2 != null) {
                                        builder2.g0((ChannelRef) B);
                                        this.childRef_ = builder2.I();
                                    }
                                    this.childRefCase_ = 4;
                                } else if (L != 42) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    SubchannelRef.b builder3 = this.childRefCase_ == 5 ? ((SubchannelRef) this.childRef_).toBuilder() : null;
                                    o1 B2 = pVar.B(SubchannelRef.parser(), f0Var);
                                    this.childRef_ = B2;
                                    if (builder3 != null) {
                                        builder3.g0((SubchannelRef) B2);
                                        this.childRef_ = builder3.I();
                                    }
                                    this.childRefCase_ = 5;
                                }
                            } else {
                                this.severity_ = pVar.u();
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

    public static ChannelTraceEvent parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ChannelTraceEvent parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ChannelTraceEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
