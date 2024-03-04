.class final Lio/grpc/alts/internal/a0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/a0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/grpc/alts/internal/a0$b$a;->b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    return-void
.end method

.method static synthetic a(Lio/grpc/alts/internal/a0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/alts/internal/a0$b$a;->a:Z

    return p0
.end method

.method static synthetic b(Lio/grpc/alts/internal/a0$b$a;)Lio/grpc/alts/internal/RpcProtocolVersions$Version;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/a0$b$a;->b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    return-object p0
.end method


# virtual methods
.method public c()Lio/grpc/alts/internal/a0$b;
    .locals 2

    new-instance v0, Lio/grpc/alts/internal/a0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/a0$b;-><init>(Lio/grpc/alts/internal/a0$b$a;Lio/grpc/alts/internal/a0$a;)V

    return-object v0
.end method

.method public d(Lio/grpc/alts/internal/RpcProtocolVersions$Version;)Lio/grpc/alts/internal/a0$b$a;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/a0$b$a;->b:Lio/grpc/alts/internal/RpcProtocolVersions$Version;

    return-object p0
.end method

.method public e(Z)Lio/grpc/alts/internal/a0$b$a;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/alts/internal/a0$b$a;->a:Z

    return-object p0
.end method
