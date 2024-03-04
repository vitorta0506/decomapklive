package io.opencensus.proto.metrics.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
/* loaded from: classes7.dex */
public final class f {
    static final Descriptors.b A;
    static final GeneratedMessageV3.e B;
    static final Descriptors.b C;
    static final GeneratedMessageV3.e D;
    private static Descriptors.FileDescriptor E;

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f51037a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f51038b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f51039c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f51040d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f51041e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f51042f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f51043g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f51044h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f51045i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f51046j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f51047k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f51048l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f51049m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f51050n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f51051o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f51052p;

    /* renamed from: q  reason: collision with root package name */
    static final Descriptors.b f51053q;

    /* renamed from: r  reason: collision with root package name */
    static final GeneratedMessageV3.e f51054r;

    /* renamed from: s  reason: collision with root package name */
    static final Descriptors.b f51055s;

    /* renamed from: t  reason: collision with root package name */
    static final GeneratedMessageV3.e f51056t;

    /* renamed from: u  reason: collision with root package name */
    static final Descriptors.b f51057u;

    /* renamed from: v  reason: collision with root package name */
    static final GeneratedMessageV3.e f51058v;

    /* renamed from: w  reason: collision with root package name */
    static final Descriptors.b f51059w;

    /* renamed from: x  reason: collision with root package name */
    static final GeneratedMessageV3.e f51060x;

    /* renamed from: y  reason: collision with root package name */
    static final Descriptors.b f51061y;

    /* renamed from: z  reason: collision with root package name */
    static final GeneratedMessageV3.e f51062z;

