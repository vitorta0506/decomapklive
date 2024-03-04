package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11435a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11436b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11437c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11438d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11439e = Descriptors.FileDescriptor.s(new String[]{"\n\u0018google/api/logging.proto\u0012\ngoogle.api\"×\u0001\n\u0007Logging\u0012E\n\u0015producer_destinations\u0018\u0001 \u0003(\u000b2&.google.api.Logging.LoggingDestination\u0012E\n\u0015consumer_destinations\u0018\u0002 \u0003(\u000b2&.google.api.Logging.LoggingDestination\u001a>\n\u0012LoggingDestination\u0012\u001a\n\u0012monitored_resource\u0018\u0003 \u0001(\t\u0012\f\n\u0004logs\u0018\u0001 \u0003(\tBn\n\u000ecom.google.apiB\fLoggingProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11435a = bVar;
        f11436b = new GeneratedMessageV3.e(bVar, new String[]{"ProducerDestinations", "ConsumerDestinations"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f11437c = bVar2;
        f11438d = new GeneratedMessageV3.e(bVar2, new String[]{"MonitoredResource", FilePathProvider.PRIVATE_LOG_NEW});
    }

    public static Descriptors.FileDescriptor a() {
        return f11439e;
    }
}
