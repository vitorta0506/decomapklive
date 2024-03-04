package io.opencensus.proto.stats.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
/* loaded from: classes7.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f51101a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f51102b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f51103c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f51104d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f51105e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f51106f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f51107g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f51108h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f51109i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f51110j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f51111k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f51112l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f51113m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f51114n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f51115o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f51116p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f51117q;

    /* loaded from: classes7.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = e.f51117q = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n%opencensus/proto/stats/v1/stats.proto\u0012\u0019opencensus.proto.stats.v1\u001a\u001fgoogle/protobuf/timestamp.proto\"!\n\u0003Tag\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"¦\u0001\n\u0007Measure\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\f\n\u0004unit\u0018\u0003 \u0001(\t\u00125\n\u0004type\u0018\u0004 \u0001(\u000e2'.opencensus.proto.stats.v1.Measure.Type\"3\n\u0004Type\u0012\u0014\n\u0010TYPE_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005INT64\u0010\u0001\u0012\n\n\u0006DOUBLE\u0010\u0002\"¹\u0003\n\u0004View\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u00123\n\u0007measure\u0018\u0003 \u0001(\u000b2\".opencensus.proto.stats.v1.Measure\u0012\u000f\n\u0007columns\u0018\u0004 \u0003(\t\u0012H\n\u0011count_aggregation\u0018\u0005 \u0001(\u000b2+.opencensus.proto.stats.v1.CountAggregationH\u0000\u0012D\n\u000fsum_aggregation\u0018\u0006 \u0001(\u000b2).opencensus.proto.stats.v1.SumAggregationH\u0000\u0012Q\n\u0016last_value_aggregation\u0018\u0007 \u0001(\u000b2/.opencensus.proto.stats.v1.LastValueAggregationH\u0000\u0012V\n\u0018distribution_aggregation\u0018\b \u0001(\u000b22.opencensus.proto.stats.v1.DistributionAggregationH\u0000B\r\n\u000baggregation\"\u0012\n\u0010CountAggregation\"\u0010\n\u000eSumAggregation\"\u0016\n\u0014LastValueAggregation\"0\n\u0017DistributionAggregation\u0012\u0015\n\rbucket_bounds\u0018\u0001 \u0003(\u0001\"±\u0001\n\u000bMeasurement\u0012,\n\u0004tags\u0018\u0001 \u0003(\u000b2\u001e.opencensus.proto.stats.v1.Tag\u0012\u0014\n\fmeasure_name\u0018\u0002 \u0001(\t\u0012\u0016\n\fdouble_value\u0018\u0003 \u0001(\u0001H\u0000\u0012\u0013\n\tint_value\u0018\u0004 \u0001(\u0003H\u0000\u0012(\n\u0004time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.TimestampB\u0007\n\u0005valueBp\n\u001cio.opencensus.proto.stats.v1B\nStatsProtoP\u0001ZBgithub.com/census-instrumentation/opencensus-proto/gen-go/stats/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{a3.a()}, new a());
        Descriptors.b bVar = b().m().get(0);
        f51101a = bVar;
        f51102b = new GeneratedMessageV3.e(bVar, new String[]{"Key", "Value"});
        Descriptors.b bVar2 = b().m().get(1);
        f51103c = bVar2;
        f51104d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Description", "Unit", "Type"});
        Descriptors.b bVar3 = b().m().get(2);
        f51105e = bVar3;
        f51106f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Description", "Measure", "Columns", "CountAggregation", "SumAggregation", "LastValueAggregation", "DistributionAggregation", "Aggregation"});
        Descriptors.b bVar4 = b().m().get(3);
        f51107g = bVar4;
        f51108h = new GeneratedMessageV3.e(bVar4, new String[0]);
        Descriptors.b bVar5 = b().m().get(4);
        f51109i = bVar5;
        f51110j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = b().m().get(5);
        f51111k = bVar6;
        f51112l = new GeneratedMessageV3.e(bVar6, new String[0]);
        Descriptors.b bVar7 = b().m().get(6);
        f51113m = bVar7;
        f51114n = new GeneratedMessageV3.e(bVar7, new String[]{"BucketBounds"});
        Descriptors.b bVar8 = b().m().get(7);
        f51115o = bVar8;
        f51116p = new GeneratedMessageV3.e(bVar8, new String[]{"Tags", "MeasureName", "DoubleValue", "IntValue", "Time", "Value"});
        a3.a();
    }

    public static Descriptors.FileDescriptor b() {
        return f51117q;
    }
}
