package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class j1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11400a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11401b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11402c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11403d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11404e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11405f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11406g = Descriptors.FileDescriptor.s(new String[]{"\n!google/api/system_parameter.proto\u0012\ngoogle.api\"B\n\u0010SystemParameters\u0012.\n\u0005rules\u0018\u0001 \u0003(\u000b2\u001f.google.api.SystemParameterRule\"X\n\u0013SystemParameterRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012/\n\nparameters\u0018\u0002 \u0003(\u000b2\u001b.google.api.SystemParameter\"Q\n\u000fSystemParameter\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bhttp_header\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013url_query_parameter\u0018\u0003 \u0001(\tBv\n\u000ecom.google.apiB\u0014SystemParameterProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11400a = bVar;
        f11401b = new GeneratedMessageV3.e(bVar, new String[]{"Rules"});
        Descriptors.b bVar2 = a().m().get(1);
        f11402c = bVar2;
        f11403d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "Parameters"});
        Descriptors.b bVar3 = a().m().get(2);
        f11404e = bVar3;
        f11405f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "HttpHeader", "UrlQueryParameter"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11406g;
    }
}
