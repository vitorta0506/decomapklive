package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11452a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11453b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11454c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11455d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11456e = Descriptors.FileDescriptor.s(new String[]{"\n\u0018google/api/context.proto\u0012\ngoogle.api\"1\n\u0007Context\u0012&\n\u0005rules\u0018\u0001 \u0003(\u000b2\u0017.google.api.ContextRule\"\u008d\u0001\n\u000bContextRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012\u0011\n\trequested\u0018\u0002 \u0003(\t\u0012\u0010\n\bprovided\u0018\u0003 \u0003(\t\u0012\"\n\u001aallowed_request_extensions\u0018\u0004 \u0003(\t\u0012#\n\u001ballowed_response_extensions\u0018\u0005 \u0003(\tBn\n\u000ecom.google.apiB\fContextProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f11452a = bVar;
        f11453b = new GeneratedMessageV3.e(bVar, new String[]{"Rules"});
        Descriptors.b bVar2 = a().m().get(1);
        f11454c = bVar2;
        f11455d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "Requested", "Provided", "AllowedRequestExtensions", "AllowedResponseExtensions"});
    }

    public static Descriptors.FileDescriptor a() {
        return f11456e;
    }
}
