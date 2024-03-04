package com.google.api;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import java.util.List;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.MethodOptions, List<String>> f11413a;

    /* renamed from: b  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.ServiceOptions, String> f11414b;

    /* renamed from: c  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.ServiceOptions, String> f11415c;

    /* renamed from: d  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11416d;

    static {
        GeneratedMessage.l<DescriptorProtos.MethodOptions, List<String>> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        f11413a = newFileScopedGeneratedExtension;
        GeneratedMessage.l<DescriptorProtos.ServiceOptions, String> newFileScopedGeneratedExtension2 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        f11414b = newFileScopedGeneratedExtension2;
        GeneratedMessage.l<DescriptorProtos.ServiceOptions, String> newFileScopedGeneratedExtension3 = GeneratedMessage.newFileScopedGeneratedExtension(String.class, null);
        f11415c = newFileScopedGeneratedExtension3;
        Descriptors.FileDescriptor s10 = Descriptors.FileDescriptor.s(new String[]{"\n\u0017google/api/client.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto:9\n\u0010method_signature\u0012\u001e.google.protobuf.MethodOptions\u0018\u009b\b \u0003(\t:6\n\fdefault_host\u0012\u001f.google.protobuf.ServiceOptions\u0018\u0099\b \u0001(\t:6\n\foauth_scopes\u0012\u001f.google.protobuf.ServiceOptions\u0018\u009a\b \u0001(\tBi\n\u000ecom.google.apiB\u000bClientProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        f11416d = s10;
        newFileScopedGeneratedExtension.g(s10.l().get(0));
        newFileScopedGeneratedExtension2.g(f11416d.l().get(1));
        newFileScopedGeneratedExtension3.g(f11416d.l().get(2));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f11416d;
    }
}
