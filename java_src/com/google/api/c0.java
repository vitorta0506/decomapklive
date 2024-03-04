package com.google.api;

import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import java.util.List;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FieldOptions, List<FieldBehavior>> f10968a;

    /* renamed from: b  reason: collision with root package name */
    private static Descriptors.FileDescriptor f10969b;

    static {
        GeneratedMessage.l<DescriptorProtos.FieldOptions, List<FieldBehavior>> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(FieldBehavior.class, null);
        f10968a = newFileScopedGeneratedExtension;
        Descriptors.FileDescriptor s10 = Descriptors.FileDescriptor.s(new String[]{"\n\u001fgoogle/api/field_behavior.proto\u0012\ngoogle.api\u001a google/protobuf/descriptor.proto*¦\u0001\n\rFieldBehavior\u0012\u001e\n\u001aFIELD_BEHAVIOR_UNSPECIFIED\u0010\u0000\u0012\f\n\bOPTIONAL\u0010\u0001\u0012\f\n\bREQUIRED\u0010\u0002\u0012\u000f\n\u000bOUTPUT_ONLY\u0010\u0003\u0012\u000e\n\nINPUT_ONLY\u0010\u0004\u0012\r\n\tIMMUTABLE\u0010\u0005\u0012\u0012\n\u000eUNORDERED_LIST\u0010\u0006\u0012\u0015\n\u0011NON_EMPTY_DEFAULT\u0010\u0007:Q\n\u000efield_behavior\u0012\u001d.google.protobuf.FieldOptions\u0018\u009c\b \u0003(\u000e2\u0019.google.api.FieldBehaviorBp\n\u000ecom.google.apiB\u0012FieldBehaviorProtoP\u0001ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        f10969b = s10;
        newFileScopedGeneratedExtension.g(s10.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor a() {
        return f10969b;
    }
}
