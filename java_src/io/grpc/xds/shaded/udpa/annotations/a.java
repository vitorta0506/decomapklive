package io.grpc.xds.shaded.udpa.annotations;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, Boolean> f50850a;

    /* renamed from: b  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50851b;

    static {
        GeneratedMessage.l<DescriptorProtos.FieldOptions, Boolean> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(Boolean.class, null);
        f50850a = newFileScopedGeneratedExtension;
        Descriptors.FileDescriptor s10 = Descriptors.FileDescriptor.s(new String[]{"\n udpa/annotations/sensitive.proto\u0012\u0010udpa.annotations\u001a google/protobuf/descriptor.proto:3\n\tsensitive\u0012\u001d.google.protobuf.FieldOptions\u0018÷¶Á$ \u0001(\bB$Z\"github.com/cncf/xds/go/annotationsb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        f50851b = s10;
        newFileScopedGeneratedExtension.g(s10.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f50851b;
    }
}
