package com.google.type;

import androidx.exifinterface.media.ExifInterface;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes3.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f15832a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f15833b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f15834c = Descriptors.FileDescriptor.s(new String[]{"\n\u001cgoogle/type/quaternion.proto\u0012\u000bgoogle.type\"8\n\nQuaternion\u0012\t\n\u0001x\u0018\u0001 \u0001(\u0001\u0012\t\n\u0001y\u0018\u0002 \u0001(\u0001\u0012\t\n\u0001z\u0018\u0003 \u0001(\u0001\u0012\t\n\u0001w\u0018\u0004 \u0001(\u0001Bo\n\u000fcom.google.typeB\u000fQuaternionProtoP\u0001Z@google.golang.org/genproto/googleapis/type/quaternion;quaternionø\u0001\u0001¢\u0002\u0003GTPb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f15832a = bVar;
        f15833b = new GeneratedMessageV3.e(bVar, new String[]{"X", "Y", "Z", ExifInterface.LONGITUDE_WEST});
    }

    public static Descriptors.FileDescriptor a() {
        return f15834c;
    }
}
