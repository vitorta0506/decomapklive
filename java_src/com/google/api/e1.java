package com.google.api;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class e1 {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MethodOptions, RoutingRule> f11194a;

    /* renamed from: b  reason: collision with root package name */
    static final Descriptors.b f11195b;

    /* renamed from: c  reason: collision with root package name */
    static final GeneratedMessageV3.e f11196c;

    /* renamed from: d  reason: collision with root package name */
    static final Descriptors.b f11197d;

    /* renamed from: e  reason: collision with root package name */
    static final GeneratedMessageV3.e f11198e;

    /* renamed from: f  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11199f;

    static {
        GeneratedMessage.l<DescriptorProtos.MethodOptions, RoutingRule> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(RoutingRule.class, RoutingRule.getDefaultInstance());
        f11194a = newFileScopedGeneratedExtension;
        f11199f = Descriptors.FileDescriptor.s(new String[]{"\n\u0018google/api/routing.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto\"G\n\u000bRoutingRule\u00128\n\u0012routing_parameters\u0018\u0002 \u0003(\u000b2\u001c.google.api.RoutingParameter\"8\n\u0010RoutingParameter\u0012\r\n\u0005field\u0018\u0001 \u0001(\t\u0012\u0015\n\rpath_template\u0018\u0002 \u0001(\t:K\n\u0007routing\u0012\u001e.google.protobuf.MethodOptions\u0018±Ê¼\" \u0001(\u000b2\u0017.google.api.RoutingRuleBj\n\u000ecom.google.apiB\fRoutingProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = a().m().get(0);
        f11195b = bVar;
        f11196c = new GeneratedMessageV3.e(bVar, new String[]{"RoutingParameters"});
        Descriptors.b bVar2 = a().m().get(1);
        f11197d = bVar2;
        f11198e = new GeneratedMessageV3.e(bVar2, new String[]{"Field", "PathTemplate"});
        newFileScopedGeneratedExtension.g(f11199f.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f11199f;
    }
}
