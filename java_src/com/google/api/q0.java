package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11457a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11458b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11459c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11460d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11461e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11462f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11463g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11464h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11465i = Descriptors.FileDescriptor.s(new String[]{"\n\u0017google/api/metric.proto\u0012\ngoogle.api\u001a\u0016google/api/label.proto\u001a\u001dgoogle/api/launch_stage.proto\u001a\u001egoogle/protobuf/duration.proto\"\u009f\u0006\n\u0010MetricDescriptor\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\f\n\u0004type\u0018\b \u0001(\t\u0012+\n\u0006labels\u0018\u0002 \u0003(\u000b2\u001b.google.api.LabelDescriptor\u0012<\n\u000bmetric_kind\u0018\u0003 \u0001(\u000e2'.google.api.MetricDescriptor.MetricKind\u0012:\n\nvalue_type\u0018\u0004 \u0001(\u000e2&.google.api.MetricDescriptor.ValueType\u0012\f\n\u0004unit\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0006 \u0001(\t\u0012\u0014\n\fdisplay_name\u0018\u0007 \u0001(\t\u0012G\n\bmetadata\u0018\n \u0001(\u000b25.google.api.MetricDescriptor.MetricDescriptorMetadata\u0012-\n\flaunch_stage\u0018\f \u0001(\u000e2\u0017.google.api.LaunchStage\u0012 \n\u0018monitored_resource_types\u0018\r \u0003(\t\u001a°\u0001\n\u0018MetricDescriptorMetadata\u00121\n\flaunch_stage\u0018\u0001 \u0001(\u000e2\u0017.google.api.LaunchStageB\u0002\u0018\u0001\u00120\n\rsample_period\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012/\n\fingest_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"O\n\nMetricKind\u0012\u001b\n\u0017METRIC_KIND_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005GAUGE\u0010\u0001\u0012\t\n\u0005DELTA\u0010\u0002\u0012\u000e\n\nCUMULATIVE\u0010\u0003\"q\n\tValueType\u0012\u001a\n\u0016VALUE_TYPE_UNSPECIFIED\u0010\u0000\u0012\b\n\u0004BOOL\u0010\u0001\u0012\t\n\u0005INT64\u0010\u0002\u0012\n\n\u0006DOUBLE\u0010\u0003\u0012\n\n\u0006STRING\u0010\u0004\u0012\u0010\n\fDISTRIBUTION\u0010\u0005\u0012\t\n\u0005MONEY\u0010\u0006\"u\n\u0006Metric\u0012\f\n\u0004type\u0018\u0003 \u0001(\t\u0012.\n\u0006labels\u0018\u0002 \u0003(\u000b2\u001e.google.api.Metric.LabelsEntry\u001a-\n\u000bLabelsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B_\n\u000ecom.google.apiB\u000bMetricProtoP\u0001Z7google.golang.org/genproto/googleapis/api/metric;metric¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{j0.a(), k0.a(), com.google.protobuf.w.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11457a = bVar;
        f11458b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Type", "Labels", "MetricKind", "ValueType", "Unit", "Description", "DisplayName", "Metadata", "LaunchStage", "MonitoredResourceTypes"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11459c = bVar2;
        f11460d = new GeneratedMessageV3.e(bVar2, new String[]{"LaunchStage", "SamplePeriod", "IngestDelay"});
        Descriptors.b bVar3 = a().m().get(1);
        f11461e = bVar3;
        f11462f = new GeneratedMessageV3.e(bVar3, new String[]{"Type", "Labels"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f11463g = bVar4;
        f11464h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        j0.a();
        k0.a();
        com.google.protobuf.w.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11465i;
    }
}
