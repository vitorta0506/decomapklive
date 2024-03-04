package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11480a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11481b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11482c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11483d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11484e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11485f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11486g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11487h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11488i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11489j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f11490k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f11491l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f11492m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f11493n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11494o = Descriptors.FileDescriptor.s(new String[]{"\n\u001dgoogle/api/distribution.proto\u0012\ngoogle.api\u001a\u0019google/protobuf/any.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"Ù\u0006\n\fDistribution\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0003\u0012\f\n\u0004mean\u0018\u0002 \u0001(\u0001\u0012 \n\u0018sum_of_squared_deviation\u0018\u0003 \u0001(\u0001\u0012-\n\u0005range\u0018\u0004 \u0001(\u000b2\u001e.google.api.Distribution.Range\u0012>\n\u000ebucket_options\u0018\u0006 \u0001(\u000b2&.google.api.Distribution.BucketOptions\u0012\u0015\n\rbucket_counts\u0018\u0007 \u0003(\u0003\u00124\n\texemplars\u0018\n \u0003(\u000b2!.google.api.Distribution.Exemplar\u001a!\n\u0005Range\u0012\u000b\n\u0003min\u0018\u0001 \u0001(\u0001\u0012\u000b\n\u0003max\u0018\u0002 \u0001(\u0001\u001aµ\u0003\n\rBucketOptions\u0012G\n\u000elinear_buckets\u0018\u0001 \u0001(\u000b2-.google.api.Distribution.BucketOptions.LinearH\u0000\u0012Q\n\u0013exponential_buckets\u0018\u0002 \u0001(\u000b22.google.api.Distribution.BucketOptions.ExponentialH\u0000\u0012K\n\u0010explicit_buckets\u0018\u0003 \u0001(\u000b2/.google.api.Distribution.BucketOptions.ExplicitH\u0000\u001aC\n\u0006Linear\u0012\u001a\n\u0012num_finite_buckets\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005width\u0018\u0002 \u0001(\u0001\u0012\u000e\n\u0006offset\u0018\u0003 \u0001(\u0001\u001aO\n\u000bExponential\u0012\u001a\n\u0012num_finite_buckets\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rgrowth_factor\u0018\u0002 \u0001(\u0001\u0012\r\n\u0005scale\u0018\u0003 \u0001(\u0001\u001a\u001a\n\bExplicit\u0012\u000e\n\u0006bounds\u0018\u0001 \u0003(\u0001B\t\n\u0007options\u001as\n\bExemplar\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\u0012-\n\ttimestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012)\n\u000battachments\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.AnyBq\n\u000ecom.google.apiB\u0011DistributionProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/api/distribution;distribution¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), a3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11480a = bVar;
        f11481b = new GeneratedMessageV3.e(bVar, new String[]{"Count", "Mean", "SumOfSquaredDeviation", "Range", "BucketOptions", "BucketCounts", "Exemplars"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11482c = bVar2;
        f11483d = new GeneratedMessageV3.e(bVar2, new String[]{"Min", "Max"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f11484e = bVar3;
        f11485f = new GeneratedMessageV3.e(bVar3, new String[]{"LinearBuckets", "ExponentialBuckets", "ExplicitBuckets", "Options"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f11486g = bVar4;
        f11487h = new GeneratedMessageV3.e(bVar4, new String[]{"NumFiniteBuckets", "Width", "Offset"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f11488i = bVar5;
        f11489j = new GeneratedMessageV3.e(bVar5, new String[]{"NumFiniteBuckets", "GrowthFactor", "Scale"});
        Descriptors.b bVar6 = bVar3.o().get(2);
        f11490k = bVar6;
        f11491l = new GeneratedMessageV3.e(bVar6, new String[]{"Bounds"});
        Descriptors.b bVar7 = bVar.o().get(2);
        f11492m = bVar7;
        f11493n = new GeneratedMessageV3.e(bVar7, new String[]{"Value", "Timestamp", "Attachments"});
        com.google.protobuf.g.a();
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11494o;
    }
}
