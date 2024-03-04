.class public final Lio/grpc/alts/internal/e;
.super Lio/grpc/alts/internal/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/e$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/alts/internal/e$b;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lio/grpc/alts/internal/e$b;->a(Lio/grpc/alts/internal/e$b;)Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/alts/internal/h;-><init>(Lio/grpc/alts/internal/RpcProtocolVersions;)V

    .line 3
    invoke-static {p1}, Lio/grpc/alts/internal/e$b;->b(Lio/grpc/alts/internal/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/e;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lio/grpc/alts/internal/e$b;->c(Lio/grpc/alts/internal/e$b;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/e;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/e$b;Lio/grpc/alts/internal/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/e;-><init>(Lio/grpc/alts/internal/e$b;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/e;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
