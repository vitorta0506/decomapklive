package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11420a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11421b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11422c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11423d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11424e = Descriptors.FileDescriptor.s(new String[]{"\n\u001egoogle/api/config_change.proto\u0012\ngoogle.api\"\u0097\u0001\n\fConfigChange\u0012\u000f\n\u0007element\u0018\u0001 \u0001(\t\u0012\u0011\n\told_value\u0018\u0002 \u0001(\t\u0012\u0011\n\tnew_value\u0018\u0003 \u0001(\t\u0012+\n\u000bchange_type\u0018\u0004 \u0001(\u000e2\u0016.google.api.ChangeType\u0012#\n\u0007advices\u0018\u0005 \u0003(\u000b2\u0012.google.api.Advice\"\u001d\n\u0006Advice\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t*O\n\nChangeType\u0012\u001b\n\u0017CHANGE_TYPE_UNSPECIFIED\u0010\u0000\u0012\t\n\u0005ADDED\u0010\u0001\u0012\u000b\n\u0007REMOVED\u0010\u0002\u0012\f\n\bMODIFIED\u0010\u0003Bq\n\u000ecom.google.apiB\u0011ConfigChangeProtoP\u0001ZCgoogle.golang.org/genproto/googleapis/api/configchange;configchange¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11420a = bVar;
        f11421b = new GeneratedMessageV3.e(bVar, new String[]{"Element", "OldValue", "NewValue", "ChangeType", "Advices"});
        Descriptors.b bVar2 = a().m().get(1);
        f11422c = bVar2;
        f11423d = new GeneratedMessageV3.e(bVar2, new String[]{"Description"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11424e;
    }
}
