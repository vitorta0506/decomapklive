package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.CidrRange;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FilterChainMatch extends GeneratedMessageV3 implements c {
    public static final int ADDRESS_SUFFIX_FIELD_NUMBER = 4;
    public static final int APPLICATION_PROTOCOLS_FIELD_NUMBER = 10;
    public static final int DESTINATION_PORT_FIELD_NUMBER = 8;
    public static final int DIRECT_SOURCE_PREFIX_RANGES_FIELD_NUMBER = 13;
    public static final int PREFIX_RANGES_FIELD_NUMBER = 3;
    public static final int SERVER_NAMES_FIELD_NUMBER = 11;
    public static final int SOURCE_PORTS_FIELD_NUMBER = 7;
    public static final int SOURCE_PREFIX_RANGES_FIELD_NUMBER = 6;
    public static final int SOURCE_TYPE_FIELD_NUMBER = 12;
    public static final int SUFFIX_LEN_FIELD_NUMBER = 5;
    public static final int TRANSPORT_PROTOCOL_FIELD_NUMBER = 9;
    private static final long serialVersionUID = 0;
    private volatile Object addressSuffix_;
    private z0 applicationProtocols_;
    private UInt32Value destinationPort_;
    private List<CidrRange> directSourcePrefixRanges_;
    private byte memoizedIsInitialized;
    private List<CidrRange> prefixRanges_;
    private z0 serverNames_;
    private int sourcePortsMemoizedSerializedSize;
    private u0.g sourcePorts_;
    private List<CidrRange> sourcePrefixRanges_;
    private int sourceType_;
    private UInt32Value suffixLen_;
    private volatile Object transportProtocol_;
    private static final FilterChainMatch DEFAULT_INSTANCE = new FilterChainMatch();
    private static final e2<FilterChainMatch> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum ConnectionSourceType implements h2 {
        ANY(0),
        SAME_IP_OR_LOOPBACK(1),
        EXTERNAL(2),
        UNRECOGNIZED(-1);
        
        public static final int ANY_VALUE = 0;
        public static final int EXTERNAL_VALUE = 2;
        public static final int SAME_IP_OR_LOOPBACK_VALUE = 1;
        private final int value;
        private static final u0.d<ConnectionSourceType> internalValueMap = new a();
        private static final ConnectionSourceType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ConnectionSourceType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ConnectionSourceType a(int i9) {
                return ConnectionSourceType.forNumber(i9);
            }
        }

        ConnectionSourceType(int i9) {
            this.value = i9;
        }

        public static ConnectionSourceType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return EXTERNAL;
                }
                return SAME_IP_OR_LOOPBACK;
            }
            return ANY;
        }

        public static final Descriptors.d getDescriptor() {
            return FilterChainMatch.getDescriptor().k().get(0);
        }

        public static u0.d<ConnectionSourceType> internalGetValueMap() {
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
        public static ConnectionSourceType valueOf(int i9) {
            return forNumber(i9);
        }

        public static ConnectionSourceType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FilterChainMatch> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FilterChainMatch m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FilterChainMatch(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private int f48748e;

        /* renamed from: f  reason: collision with root package name */
        private UInt32Value f48749f;

        /* renamed from: g  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48750g;

        /* renamed from: h  reason: collision with root package name */
        private List<CidrRange> f48751h;

        /* renamed from: i  reason: collision with root package name */
        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> f48752i;

        /* renamed from: j  reason: collision with root package name */
        private Object f48753j;

        /* renamed from: k  reason: collision with root package name */
        private UInt32Value f48754k;

        /* renamed from: l  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48755l;

        /* renamed from: m  reason: collision with root package name */
        private List<CidrRange> f48756m;

        /* renamed from: n  reason: collision with root package name */
        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> f48757n;

        /* renamed from: o  reason: collision with root package name */
        private int f48758o;

        /* renamed from: p  reason: collision with root package name */
        private List<CidrRange> f48759p;

        /* renamed from: q  reason: collision with root package name */
        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> f48760q;

        /* renamed from: r  reason: collision with root package name */
        private u0.g f48761r;

        /* renamed from: s  reason: collision with root package name */
        private z0 f48762s;

        /* renamed from: t  reason: collision with root package name */
        private Object f48763t;

        /* renamed from: u  reason: collision with root package name */
        private z0 f48764u;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48748e & 32) == 0) {
                this.f48764u = new y0(this.f48764u);
                this.f48748e |= 32;
            }
        }

        private void b0() {
            if ((this.f48748e & 2) == 0) {
                this.f48756m = new ArrayList(this.f48756m);
                this.f48748e |= 2;
            }
        }

        private void d0() {
            if ((this.f48748e & 1) == 0) {
                this.f48751h = new ArrayList(this.f48751h);
                this.f48748e |= 1;
            }
        }

        private void e0() {
            if ((this.f48748e & 16) == 0) {
                this.f48762s = new y0(this.f48762s);
                this.f48748e |= 16;
            }
        }

        private void g0() {
            if ((this.f48748e & 8) == 0) {
                this.f48761r = GeneratedMessageV3.mutableCopy(this.f48761r);
                this.f48748e |= 8;
            }
        }

        private void h0() {
            if ((this.f48748e & 4) == 0) {
                this.f48759p = new ArrayList(this.f48759p);
                this.f48748e |= 4;
            }
        }

        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> j0() {
            if (this.f48757n == null) {
                this.f48757n = new l2<>(this.f48756m, (this.f48748e & 2) != 0, H(), O());
                this.f48756m = null;
            }
            return this.f48757n;
        }

        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> k0() {
            if (this.f48752i == null) {
                this.f48752i = new l2<>(this.f48751h, (this.f48748e & 1) != 0, H(), O());
                this.f48751h = null;
            }
            return this.f48752i;
        }

        private l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> l0() {
            if (this.f48760q == null) {
                this.f48760q = new l2<>(this.f48759p, (this.f48748e & 4) != 0, H(), O());
                this.f48759p = null;
            }
            return this.f48760q;
        }

        private void m0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                k0();
                j0();
                l0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f48840d.d(FilterChainMatch.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FilterChainMatch build() {
            FilterChainMatch I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FilterChainMatch I() {
            FilterChainMatch filterChainMatch = new FilterChainMatch(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48750g;
            if (q2Var == null) {
                filterChainMatch.destinationPort_ = this.f48749f;
            } else {
                filterChainMatch.destinationPort_ = q2Var.b();
            }
            l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> l2Var = this.f48752i;
            if (l2Var == null) {
                if ((this.f48748e & 1) != 0) {
                    this.f48751h = Collections.unmodifiableList(this.f48751h);
                    this.f48748e &= -2;
                }
                filterChainMatch.prefixRanges_ = this.f48751h;
            } else {
                filterChainMatch.prefixRanges_ = l2Var.e();
            }
            filterChainMatch.addressSuffix_ = this.f48753j;
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f48755l;
            if (q2Var2 == null) {
                filterChainMatch.suffixLen_ = this.f48754k;
            } else {
                filterChainMatch.suffixLen_ = q2Var2.b();
            }
            l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> l2Var2 = this.f48757n;
            if (l2Var2 == null) {
                if ((this.f48748e & 2) != 0) {
                    this.f48756m = Collections.unmodifiableList(this.f48756m);
                    this.f48748e &= -3;
                }
                filterChainMatch.directSourcePrefixRanges_ = this.f48756m;
            } else {
                filterChainMatch.directSourcePrefixRanges_ = l2Var2.e();
            }
            filterChainMatch.sourceType_ = this.f48758o;
            l2<CidrRange, CidrRange.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> l2Var3 = this.f48760q;
            if (l2Var3 == null) {
                if ((this.f48748e & 4) != 0) {
                    this.f48759p = Collections.unmodifiableList(this.f48759p);
                    this.f48748e &= -5;
                }
                filterChainMatch.sourcePrefixRanges_ = this.f48759p;
            } else {
                filterChainMatch.sourcePrefixRanges_ = l2Var3.e();
            }
            if ((this.f48748e & 8) != 0) {
                this.f48761r.C();
                this.f48748e &= -9;
            }
            filterChainMatch.sourcePorts_ = this.f48761r;
            if ((this.f48748e & 16) != 0) {
                this.f48762s = this.f48762s.V0();
                this.f48748e &= -17;
            }
            filterChainMatch.serverNames_ = this.f48762s;
            filterChainMatch.transportProtocol_ = this.f48763t;
            if ((this.f48748e & 32) != 0) {
                this.f48764u = this.f48764u.V0();
                this.f48748e &= -33;
            }
            filterChainMatch.applicationProtocols_ = this.f48764u;
            Q();
            return filterChainMatch;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f48839c;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: i0 */
        public FilterChainMatch getDefaultInstanceForType() {
            return FilterChainMatch.getDefaultInstance();
        }

        public b n0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48750g;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48749f;
                if (uInt32Value2 != null) {
                    this.f48749f = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48749f = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.r0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.r0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof FilterChainMatch) {
                return r0((FilterChainMatch) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b r0(FilterChainMatch filterChainMatch) {
            if (filterChainMatch == FilterChainMatch.getDefaultInstance()) {
                return this;
            }
            if (filterChainMatch.hasDestinationPort()) {
                n0(filterChainMatch.getDestinationPort());
            }
            if (this.f48752i == null) {
                if (!filterChainMatch.prefixRanges_.isEmpty()) {
                    if (this.f48751h.isEmpty()) {
                        this.f48751h = filterChainMatch.prefixRanges_;
                        this.f48748e &= -2;
                    } else {
                        d0();
                        this.f48751h.addAll(filterChainMatch.prefixRanges_);
                    }
                    R();
                }
            } else if (!filterChainMatch.prefixRanges_.isEmpty()) {
                if (this.f48752i.k()) {
                    this.f48752i.f();
                    this.f48752i = null;
                    this.f48751h = filterChainMatch.prefixRanges_;
                    this.f48748e &= -2;
                    this.f48752i = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.f48752i.b(filterChainMatch.prefixRanges_);
                }
            }
            if (!filterChainMatch.getAddressSuffix().isEmpty()) {
                this.f48753j = filterChainMatch.addressSuffix_;
                R();
            }
            if (filterChainMatch.hasSuffixLen()) {
                s0(filterChainMatch.getSuffixLen());
            }
            if (this.f48757n == null) {
                if (!filterChainMatch.directSourcePrefixRanges_.isEmpty()) {
                    if (this.f48756m.isEmpty()) {
                        this.f48756m = filterChainMatch.directSourcePrefixRanges_;
                        this.f48748e &= -3;
                    } else {
                        b0();
                        this.f48756m.addAll(filterChainMatch.directSourcePrefixRanges_);
                    }
                    R();
                }
            } else if (!filterChainMatch.directSourcePrefixRanges_.isEmpty()) {
                if (this.f48757n.k()) {
                    this.f48757n.f();
                    this.f48757n = null;
                    this.f48756m = filterChainMatch.directSourcePrefixRanges_;
                    this.f48748e &= -3;
                    this.f48757n = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f48757n.b(filterChainMatch.directSourcePrefixRanges_);
                }
            }
            if (filterChainMatch.sourceType_ != 0) {
                v0(filterChainMatch.getSourceTypeValue());
            }
            if (this.f48760q == null) {
                if (!filterChainMatch.sourcePrefixRanges_.isEmpty()) {
                    if (this.f48759p.isEmpty()) {
                        this.f48759p = filterChainMatch.sourcePrefixRanges_;
                        this.f48748e &= -5;
                    } else {
                        h0();
                        this.f48759p.addAll(filterChainMatch.sourcePrefixRanges_);
                    }
                    R();
                }
            } else if (!filterChainMatch.sourcePrefixRanges_.isEmpty()) {
                if (this.f48760q.k()) {
                    this.f48760q.f();
                    this.f48760q = null;
                    this.f48759p = filterChainMatch.sourcePrefixRanges_;
                    this.f48748e &= -5;
                    this.f48760q = GeneratedMessageV3.alwaysUseFieldBuilders ? l0() : null;
                } else {
                    this.f48760q.b(filterChainMatch.sourcePrefixRanges_);
                }
            }
            if (!filterChainMatch.sourcePorts_.isEmpty()) {
                if (this.f48761r.isEmpty()) {
                    this.f48761r = filterChainMatch.sourcePorts_;
                    this.f48748e &= -9;
                } else {
                    g0();
                    this.f48761r.addAll(filterChainMatch.sourcePorts_);
                }
                R();
            }
            if (!filterChainMatch.serverNames_.isEmpty()) {
                if (this.f48762s.isEmpty()) {
                    this.f48762s = filterChainMatch.serverNames_;
                    this.f48748e &= -17;
                } else {
                    e0();
                    this.f48762s.addAll(filterChainMatch.serverNames_);
                }
                R();
            }
            if (!filterChainMatch.getTransportProtocol().isEmpty()) {
                this.f48763t = filterChainMatch.transportProtocol_;
                R();
            }
            if (!filterChainMatch.applicationProtocols_.isEmpty()) {
                if (this.f48764u.isEmpty()) {
                    this.f48764u = filterChainMatch.applicationProtocols_;
                    this.f48748e &= -33;
                } else {
                    a0();
                    this.f48764u.addAll(filterChainMatch.applicationProtocols_);
                }
                R();
            }
            z(((GeneratedMessageV3) filterChainMatch).unknownFields);
            R();
            return this;
        }

        public b s0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48755l;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48754k;
                if (uInt32Value2 != null) {
                    this.f48754k = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48754k = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b v0(int i9) {
            this.f48758o = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f48751h = Collections.emptyList();
            this.f48753j = "";
            this.f48756m = Collections.emptyList();
            this.f48758o = 0;
            this.f48759p = Collections.emptyList();
            this.f48761r = FilterChainMatch.access$2200();
            z0 z0Var = y0.f15344d;
            this.f48762s = z0Var;
            this.f48763t = "";
            this.f48764u = z0Var;
            m0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48751h = Collections.emptyList();
            this.f48753j = "";
            this.f48756m = Collections.emptyList();
            this.f48758o = 0;
            this.f48759p = Collections.emptyList();
            this.f48761r = FilterChainMatch.access$2200();
            z0 z0Var = y0.f15344d;
            this.f48762s = z0Var;
            this.f48763t = "";
            this.f48764u = z0Var;
            m0();
        }
    }

    /* synthetic */ FilterChainMatch(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$2200() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static FilterChainMatch getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f48839c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FilterChainMatch parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FilterChainMatch parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FilterChainMatch> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FilterChainMatch)) {
            return super.equals(obj);
        }
        FilterChainMatch filterChainMatch = (FilterChainMatch) obj;
        if (hasDestinationPort() != filterChainMatch.hasDestinationPort()) {
            return false;
        }
        if ((!hasDestinationPort() || getDestinationPort().equals(filterChainMatch.getDestinationPort())) && getPrefixRangesList().equals(filterChainMatch.getPrefixRangesList()) && getAddressSuffix().equals(filterChainMatch.getAddressSuffix()) && hasSuffixLen() == filterChainMatch.hasSuffixLen()) {
            return (!hasSuffixLen() || getSuffixLen().equals(filterChainMatch.getSuffixLen())) && getDirectSourcePrefixRangesList().equals(filterChainMatch.getDirectSourcePrefixRangesList()) && this.sourceType_ == filterChainMatch.sourceType_ && getSourcePrefixRangesList().equals(filterChainMatch.getSourcePrefixRangesList()) && getSourcePortsList().equals(filterChainMatch.getSourcePortsList()) && m1622getServerNamesList().equals(filterChainMatch.m1622getServerNamesList()) && getTransportProtocol().equals(filterChainMatch.getTransportProtocol()) && m1621getApplicationProtocolsList().equals(filterChainMatch.m1621getApplicationProtocolsList()) && this.unknownFields.equals(filterChainMatch.unknownFields);
        }
        return false;
    }

    public String getAddressSuffix() {
        Object obj = this.addressSuffix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.addressSuffix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getAddressSuffixBytes() {
        Object obj = this.addressSuffix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.addressSuffix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getApplicationProtocols(int i9) {
        return this.applicationProtocols_.get(i9);
    }

    public ByteString getApplicationProtocolsBytes(int i9) {
        return this.applicationProtocols_.j0(i9);
    }

    public int getApplicationProtocolsCount() {
        return this.applicationProtocols_.size();
    }

    public UInt32Value getDestinationPort() {
        UInt32Value uInt32Value = this.destinationPort_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getDestinationPortOrBuilder() {
        return getDestinationPort();
    }

    public CidrRange getDirectSourcePrefixRanges(int i9) {
        return this.directSourcePrefixRanges_.get(i9);
    }

    public int getDirectSourcePrefixRangesCount() {
        return this.directSourcePrefixRanges_.size();
    }

    public List<CidrRange> getDirectSourcePrefixRangesList() {
        return this.directSourcePrefixRanges_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j getDirectSourcePrefixRangesOrBuilder(int i9) {
        return this.directSourcePrefixRanges_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> getDirectSourcePrefixRangesOrBuilderList() {
        return this.directSourcePrefixRanges_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FilterChainMatch> getParserForType() {
        return PARSER;
    }

    public CidrRange getPrefixRanges(int i9) {
        return this.prefixRanges_.get(i9);
    }

    public int getPrefixRangesCount() {
        return this.prefixRanges_.size();
    }

    public List<CidrRange> getPrefixRangesList() {
        return this.prefixRanges_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j getPrefixRangesOrBuilder(int i9) {
        return this.prefixRanges_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> getPrefixRangesOrBuilderList() {
        return this.prefixRanges_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.prefixRanges_.size(); i11++) {
            i10 += CodedOutputStream.G(3, this.prefixRanges_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.addressSuffix_)) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.addressSuffix_);
        }
        if (this.suffixLen_ != null) {
            i10 += CodedOutputStream.G(5, getSuffixLen());
        }
        for (int i12 = 0; i12 < this.sourcePrefixRanges_.size(); i12++) {
            i10 += CodedOutputStream.G(6, this.sourcePrefixRanges_.get(i12));
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.sourcePorts_.size(); i14++) {
            i13 += CodedOutputStream.Z(this.sourcePorts_.getInt(i14));
        }
        int i15 = i10 + i13;
        if (!getSourcePortsList().isEmpty()) {
            i15 = i15 + 1 + CodedOutputStream.y(i13);
        }
        this.sourcePortsMemoizedSerializedSize = i13;
        if (this.destinationPort_ != null) {
            i15 += CodedOutputStream.G(8, getDestinationPort());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.transportProtocol_)) {
            i15 += GeneratedMessageV3.computeStringSize(9, this.transportProtocol_);
        }
        int i16 = 0;
        for (int i17 = 0; i17 < this.applicationProtocols_.size(); i17++) {
            i16 += GeneratedMessageV3.computeStringSizeNoTag(this.applicationProtocols_.c1(i17));
        }
        int size = i15 + i16 + (m1621getApplicationProtocolsList().size() * 1);
        int i18 = 0;
        for (int i19 = 0; i19 < this.serverNames_.size(); i19++) {
            i18 += GeneratedMessageV3.computeStringSizeNoTag(this.serverNames_.c1(i19));
        }
        int size2 = size + i18 + (m1622getServerNamesList().size() * 1);
        if (this.sourceType_ != ConnectionSourceType.ANY.getNumber()) {
            size2 += CodedOutputStream.l(12, this.sourceType_);
        }
        for (int i20 = 0; i20 < this.directSourcePrefixRanges_.size(); i20++) {
            size2 += CodedOutputStream.G(13, this.directSourcePrefixRanges_.get(i20));
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getServerNames(int i9) {
        return this.serverNames_.get(i9);
    }

    public ByteString getServerNamesBytes(int i9) {
        return this.serverNames_.j0(i9);
    }

    public int getServerNamesCount() {
        return this.serverNames_.size();
    }

    public int getSourcePorts(int i9) {
        return this.sourcePorts_.getInt(i9);
    }

    public int getSourcePortsCount() {
        return this.sourcePorts_.size();
    }

    public List<Integer> getSourcePortsList() {
        return this.sourcePorts_;
    }

    public CidrRange getSourcePrefixRanges(int i9) {
        return this.sourcePrefixRanges_.get(i9);
    }

    public int getSourcePrefixRangesCount() {
        return this.sourcePrefixRanges_.size();
    }

    public List<CidrRange> getSourcePrefixRangesList() {
        return this.sourcePrefixRanges_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j getSourcePrefixRangesOrBuilder(int i9) {
        return this.sourcePrefixRanges_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j> getSourcePrefixRangesOrBuilderList() {
        return this.sourcePrefixRanges_;
    }

    public ConnectionSourceType getSourceType() {
        ConnectionSourceType valueOf = ConnectionSourceType.valueOf(this.sourceType_);
        return valueOf == null ? ConnectionSourceType.UNRECOGNIZED : valueOf;
    }

    public int getSourceTypeValue() {
        return this.sourceType_;
    }

    public UInt32Value getSuffixLen() {
        UInt32Value uInt32Value = this.suffixLen_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getSuffixLenOrBuilder() {
        return getSuffixLen();
    }

    public String getTransportProtocol() {
        Object obj = this.transportProtocol_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.transportProtocol_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTransportProtocolBytes() {
        Object obj = this.transportProtocol_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.transportProtocol_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDestinationPort() {
        return this.destinationPort_ != null;
    }

    public boolean hasSuffixLen() {
        return this.suffixLen_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasDestinationPort()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getDestinationPort().hashCode();
        }
        if (getPrefixRangesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPrefixRangesList().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 4) * 53) + getAddressSuffix().hashCode();
        if (hasSuffixLen()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getSuffixLen().hashCode();
        }
        if (getDirectSourcePrefixRangesCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 13) * 53) + getDirectSourcePrefixRangesList().hashCode();
        }
        int i10 = (((hashCode2 * 37) + 12) * 53) + this.sourceType_;
        if (getSourcePrefixRangesCount() > 0) {
            i10 = (((i10 * 37) + 6) * 53) + getSourcePrefixRangesList().hashCode();
        }
        if (getSourcePortsCount() > 0) {
            i10 = (((i10 * 37) + 7) * 53) + getSourcePortsList().hashCode();
        }
        if (getServerNamesCount() > 0) {
            i10 = (((i10 * 37) + 11) * 53) + m1622getServerNamesList().hashCode();
        }
        int hashCode3 = (((i10 * 37) + 9) * 53) + getTransportProtocol().hashCode();
        if (getApplicationProtocolsCount() > 0) {
            hashCode3 = (((hashCode3 * 37) + 10) * 53) + m1621getApplicationProtocolsList().hashCode();
        }
        int hashCode4 = (hashCode3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode4;
        return hashCode4;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f48840d.d(FilterChainMatch.class, b.class);
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
        return new FilterChainMatch();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        for (int i9 = 0; i9 < this.prefixRanges_.size(); i9++) {
            codedOutputStream.L0(3, this.prefixRanges_.get(i9));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.addressSuffix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.addressSuffix_);
        }
        if (this.suffixLen_ != null) {
            codedOutputStream.L0(5, getSuffixLen());
        }
        for (int i10 = 0; i10 < this.sourcePrefixRanges_.size(); i10++) {
            codedOutputStream.L0(6, this.sourcePrefixRanges_.get(i10));
        }
        if (getSourcePortsList().size() > 0) {
            codedOutputStream.d1(58);
            codedOutputStream.d1(this.sourcePortsMemoizedSerializedSize);
        }
        for (int i11 = 0; i11 < this.sourcePorts_.size(); i11++) {
            codedOutputStream.d1(this.sourcePorts_.getInt(i11));
        }
        if (this.destinationPort_ != null) {
            codedOutputStream.L0(8, getDestinationPort());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.transportProtocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.transportProtocol_);
        }
        for (int i12 = 0; i12 < this.applicationProtocols_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.applicationProtocols_.c1(i12));
        }
        for (int i13 = 0; i13 < this.serverNames_.size(); i13++) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.serverNames_.c1(i13));
        }
        if (this.sourceType_ != ConnectionSourceType.ANY.getNumber()) {
            codedOutputStream.v0(12, this.sourceType_);
        }
        for (int i14 = 0; i14 < this.directSourcePrefixRanges_.size(); i14++) {
            codedOutputStream.L0(13, this.directSourcePrefixRanges_.get(i14));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FilterChainMatch(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(FilterChainMatch filterChainMatch) {
        return DEFAULT_INSTANCE.toBuilder().r0(filterChainMatch);
    }

    public static FilterChainMatch parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getApplicationProtocolsList */
    public i2 m1621getApplicationProtocolsList() {
        return this.applicationProtocols_;
    }

    /* renamed from: getServerNamesList */
    public i2 m1622getServerNamesList() {
        return this.serverNames_;
    }

    private FilterChainMatch(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.sourcePortsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FilterChainMatch parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChainMatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FilterChainMatch getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).r0(this);
    }

    public static FilterChainMatch parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static FilterChainMatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private FilterChainMatch() {
        this.sourcePortsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.prefixRanges_ = Collections.emptyList();
        this.addressSuffix_ = "";
        this.directSourcePrefixRanges_ = Collections.emptyList();
        this.sourceType_ = 0;
        this.sourcePrefixRanges_ = Collections.emptyList();
        this.sourcePorts_ = GeneratedMessageV3.emptyIntList();
        z0 z0Var = y0.f15344d;
        this.serverNames_ = z0Var;
        this.transportProtocol_ = "";
        this.applicationProtocols_ = z0Var;
    }

    public static FilterChainMatch parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FilterChainMatch parseFrom(InputStream inputStream) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static FilterChainMatch parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChainMatch parseFrom(p pVar) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FilterChainMatch parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FilterChainMatch) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private FilterChainMatch(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        UInt32Value.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 26:
                            if (!(z11 & true)) {
                                this.prefixRanges_ = new ArrayList();
                                z11 |= true;
                            }
                            this.prefixRanges_.add((CidrRange) pVar.B(CidrRange.parser(), f0Var));
                            continue;
                        case 34:
                            this.addressSuffix_ = pVar.K();
                            continue;
                        case 42:
                            UInt32Value uInt32Value = this.suffixLen_;
                            builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.suffixLen_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.suffixLen_ = builder.I();
                            } else {
                                continue;
                            }
                        case 50:
                            if (!(z11 & true)) {
                                this.sourcePrefixRanges_ = new ArrayList();
                                z11 |= true;
                            }
                            this.sourcePrefixRanges_.add((CidrRange) pVar.B(CidrRange.parser(), f0Var));
                            continue;
                        case 56:
                            if (!(z11 & true)) {
                                this.sourcePorts_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            this.sourcePorts_.D0(pVar.M());
                            continue;
                        case 58:
                            int q10 = pVar.q(pVar.D());
                            if (!(z11 & true) && pVar.e() > 0) {
                                this.sourcePorts_ = GeneratedMessageV3.newIntList();
                                z11 |= true;
                            }
                            while (pVar.e() > 0) {
                                this.sourcePorts_.D0(pVar.M());
                            }
                            pVar.p(q10);
                            continue;
                            break;
                        case 66:
                            UInt32Value uInt32Value3 = this.destinationPort_;
                            builder = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.destinationPort_ = uInt32Value4;
                            if (builder != null) {
                                builder.g0(uInt32Value4);
                                this.destinationPort_ = builder.I();
                            } else {
                                continue;
                            }
                        case 74:
                            this.transportProtocol_ = pVar.K();
                            continue;
                        case 82:
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.applicationProtocols_ = new y0();
                                z11 |= true;
                            }
                            this.applicationProtocols_.add(K);
                            continue;
                        case 90:
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.serverNames_ = new y0();
                                z11 |= true;
                            }
                            this.serverNames_.add(K2);
                            continue;
                        case 96:
                            this.sourceType_ = pVar.u();
                            continue;
                        case 106:
                            if (!(z11 & true)) {
                                this.directSourcePrefixRanges_ = new ArrayList();
                                z11 |= true;
                            }
                            this.directSourcePrefixRanges_.add((CidrRange) pVar.B(CidrRange.parser(), f0Var));
                            continue;
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
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.prefixRanges_ = Collections.unmodifiableList(this.prefixRanges_);
                }
                if (z11 & true) {
                    this.sourcePrefixRanges_ = Collections.unmodifiableList(this.sourcePrefixRanges_);
                }
                if (z11 & true) {
                    this.sourcePorts_.C();
                }
                if (z11 & true) {
                    this.applicationProtocols_ = this.applicationProtocols_.V0();
                }
                if (z11 & true) {
                    this.serverNames_ = this.serverNames_.V0();
                }
                if (z11 & true) {
                    this.directSourcePrefixRanges_ = Collections.unmodifiableList(this.directSourcePrefixRanges_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
