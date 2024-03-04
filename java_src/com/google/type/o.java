package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15824a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15825b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f15826c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f15827d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15828e = Descriptors.FileDescriptor.s(new String[]{"\n\u001egoogle/type/phone_number.proto\u0012\u000bgoogle.type\"«\u0001\n\u000bPhoneNumber\u0012\u0015\n\u000be164_number\u0018\u0001 \u0001(\tH\u0000\u00128\n\nshort_code\u0018\u0002 \u0001(\u000b2\".google.type.PhoneNumber.ShortCodeH\u0000\u0012\u0011\n\textension\u0018\u0003 \u0001(\t\u001a0\n\tShortCode\u0012\u0013\n\u000bregion_code\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\tB\u0006\n\u0004kindBt\n\u000fcom.google.typeB\u0010PhoneNumberProtoP\u0001ZDgoogle.golang.org/genproto/googleapis/type/phone_number;phone_numberø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f15824a = bVar;
        f15825b = new GeneratedMessageV3.e(bVar, new String[]{"E164Number", "ShortCode", "Extension", "Kind"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f15826c = bVar2;
        f15827d = new GeneratedMessageV3.e(bVar2, new String[]{"RegionCode", "Number"});
    }

    public static Descriptors.FileDescriptor a() {
        return f15828e;
    }
}
