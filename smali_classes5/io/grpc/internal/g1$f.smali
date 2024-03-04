.class final Lio/grpc/internal/g1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1;->X0()Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$f;->a:Lio/grpc/internal/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$f;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->I(Lio/grpc/internal/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$f;->a:Lio/grpc/internal/g1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->J(Lio/grpc/internal/g1;Z)Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$f;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->K(Lio/grpc/internal/g1;)V

    return-void
.end method
