package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f14999a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15000b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f15001c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f15002d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f15003e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f15004f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15005g = Descriptors.FileDescriptor.s(new String[]{"\n\u0019google/protobuf/api.proto\u0012\u000fgoogle.protobuf\u001a$google/protobuf/source_context.proto\u001a\u001agoogle/protobuf/type.proto\"\u0081\u0002\n\u0003Api\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012(\n\u0007methods\u0018\u0002 \u0003(\u000b2\u0017.google.protobuf.Method\u0012(\n\u0007options\u0018\u0003 \u0003(\u000b2\u0017.google.protobuf.Option\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u00126\n\u000esource_context\u0018\u0005 \u0001(\u000b2\u001e.google.protobuf.SourceContext\u0012&\n\u0006mixins\u0018\u0006 \u0003(\u000b2\u0016.google.protobuf.Mixin\u0012'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"Õ\u0001\n\u0006Method\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010request_type_url\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011request_streaming\u0018\u0003 \u0001(\b\u0012\u0019\n\u0011response_type_url\u0018\u0004 \u0001(\t\u0012\u001a\n\u0012response_streaming\u0018\u0005 \u0001(\b\u0012(\n\u0007options\u0018\u0006 \u0003(\u000b2\u0017.google.protobuf.Option\u0012'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"#\n\u0005Mixin\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\f\n\u0004root\u0018\u0002 \u0001(\tBv\n\u0013com.google.protobufB\bApiProtoP\u0001Z,google.golang.org/protobuf/types/known/apipb¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[]{t2.a(), c3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f14999a = bVar;
        f15000b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Methods", "Options", "Version", "SourceContext", "Mixins", "Syntax"});
        Descriptors.b bVar2 = a().m().get(1);
        f15001c = bVar2;
        f15002d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "RequestTypeUrl", "RequestStreaming", "ResponseTypeUrl", "ResponseStreaming", "Options", "Syntax"});
        Descriptors.b bVar3 = a().m().get(2);
        f15003e = bVar3;
        f15004f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "Root"});
        t2.a();
        c3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f15005g;
    }
}
