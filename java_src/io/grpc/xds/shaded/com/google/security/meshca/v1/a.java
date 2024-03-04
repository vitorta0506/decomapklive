package io.grpc.xds.shaded.com.google.security.meshca.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.w;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45747a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45748b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45749c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45750d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45751e = Descriptors.FileDescriptor.s(new String[]{"\n,security/proto/providers/google/meshca.proto\u0012\u0019google.security.meshca.v1\u001a\u001egoogle/protobuf/duration.proto\"f\n\u0016MeshCertificateRequest\u0012\u0012\n\nrequest_id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003csr\u0018\u0002 \u0001(\t\u0012+\n\bvalidity\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"-\n\u0017MeshCertificateResponse\u0012\u0012\n\ncert_chain\u0018\u0001 \u0003(\t2\u0096\u0001\n\u0016MeshCertificateService\u0012|\n\u0011CreateCertificate\u00121.google.security.meshca.v1.MeshCertificateRequest\u001a2.google.security.meshca.v1.MeshCertificateResponse\"\u0000B.\n\u001dcom.google.security.meshca.v1B\u000bMeshCaProtoP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{w.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45747a = bVar;
        f45748b = new GeneratedMessageV3.e(bVar, new String[]{"RequestId", "Csr", "Validity"});
        Descriptors.b bVar2 = a().m().get(1);
        f45749c = bVar2;
        f45750d = new GeneratedMessageV3.e(bVar2, new String[]{"CertChain"});
        w.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f45751e;
    }
}
