package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.a3;
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15811a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15812b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15813c = Descriptors.FileDescriptor.s(new String[]{"\n\u001agoogle/type/interval.proto\u0012\u000bgoogle.type\u001a\u001fgoogle/protobuf/timestamp.proto\"h\n\bInterval\u0012.\n\nstart_time\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012,\n\bend_time\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.TimestampBi\n\u000fcom.google.typeB\rIntervalProtoP\u0001Z<google.golang.org/genproto/googleapis/type/interval;intervalø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[]{a3.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f15811a = bVar;
        f15812b = new GeneratedMessageV3.e(bVar, new String[]{"StartTime", "EndTime"});
        a3.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f15813c;
    }
}
