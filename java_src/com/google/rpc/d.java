package com.google.rpc;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.g;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15719a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15720b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15721c = Descriptors.FileDescriptor.s(new String[]{"\n\u0017google/rpc/status.proto\u0012\ngoogle.rpc\u001a\u0019google/protobuf/any.proto\"N\n\u0006Status\u0012\f\n\u0004code\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007message\u0018\u0002 \u0001(\t\u0012%\n\u0007details\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.AnyBa\n\u000ecom.google.rpcB\u000bStatusProtoP\u0001Z7google.golang.org/genproto/googleapis/rpc/status;statusø\u0001\u0001¢\u0002\u0003RPCb\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f15719a = bVar;
        f15720b = new GeneratedMessageV3.e(bVar, new String[]{"Code", "Message", "Details"});
        g.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f15721c;
    }
}
