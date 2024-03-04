package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11408a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11409b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11410c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11411d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11412e = Descriptors.FileDescriptor.s(new String[]{"\n\u0018google/api/billing.proto\u0012\ngoogle.api\u001a\u0017google/api/metric.proto\"\u0093\u0001\n\u0007Billing\u0012E\n\u0015consumer_destinations\u0018\b \u0003(\u000b2&.google.api.Billing.BillingDestination\u001aA\n\u0012BillingDestination\u0012\u001a\n\u0012monitored_resource\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007metrics\u0018\u0002 \u0003(\tBn\n\u000ecom.google.apiB\fBillingProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{q0.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11408a = bVar;
        f11409b = new GeneratedMessageV3.e(bVar, new String[]{"ConsumerDestinations"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11410c = bVar2;
        f11411d = new GeneratedMessageV3.e(bVar2, new String[]{"MonitoredResource", "Metrics"});
        q0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11412e;
    }
}
