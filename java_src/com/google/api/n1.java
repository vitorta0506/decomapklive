package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class n1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11425a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11426b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11427c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11428d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11429e = Descriptors.FileDescriptor.s(new String[]{"\n\u0016google/api/usage.proto\u0012\ngoogle.api\"j\n\u0005Usage\u0012\u0014\n\frequirements\u0018\u0001 \u0003(\t\u0012$\n\u0005rules\u0018\u0006 \u0003(\u000b2\u0015.google.api.UsageRule\u0012%\n\u001dproducer_notification_channel\u0018\u0007 \u0001(\t\"]\n\tUsageRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012 \n\u0018allow_unregistered_calls\u0018\u0002 \u0001(\b\u0012\u001c\n\u0014skip_service_control\u0018\u0003 \u0001(\bBl\n\u000ecom.google.apiB\nUsageProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11425a = bVar;
        f11426b = new GeneratedMessageV3.e(bVar, new String[]{"Requirements", "Rules", "ProducerNotificationChannel"});
        Descriptors.b bVar2 = a().m().get(1);
        f11427c = bVar2;
        f11428d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "AllowUnregisteredCalls", "SkipServiceControl"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11429e;
    }
}
