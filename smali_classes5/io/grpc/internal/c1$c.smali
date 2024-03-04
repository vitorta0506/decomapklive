.class public final Lio/grpc/internal/c1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/c1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/u;


# direct methods
.method public constructor <init>(Lio/grpc/internal/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/c1$c;->a:Lio/grpc/internal/u;

    return-void
.end method

.method static synthetic c(Lio/grpc/internal/c1$c;)Lio/grpc/internal/u;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/c1$c;->a:Lio/grpc/internal/u;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/c1$c;->a:Lio/grpc/internal/u;

    new-instance v1, Lio/grpc/internal/c1$c$a;

    invoke-direct {v1, p0}, Lio/grpc/internal/c1$c$a;-><init>(Lio/grpc/internal/c1$c;)V

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-interface {v0, v1, v2}, Lio/grpc/internal/r;->d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lio/grpc/internal/c1$c;->a:Lio/grpc/internal/u;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/k1;->b(Lio/grpc/Status;)V

    return-void
.end method
