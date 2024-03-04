.class Lio/grpc/internal/a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/a0;->g(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/internal/a0;


# direct methods
.method constructor <init>(Lio/grpc/internal/a0;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/a0$d;->b:Lio/grpc/internal/a0;

    iput-object p2, p0, Lio/grpc/internal/a0$d;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/a0$d;->b:Lio/grpc/internal/a0;

    invoke-static {v0}, Lio/grpc/internal/a0;->a(Lio/grpc/internal/a0;)Lio/grpc/internal/k1$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/a0$d;->a:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/internal/k1$a;->a(Lio/grpc/Status;)V

    return-void
.end method
