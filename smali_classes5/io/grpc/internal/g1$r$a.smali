.class final Lio/grpc/internal/g1$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$r;->a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/q1;

.field final synthetic b:Lio/grpc/internal/g1$r;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$r;Lio/grpc/internal/q1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/g1$r$a;->b:Lio/grpc/internal/g1$r;

    iput-object p2, p0, Lio/grpc/internal/g1$r$a;->a:Lio/grpc/internal/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r$a;->b:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->a0(Lio/grpc/internal/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$r$a;->a:Lio/grpc/internal/q1;

    invoke-virtual {v0}, Lio/grpc/internal/q1;->m()Lio/grpc/q0;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$r$a;->b:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->R(Lio/grpc/internal/g1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$r$a;->b:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->D0(Lio/grpc/internal/g1;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/g1$r$a;->a:Lio/grpc/internal/q1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
