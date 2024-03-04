package com.google.api;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class p1 {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumOptions, VisibilityRule> f11440a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumValueOptions, VisibilityRule> f11441b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, VisibilityRule> f11442c;

    /* renamed from: d  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MessageOptions, VisibilityRule> f11443d;

    /* renamed from: e  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MethodOptions, VisibilityRule> f11444e;

    /* renamed from: f  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.ServiceOptions, VisibilityRule> f11445f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11446g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11447h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11448i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11449j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11450k;

    static {
        GeneratedMessage.l<DescriptorProtos.EnumOptions, VisibilityRule> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11440a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.EnumValueOptions, VisibilityRule> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11441b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.FieldOptions, VisibilityRule> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11442c = newFileScopedGeneratedExtension3;
        GeneratedMessage.l<DescriptorProtos.MessageOptions, VisibilityRule> newFileScopedGeneratedExtension4 = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11443d = newFileScopedGeneratedExtension4;
        GeneratedMessage.l<DescriptorProtos.MethodOptions, VisibilityRule> newFileScopedGeneratedExtension5 = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11444e = newFileScopedGeneratedExtension5;
        GeneratedMessage.l<DescriptorProtos.ServiceOptions, VisibilityRule> newFileScopedGeneratedExtension6 = GeneratedMessage.newFileScopedGeneratedExtension(VisibilityRule.class, VisibilityRule.getDefaultInstance());
        f11445f = newFileScopedGeneratedExtension6;
        f11450k = Descriptors.FileDescriptor.s(new String[]{"\n\u001bgoogle/api/visibility.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto\"7\n\nVisibility\u0012)\n\u0005rules\u0018\u0001 \u0003(\u000b2\u001a.google.api.VisibilityRule\"7\n\u000eVisibilityRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012\u0013\n\u000brestriction\u0018\u0002 \u0001(\t:T\n\u000fenum_visibility\u0012\u001c.google.protobuf.EnumOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRule:Z\n\u0010value_visibility\u0012!.google.protobuf.EnumValueOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRule:V\n\u0010field_visibility\u0012\u001d.google.protobuf.FieldOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRule:Z\n\u0012message_visibility\u0012\u001f.google.protobuf.MessageOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRule:X\n\u0011method_visibility\u0012\u001e.google.protobuf.MethodOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRule:V\n\u000eapi_visibility\u0012\u001f.google.protobuf.ServiceOptions\u0018¯Ê¼\" \u0001(\u000b2\u001a.google.api.VisibilityRuleBn\n\u000ecom.google.apiB\u000fVisibilityProtoP\u0001Z?google.golang.org/genproto/googleapis/api/visibility;visibilityø\u0001\u0001¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = a().m().get(0);
        f11446g = bVar;
        f11447h = new GeneratedMessageV3.e(bVar, new String[]{"Rules"});
        Descriptors.b bVar2 = a().m().get(1);
        f11448i = bVar2;
        f11449j = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "Restriction"});
        newFileScopedGeneratedExtension.g(f11450k.l().get(0));
        newFileScopedGeneratedExtension2.g(f11450k.l().get(1));
        newFileScopedGeneratedExtension3.g(f11450k.l().get(2));
        newFileScopedGeneratedExtension4.g(f11450k.l().get(3));
        newFileScopedGeneratedExtension5.g(f11450k.l().get(4));
        newFileScopedGeneratedExtension6.g(f11450k.l().get(5));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f11450k;
    }
}
