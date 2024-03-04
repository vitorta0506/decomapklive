package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11500a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11501b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11502c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11503d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11504e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11505f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11506g = Descriptors.FileDescriptor.s(new String[]{"\n\u001egoogle/api/documentation.proto\u0012\ngoogle.api\"»\u0001\n\rDocumentation\u0012\u000f\n\u0007summary\u0018\u0001 \u0001(\t\u0012\u001f\n\u0005pages\u0018\u0005 \u0003(\u000b2\u0010.google.api.Page\u0012,\n\u0005rules\u0018\u0003 \u0003(\u000b2\u001d.google.api.DocumentationRule\u0012\u001e\n\u0016documentation_root_url\u0018\u0004 \u0001(\t\u0012\u0018\n\u0010service_root_url\u0018\u0006 \u0001(\t\u0012\u0010\n\boverview\u0018\u0002 \u0001(\t\"[\n\u0011DocumentationRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\u001f\n\u0017deprecation_description\u0018\u0003 \u0001(\t\"I\n\u0004Page\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\t\u0012\"\n\bsubpages\u0018\u0003 \u0003(\u000b2\u0010.google.api.PageBt\n\u000ecom.google.apiB\u0012DocumentationProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11500a = bVar;
        f11501b = new GeneratedMessageV3.e(bVar, new String[]{"Summary", "Pages", "Rules", "DocumentationRootUrl", "ServiceRootUrl", "Overview"});
        Descriptors.b bVar2 = a().m().get(1);
        f11502c = bVar2;
        f11503d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "Description", "DeprecationDescription"});
        Descriptors.b bVar3 = a().m().get(2);
        f11504e = bVar3;
        f11505f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Content", "Subpages"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11506g;
    }
}
