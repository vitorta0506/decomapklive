package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15820a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15821b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15822c = Descriptors.FileDescriptor.s(new String[]{"\n\u0017google/type/money.proto\u0012\u000bgoogle.type\"<\n\u0005Money\u0012\u0015\n\rcurrency_code\u0018\u0001 \u0001(\t\u0012\r\n\u0005units\u0018\u0002 \u0001(\u0003\u0012\r\n\u0005nanos\u0018\u0003 \u0001(\u0005B`\n\u000fcom.google.typeB\nMoneyProtoP\u0001Z6google.golang.org/genproto/googleapis/type/money;moneyø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f15820a = bVar;
        f15821b = new GeneratedMessageV3.e(bVar, new String[]{"CurrencyCode", "Units", "Nanos"});
    }

    public static Descriptors.FileDescriptor a() {
        return f15822c;
    }
}
