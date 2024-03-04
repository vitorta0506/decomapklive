.class Lio/grpc/internal/b0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/b0;->e(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/internal/b0;


# direct methods
.method constructor <init>(Lio/grpc/internal/b0;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/b0$m;->b:Lio/grpc/internal/b0;

    iput-object p2, p0, Lio/grpc/internal/b0$m;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/b0$m;->b:Lio/grpc/internal/b0;

    invoke-static {v0}, Lio/grpc/internal/b0;->p(Lio/grpc/internal/b0;)Lio/grpc/internal/q;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/b0$m;->a:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void
.end method
