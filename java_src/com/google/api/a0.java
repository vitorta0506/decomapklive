package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f10938a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f10939b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f10940c = Descriptors.FileDescriptor.s(new String[]{"\n\u0019google/api/endpoint.proto\u0012\ngoogle.api\"Q\n\bEndpoint\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u0007aliases\u0018\u0002 \u0003(\tB\u0002\u0018\u0001\u0012\u000e\n\u0006target\u0018e \u0001(\t\u0012\u0012\n\nallow_cors\u0018\u0005 \u0001(\bBo\n\u000ecom.google.apiB\rEndpointProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f10938a = bVar;
        f10939b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Aliases", "Target", "AllowCors"});
    }

    public static Descriptors.FileDescriptor a() {
        return f10940c;
    }
}
