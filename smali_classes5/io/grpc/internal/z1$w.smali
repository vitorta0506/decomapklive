.class final Lio/grpc/internal/z1$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "w"
.end annotation


# instance fields
.field final a:Lio/grpc/internal/z1$u;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/internal/z1$w;->a:Lio/grpc/internal/z1$u;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/z1$w;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->u(Lio/grpc/internal/z1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/z1$w$a;

    invoke-direct {v1, p0}, Lio/grpc/internal/z1$w$a;-><init>(Lio/grpc/internal/z1$w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
