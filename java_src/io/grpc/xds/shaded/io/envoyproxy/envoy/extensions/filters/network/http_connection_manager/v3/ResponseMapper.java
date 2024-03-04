package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3;

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
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLogFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HeaderValueOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.e1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ResponseMapper extends GeneratedMessageV3 implements g {
    public static final int BODY_FIELD_NUMBER = 3;
    public static final int BODY_FORMAT_OVERRIDE_FIELD_NUMBER = 4;
    public static final int FILTER_FIELD_NUMBER = 1;
    public static final int HEADERS_TO_ADD_FIELD_NUMBER = 5;
    public static final int STATUS_CODE_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private SubstitutionFormatString bodyFormatOverride_;
    private DataSource body_;
    private AccessLogFilter filter_;
    private List<HeaderValueOption> headersToAdd_;
    private byte memoizedIsInitialized;
    private UInt32Value statusCode_;
    private static final ResponseMapper DEFAULT_INSTANCE = new ResponseMapper();
    private static final e2<ResponseMapper> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ResponseMapper> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ResponseMapper m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ResponseMapper(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f49835e;

        /* renamed from: f  reason: collision with root package name */
        private AccessLogFilter f49836f;

        /* renamed from: g  reason: collision with root package name */
        private q2<AccessLogFilter, AccessLogFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a> f49837g;

        /* renamed from: h  reason: collision with root package name */
        private UInt32Value f49838h;

        /* renamed from: i  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f49839i;

        /* renamed from: j  reason: collision with root package name */
        private DataSource f49840j;

        /* renamed from: k  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f49841k;

        /* renamed from: l  reason: collision with root package name */
        private SubstitutionFormatString f49842l;

        /* renamed from: m  reason: collision with root package name */
        private q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> f49843m;

        /* renamed from: n  reason: collision with root package name */
        private List<HeaderValueOption> f49844n;

        /* renamed from: o  reason: collision with root package name */
        private l2<HeaderValueOption, HeaderValueOption.b, y> f49845o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49835e & 1) == 0) {
                this.f49844n = new ArrayList(this.f49844n);
                this.f49835e |= 1;
            }
        }

        private l2<HeaderValueOption, HeaderValueOption.b, y> d0() {
            if (this.f49845o == null) {
                this.f49845o = new l2<>(this.f49844n, (this.f49835e & 1) != 0, H(), O());
                this.f49844n = null;
            }
            return this.f49845o;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49892p.d(ResponseMapper.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ResponseMapper build() {
            ResponseMapper I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ResponseMapper I() {
            ResponseMapper responseMapper = new ResponseMapper(this, (a) null);
            q2<AccessLogFilter, AccessLogFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a> q2Var = this.f49837g;
            if (q2Var == null) {
                responseMapper.filter_ = this.f49836f;
            } else {
                responseMapper.filter_ = q2Var.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f49839i;
            if (q2Var2 == null) {
                responseMapper.statusCode_ = this.f49838h;
            } else {
                responseMapper.statusCode_ = q2Var2.b();
            }
            q2<DataSource, DataSource.c, n> q2Var3 = this.f49841k;
            if (q2Var3 == null) {
                responseMapper.body_ = this.f49840j;
            } else {
                responseMapper.body_ = q2Var3.b();
            }
            q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> q2Var4 = this.f49843m;
            if (q2Var4 == null) {
                responseMapper.bodyFormatOverride_ = this.f49842l;
            } else {
                responseMapper.bodyFormatOverride_ = q2Var4.b();
            }
            l2<HeaderValueOption, HeaderValueOption.b, y> l2Var = this.f49845o;
            if (l2Var == null) {
                if ((this.f49835e & 1) != 0) {
                    this.f49844n = Collections.unmodifiableList(this.f49844n);
                    this.f49835e &= -2;
                }
                responseMapper.headersToAdd_ = this.f49844n;
            } else {
                responseMapper.headersToAdd_ = l2Var.e();
            }
            Q();
            return responseMapper;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ResponseMapper getDefaultInstanceForType() {
            return ResponseMapper.getDefaultInstance();
        }

        public b g0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f49841k;
            if (q2Var == null) {
                DataSource dataSource2 = this.f49840j;
                if (dataSource2 != null) {
                    this.f49840j = DataSource.newBuilder(dataSource2).g0(dataSource).I();
                } else {
                    this.f49840j = dataSource;
                }
                R();
            } else {
                q2Var.e(dataSource);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49891o;
        }

        public b h0(SubstitutionFormatString substitutionFormatString) {
            q2<SubstitutionFormatString, SubstitutionFormatString.c, e1> q2Var = this.f49843m;
            if (q2Var == null) {
                SubstitutionFormatString substitutionFormatString2 = this.f49842l;
                if (substitutionFormatString2 != null) {
                    this.f49842l = SubstitutionFormatString.newBuilder(substitutionFormatString2).i0(substitutionFormatString).I();
                } else {
                    this.f49842l = substitutionFormatString;
                }
                R();
            } else {
                q2Var.e(substitutionFormatString);
            }
            return this;
        }

        public b i0(AccessLogFilter accessLogFilter) {
            q2<AccessLogFilter, AccessLogFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a> q2Var = this.f49837g;
            if (q2Var == null) {
                AccessLogFilter accessLogFilter2 = this.f49836f;
                if (accessLogFilter2 != null) {
                    this.f49836f = AccessLogFilter.newBuilder(accessLogFilter2).j0(accessLogFilter).I();
                } else {
                    this.f49836f = accessLogFilter;
                }
                R();
            } else {
                q2Var.e(accessLogFilter);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.l0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.l0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ResponseMapper) {
                return l0((ResponseMapper) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b l0(ResponseMapper responseMapper) {
            if (responseMapper == ResponseMapper.getDefaultInstance()) {
                return this;
            }
            if (responseMapper.hasFilter()) {
                i0(responseMapper.getFilter());
            }
            if (responseMapper.hasStatusCode()) {
                m0(responseMapper.getStatusCode());
            }
            if (responseMapper.hasBody()) {
                g0(responseMapper.getBody());
            }
            if (responseMapper.hasBodyFormatOverride()) {
                h0(responseMapper.getBodyFormatOverride());
            }
            if (this.f49845o == null) {
                if (!responseMapper.headersToAdd_.isEmpty()) {
                    if (this.f49844n.isEmpty()) {
                        this.f49844n = responseMapper.headersToAdd_;
                        this.f49835e &= -2;
                    } else {
                        a0();
                        this.f49844n.addAll(responseMapper.headersToAdd_);
                    }
                    R();
                }
            } else if (!responseMapper.headersToAdd_.isEmpty()) {
                if (this.f49845o.k()) {
                    this.f49845o.f();
                    this.f49845o = null;
                    this.f49844n = responseMapper.headersToAdd_;
                    this.f49835e &= -2;
                    this.f49845o = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f49845o.b(responseMapper.headersToAdd_);
                }
            }
            z(((GeneratedMessageV3) responseMapper).unknownFields);
            R();
            return this;
        }

        public b m0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49839i;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49838h;
                if (uInt32Value2 != null) {
                    this.f49838h = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49838h = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: n0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f49844n = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49844n = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ResponseMapper(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ResponseMapper getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49891o;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResponseMapper parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResponseMapper parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ResponseMapper> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponseMapper)) {
            return super.equals(obj);
        }
        ResponseMapper responseMapper = (ResponseMapper) obj;
        if (hasFilter() != responseMapper.hasFilter()) {
            return false;
        }
        if ((!hasFilter() || getFilter().equals(responseMapper.getFilter())) && hasStatusCode() == responseMapper.hasStatusCode()) {
            if ((!hasStatusCode() || getStatusCode().equals(responseMapper.getStatusCode())) && hasBody() == responseMapper.hasBody()) {
                if ((!hasBody() || getBody().equals(responseMapper.getBody())) && hasBodyFormatOverride() == responseMapper.hasBodyFormatOverride()) {
                    return (!hasBodyFormatOverride() || getBodyFormatOverride().equals(responseMapper.getBodyFormatOverride())) && getHeadersToAddList().equals(responseMapper.getHeadersToAddList()) && this.unknownFields.equals(responseMapper.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public DataSource getBody() {
        DataSource dataSource = this.body_;
        return dataSource == null ? DataSource.getDefaultInstance() : dataSource;
    }

    public SubstitutionFormatString getBodyFormatOverride() {
        SubstitutionFormatString substitutionFormatString = this.bodyFormatOverride_;
        return substitutionFormatString == null ? SubstitutionFormatString.getDefaultInstance() : substitutionFormatString;
    }

    public e1 getBodyFormatOverrideOrBuilder() {
        return getBodyFormatOverride();
    }

    public n getBodyOrBuilder() {
        return getBody();
    }

    public AccessLogFilter getFilter() {
        AccessLogFilter accessLogFilter = this.filter_;
        return accessLogFilter == null ? AccessLogFilter.getDefaultInstance() : accessLogFilter;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.a getFilterOrBuilder() {
        return getFilter();
    }

    public HeaderValueOption getHeadersToAdd(int i9) {
        return this.headersToAdd_.get(i9);
    }

    public int getHeadersToAddCount() {
        return this.headersToAdd_.size();
    }

    public List<HeaderValueOption> getHeadersToAddList() {
        return this.headersToAdd_;
    }

    public y getHeadersToAddOrBuilder(int i9) {
        return this.headersToAdd_.get(i9);
    }

    public List<? extends y> getHeadersToAddOrBuilderList() {
        return this.headersToAdd_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ResponseMapper> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.filter_ != null ? CodedOutputStream.G(1, getFilter()) + 0 : 0;
        if (this.statusCode_ != null) {
            G += CodedOutputStream.G(2, getStatusCode());
        }
        if (this.body_ != null) {
            G += CodedOutputStream.G(3, getBody());
        }
        if (this.bodyFormatOverride_ != null) {
            G += CodedOutputStream.G(4, getBodyFormatOverride());
        }
        for (int i10 = 0; i10 < this.headersToAdd_.size(); i10++) {
            G += CodedOutputStream.G(5, this.headersToAdd_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public UInt32Value getStatusCode() {
        UInt32Value uInt32Value = this.statusCode_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getStatusCodeOrBuilder() {
        return getStatusCode();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBody() {
        return this.body_ != null;
    }

    public boolean hasBodyFormatOverride() {
        return this.bodyFormatOverride_ != null;
    }

    public boolean hasFilter() {
        return this.filter_ != null;
    }

    public boolean hasStatusCode() {
        return this.statusCode_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasFilter()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getFilter().hashCode();
        }
        if (hasStatusCode()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getStatusCode().hashCode();
        }
        if (hasBody()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getBody().hashCode();
        }
        if (hasBodyFormatOverride()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getBodyFormatOverride().hashCode();
        }
        if (getHeadersToAddCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getHeadersToAddList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3.b.f49892p.d(ResponseMapper.class, b.class);
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
        return new ResponseMapper();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.filter_ != null) {
            codedOutputStream.L0(1, getFilter());
        }
        if (this.statusCode_ != null) {
            codedOutputStream.L0(2, getStatusCode());
        }
        if (this.body_ != null) {
            codedOutputStream.L0(3, getBody());
        }
        if (this.bodyFormatOverride_ != null) {
            codedOutputStream.L0(4, getBodyFormatOverride());
        }
        for (int i9 = 0; i9 < this.headersToAdd_.size(); i9++) {
            codedOutputStream.L0(5, this.headersToAdd_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ResponseMapper(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ResponseMapper responseMapper) {
        return DEFAULT_INSTANCE.toBuilder().l0(responseMapper);
    }

    public static ResponseMapper parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ResponseMapper(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponseMapper parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResponseMapper parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ResponseMapper getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).l0(this);
    }

    public static ResponseMapper parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ResponseMapper() {
        this.memoizedIsInitialized = (byte) -1;
        this.headersToAdd_ = Collections.emptyList();
    }

    public static ResponseMapper parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ResponseMapper parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ResponseMapper parseFrom(InputStream inputStream) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ResponseMapper(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            AccessLogFilter accessLogFilter = this.filter_;
                            AccessLogFilter.c builder = accessLogFilter != null ? accessLogFilter.toBuilder() : null;
                            AccessLogFilter accessLogFilter2 = (AccessLogFilter) pVar.B(AccessLogFilter.parser(), f0Var);
                            this.filter_ = accessLogFilter2;
                            if (builder != null) {
                                builder.j0(accessLogFilter2);
                                this.filter_ = builder.I();
                            }
                        } else if (L == 18) {
                            UInt32Value uInt32Value = this.statusCode_;
                            UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.statusCode_ = uInt32Value2;
                            if (builder2 != null) {
                                builder2.g0(uInt32Value2);
                                this.statusCode_ = builder2.I();
                            }
                        } else if (L == 26) {
                            DataSource dataSource = this.body_;
                            DataSource.c builder3 = dataSource != null ? dataSource.toBuilder() : null;
                            DataSource dataSource2 = (DataSource) pVar.B(DataSource.parser(), f0Var);
                            this.body_ = dataSource2;
                            if (builder3 != null) {
                                builder3.g0(dataSource2);
                                this.body_ = builder3.I();
                            }
                        } else if (L == 34) {
                            SubstitutionFormatString substitutionFormatString = this.bodyFormatOverride_;
                            SubstitutionFormatString.c builder4 = substitutionFormatString != null ? substitutionFormatString.toBuilder() : null;
                            SubstitutionFormatString substitutionFormatString2 = (SubstitutionFormatString) pVar.B(SubstitutionFormatString.parser(), f0Var);
                            this.bodyFormatOverride_ = substitutionFormatString2;
                            if (builder4 != null) {
                                builder4.i0(substitutionFormatString2);
                                this.bodyFormatOverride_ = builder4.I();
                            }
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.headersToAdd_ = new ArrayList();
                                z11 |= true;
                            }
                            this.headersToAdd_.add((HeaderValueOption) pVar.B(HeaderValueOption.parser(), f0Var));
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
                    this.headersToAdd_ = Collections.unmodifiableList(this.headersToAdd_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ResponseMapper parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ResponseMapper parseFrom(p pVar) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ResponseMapper parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ResponseMapper) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
