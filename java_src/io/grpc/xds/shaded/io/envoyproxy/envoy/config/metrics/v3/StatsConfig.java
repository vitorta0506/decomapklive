package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class StatsConfig extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b {
    public static final int HISTOGRAM_BUCKET_SETTINGS_FIELD_NUMBER = 4;
    public static final int STATS_MATCHER_FIELD_NUMBER = 3;
    public static final int STATS_TAGS_FIELD_NUMBER = 1;
    public static final int USE_ALL_DEFAULT_TAGS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<HistogramBucketSettings> histogramBucketSettings_;
    private byte memoizedIsInitialized;
    private StatsMatcher statsMatcher_;
    private List<TagSpecifier> statsTags_;
    private BoolValue useAllDefaultTags_;
    private static final StatsConfig DEFAULT_INSTANCE = new StatsConfig();
    private static final e2<StatsConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<StatsConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StatsConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StatsConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.b {

        /* renamed from: e  reason: collision with root package name */
        private int f48885e;

        /* renamed from: f  reason: collision with root package name */
        private List<TagSpecifier> f48886f;

        /* renamed from: g  reason: collision with root package name */
        private l2<TagSpecifier, TagSpecifier.c, f> f48887g;

        /* renamed from: h  reason: collision with root package name */
        private BoolValue f48888h;

        /* renamed from: i  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, l> f48889i;

        /* renamed from: j  reason: collision with root package name */
        private StatsMatcher f48890j;

        /* renamed from: k  reason: collision with root package name */
        private q2<StatsMatcher, StatsMatcher.c, c> f48891k;

        /* renamed from: l  reason: collision with root package name */
        private List<HistogramBucketSettings> f48892l;

        /* renamed from: m  reason: collision with root package name */
        private l2<HistogramBucketSettings, HistogramBucketSettings.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a> f48893m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48885e & 2) == 0) {
                this.f48892l = new ArrayList(this.f48892l);
                this.f48885e |= 2;
            }
        }

        private void b0() {
            if ((this.f48885e & 1) == 0) {
                this.f48886f = new ArrayList(this.f48886f);
                this.f48885e |= 1;
            }
        }

        private l2<HistogramBucketSettings, HistogramBucketSettings.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a> e0() {
            if (this.f48893m == null) {
                this.f48893m = new l2<>(this.f48892l, (this.f48885e & 2) != 0, H(), O());
                this.f48892l = null;
            }
            return this.f48893m;
        }

        private l2<TagSpecifier, TagSpecifier.c, f> g0() {
            if (this.f48887g == null) {
                this.f48887g = new l2<>(this.f48886f, (this.f48885e & 1) != 0, H(), O());
                this.f48886f = null;
            }
            return this.f48887g;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                g0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48916d.d(StatsConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StatsConfig build() {
            StatsConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StatsConfig I() {
            StatsConfig statsConfig = new StatsConfig(this, (a) null);
            int i9 = this.f48885e;
            l2<TagSpecifier, TagSpecifier.c, f> l2Var = this.f48887g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f48886f = Collections.unmodifiableList(this.f48886f);
                    this.f48885e &= -2;
                }
                statsConfig.statsTags_ = this.f48886f;
            } else {
                statsConfig.statsTags_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, l> q2Var = this.f48889i;
            if (q2Var == null) {
                statsConfig.useAllDefaultTags_ = this.f48888h;
            } else {
                statsConfig.useAllDefaultTags_ = q2Var.b();
            }
            q2<StatsMatcher, StatsMatcher.c, c> q2Var2 = this.f48891k;
            if (q2Var2 == null) {
                statsConfig.statsMatcher_ = this.f48890j;
            } else {
                statsConfig.statsMatcher_ = q2Var2.b();
            }
            l2<HistogramBucketSettings, HistogramBucketSettings.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a> l2Var2 = this.f48893m;
            if (l2Var2 == null) {
                if ((this.f48885e & 2) != 0) {
                    this.f48892l = Collections.unmodifiableList(this.f48892l);
                    this.f48885e &= -3;
                }
                statsConfig.histogramBucketSettings_ = this.f48892l;
            } else {
                statsConfig.histogramBucketSettings_ = l2Var2.e();
            }
            Q();
            return statsConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public StatsConfig getDefaultInstanceForType() {
            return StatsConfig.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48915c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.StatsConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StatsConfig) {
                return k0((StatsConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(StatsConfig statsConfig) {
            if (statsConfig == StatsConfig.getDefaultInstance()) {
                return this;
            }
            if (this.f48887g == null) {
                if (!statsConfig.statsTags_.isEmpty()) {
                    if (this.f48886f.isEmpty()) {
                        this.f48886f = statsConfig.statsTags_;
                        this.f48885e &= -2;
                    } else {
                        b0();
                        this.f48886f.addAll(statsConfig.statsTags_);
                    }
                    R();
                }
            } else if (!statsConfig.statsTags_.isEmpty()) {
                if (this.f48887g.k()) {
                    this.f48887g.f();
                    this.f48887g = null;
                    this.f48886f = statsConfig.statsTags_;
                    this.f48885e &= -2;
                    this.f48887g = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f48887g.b(statsConfig.statsTags_);
                }
            }
            if (statsConfig.hasUseAllDefaultTags()) {
                n0(statsConfig.getUseAllDefaultTags());
            }
            if (statsConfig.hasStatsMatcher()) {
                l0(statsConfig.getStatsMatcher());
            }
            if (this.f48893m == null) {
                if (!statsConfig.histogramBucketSettings_.isEmpty()) {
                    if (this.f48892l.isEmpty()) {
                        this.f48892l = statsConfig.histogramBucketSettings_;
                        this.f48885e &= -3;
                    } else {
                        a0();
                        this.f48892l.addAll(statsConfig.histogramBucketSettings_);
                    }
                    R();
                }
            } else if (!statsConfig.histogramBucketSettings_.isEmpty()) {
                if (this.f48893m.k()) {
                    this.f48893m.f();
                    this.f48893m = null;
                    this.f48892l = statsConfig.histogramBucketSettings_;
                    this.f48885e &= -3;
                    this.f48893m = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f48893m.b(statsConfig.histogramBucketSettings_);
                }
            }
            z(((GeneratedMessageV3) statsConfig).unknownFields);
            R();
            return this;
        }

        public b l0(StatsMatcher statsMatcher) {
            q2<StatsMatcher, StatsMatcher.c, c> q2Var = this.f48891k;
            if (q2Var == null) {
                StatsMatcher statsMatcher2 = this.f48890j;
                if (statsMatcher2 != null) {
                    this.f48890j = StatsMatcher.newBuilder(statsMatcher2).h0(statsMatcher).I();
                } else {
                    this.f48890j = statsMatcher;
                }
                R();
            } else {
                q2Var.e(statsMatcher);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b n0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.f48889i;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48888h;
                if (boolValue2 != null) {
                    this.f48888h = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48888h = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
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
            this.f48886f = Collections.emptyList();
            this.f48892l = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48886f = Collections.emptyList();
            this.f48892l = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ StatsConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StatsConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48915c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StatsConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StatsConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StatsConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StatsConfig)) {
            return super.equals(obj);
        }
        StatsConfig statsConfig = (StatsConfig) obj;
        if (getStatsTagsList().equals(statsConfig.getStatsTagsList()) && hasUseAllDefaultTags() == statsConfig.hasUseAllDefaultTags()) {
            if ((!hasUseAllDefaultTags() || getUseAllDefaultTags().equals(statsConfig.getUseAllDefaultTags())) && hasStatsMatcher() == statsConfig.hasStatsMatcher()) {
                return (!hasStatsMatcher() || getStatsMatcher().equals(statsConfig.getStatsMatcher())) && getHistogramBucketSettingsList().equals(statsConfig.getHistogramBucketSettingsList()) && this.unknownFields.equals(statsConfig.unknownFields);
            }
            return false;
        }
        return false;
    }

    public HistogramBucketSettings getHistogramBucketSettings(int i9) {
        return this.histogramBucketSettings_.get(i9);
    }

    public int getHistogramBucketSettingsCount() {
        return this.histogramBucketSettings_.size();
    }

    public List<HistogramBucketSettings> getHistogramBucketSettingsList() {
        return this.histogramBucketSettings_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a getHistogramBucketSettingsOrBuilder(int i9) {
        return this.histogramBucketSettings_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a> getHistogramBucketSettingsOrBuilderList() {
        return this.histogramBucketSettings_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StatsConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.statsTags_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.statsTags_.get(i11));
        }
        if (this.useAllDefaultTags_ != null) {
            i10 += CodedOutputStream.G(2, getUseAllDefaultTags());
        }
        if (this.statsMatcher_ != null) {
            i10 += CodedOutputStream.G(3, getStatsMatcher());
        }
        for (int i12 = 0; i12 < this.histogramBucketSettings_.size(); i12++) {
            i10 += CodedOutputStream.G(4, this.histogramBucketSettings_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StatsMatcher getStatsMatcher() {
        StatsMatcher statsMatcher = this.statsMatcher_;
        return statsMatcher == null ? StatsMatcher.getDefaultInstance() : statsMatcher;
    }

    public c getStatsMatcherOrBuilder() {
        return getStatsMatcher();
    }

    public TagSpecifier getStatsTags(int i9) {
        return this.statsTags_.get(i9);
    }

    public int getStatsTagsCount() {
        return this.statsTags_.size();
    }

    public List<TagSpecifier> getStatsTagsList() {
        return this.statsTags_;
    }

    public f getStatsTagsOrBuilder(int i9) {
        return this.statsTags_.get(i9);
    }

    public List<? extends f> getStatsTagsOrBuilderList() {
        return this.statsTags_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BoolValue getUseAllDefaultTags() {
        BoolValue boolValue = this.useAllDefaultTags_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getUseAllDefaultTagsOrBuilder() {
        return getUseAllDefaultTags();
    }

    public boolean hasStatsMatcher() {
        return this.statsMatcher_ != null;
    }

    public boolean hasUseAllDefaultTags() {
        return this.useAllDefaultTags_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getStatsTagsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStatsTagsList().hashCode();
        }
        if (hasUseAllDefaultTags()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getUseAllDefaultTags().hashCode();
        }
        if (hasStatsMatcher()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getStatsMatcher().hashCode();
        }
        if (getHistogramBucketSettingsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getHistogramBucketSettingsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48916d.d(StatsConfig.class, b.class);
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
        return new StatsConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.statsTags_.size(); i9++) {
            codedOutputStream.L0(1, this.statsTags_.get(i9));
        }
        if (this.useAllDefaultTags_ != null) {
            codedOutputStream.L0(2, getUseAllDefaultTags());
        }
        if (this.statsMatcher_ != null) {
            codedOutputStream.L0(3, getStatsMatcher());
        }
        for (int i10 = 0; i10 < this.histogramBucketSettings_.size(); i10++) {
            codedOutputStream.L0(4, this.histogramBucketSettings_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StatsConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StatsConfig statsConfig) {
        return DEFAULT_INSTANCE.toBuilder().k0(statsConfig);
    }

    public static StatsConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StatsConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StatsConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatsConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StatsConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static StatsConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StatsConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.statsTags_ = Collections.emptyList();
        this.histogramBucketSettings_ = Collections.emptyList();
    }

    public static StatsConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StatsConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StatsConfig parseFrom(InputStream inputStream) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StatsConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (L == 18) {
                                    BoolValue boolValue = this.useAllDefaultTags_;
                                    BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                    BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                    this.useAllDefaultTags_ = boolValue2;
                                    if (builder != null) {
                                        builder.d0(boolValue2);
                                        this.useAllDefaultTags_ = builder.I();
                                    }
                                } else if (L == 26) {
                                    StatsMatcher statsMatcher = this.statsMatcher_;
                                    StatsMatcher.c builder2 = statsMatcher != null ? statsMatcher.toBuilder() : null;
                                    StatsMatcher statsMatcher2 = (StatsMatcher) pVar.B(StatsMatcher.parser(), f0Var);
                                    this.statsMatcher_ = statsMatcher2;
                                    if (builder2 != null) {
                                        builder2.h0(statsMatcher2);
                                        this.statsMatcher_ = builder2.I();
                                    }
                                } else if (L != 34) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.histogramBucketSettings_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.histogramBucketSettings_.add((HistogramBucketSettings) pVar.B(HistogramBucketSettings.parser(), f0Var));
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.statsTags_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.statsTags_.add((TagSpecifier) pVar.B(TagSpecifier.parser(), f0Var));
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
                    this.statsTags_ = Collections.unmodifiableList(this.statsTags_);
                }
                if (z11 & true) {
                    this.histogramBucketSettings_ = Collections.unmodifiableList(this.histogramBucketSettings_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static StatsConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StatsConfig parseFrom(p pVar) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StatsConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StatsConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