    /* loaded from: classes7.dex */
    static class a implements Descriptors.FileDescriptor.a {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = f.E = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n)opencensus/proto/metrics/v1/metrics.proto\u0012\u001bopencensus.proto.metrics.v1\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a+opencensus/proto/resource/v1/resource.proto\"É\u0001\n\u0006Metric\u0012H\n\u0011metric_descriptor\u0018\u0001 \u0001(\u000b2-.opencensus.proto.metrics.v1.MetricDescriptor\u0012;\n\ntimeseries\u0018\u0002 \u0003(\u000b2'.opencensus.proto.metrics.v1.TimeSeries\u00128\n\bresource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"ì\u0002\n\u0010MetricDescriptor\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\f\n\u0004unit\u0018\u0003 \u0001(\t\u0012@\n\u0004type\u0018\u0004 \u0001(\u000e22.opencensus.proto.metrics.v1.MetricDescriptor.Type\u00129\n\nlabel_keys\u0018\u0005 \u0003(\u000b2%.opencensus.proto.metrics.v1.LabelKey\"©\u0001\n\u0004Type\u0012\u000f\n\u000bUNSPECIFIED\u0010\u0000\u0012\u000f\n\u000bGAUGE_INT64\u0010\u0001\u0012\u0010\n\fGAUGE_DOUBLE\u0010\u0002\u0012\u0016\n\u0012GAUGE_DISTRIBUTION\u0010\u0003\u0012\u0014\n\u0010CUMULATIVE_INT64\u0010\u0004\u0012\u0015\n\u0011CUMULATIVE_DOUBLE\u0010\u0005\u0012\u001b\n\u0017CUMULATIVE_DISTRIBUTION\u0010\u0006\u0012\u000b\n\u0007SUMMARY\u0010\u0007\",\n\bLabelKey\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\"´\u0001\n\nTimeSeries\u00123\n\u000fstart_timestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012=\n\flabel_values\u0018\u0002 \u0003(\u000b2'.opencensus.proto.metrics.v1.LabelValue\u00122\n\u0006points\u0018\u0003 \u0003(\u000b2\".opencensus.proto.metrics.v1.Point\".\n\nLabelValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\u0012\u0011\n\thas_value\u0018\u0002 \u0001(\b\"\u0080\u0002\n\u0005Point\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0015\n\u000bint64_value\u0018\u0002 \u0001(\u0003H\u0000\u0012\u0016\n\fdouble_value\u0018\u0003 \u0001(\u0001H\u0000\u0012L\n\u0012distribution_value\u0018\u0004 \u0001(\u000b2..opencensus.proto.metrics.v1.DistributionValueH\u0000\u0012B\n\rsummary_value\u0018\u0005 \u0001(\u000b2).opencensus.proto.metrics.v1.SummaryValueH\u0000B\u0007\n\u0005value\"Â\u0005\n\u0011DistributionValue\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003sum\u0018\u0002 \u0001(\u0001\u0012 \n\u0018sum_of_squared_deviation\u0018\u0003 \u0001(\u0001\u0012T\n\u000ebucket_options\u0018\u0004 \u0001(\u000b2<.opencensus.proto.metrics.v1.DistributionValue.BucketOptions\u0012F\n\u0007buckets\u0018\u0005 \u0003(\u000b25.opencensus.proto.metrics.v1.DistributionValue.Bucket\u001a\u008e\u0001\n\rBucketOptions\u0012Y\n\bexplicit\u0018\u0001 \u0001(\u000b2E.opencensus.proto.metrics.v1.DistributionValue.BucketOptions.ExplicitH\u0000\u001a\u001a\n\bExplicit\u0012\u000e\n\u0006bounds\u0018\u0001 \u0003(\u0001B\u0006\n\u0004type\u001ab\n\u0006Bucket\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012I\n\bexemplar\u0018\u0002 \u0001(\u000b27.opencensus.proto.metrics.v1.DistributionValue.Exemplar\u001aÛ\u0001\n\bExemplar\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\u0012-\n\ttimestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012]\n\u000battachments\u0018\u0003 \u0003(\u000b2H.opencensus.proto.metrics.v1.DistributionValue.Exemplar.AttachmentsEntry\u001a2\n\u0010AttachmentsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"¨\u0003\n\fSummaryValue\u0012*\n\u0005count\u0018\u0001 \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012)\n\u0003sum\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValue\u0012D\n\bsnapshot\u0018\u0003 \u0001(\u000b22.opencensus.proto.metrics.v1.SummaryValue.Snapshot\u001aú\u0001\n\bSnapshot\u0012*\n\u0005count\u0018\u0001 \u0001(\u000b2\u001b.google.protobuf.Int64Value\u0012)\n\u0003sum\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValue\u0012_\n\u0011percentile_values\u0018\u0003 \u0003(\u000b2D.opencensus.proto.metrics.v1.SummaryValue.Snapshot.ValueAtPercentile\u001a6\n\u0011ValueAtPercentile\u0012\u0012\n\npercentile\u0018\u0001 \u0001(\u0001\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001Bv\n\u001eio.opencensus.proto.metrics.v1B\fMetricsProtoP\u0001ZDgithub.com/census-instrumentation/opencensus-proto/gen-go/metrics/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{a3.a(), p3.a(), io.opencensus.proto.resource.v1.b.b()}, new a());
        Descriptors.b bVar = b().m().get(0);
        f51037a = bVar;
        f51038b = new GeneratedMessageV3.e(bVar, new String[]{"MetricDescriptor", "Timeseries", "Resource"});
        Descriptors.b bVar2 = b().m().get(1);
        f51039c = bVar2;
        f51040d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Description", "Unit", "Type", "LabelKeys"});
        Descriptors.b bVar3 = b().m().get(2);
        f51041e = bVar3;
        f51042f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Description"});
        Descriptors.b bVar4 = b().m().get(3);
        f51043g = bVar4;
        f51044h = new GeneratedMessageV3.e(bVar4, new String[]{"StartTimestamp", "LabelValues", "Points"});
        Descriptors.b bVar5 = b().m().get(4);
        f51045i = bVar5;
        f51046j = new GeneratedMessageV3.e(bVar5, new String[]{"Value", "HasValue"});
        Descriptors.b bVar6 = b().m().get(5);
        f51047k = bVar6;
        f51048l = new GeneratedMessageV3.e(bVar6, new String[]{"Timestamp", "Int64Value", "DoubleValue", "DistributionValue", "SummaryValue", "Value"});
        Descriptors.b bVar7 = b().m().get(6);
        f51049m = bVar7;
        f51050n = new GeneratedMessageV3.e(bVar7, new String[]{"Count", "Sum", "SumOfSquaredDeviation", "BucketOptions", "Buckets"});
        Descriptors.b bVar8 = bVar7.o().get(0);
        f51051o = bVar8;
        f51052p = new GeneratedMessageV3.e(bVar8, new String[]{"Explicit", "Type"});
        Descriptors.b bVar9 = bVar8.o().get(0);
        f51053q = bVar9;
        f51054r = new GeneratedMessageV3.e(bVar9, new String[]{"Bounds"});
        Descriptors.b bVar10 = bVar7.o().get(1);
        f51055s = bVar10;
        f51056t = new GeneratedMessageV3.e(bVar10, new String[]{"Count", "Exemplar"});
        Descriptors.b bVar11 = bVar7.o().get(2);
        f51057u = bVar11;
        f51058v = new GeneratedMessageV3.e(bVar11, new String[]{"Value", "Timestamp", "Attachments"});
        Descriptors.b bVar12 = bVar11.o().get(0);
        f51059w = bVar12;
        f51060x = new GeneratedMessageV3.e(bVar12, new String[]{"Key", "Value"});
        Descriptors.b bVar13 = b().m().get(7);
        f51061y = bVar13;
        f51062z = new GeneratedMessageV3.e(bVar13, new String[]{"Count", "Sum", "Snapshot"});
        Descriptors.b bVar14 = bVar13.o().get(0);
        A = bVar14;
        B = new GeneratedMessageV3.e(bVar14, new String[]{"Count", "Sum", "PercentileValues"});
        Descriptors.b bVar15 = bVar14.o().get(0);
        C = bVar15;
        D = new GeneratedMessageV3.e(bVar15, new String[]{"Percentile", "Value"});
        a3.a();
        p3.a();
        io.opencensus.proto.resource.v1.b.b();
    }

    public static Descriptors.FileDescriptor b() {
        return E;
    }
}
