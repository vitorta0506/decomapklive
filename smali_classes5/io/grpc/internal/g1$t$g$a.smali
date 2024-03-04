.class Lio/grpc/internal/g1$t$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$t$g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1$t$g;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$t$g;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    iget-object v0, v0, Lio/grpc/internal/g1$t$g;->l:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    iget-object v2, v1, Lio/grpc/internal/g1$t$g;->o:Lio/grpc/internal/g1$t;

    iget-object v3, v1, Lio/grpc/internal/g1$t$g;->m:Lio/grpc/MethodDescriptor;

    iget-object v1, v1, Lio/grpc/internal/g1$t$g;->n:Lio/grpc/c;

    invoke-static {v2, v3, v1}, Lio/grpc/internal/g1$t;->l(Lio/grpc/internal/g1$t;Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    iget-object v2, v2, Lio/grpc/internal/g1$t$g;->l:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    invoke-virtual {v0, v1}, Lio/grpc/internal/z;->n(Lio/grpc/g;)V

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    iget-object v1, v0, Lio/grpc/internal/g1$t$g;->o:Lio/grpc/internal/g1$t;

    iget-object v1, v1, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v1, v1, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v2, Lio/grpc/internal/g1$t$g$b;

    invoke-direct {v2, v0}, Lio/grpc/internal/g1$t$g$b;-><init>(Lio/grpc/internal/g1$t$g;)V

    invoke-virtual {v1, v2}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lio/grpc/internal/g1$t$g$a;->a:Lio/grpc/internal/g1$t$g;

    iget-object v2, v2, Lio/grpc/internal/g1$t$g;->l:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v1
.end method
