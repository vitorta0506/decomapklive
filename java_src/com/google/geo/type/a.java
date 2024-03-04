package com.google.geo.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.type.k;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f14206a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f14207b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14208c = Descriptors.FileDescriptor.s(new String[]{"\n\u001egoogle/geo/type/viewport.proto\u0012\u000fgoogle.geo.type\u001a\u0018google/type/latlng.proto\"O\n\bViewport\u0012 \n\u0003low\u0018\u0001 \u0001(\u000b2\u0013.google.type.LatLng\u0012!\n\u0004high\u0018\u0002 \u0001(\u000b2\u0013.google.type.LatLngBo\n\u0013com.google.geo.typeB\rViewportProtoP\u0001Z@google.golang.org/genproto/googleapis/geo/type/viewport;viewport¢\u0002\u0004GGTPb\u0006proto3"}, new Descriptors.FileDescriptor[]{k.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f14206a = bVar;
        f14207b = new GeneratedMessageV3.e(bVar, new String[]{"Low", "High"});
        k.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f14208c;
    }
}
