package io.grpc.xds.shaded.envoy.annotations;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, Boolean> f45757a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, String> f45758b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumValueOptions, Boolean> f45759c;

    /* renamed from: d  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.EnumValueOptions, String> f45760d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45761e;

    static {
        GeneratedMessage.l<DescriptorProtos.FieldOptions, Boolean> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        f45757a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.FieldOptions, String> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        f45758b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.EnumValueOptions, Boolean> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        f45759c = newFileScopedGeneratedExtension3;
        GeneratedMessage.l<DescriptorProtos.EnumValueOptions, String> newFileScopedGeneratedExtension4 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        f45760d = newFileScopedGeneratedExtension4;
        Descriptors.FileDescriptor s10 = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/annotations/deprecation.proto\u0012\u0011envoy.annotations\u001a google/protobuf/descriptor.proto:?\n\u0015disallowed_by_default\u0012\u001d.google.protobuf.FieldOptions\u0018ç\u00ad®Z \u0001(\b:E\n\u001bdeprecated_at_minor_version\u0012\u001d.google.protobuf.FieldOptions\u0018òè\u0080K \u0001(\t:H\n\u001adisallowed_by_default_enum\u0012!.google.protobuf.EnumValueOptions\u0018õÎ¶! \u0001(\b:N\n deprecated_at_minor_version_enum\u0012!.google.protobuf.EnumValueOptions\u0018Á¾³V \u0001(\tb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        f45761e = s10;
        newFileScopedGeneratedExtension.g(s10.l().get(0));
        newFileScopedGeneratedExtension2.g(f45761e.l().get(1));
        newFileScopedGeneratedExtension3.g(f45761e.l().get(2));
        newFileScopedGeneratedExtension4.g(f45761e.l().get(3));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f45761e;
    }
}
