package io.grpc.xds.shaded.com.github.udpa.udpa.type.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45476a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45477b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45478c = Descriptors.FileDescriptor.s(new String[]{"\n\u001fudpa/type/v1/typed_struct.proto\u0012\fudpa.type.v1\u001a\u0017validate/validate.proto\u001a\u001cgoogle/protobuf/struct.proto\"G\n\u000bTypedStruct\u0012\u0010\n\btype_url\u0018\u0001 \u0001(\t\u0012&\n\u0005value\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructBW\n\u001ccom.github.udpa.udpa.type.v1B\u0010TypedStructProtoP\u0001Z#github.com/cncf/xds/go/udpa/type/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{Validate.U(), v2.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45476a = bVar;
        f45477b = new GeneratedMessageV3.e(bVar, new String[]{"TypeUrl", "Value"});
        Validate.U();
        v2.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f45478c;
    }
}
