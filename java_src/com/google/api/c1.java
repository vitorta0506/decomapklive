package com.google.api;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import java.util.List;
/* loaded from: classes2.dex */
public final class c1 {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, ResourceReference> f10970a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FileOptions, List<ResourceDescriptor>> f10971b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MessageOptions, ResourceDescriptor> f10972c;

    /* renamed from: d  reason: collision with root package name */
    static final Descriptors.b f10973d;

    /* renamed from: e  reason: collision with root package name */
    static final GeneratedMessageV3.e f10974e;

    /* renamed from: f  reason: collision with root package name */
    static final Descriptors.b f10975f;

    /* renamed from: g  reason: collision with root package name */
    static final GeneratedMessageV3.e f10976g;

    /* renamed from: h  reason: collision with root package name */
    private static Descriptors.FileDescriptor f10977h;

    static {
        GeneratedMessage.l<DescriptorProtos.FieldOptions, ResourceReference> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(ResourceReference.class, ResourceReference.getDefaultInstance());
        f10970a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.FileOptions, List<ResourceDescriptor>> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(ResourceDescriptor.class, ResourceDescriptor.getDefaultInstance());
        f10971b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.MessageOptions, ResourceDescriptor> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(ResourceDescriptor.class, ResourceDescriptor.getDefaultInstance());
        f10972c = newFileScopedGeneratedExtension3;
        f10977h = Descriptors.FileDescriptor.s(new String[]{"\n\u0019google/api/resource.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto\"î\u0002\n\u0012ResourceDescriptor\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007pattern\u0018\u0002 \u0003(\t\u0012\u0012\n\nname_field\u0018\u0003 \u0001(\t\u00127\n\u0007history\u0018\u0004 \u0001(\u000e2&.google.api.ResourceDescriptor.History\u0012\u000e\n\u0006plural\u0018\u0005 \u0001(\t\u0012\u0010\n\bsingular\u0018\u0006 \u0001(\t\u00123\n\u0005style\u0018\n \u0003(\u000e2$.google.api.ResourceDescriptor.Style\"[\n\u0007History\u0012\u0017\n\u0013HISTORY_UNSPECIFIED\u0010\u0000\u0012\u001d\n\u0019ORIGINALLY_SINGLE_PATTERN\u0010\u0001\u0012\u0018\n\u0014FUTURE_MULTI_PATTERN\u0010\u0002\"8\n\u0005Style\u0012\u0015\n\u0011STYLE_UNSPECIFIED\u0010\u0000\u0012\u0018\n\u0014DECLARATIVE_FRIENDLY\u0010\u0001\"5\n\u0011ResourceReference\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\u0012\n\nchild_type\u0018\u0002 \u0001(\t:Y\n\u0012resource_reference\u0012\u001d.google.protobuf.FieldOptions\u0018\u009f\b \u0001(\u000b2\u001d.google.api.ResourceReference:Z\n\u0013resource_definition\u0012\u001c.google.protobuf.FileOptions\u0018\u009d\b \u0003(\u000b2\u001e.google.api.ResourceDescriptor:R\n\bresource\u0012\u001f.google.protobuf.MessageOptions\u0018\u009d\b \u0001(\u000b2\u001e.google.api.ResourceDescriptorBn\n\u000ecom.google.apiB\rResourceProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotationsø\u0001\u0001¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = a().m().get(0);
        f10973d = bVar;
        f10974e = new GeneratedMessageV3.e(bVar, new String[]{"Type", "Pattern", "NameField", "History", "Plural", "Singular", "Style"});
        Descriptors.b bVar2 = a().m().get(1);
        f10975f = bVar2;
        f10976g = new GeneratedMessageV3.e(bVar2, new String[]{"Type", "ChildType"});
        newFileScopedGeneratedExtension.g(f10977h.l().get(0));
        newFileScopedGeneratedExtension2.g(f10977h.l().get(1));
        newFileScopedGeneratedExtension3.g(f10977h.l().get(2));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f10977h;
    }
}
