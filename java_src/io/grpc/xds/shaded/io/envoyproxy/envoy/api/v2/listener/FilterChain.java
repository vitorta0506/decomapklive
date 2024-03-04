package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.DownstreamTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.TransportSocket;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.r0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.Filter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChainMatch;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FilterChain extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b {
    public static final int FILTERS_FIELD_NUMBER = 3;
    public static final int FILTER_CHAIN_MATCH_FIELD_NUMBER = 1;
    public static final int METADATA_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 7;
    public static final int TLS_CONTEXT_FIELD_NUMBER = 2;
    public static final int TRANSPORT_SOCKET_FIELD_NUMBER = 6;
    public static final int USE_PROXY_PROTO_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private FilterChainMatch filterChainMatch_;
    private List<Filter> filters_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private DownstreamTlsContext tlsContext_;
    private TransportSocket transportSocket_;
    private BoolValue useProxyProto_;
    private static final FilterChain DEFAULT_INSTANCE = new FilterChain();
    private static final e2<FilterChain> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FilterChain> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FilterChain m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FilterChain(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b {

        /* renamed from: e  reason: collision with root package name */
        private int f46924e;

        /* renamed from: f  reason: collision with root package name */
        private FilterChainMatch f46925f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.a> f46926g;

        /* renamed from: h  reason: collision with root package name */
        private DownstreamTlsContext f46927h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DownstreamTlsContext, DownstreamTlsContext.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.d> f46928i;

        /* renamed from: j  reason: collision with root package name */
        private List<Filter> f46929j;

        /* renamed from: k  reason: collision with root package name */
        private l2<Filter, Filter.c, c> f46930k;

        /* renamed from: l  reason: collision with root package name */
        private BoolValue f46931l;

        /* renamed from: m  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f46932m;

        /* renamed from: n  reason: collision with root package name */
        private Metadata f46933n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Metadata, Metadata.b, d0> f46934o;

        /* renamed from: p  reason: collision with root package name */
        private TransportSocket f46935p;

        /* renamed from: q  reason: collision with root package name */
        private q2<TransportSocket, TransportSocket.c, r0> f46936q;

        /* renamed from: r  reason: collision with root package name */
        private Object f46937r;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46924e & 1) == 0) {
                this.f46929j = new ArrayList(this.f46929j);
                this.f46924e |= 1;
            }
        }

        private l2<Filter, Filter.c, c> d0() {
            if (this.f46930k == null) {
                this.f46930k = new l2<>(this.f46929j, (this.f46924e & 1) != 0, H(), O());
                this.f46929j = null;
            }
            return this.f46930k;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f46982f.d(FilterChain.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FilterChain build() {
            FilterChain I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FilterChain I() {
            FilterChain filterChain = new FilterChain(this, (a) null);
            q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.a> q2Var = this.f46926g;
            if (q2Var == null) {
                filterChain.filterChainMatch_ = this.f46925f;
            } else {
                filterChain.filterChainMatch_ = q2Var.b();
            }
            q2<DownstreamTlsContext, DownstreamTlsContext.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.d> q2Var2 = this.f46928i;
            if (q2Var2 == null) {
                filterChain.tlsContext_ = this.f46927h;
            } else {
                filterChain.tlsContext_ = q2Var2.b();
            }
            l2<Filter, Filter.c, c> l2Var = this.f46930k;
            if (l2Var == null) {
                if ((this.f46924e & 1) != 0) {
                    this.f46929j = Collections.unmodifiableList(this.f46929j);
                    this.f46924e &= -2;
                }
                filterChain.filters_ = this.f46929j;
            } else {
                filterChain.filters_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var3 = this.f46932m;
            if (q2Var3 == null) {
                filterChain.useProxyProto_ = this.f46931l;
            } else {
                filterChain.useProxyProto_ = q2Var3.b();
            }
            q2<Metadata, Metadata.b, d0> q2Var4 = this.f46934o;
            if (q2Var4 == null) {
                filterChain.metadata_ = this.f46933n;
            } else {
                filterChain.metadata_ = q2Var4.b();
            }
            q2<TransportSocket, TransportSocket.c, r0> q2Var5 = this.f46936q;
            if (q2Var5 == null) {
                filterChain.transportSocket_ = this.f46935p;
            } else {
                filterChain.transportSocket_ = q2Var5.b();
            }
            filterChain.name_ = this.f46937r;
            Q();
            return filterChain;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public FilterChain getDefaultInstanceForType() {
            return FilterChain.getDefaultInstance();
        }

        public b g0(FilterChainMatch filterChainMatch) {
            q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.a> q2Var = this.f46926g;
            if (q2Var == null) {
                FilterChainMatch filterChainMatch2 = this.f46925f;
                if (filterChainMatch2 != null) {
                    this.f46925f = FilterChainMatch.newBuilder(filterChainMatch2).o0(filterChainMatch).I();
                } else {
                    this.f46925f = filterChainMatch;
                }
                R();
            } else {
                q2Var.e(filterChainMatch);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f46981e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof FilterChain) {
                return j0((FilterChain) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(FilterChain filterChain) {
            if (filterChain == FilterChain.getDefaultInstance()) {
                return this;
            }
            if (filterChain.hasFilterChainMatch()) {
                g0(filterChain.getFilterChainMatch());
            }
            if (filterChain.hasTlsContext()) {
                l0(filterChain.getTlsContext());
            }
            if (this.f46930k == null) {
                if (!filterChain.filters_.isEmpty()) {
                    if (this.f46929j.isEmpty()) {
                        this.f46929j = filterChain.filters_;
                        this.f46924e &= -2;
                    } else {
                        a0();
                        this.f46929j.addAll(filterChain.filters_);
                    }
                    R();
                }
            } else if (!filterChain.filters_.isEmpty()) {
                if (this.f46930k.k()) {
                    this.f46930k.f();
                    this.f46930k = null;
                    this.f46929j = filterChain.filters_;
                    this.f46924e &= -2;
                    this.f46930k = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f46930k.b(filterChain.filters_);
                }
            }
            if (filterChain.hasUseProxyProto()) {
                o0(filterChain.getUseProxyProto());
            }
            if (filterChain.hasMetadata()) {
                k0(filterChain.getMetadata());
            }
            if (filterChain.hasTransportSocket()) {
                m0(filterChain.getTransportSocket());
            }
            if (!filterChain.getName().isEmpty()) {
                this.f46937r = filterChain.name_;
                R();
            }
            z(((GeneratedMessageV3) filterChain).unknownFields);
            R();
            return this;
        }

        public b k0(Metadata metadata) {
            q2<Metadata, Metadata.b, d0> q2Var = this.f46934o;
            if (q2Var == null) {
                Metadata metadata2 = this.f46933n;
                if (metadata2 != null) {
                    this.f46933n = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.f46933n = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        @Deprecated
        public b l0(DownstreamTlsContext downstreamTlsContext) {
            q2<DownstreamTlsContext, DownstreamTlsContext.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.d> q2Var = this.f46928i;
            if (q2Var == null) {
                DownstreamTlsContext downstreamTlsContext2 = this.f46927h;
                if (downstreamTlsContext2 != null) {
                    this.f46927h = DownstreamTlsContext.newBuilder(downstreamTlsContext2).h0(downstreamTlsContext).I();
                } else {
                    this.f46927h = downstreamTlsContext;
                }
                R();
            } else {
                q2Var.e(downstreamTlsContext);
            }
            return this;
        }

        public b m0(TransportSocket transportSocket) {
            q2<TransportSocket, TransportSocket.c, r0> q2Var = this.f46936q;
            if (q2Var == null) {
                TransportSocket transportSocket2 = this.f46935p;
                if (transportSocket2 != null) {
                    this.f46935p = TransportSocket.newBuilder(transportSocket2).h0(transportSocket).I();
                } else {
                    this.f46935p = transportSocket;
                }
                R();
            } else {
                q2Var.e(transportSocket);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b o0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f46932m;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46931l;
                if (boolValue2 != null) {
                    this.f46931l = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46931l = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46929j = Collections.emptyList();
            this.f46937r = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46929j = Collections.emptyList();
            this.f46937r = "";
            e0();
        }
    }

    /* synthetic */ FilterChain(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FilterChain getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f46981e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FilterChain parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FilterChain parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FilterChain> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FilterChain)) {
            return super.equals(obj);
        }
        FilterChain filterChain = (FilterChain) obj;
        if (hasFilterChainMatch() != filterChain.hasFilterChainMatch()) {
            return false;
        }
        if ((!hasFilterChainMatch() || getFilterChainMatch().equals(filterChain.getFilterChainMatch())) && hasTlsContext() == filterChain.hasTlsContext()) {
            if ((!hasTlsContext() || getTlsContext().equals(filterChain.getTlsContext())) && getFiltersList().equals(filterChain.getFiltersList()) && hasUseProxyProto() == filterChain.hasUseProxyProto()) {
                if ((!hasUseProxyProto() || getUseProxyProto().equals(filterChain.getUseProxyProto())) && hasMetadata() == filterChain.hasMetadata()) {
                    if ((!hasMetadata() || getMetadata().equals(filterChain.getMetadata())) && hasTransportSocket() == filterChain.hasTransportSocket()) {
                        return (!hasTransportSocket() || getTransportSocket().equals(filterChain.getTransportSocket())) && getName().equals(filterChain.getName()) && this.unknownFields.equals(filterChain.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public FilterChainMatch getFilterChainMatch() {
        FilterChainMatch filterChainMatch = this.filterChainMatch_;
        return filterChainMatch == null ? FilterChainMatch.getDefaultInstance() : filterChainMatch;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.a getFilterChainMatchOrBuilder() {
        return getFilterChainMatch();
    }

    public Filter getFilters(int i9) {
        return this.filters_.get(i9);
    }

    public int getFiltersCount() {
        return this.filters_.size();
    }

    public List<Filter> getFiltersList() {
        return this.filters_;
    }

    public c getFiltersOrBuilder(int i9) {
        return this.filters_.get(i9);
    }

    public List<? extends c> getFiltersOrBuilderList() {
        return this.filters_;
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public d0 getMetadataOrBuilder() {
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
    public e2<FilterChain> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.filterChainMatch_ != null ? CodedOutputStream.G(1, getFilterChainMatch()) + 0 : 0;
        if (this.tlsContext_ != null) {
            G += CodedOutputStream.G(2, getTlsContext());
        }
        for (int i10 = 0; i10 < this.filters_.size(); i10++) {
            G += CodedOutputStream.G(3, this.filters_.get(i10));
        }
        if (this.useProxyProto_ != null) {
            G += CodedOutputStream.G(4, getUseProxyProto());
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(5, getMetadata());
        }
        if (this.transportSocket_ != null) {
            G += CodedOutputStream.G(6, getTransportSocket());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            G += GeneratedMessageV3.computeStringSize(7, this.name_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public DownstreamTlsContext getTlsContext() {
        DownstreamTlsContext downstreamTlsContext = this.tlsContext_;
        return downstreamTlsContext == null ? DownstreamTlsContext.getDefaultInstance() : downstreamTlsContext;
    }

    @Deprecated
    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth.d getTlsContextOrBuilder() {
        return getTlsContext();
    }

    public TransportSocket getTransportSocket() {
        TransportSocket transportSocket = this.transportSocket_;
        return transportSocket == null ? TransportSocket.getDefaultInstance() : transportSocket;
    }

    public r0 getTransportSocketOrBuilder() {
        return getTransportSocket();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BoolValue getUseProxyProto() {
        BoolValue boolValue = this.useProxyProto_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getUseProxyProtoOrBuilder() {
        return getUseProxyProto();
    }

    public boolean hasFilterChainMatch() {
        return this.filterChainMatch_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    @Deprecated
    public boolean hasTlsContext() {
        return this.tlsContext_ != null;
    }

    public boolean hasTransportSocket() {
        return this.transportSocket_ != null;
    }

    public boolean hasUseProxyProto() {
        return this.useProxyProto_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasFilterChainMatch()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getFilterChainMatch().hashCode();
        }
        if (hasTlsContext()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getTlsContext().hashCode();
        }
        if (getFiltersCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getFiltersList().hashCode();
        }
        if (hasUseProxyProto()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getUseProxyProto().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getMetadata().hashCode();
        }
        if (hasTransportSocket()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getTransportSocket().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + getName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f46982f.d(FilterChain.class, b.class);
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
        return new FilterChain();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.filterChainMatch_ != null) {
            codedOutputStream.L0(1, getFilterChainMatch());
        }
        if (this.tlsContext_ != null) {
            codedOutputStream.L0(2, getTlsContext());
        }
        for (int i9 = 0; i9 < this.filters_.size(); i9++) {
            codedOutputStream.L0(3, this.filters_.get(i9));
        }
        if (this.useProxyProto_ != null) {
            codedOutputStream.L0(4, getUseProxyProto());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(5, getMetadata());
        }
        if (this.transportSocket_ != null) {
            codedOutputStream.L0(6, getTransportSocket());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.name_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FilterChain(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(FilterChain filterChain) {
        return DEFAULT_INSTANCE.toBuilder().j0(filterChain);
    }

    public static FilterChain parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FilterChain(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FilterChain parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChain parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FilterChain getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static FilterChain parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private FilterChain() {
        this.memoizedIsInitialized = (byte) -1;
        this.filters_ = Collections.emptyList();
        this.name_ = "";
    }

    public static FilterChain parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static FilterChain parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FilterChain parseFrom(InputStream inputStream) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FilterChain(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            FilterChainMatch filterChainMatch = this.filterChainMatch_;
                            FilterChainMatch.b builder = filterChainMatch != null ? filterChainMatch.toBuilder() : null;
                            FilterChainMatch filterChainMatch2 = (FilterChainMatch) pVar.B(FilterChainMatch.parser(), f0Var);
                            this.filterChainMatch_ = filterChainMatch2;
                            if (builder != null) {
                                builder.o0(filterChainMatch2);
                                this.filterChainMatch_ = builder.I();
                            }
                        } else if (L == 18) {
                            DownstreamTlsContext downstreamTlsContext = this.tlsContext_;
                            DownstreamTlsContext.c builder2 = downstreamTlsContext != null ? downstreamTlsContext.toBuilder() : null;
                            DownstreamTlsContext downstreamTlsContext2 = (DownstreamTlsContext) pVar.B(DownstreamTlsContext.parser(), f0Var);
                            this.tlsContext_ = downstreamTlsContext2;
                            if (builder2 != null) {
                                builder2.h0(downstreamTlsContext2);
                                this.tlsContext_ = builder2.I();
                            }
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.filters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.filters_.add((Filter) pVar.B(Filter.parser(), f0Var));
                        } else if (L == 34) {
                            BoolValue boolValue = this.useProxyProto_;
                            BoolValue.b builder3 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.useProxyProto_ = boolValue2;
                            if (builder3 != null) {
                                builder3.d0(boolValue2);
                                this.useProxyProto_ = builder3.I();
                            }
                        } else if (L == 42) {
                            Metadata metadata = this.metadata_;
                            Metadata.b builder4 = metadata != null ? metadata.toBuilder() : null;
                            Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                            this.metadata_ = metadata2;
                            if (builder4 != null) {
                                builder4.i0(metadata2);
                                this.metadata_ = builder4.I();
                            }
                        } else if (L == 50) {
                            TransportSocket transportSocket = this.transportSocket_;
                            TransportSocket.c builder5 = transportSocket != null ? transportSocket.toBuilder() : null;
                            TransportSocket transportSocket2 = (TransportSocket) pVar.B(TransportSocket.parser(), f0Var);
                            this.transportSocket_ = transportSocket2;
                            if (builder5 != null) {
                                builder5.h0(transportSocket2);
                                this.transportSocket_ = builder5.I();
                            }
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.name_ = pVar.K();
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
                    this.filters_ = Collections.unmodifiableList(this.filters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static FilterChain parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChain parseFrom(p pVar) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FilterChain parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
