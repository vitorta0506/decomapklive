package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class v0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11495a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11496b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11497c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11498d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11499e = Descriptors.FileDescriptor.s(new String[]{"\n\u001bgoogle/api/monitoring.proto\u0012\ngoogle.api\"ì\u0001\n\nMonitoring\u0012K\n\u0015producer_destinations\u0018\u0001 \u0003(\u000b2,.google.api.Monitoring.MonitoringDestination\u0012K\n\u0015consumer_destinations\u0018\u0002 \u0003(\u000b2,.google.api.Monitoring.MonitoringDestination\u001aD\n\u0015MonitoringDestination\u0012\u001a\n\u0012monitored_resource\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007metrics\u0018\u0002 \u0003(\tBq\n\u000ecom.google.apiB\u000fMonitoringProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11495a = bVar;
        f11496b = new GeneratedMessageV3.e(bVar, new String[]{"ProducerDestinations", "ConsumerDestinations"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11497c = bVar2;
        f11498d = new GeneratedMessageV3.e(bVar2, new String[]{"MonitoredResource", "Metrics"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11499e;
    }
}
