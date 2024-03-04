package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15835a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15836b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15837c = Descriptors.FileDescriptor.s(new String[]{"\n\u001bgoogle/type/timeofday.proto\u0012\u000bgoogle.type\"K\n\tTimeOfDay\u0012\r\n\u0005hours\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007minutes\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007seconds\u0018\u0003 \u0001(\u0005\u0012\r\n\u0005nanos\u0018\u0004 \u0001(\u0005Bl\n\u000fcom.google.typeB\u000eTimeOfDayProtoP\u0001Z>google.golang.org/genproto/googleapis/type/timeofday;timeofdayø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f15835a = bVar;
        f15836b = new GeneratedMessageV3.e(bVar, new String[]{"Hours", "Minutes", "Seconds", "Nanos"});
    }

    public static Descriptors.FileDescriptor a() {
        return f15837c;
    }
}
