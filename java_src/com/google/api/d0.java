package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11191a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11192b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11193c = Descriptors.FileDescriptor.s(new String[]{"\n\u0019google/api/httpbody.proto\u0012\ngoogle.api\u001a\u0019google/protobuf/any.proto\"X\n\bHttpBody\u0012\u0014\n\fcontent_type\u0018\u0001 \u0001(\t\u0012\f\n\u0004data\u0018\u0002 \u0001(\f\u0012(\n\nextensions\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.AnyBh\n\u000ecom.google.apiB\rHttpBodyProtoP\u0001Z;google.golang.org/genproto/googleapis/api/httpbody;httpbodyø\u0001\u0001¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11191a = bVar;
        f11192b = new GeneratedMessageV3.e(bVar, new String[]{"ContentType", "Data", "Extensions"});
        com.google.protobuf.g.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11193c;
    }
}
