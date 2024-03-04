.class public final Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static e:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\n,security/proto/providers/google/meshca.proto\u0012\u0019google.security.meshca.v1\u001a\u001egoogle/protobuf/duration.proto\"f\n\u0016MeshCertificateRequest\u0012\u0012\n\nrequest_id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003csr\u0018\u0002 \u0001(\t\u0012+\n\u0008validity\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\"-\n\u0017MeshCertificateResponse\u0012\u0012\n\ncert_chain\u0018\u0001 \u0003(\t2\u0096\u0001\n\u0016MeshCertificateService\u0012|\n\u0011CreateCertificate\u00121.google.security.meshca.v1.MeshCertificateRequest\u001a2.google.security.meshca.v1.MeshCertificateResponse\"\u0000B.\n\u001dcom.google.security.meshca.v1B\u000bMeshCaProtoP\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 5
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "RequestId"

    const-string v4, "Csr"

    const-string v5, "Validity"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "CertChain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 8
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/com/google/security/meshca/v1/a;->e:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
