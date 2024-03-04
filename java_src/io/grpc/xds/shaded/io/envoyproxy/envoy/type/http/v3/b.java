package io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50250a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50251b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50252c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50253d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50254e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50255f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50256g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50257h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50258i = Descriptors.FileDescriptor.s(new String[]{"\n,envoy/type/http/v3/path_transformation.proto\u0012\u0012envoy.type.http.v3\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"î\u0002\n\u0012PathTransformation\u0012D\n\noperations\u0018\u0001 \u0003(\u000b20.envoy.type.http.v3.PathTransformation.Operation\u001a\u0091\u0002\n\tOperation\u0012h\n\u0017normalize_path_rfc_3986\u0018\u0002 \u0001(\u000b2E.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986H\u0000\u0012V\n\rmerge_slashes\u0018\u0003 \u0001(\u000b2=.envoy.type.http.v3.PathTransformation.Operation.MergeSlashesH\u0000\u001a\u0016\n\u0014NormalizePathRFC3986\u001a\u000e\n\fMergeSlashesB\u001a\n\u0013operation_specifier\u0012\u0003øB\u0001BE\n io.envoyproxy.envoy.type.http.v3B\u0017PathTransformationProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50250a = bVar;
        f50251b = new GeneratedMessageV3.e(bVar, new String[]{"Operations"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50252c = bVar2;
        f50253d = new GeneratedMessageV3.e(bVar2, new String[]{"NormalizePathRfc3986", "MergeSlashes", "OperationSpecifier"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f50254e = bVar3;
        f50255f = new GeneratedMessageV3.e(bVar3, new String[0]);
        Descriptors.b bVar4 = bVar2.o().get(1);
        f50256g = bVar4;
        f50257h = new GeneratedMessageV3.e(bVar4, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f50258i, k10);
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50258i;
    }
}
