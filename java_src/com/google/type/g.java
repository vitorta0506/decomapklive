package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15805a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15806b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15807c = Descriptors.FileDescriptor.s(new String[]{"\n\u0016google/type/expr.proto\u0012\u000bgoogle.type\"P\n\u0004Expr\u0012\u0012\n\nexpression\u0018\u0001 \u0001(\t\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012\u0010\n\blocation\u0018\u0004 \u0001(\tBZ\n\u000fcom.google.typeB\tExprProtoP\u0001Z4google.golang.org/genproto/googleapis/type/expr;expr¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f15805a = bVar;
        f15806b = new GeneratedMessageV3.e(bVar, new String[]{"Expression", "Title", "Description", "Location"});
    }

    public static Descriptors.FileDescriptor a() {
        return f15807c;
    }
}
