package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class m0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11417a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11418b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11419c = Descriptors.FileDescriptor.s(new String[]{"\n\u0014google/api/log.proto\u0012\ngoogle.api\u001a\u0016google/api/label.proto\"u\n\rLogDescriptor\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012+\n\u0006labels\u0018\u0002 \u0003(\u000b2\u001b.google.api.LabelDescriptor\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012\u0014\n\fdisplay_name\u0018\u0004 \u0001(\tBj\n\u000ecom.google.apiB\bLogProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{j0.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11417a = bVar;
        f11418b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Labels", "Description", "DisplayName"});
        j0.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11419c;
    }
}
