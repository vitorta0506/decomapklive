.class public final Lio/grpc/alts/internal/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/e$b;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic a(Lio/grpc/alts/internal/e$b;)Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/e$b;->b:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/alts/internal/e$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/e$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lio/grpc/alts/internal/e$b;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/e$b;->c:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method


# virtual methods
.method public d()Lio/grpc/alts/internal/e;
    .locals 2

    new-instance v0, Lio/grpc/alts/internal/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/e;-><init>(Lio/grpc/alts/internal/e$b;Lio/grpc/alts/internal/e$a;)V

    return-object v0
.end method

.method public e(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/e$b;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/e$b;->b:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lio/grpc/alts/internal/e$b;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/e$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(Lcom/google/common/collect/ImmutableList;)Lio/grpc/alts/internal/e$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/alts/internal/e$b;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/alts/internal/e$b;->c:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method
