.class Lio/grpc/internal/z1$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->e(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1$q;->b:Lio/grpc/internal/z1;

    iput-object p2, p0, Lio/grpc/internal/z1$q;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$q;->b:Lio/grpc/internal/z1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/z1;->s(Lio/grpc/internal/z1;Z)Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/z1$q;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->C(Lio/grpc/internal/z1;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/z1$q;->a:Lio/grpc/Status;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/internal/ClientStreamListener;->d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    return-void
.end method
