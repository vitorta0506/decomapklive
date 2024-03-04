package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Http2ProtocolOptions extends GeneratedMessageV3 implements d0 {
    public static final int ALLOW_CONNECT_FIELD_NUMBER = 5;
    public static final int ALLOW_METADATA_FIELD_NUMBER = 6;
    public static final int CONNECTION_KEEPALIVE_FIELD_NUMBER = 15;
    public static final int CUSTOM_SETTINGS_PARAMETERS_FIELD_NUMBER = 13;
    public static final int HPACK_TABLE_SIZE_FIELD_NUMBER = 1;
    public static final int INITIAL_CONNECTION_WINDOW_SIZE_FIELD_NUMBER = 4;
    public static final int INITIAL_STREAM_WINDOW_SIZE_FIELD_NUMBER = 3;
    public static final int MAX_CONCURRENT_STREAMS_FIELD_NUMBER = 2;
    public static final int MAX_CONSECUTIVE_INBOUND_FRAMES_WITH_EMPTY_PAYLOAD_FIELD_NUMBER = 9;
    public static final int MAX_INBOUND_PRIORITY_FRAMES_PER_STREAM_FIELD_NUMBER = 10;
    public static final int MAX_INBOUND_WINDOW_UPDATE_FRAMES_PER_DATA_FRAME_SENT_FIELD_NUMBER = 11;
    public static final int MAX_OUTBOUND_CONTROL_FRAMES_FIELD_NUMBER = 8;
    public static final int MAX_OUTBOUND_FRAMES_FIELD_NUMBER = 7;
    public static final int OVERRIDE_STREAM_ERROR_ON_INVALID_HTTP_MESSAGE_FIELD_NUMBER = 14;
    public static final int STREAM_ERROR_ON_INVALID_HTTP_MESSAGING_FIELD_NUMBER = 12;
    private static final long serialVersionUID = 0;
    private boolean allowConnect_;
    private boolean allowMetadata_;
    private KeepaliveSettings connectionKeepalive_;
    private List<SettingsParameter> customSettingsParameters_;
    private UInt32Value hpackTableSize_;
    private UInt32Value initialConnectionWindowSize_;
    private UInt32Value initialStreamWindowSize_;
    private UInt32Value maxConcurrentStreams_;
    private UInt32Value maxConsecutiveInboundFramesWithEmptyPayload_;
    private UInt32Value maxInboundPriorityFramesPerStream_;
    private UInt32Value maxInboundWindowUpdateFramesPerDataFrameSent_;
    private UInt32Value maxOutboundControlFrames_;
    private UInt32Value maxOutboundFrames_;
    private byte memoizedIsInitialized;
    private BoolValue overrideStreamErrorOnInvalidHttpMessage_;
    private boolean streamErrorOnInvalidHttpMessaging_;
    private static final Http2ProtocolOptions DEFAULT_INSTANCE = new Http2ProtocolOptions();
    private static final e2<Http2ProtocolOptions> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class SettingsParameter extends GeneratedMessageV3 implements c {
        public static final int IDENTIFIER_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private UInt32Value identifier_;
        private byte memoizedIsInitialized;
        private UInt32Value value_;
        private static final SettingsParameter DEFAULT_INSTANCE = new SettingsParameter();
        private static final e2<SettingsParameter> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<SettingsParameter> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public SettingsParameter m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
                return new SettingsParameter(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private UInt32Value f48004e;

            /* renamed from: f  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f48005f;

            /* renamed from: g  reason: collision with root package name */
            private UInt32Value f48006g;

            /* renamed from: h  reason: collision with root package name */
            private q2<UInt32Value, UInt32Value.b, e3> f48007h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return n0.f48274v.d(SettingsParameter.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public SettingsParameter build() {
                SettingsParameter I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public SettingsParameter I() {
                SettingsParameter settingsParameter = new SettingsParameter(this, (a) null);
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48005f;
                if (q2Var == null) {
                    settingsParameter.identifier_ = this.f48004e;
                } else {
                    settingsParameter.identifier_ = q2Var.b();
                }
                q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f48007h;
                if (q2Var2 == null) {
                    settingsParameter.value_ = this.f48006g;
                } else {
                    settingsParameter.value_ = q2Var2.b();
                }
                Q();
                return settingsParameter;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public SettingsParameter getDefaultInstanceForType() {
                return SettingsParameter.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions$SettingsParameter r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions$SettingsParameter r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions$SettingsParameter$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(com.google.protobuf.l1 l1Var) {
                if (l1Var instanceof SettingsParameter) {
                    return g0((SettingsParameter) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(SettingsParameter settingsParameter) {
                if (settingsParameter == SettingsParameter.getDefaultInstance()) {
                    return this;
                }
                if (settingsParameter.hasIdentifier()) {
                    h0(settingsParameter.getIdentifier());
                }
                if (settingsParameter.hasValue()) {
                    j0(settingsParameter.getValue());
                }
                z(((GeneratedMessageV3) settingsParameter).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return n0.f48273u;
            }

            public b h0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48005f;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f48004e;
                    if (uInt32Value2 != null) {
                        this.f48004e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f48004e = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(UInt32Value uInt32Value) {
                q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48007h;
                if (q2Var == null) {
                    UInt32Value uInt32Value2 = this.f48006g;
                    if (uInt32Value2 != null) {
                        this.f48006g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                    } else {
                        this.f48006g = uInt32Value;
                    }
                    R();
                } else {
                    q2Var.e(uInt32Value);
                }
                return this;
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ SettingsParameter(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static SettingsParameter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return n0.f48273u;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SettingsParameter parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SettingsParameter parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<SettingsParameter> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SettingsParameter)) {
                return super.equals(obj);
            }
            SettingsParameter settingsParameter = (SettingsParameter) obj;
            if (hasIdentifier() != settingsParameter.hasIdentifier()) {
                return false;
            }
            if ((!hasIdentifier() || getIdentifier().equals(settingsParameter.getIdentifier())) && hasValue() == settingsParameter.hasValue()) {
                return (!hasValue() || getValue().equals(settingsParameter.getValue())) && this.unknownFields.equals(settingsParameter.unknownFields);
            }
            return false;
        }

        public UInt32Value getIdentifier() {
            UInt32Value uInt32Value = this.identifier_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getIdentifierOrBuilder() {
            return getIdentifier();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<SettingsParameter> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.identifier_ != null ? 0 + CodedOutputStream.G(1, getIdentifier()) : 0;
            if (this.value_ != null) {
                G += CodedOutputStream.G(2, getValue());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public UInt32Value getValue() {
            UInt32Value uInt32Value = this.value_;
            return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
        }

        public e3 getValueOrBuilder() {
            return getValue();
        }

        public boolean hasIdentifier() {
            return this.identifier_ != null;
        }

        public boolean hasValue() {
            return this.value_ != null;
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
            if (hasValue()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return n0.f48274v.d(SettingsParameter.class, b.class);
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
            return new SettingsParameter();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.identifier_ != null) {
                codedOutputStream.L0(1, getIdentifier());
            }
            if (this.value_ != null) {
                codedOutputStream.L0(2, getValue());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ SettingsParameter(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(SettingsParameter settingsParameter) {
            return DEFAULT_INSTANCE.toBuilder().g0(settingsParameter);
        }

        public static SettingsParameter parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private SettingsParameter(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SettingsParameter parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static SettingsParameter parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public SettingsParameter getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static SettingsParameter parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private SettingsParameter() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SettingsParameter parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static SettingsParameter parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private SettingsParameter(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            this();
            UInt32Value.b builder;
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                UInt32Value uInt32Value = this.identifier_;
                                builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.identifier_ = uInt32Value2;
                                if (builder != null) {
                                    builder.g0(uInt32Value2);
                                    this.identifier_ = builder.I();
                                }
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                UInt32Value uInt32Value3 = this.value_;
                                builder = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.value_ = uInt32Value4;
                                if (builder != null) {
                                    builder.g0(uInt32Value4);
                                    this.value_ = builder.I();
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

        public static SettingsParameter parseFrom(InputStream inputStream) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static SettingsParameter parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static SettingsParameter parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static SettingsParameter parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
            return (SettingsParameter) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Http2ProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Http2ProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Http2ProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d0 {
        private BoolValue A;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> B;
        private List<SettingsParameter> C;
        private l2<SettingsParameter, SettingsParameter.b, c> D;
        private KeepaliveSettings E;
        private q2<KeepaliveSettings, KeepaliveSettings.b, i0> F;

        /* renamed from: e  reason: collision with root package name */
        private int f48008e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f48009f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48010g;

        /* renamed from: h  reason: collision with root package name */
        private UInt32Value f48011h;

        /* renamed from: i  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48012i;

        /* renamed from: j  reason: collision with root package name */
        private UInt32Value f48013j;

        /* renamed from: k  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48014k;

        /* renamed from: l  reason: collision with root package name */
        private UInt32Value f48015l;

        /* renamed from: m  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48016m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f48017n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f48018o;

        /* renamed from: p  reason: collision with root package name */
        private UInt32Value f48019p;

        /* renamed from: q  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48020q;

        /* renamed from: r  reason: collision with root package name */
        private UInt32Value f48021r;

        /* renamed from: s  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48022s;

        /* renamed from: t  reason: collision with root package name */
        private UInt32Value f48023t;

        /* renamed from: u  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48024u;

        /* renamed from: v  reason: collision with root package name */
        private UInt32Value f48025v;

        /* renamed from: w  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48026w;

        /* renamed from: x  reason: collision with root package name */
        private UInt32Value f48027x;

        /* renamed from: y  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48028y;

        /* renamed from: z  reason: collision with root package name */
        private boolean f48029z;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48008e & 1) == 0) {
                this.C = new ArrayList(this.C);
                this.f48008e |= 1;
            }
        }

        private l2<SettingsParameter, SettingsParameter.b, c> b0() {
            if (this.D == null) {
                this.D = new l2<>(this.C, (this.f48008e & 1) != 0, H(), O());
                this.C = null;
            }
            return this.D;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Deprecated
        public b B0(boolean z10) {
            this.f48029z = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: D0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48272t.d(Http2ProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Http2ProtocolOptions build() {
            Http2ProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Http2ProtocolOptions I() {
            Http2ProtocolOptions http2ProtocolOptions = new Http2ProtocolOptions(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48010g;
            if (q2Var == null) {
                http2ProtocolOptions.hpackTableSize_ = this.f48009f;
            } else {
                http2ProtocolOptions.hpackTableSize_ = q2Var.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f48012i;
            if (q2Var2 == null) {
                http2ProtocolOptions.maxConcurrentStreams_ = this.f48011h;
            } else {
                http2ProtocolOptions.maxConcurrentStreams_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f48014k;
            if (q2Var3 == null) {
                http2ProtocolOptions.initialStreamWindowSize_ = this.f48013j;
            } else {
                http2ProtocolOptions.initialStreamWindowSize_ = q2Var3.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f48016m;
            if (q2Var4 == null) {
                http2ProtocolOptions.initialConnectionWindowSize_ = this.f48015l;
            } else {
                http2ProtocolOptions.initialConnectionWindowSize_ = q2Var4.b();
            }
            http2ProtocolOptions.allowConnect_ = this.f48017n;
            http2ProtocolOptions.allowMetadata_ = this.f48018o;
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.f48020q;
            if (q2Var5 == null) {
                http2ProtocolOptions.maxOutboundFrames_ = this.f48019p;
            } else {
                http2ProtocolOptions.maxOutboundFrames_ = q2Var5.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.f48022s;
            if (q2Var6 == null) {
                http2ProtocolOptions.maxOutboundControlFrames_ = this.f48021r;
            } else {
                http2ProtocolOptions.maxOutboundControlFrames_ = q2Var6.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var7 = this.f48024u;
            if (q2Var7 == null) {
                http2ProtocolOptions.maxConsecutiveInboundFramesWithEmptyPayload_ = this.f48023t;
            } else {
                http2ProtocolOptions.maxConsecutiveInboundFramesWithEmptyPayload_ = q2Var7.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var8 = this.f48026w;
            if (q2Var8 == null) {
                http2ProtocolOptions.maxInboundPriorityFramesPerStream_ = this.f48025v;
            } else {
                http2ProtocolOptions.maxInboundPriorityFramesPerStream_ = q2Var8.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var9 = this.f48028y;
            if (q2Var9 == null) {
                http2ProtocolOptions.maxInboundWindowUpdateFramesPerDataFrameSent_ = this.f48027x;
            } else {
                http2ProtocolOptions.maxInboundWindowUpdateFramesPerDataFrameSent_ = q2Var9.b();
            }
            http2ProtocolOptions.streamErrorOnInvalidHttpMessaging_ = this.f48029z;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var10 = this.B;
            if (q2Var10 == null) {
                http2ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = this.A;
            } else {
                http2ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = q2Var10.b();
            }
            l2<SettingsParameter, SettingsParameter.b, c> l2Var = this.D;
            if (l2Var == null) {
                if ((this.f48008e & 1) != 0) {
                    this.C = Collections.unmodifiableList(this.C);
                    this.f48008e &= -2;
                }
                http2ProtocolOptions.customSettingsParameters_ = this.C;
            } else {
                http2ProtocolOptions.customSettingsParameters_ = l2Var.e();
            }
            q2<KeepaliveSettings, KeepaliveSettings.b, i0> q2Var11 = this.F;
            if (q2Var11 == null) {
                http2ProtocolOptions.connectionKeepalive_ = this.E;
            } else {
                http2ProtocolOptions.connectionKeepalive_ = q2Var11.b();
            }
            Q();
            return http2ProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Http2ProtocolOptions getDefaultInstanceForType() {
            return Http2ProtocolOptions.getDefaultInstance();
        }

        public b g0(KeepaliveSettings keepaliveSettings) {
            q2<KeepaliveSettings, KeepaliveSettings.b, i0> q2Var = this.F;
            if (q2Var == null) {
                KeepaliveSettings keepaliveSettings2 = this.E;
                if (keepaliveSettings2 != null) {
                    this.E = KeepaliveSettings.newBuilder(keepaliveSettings2).h0(keepaliveSettings).I();
                } else {
                    this.E = keepaliveSettings;
                }
                R();
            } else {
                q2Var.e(keepaliveSettings);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48271s;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.access$3000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http2ProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Http2ProtocolOptions) {
                return j0((Http2ProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(Http2ProtocolOptions http2ProtocolOptions) {
            if (http2ProtocolOptions == Http2ProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (http2ProtocolOptions.hasHpackTableSize()) {
                k0(http2ProtocolOptions.getHpackTableSize());
            }
            if (http2ProtocolOptions.hasMaxConcurrentStreams()) {
                n0(http2ProtocolOptions.getMaxConcurrentStreams());
            }
            if (http2ProtocolOptions.hasInitialStreamWindowSize()) {
                m0(http2ProtocolOptions.getInitialStreamWindowSize());
            }
            if (http2ProtocolOptions.hasInitialConnectionWindowSize()) {
                l0(http2ProtocolOptions.getInitialConnectionWindowSize());
            }
            if (http2ProtocolOptions.getAllowConnect()) {
                x0(http2ProtocolOptions.getAllowConnect());
            }
            if (http2ProtocolOptions.getAllowMetadata()) {
                y0(http2ProtocolOptions.getAllowMetadata());
            }
            if (http2ProtocolOptions.hasMaxOutboundFrames()) {
                t0(http2ProtocolOptions.getMaxOutboundFrames());
            }
            if (http2ProtocolOptions.hasMaxOutboundControlFrames()) {
                s0(http2ProtocolOptions.getMaxOutboundControlFrames());
            }
            if (http2ProtocolOptions.hasMaxConsecutiveInboundFramesWithEmptyPayload()) {
                o0(http2ProtocolOptions.getMaxConsecutiveInboundFramesWithEmptyPayload());
            }
            if (http2ProtocolOptions.hasMaxInboundPriorityFramesPerStream()) {
                q0(http2ProtocolOptions.getMaxInboundPriorityFramesPerStream());
            }
            if (http2ProtocolOptions.hasMaxInboundWindowUpdateFramesPerDataFrameSent()) {
                r0(http2ProtocolOptions.getMaxInboundWindowUpdateFramesPerDataFrameSent());
            }
            if (http2ProtocolOptions.getStreamErrorOnInvalidHttpMessaging()) {
                B0(http2ProtocolOptions.getStreamErrorOnInvalidHttpMessaging());
            }
            if (http2ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
                u0(http2ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage());
            }
            if (this.D == null) {
                if (!http2ProtocolOptions.customSettingsParameters_.isEmpty()) {
                    if (this.C.isEmpty()) {
                        this.C = http2ProtocolOptions.customSettingsParameters_;
                        this.f48008e &= -2;
                    } else {
                        a0();
                        this.C.addAll(http2ProtocolOptions.customSettingsParameters_);
                    }
                    R();
                }
            } else if (!http2ProtocolOptions.customSettingsParameters_.isEmpty()) {
                if (this.D.k()) {
                    this.D.f();
                    this.D = null;
                    this.C = http2ProtocolOptions.customSettingsParameters_;
                    this.f48008e &= -2;
                    this.D = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.D.b(http2ProtocolOptions.customSettingsParameters_);
                }
            }
            if (http2ProtocolOptions.hasConnectionKeepalive()) {
                g0(http2ProtocolOptions.getConnectionKeepalive());
            }
            z(((GeneratedMessageV3) http2ProtocolOptions).unknownFields);
            R();
            return this;
        }

        public b k0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48010g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48009f;
                if (uInt32Value2 != null) {
                    this.f48009f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48009f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b l0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48016m;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48015l;
                if (uInt32Value2 != null) {
                    this.f48015l = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48015l = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b m0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48014k;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48013j;
                if (uInt32Value2 != null) {
                    this.f48013j = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48013j = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b n0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48012i;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48011h;
                if (uInt32Value2 != null) {
                    this.f48011h = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48011h = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b o0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48024u;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48023t;
                if (uInt32Value2 != null) {
                    this.f48023t = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48023t = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b q0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48026w;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48025v;
                if (uInt32Value2 != null) {
                    this.f48025v = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48025v = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b r0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48028y;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48027x;
                if (uInt32Value2 != null) {
                    this.f48027x = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48027x = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b s0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48022s;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48021r;
                if (uInt32Value2 != null) {
                    this.f48021r = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48021r = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b t0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48020q;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48019p;
                if (uInt32Value2 != null) {
                    this.f48019p = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48019p = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b u0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.B;
            if (q2Var == null) {
                BoolValue boolValue2 = this.A;
                if (boolValue2 != null) {
                    this.A = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.A = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: v0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b x0(boolean z10) {
            this.f48017n = z10;
            R();
            return this;
        }

        public b y0(boolean z10) {
            this.f48018o = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: z0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.C = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.C = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ Http2ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Http2ProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48271s;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Http2ProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Http2ProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Http2ProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Http2ProtocolOptions)) {
            return super.equals(obj);
        }
        Http2ProtocolOptions http2ProtocolOptions = (Http2ProtocolOptions) obj;
        if (hasHpackTableSize() != http2ProtocolOptions.hasHpackTableSize()) {
            return false;
        }
        if ((!hasHpackTableSize() || getHpackTableSize().equals(http2ProtocolOptions.getHpackTableSize())) && hasMaxConcurrentStreams() == http2ProtocolOptions.hasMaxConcurrentStreams()) {
            if ((!hasMaxConcurrentStreams() || getMaxConcurrentStreams().equals(http2ProtocolOptions.getMaxConcurrentStreams())) && hasInitialStreamWindowSize() == http2ProtocolOptions.hasInitialStreamWindowSize()) {
                if ((!hasInitialStreamWindowSize() || getInitialStreamWindowSize().equals(http2ProtocolOptions.getInitialStreamWindowSize())) && hasInitialConnectionWindowSize() == http2ProtocolOptions.hasInitialConnectionWindowSize()) {
                    if ((!hasInitialConnectionWindowSize() || getInitialConnectionWindowSize().equals(http2ProtocolOptions.getInitialConnectionWindowSize())) && getAllowConnect() == http2ProtocolOptions.getAllowConnect() && getAllowMetadata() == http2ProtocolOptions.getAllowMetadata() && hasMaxOutboundFrames() == http2ProtocolOptions.hasMaxOutboundFrames()) {
                        if ((!hasMaxOutboundFrames() || getMaxOutboundFrames().equals(http2ProtocolOptions.getMaxOutboundFrames())) && hasMaxOutboundControlFrames() == http2ProtocolOptions.hasMaxOutboundControlFrames()) {
                            if ((!hasMaxOutboundControlFrames() || getMaxOutboundControlFrames().equals(http2ProtocolOptions.getMaxOutboundControlFrames())) && hasMaxConsecutiveInboundFramesWithEmptyPayload() == http2ProtocolOptions.hasMaxConsecutiveInboundFramesWithEmptyPayload()) {
                                if ((!hasMaxConsecutiveInboundFramesWithEmptyPayload() || getMaxConsecutiveInboundFramesWithEmptyPayload().equals(http2ProtocolOptions.getMaxConsecutiveInboundFramesWithEmptyPayload())) && hasMaxInboundPriorityFramesPerStream() == http2ProtocolOptions.hasMaxInboundPriorityFramesPerStream()) {
                                    if ((!hasMaxInboundPriorityFramesPerStream() || getMaxInboundPriorityFramesPerStream().equals(http2ProtocolOptions.getMaxInboundPriorityFramesPerStream())) && hasMaxInboundWindowUpdateFramesPerDataFrameSent() == http2ProtocolOptions.hasMaxInboundWindowUpdateFramesPerDataFrameSent()) {
                                        if ((!hasMaxInboundWindowUpdateFramesPerDataFrameSent() || getMaxInboundWindowUpdateFramesPerDataFrameSent().equals(http2ProtocolOptions.getMaxInboundWindowUpdateFramesPerDataFrameSent())) && getStreamErrorOnInvalidHttpMessaging() == http2ProtocolOptions.getStreamErrorOnInvalidHttpMessaging() && hasOverrideStreamErrorOnInvalidHttpMessage() == http2ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
                                            if ((!hasOverrideStreamErrorOnInvalidHttpMessage() || getOverrideStreamErrorOnInvalidHttpMessage().equals(http2ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage())) && getCustomSettingsParametersList().equals(http2ProtocolOptions.getCustomSettingsParametersList()) && hasConnectionKeepalive() == http2ProtocolOptions.hasConnectionKeepalive()) {
                                                return (!hasConnectionKeepalive() || getConnectionKeepalive().equals(http2ProtocolOptions.getConnectionKeepalive())) && this.unknownFields.equals(http2ProtocolOptions.unknownFields);
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public boolean getAllowConnect() {
        return this.allowConnect_;
    }

    public boolean getAllowMetadata() {
        return this.allowMetadata_;
    }

    public KeepaliveSettings getConnectionKeepalive() {
        KeepaliveSettings keepaliveSettings = this.connectionKeepalive_;
        return keepaliveSettings == null ? KeepaliveSettings.getDefaultInstance() : keepaliveSettings;
    }

    public i0 getConnectionKeepaliveOrBuilder() {
        return getConnectionKeepalive();
    }

    public SettingsParameter getCustomSettingsParameters(int i9) {
        return this.customSettingsParameters_.get(i9);
    }

    public int getCustomSettingsParametersCount() {
        return this.customSettingsParameters_.size();
    }

    public List<SettingsParameter> getCustomSettingsParametersList() {
        return this.customSettingsParameters_;
    }

    public c getCustomSettingsParametersOrBuilder(int i9) {
        return this.customSettingsParameters_.get(i9);
    }

    public List<? extends c> getCustomSettingsParametersOrBuilderList() {
        return this.customSettingsParameters_;
    }

    public UInt32Value getHpackTableSize() {
        UInt32Value uInt32Value = this.hpackTableSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getHpackTableSizeOrBuilder() {
        return getHpackTableSize();
    }

    public UInt32Value getInitialConnectionWindowSize() {
        UInt32Value uInt32Value = this.initialConnectionWindowSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getInitialConnectionWindowSizeOrBuilder() {
        return getInitialConnectionWindowSize();
    }

    public UInt32Value getInitialStreamWindowSize() {
        UInt32Value uInt32Value = this.initialStreamWindowSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getInitialStreamWindowSizeOrBuilder() {
        return getInitialStreamWindowSize();
    }

    public UInt32Value getMaxConcurrentStreams() {
        UInt32Value uInt32Value = this.maxConcurrentStreams_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxConcurrentStreamsOrBuilder() {
        return getMaxConcurrentStreams();
    }

    public UInt32Value getMaxConsecutiveInboundFramesWithEmptyPayload() {
        UInt32Value uInt32Value = this.maxConsecutiveInboundFramesWithEmptyPayload_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxConsecutiveInboundFramesWithEmptyPayloadOrBuilder() {
        return getMaxConsecutiveInboundFramesWithEmptyPayload();
    }

    public UInt32Value getMaxInboundPriorityFramesPerStream() {
        UInt32Value uInt32Value = this.maxInboundPriorityFramesPerStream_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxInboundPriorityFramesPerStreamOrBuilder() {
        return getMaxInboundPriorityFramesPerStream();
    }

    public UInt32Value getMaxInboundWindowUpdateFramesPerDataFrameSent() {
        UInt32Value uInt32Value = this.maxInboundWindowUpdateFramesPerDataFrameSent_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxInboundWindowUpdateFramesPerDataFrameSentOrBuilder() {
        return getMaxInboundWindowUpdateFramesPerDataFrameSent();
    }

    public UInt32Value getMaxOutboundControlFrames() {
        UInt32Value uInt32Value = this.maxOutboundControlFrames_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxOutboundControlFramesOrBuilder() {
        return getMaxOutboundControlFrames();
    }

    public UInt32Value getMaxOutboundFrames() {
        UInt32Value uInt32Value = this.maxOutboundFrames_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxOutboundFramesOrBuilder() {
        return getMaxOutboundFrames();
    }

    public BoolValue getOverrideStreamErrorOnInvalidHttpMessage() {
        BoolValue boolValue = this.overrideStreamErrorOnInvalidHttpMessage_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getOverrideStreamErrorOnInvalidHttpMessageOrBuilder() {
        return getOverrideStreamErrorOnInvalidHttpMessage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Http2ProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.hpackTableSize_ != null ? CodedOutputStream.G(1, getHpackTableSize()) + 0 : 0;
        if (this.maxConcurrentStreams_ != null) {
            G += CodedOutputStream.G(2, getMaxConcurrentStreams());
        }
        if (this.initialStreamWindowSize_ != null) {
            G += CodedOutputStream.G(3, getInitialStreamWindowSize());
        }
        if (this.initialConnectionWindowSize_ != null) {
            G += CodedOutputStream.G(4, getInitialConnectionWindowSize());
        }
        boolean z10 = this.allowConnect_;
        if (z10) {
            G += CodedOutputStream.e(5, z10);
        }
        boolean z11 = this.allowMetadata_;
        if (z11) {
            G += CodedOutputStream.e(6, z11);
        }
        if (this.maxOutboundFrames_ != null) {
            G += CodedOutputStream.G(7, getMaxOutboundFrames());
        }
        if (this.maxOutboundControlFrames_ != null) {
            G += CodedOutputStream.G(8, getMaxOutboundControlFrames());
        }
        if (this.maxConsecutiveInboundFramesWithEmptyPayload_ != null) {
            G += CodedOutputStream.G(9, getMaxConsecutiveInboundFramesWithEmptyPayload());
        }
        if (this.maxInboundPriorityFramesPerStream_ != null) {
            G += CodedOutputStream.G(10, getMaxInboundPriorityFramesPerStream());
        }
        if (this.maxInboundWindowUpdateFramesPerDataFrameSent_ != null) {
            G += CodedOutputStream.G(11, getMaxInboundWindowUpdateFramesPerDataFrameSent());
        }
        boolean z12 = this.streamErrorOnInvalidHttpMessaging_;
        if (z12) {
            G += CodedOutputStream.e(12, z12);
        }
        for (int i10 = 0; i10 < this.customSettingsParameters_.size(); i10++) {
            G += CodedOutputStream.G(13, this.customSettingsParameters_.get(i10));
        }
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            G += CodedOutputStream.G(14, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        if (this.connectionKeepalive_ != null) {
            G += CodedOutputStream.G(15, getConnectionKeepalive());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public boolean getStreamErrorOnInvalidHttpMessaging() {
        return this.streamErrorOnInvalidHttpMessaging_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConnectionKeepalive() {
        return this.connectionKeepalive_ != null;
    }

    public boolean hasHpackTableSize() {
        return this.hpackTableSize_ != null;
    }

    public boolean hasInitialConnectionWindowSize() {
        return this.initialConnectionWindowSize_ != null;
    }

    public boolean hasInitialStreamWindowSize() {
        return this.initialStreamWindowSize_ != null;
    }

    public boolean hasMaxConcurrentStreams() {
        return this.maxConcurrentStreams_ != null;
    }

    public boolean hasMaxConsecutiveInboundFramesWithEmptyPayload() {
        return this.maxConsecutiveInboundFramesWithEmptyPayload_ != null;
    }

    public boolean hasMaxInboundPriorityFramesPerStream() {
        return this.maxInboundPriorityFramesPerStream_ != null;
    }

    public boolean hasMaxInboundWindowUpdateFramesPerDataFrameSent() {
        return this.maxInboundWindowUpdateFramesPerDataFrameSent_ != null;
    }

    public boolean hasMaxOutboundControlFrames() {
        return this.maxOutboundControlFrames_ != null;
    }

    public boolean hasMaxOutboundFrames() {
        return this.maxOutboundFrames_ != null;
    }

    public boolean hasOverrideStreamErrorOnInvalidHttpMessage() {
        return this.overrideStreamErrorOnInvalidHttpMessage_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasHpackTableSize()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getHpackTableSize().hashCode();
        }
        if (hasMaxConcurrentStreams()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMaxConcurrentStreams().hashCode();
        }
        if (hasInitialStreamWindowSize()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getInitialStreamWindowSize().hashCode();
        }
        if (hasInitialConnectionWindowSize()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getInitialConnectionWindowSize().hashCode();
        }
        int d10 = (((((((hashCode * 37) + 5) * 53) + com.google.protobuf.u0.d(getAllowConnect())) * 37) + 6) * 53) + com.google.protobuf.u0.d(getAllowMetadata());
        if (hasMaxOutboundFrames()) {
            d10 = (((d10 * 37) + 7) * 53) + getMaxOutboundFrames().hashCode();
        }
        if (hasMaxOutboundControlFrames()) {
            d10 = (((d10 * 37) + 8) * 53) + getMaxOutboundControlFrames().hashCode();
        }
        if (hasMaxConsecutiveInboundFramesWithEmptyPayload()) {
            d10 = (((d10 * 37) + 9) * 53) + getMaxConsecutiveInboundFramesWithEmptyPayload().hashCode();
        }
        if (hasMaxInboundPriorityFramesPerStream()) {
            d10 = (((d10 * 37) + 10) * 53) + getMaxInboundPriorityFramesPerStream().hashCode();
        }
        if (hasMaxInboundWindowUpdateFramesPerDataFrameSent()) {
            d10 = (((d10 * 37) + 11) * 53) + getMaxInboundWindowUpdateFramesPerDataFrameSent().hashCode();
        }
        int d11 = (((d10 * 37) + 12) * 53) + com.google.protobuf.u0.d(getStreamErrorOnInvalidHttpMessaging());
        if (hasOverrideStreamErrorOnInvalidHttpMessage()) {
            d11 = (((d11 * 37) + 14) * 53) + getOverrideStreamErrorOnInvalidHttpMessage().hashCode();
        }
        if (getCustomSettingsParametersCount() > 0) {
            d11 = (((d11 * 37) + 13) * 53) + getCustomSettingsParametersList().hashCode();
        }
        if (hasConnectionKeepalive()) {
            d11 = (((d11 * 37) + 15) * 53) + getConnectionKeepalive().hashCode();
        }
        int hashCode2 = (d11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48272t.d(Http2ProtocolOptions.class, b.class);
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
        return new Http2ProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.hpackTableSize_ != null) {
            codedOutputStream.L0(1, getHpackTableSize());
        }
        if (this.maxConcurrentStreams_ != null) {
            codedOutputStream.L0(2, getMaxConcurrentStreams());
        }
        if (this.initialStreamWindowSize_ != null) {
            codedOutputStream.L0(3, getInitialStreamWindowSize());
        }
        if (this.initialConnectionWindowSize_ != null) {
            codedOutputStream.L0(4, getInitialConnectionWindowSize());
        }
        boolean z10 = this.allowConnect_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        boolean z11 = this.allowMetadata_;
        if (z11) {
            codedOutputStream.n0(6, z11);
        }
        if (this.maxOutboundFrames_ != null) {
            codedOutputStream.L0(7, getMaxOutboundFrames());
        }
        if (this.maxOutboundControlFrames_ != null) {
            codedOutputStream.L0(8, getMaxOutboundControlFrames());
        }
        if (this.maxConsecutiveInboundFramesWithEmptyPayload_ != null) {
            codedOutputStream.L0(9, getMaxConsecutiveInboundFramesWithEmptyPayload());
        }
        if (this.maxInboundPriorityFramesPerStream_ != null) {
            codedOutputStream.L0(10, getMaxInboundPriorityFramesPerStream());
        }
        if (this.maxInboundWindowUpdateFramesPerDataFrameSent_ != null) {
            codedOutputStream.L0(11, getMaxInboundWindowUpdateFramesPerDataFrameSent());
        }
        boolean z12 = this.streamErrorOnInvalidHttpMessaging_;
        if (z12) {
            codedOutputStream.n0(12, z12);
        }
        for (int i9 = 0; i9 < this.customSettingsParameters_.size(); i9++) {
            codedOutputStream.L0(13, this.customSettingsParameters_.get(i9));
        }
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            codedOutputStream.L0(14, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        if (this.connectionKeepalive_ != null) {
            codedOutputStream.L0(15, getConnectionKeepalive());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Http2ProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Http2ProtocolOptions http2ProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().j0(http2ProtocolOptions);
    }

    public static Http2ProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Http2ProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Http2ProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http2ProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Http2ProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static Http2ProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Http2ProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
        this.customSettingsParameters_ = Collections.emptyList();
    }

    public static Http2ProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Http2ProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Http2ProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Http2ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        switch (L) {
                            case 0:
                                break;
                            case 10:
                                UInt32Value uInt32Value = this.hpackTableSize_;
                                UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.hpackTableSize_ = uInt32Value2;
                                if (builder != null) {
                                    builder.g0(uInt32Value2);
                                    this.hpackTableSize_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 18:
                                UInt32Value uInt32Value3 = this.maxConcurrentStreams_;
                                UInt32Value.b builder2 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxConcurrentStreams_ = uInt32Value4;
                                if (builder2 != null) {
                                    builder2.g0(uInt32Value4);
                                    this.maxConcurrentStreams_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 26:
                                UInt32Value uInt32Value5 = this.initialStreamWindowSize_;
                                UInt32Value.b builder3 = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                                UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.initialStreamWindowSize_ = uInt32Value6;
                                if (builder3 != null) {
                                    builder3.g0(uInt32Value6);
                                    this.initialStreamWindowSize_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 34:
                                UInt32Value uInt32Value7 = this.initialConnectionWindowSize_;
                                UInt32Value.b builder4 = uInt32Value7 != null ? uInt32Value7.toBuilder() : null;
                                UInt32Value uInt32Value8 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.initialConnectionWindowSize_ = uInt32Value8;
                                if (builder4 != null) {
                                    builder4.g0(uInt32Value8);
                                    this.initialConnectionWindowSize_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 40:
                                this.allowConnect_ = pVar.r();
                                continue;
                            case 48:
                                this.allowMetadata_ = pVar.r();
                                continue;
                            case 58:
                                UInt32Value uInt32Value9 = this.maxOutboundFrames_;
                                UInt32Value.b builder5 = uInt32Value9 != null ? uInt32Value9.toBuilder() : null;
                                UInt32Value uInt32Value10 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxOutboundFrames_ = uInt32Value10;
                                if (builder5 != null) {
                                    builder5.g0(uInt32Value10);
                                    this.maxOutboundFrames_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 66:
                                UInt32Value uInt32Value11 = this.maxOutboundControlFrames_;
                                UInt32Value.b builder6 = uInt32Value11 != null ? uInt32Value11.toBuilder() : null;
                                UInt32Value uInt32Value12 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxOutboundControlFrames_ = uInt32Value12;
                                if (builder6 != null) {
                                    builder6.g0(uInt32Value12);
                                    this.maxOutboundControlFrames_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 74:
                                UInt32Value uInt32Value13 = this.maxConsecutiveInboundFramesWithEmptyPayload_;
                                UInt32Value.b builder7 = uInt32Value13 != null ? uInt32Value13.toBuilder() : null;
                                UInt32Value uInt32Value14 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxConsecutiveInboundFramesWithEmptyPayload_ = uInt32Value14;
                                if (builder7 != null) {
                                    builder7.g0(uInt32Value14);
                                    this.maxConsecutiveInboundFramesWithEmptyPayload_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case 82:
                                UInt32Value uInt32Value15 = this.maxInboundPriorityFramesPerStream_;
                                UInt32Value.b builder8 = uInt32Value15 != null ? uInt32Value15.toBuilder() : null;
                                UInt32Value uInt32Value16 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxInboundPriorityFramesPerStream_ = uInt32Value16;
                                if (builder8 != null) {
                                    builder8.g0(uInt32Value16);
                                    this.maxInboundPriorityFramesPerStream_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 90:
                                UInt32Value uInt32Value17 = this.maxInboundWindowUpdateFramesPerDataFrameSent_;
                                UInt32Value.b builder9 = uInt32Value17 != null ? uInt32Value17.toBuilder() : null;
                                UInt32Value uInt32Value18 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.maxInboundWindowUpdateFramesPerDataFrameSent_ = uInt32Value18;
                                if (builder9 != null) {
                                    builder9.g0(uInt32Value18);
                                    this.maxInboundWindowUpdateFramesPerDataFrameSent_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case 96:
                                this.streamErrorOnInvalidHttpMessaging_ = pVar.r();
                                continue;
                            case 106:
                                if (!(z11 & true)) {
                                    this.customSettingsParameters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.customSettingsParameters_.add((SettingsParameter) pVar.B(SettingsParameter.parser(), f0Var));
                                continue;
                            case 114:
                                BoolValue boolValue = this.overrideStreamErrorOnInvalidHttpMessage_;
                                BoolValue.b builder10 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.overrideStreamErrorOnInvalidHttpMessage_ = boolValue2;
                                if (builder10 != null) {
                                    builder10.d0(boolValue2);
                                    this.overrideStreamErrorOnInvalidHttpMessage_ = builder10.I();
                                } else {
                                    continue;
                                }
                            case 122:
                                KeepaliveSettings keepaliveSettings = this.connectionKeepalive_;
                                KeepaliveSettings.b builder11 = keepaliveSettings != null ? keepaliveSettings.toBuilder() : null;
                                KeepaliveSettings keepaliveSettings2 = (KeepaliveSettings) pVar.B(KeepaliveSettings.parser(), f0Var);
                                this.connectionKeepalive_ = keepaliveSettings2;
                                if (builder11 != null) {
                                    builder11.h0(keepaliveSettings2);
                                    this.connectionKeepalive_ = builder11.I();
                                } else {
                                    continue;
                                }
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
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
                    this.customSettingsParameters_ = Collections.unmodifiableList(this.customSettingsParameters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Http2ProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http2ProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Http2ProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http2ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
