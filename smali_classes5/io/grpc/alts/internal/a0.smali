.class public final Lio/grpc/alts/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/a0$b;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/alts/internal/RpcProtocolVersions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->newBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->newBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->j0(I)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->k0(I)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->X()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->l0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->newBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->j0(I)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->k0(I)Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version$b;->X()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->m0(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->X()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/a0;->a:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-void
.end method

.method static a(Lio/grpc/alts/internal/RpcProtocolVersions;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/a0$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMaxRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMaxRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/alts/internal/a0;->c(Lio/grpc/alts/internal/RpcProtocolVersions$Version;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMaxRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMaxRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMinRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMinRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/alts/internal/a0;->c(Lio/grpc/alts/internal/RpcProtocolVersions$Version;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMinRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions;->getMinRpcVersion()Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    move-result-object p0

    .line 7
    :goto_1
    invoke-static {v0, p0}, Lio/grpc/alts/internal/a0;->c(Lio/grpc/alts/internal/RpcProtocolVersions$Version;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Lio/grpc/alts/internal/a0$b$a;

    invoke-direct {p0}, Lio/grpc/alts/internal/a0$b$a;-><init>()V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/a0$b$a;->e(Z)Lio/grpc/alts/internal/a0$b$a;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Lio/grpc/alts/internal/a0$b$a;->d(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/a0$b$a;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/grpc/alts/internal/a0$b$a;->c()Lio/grpc/alts/internal/a0$b;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Lio/grpc/alts/internal/a0$b$a;

    invoke-direct {p0}, Lio/grpc/alts/internal/a0$b$a;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/a0$b$a;->e(Z)Lio/grpc/alts/internal/a0$b$a;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/alts/internal/a0$b$a;->c()Lio/grpc/alts/internal/a0$b;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/a0;->a:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object v0
.end method

.method static c(Lio/grpc/alts/internal/RpcProtocolVersions$Version;Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMajor()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMajor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMinor()I

    move-result p0

    invoke-virtual {p1}, Lio/grpc/alts/internal/RpcProtocolVersions$Version;->getMinor()I

    move-result p1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
