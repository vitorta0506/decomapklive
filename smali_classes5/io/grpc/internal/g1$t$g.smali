.class final Lio/grpc/internal/g1$t$g;
.super Lio/grpc/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/g1$t$g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/z<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final l:Lio/grpc/r;

.field final m:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field final n:Lio/grpc/c;

.field final synthetic o:Lio/grpc/internal/g1$t;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$t;Lio/grpc/r;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r;",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$t$g;->o:Lio/grpc/internal/g1$t;

    .line 2
    iget-object v0, p1, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {v0, p4}, Lio/grpc/internal/g1;->B(Lio/grpc/internal/g1;Lio/grpc/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p1, p1, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->V(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$v;

    move-result-object p1

    invoke-virtual {p4}, Lio/grpc/c;->d()Lio/grpc/t;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/grpc/internal/z;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;)V

    .line 3
    iput-object p2, p0, Lio/grpc/internal/g1$t$g;->l:Lio/grpc/r;

    .line 4
    iput-object p3, p0, Lio/grpc/internal/g1$t$g;->m:Lio/grpc/MethodDescriptor;

    .line 5
    iput-object p4, p0, Lio/grpc/internal/g1$t$g;->n:Lio/grpc/c;

    return-void
.end method


# virtual methods
.method protected i()V
    .locals 2

    .line 1
    invoke-super {p0}, Lio/grpc/internal/z;->i()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$t$g;->o:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$t$g$b;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$t$g$b;-><init>(Lio/grpc/internal/g1$t$g;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method p()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/g1$t$g;->o:Lio/grpc/internal/g1$t;

    iget-object v0, v0, Lio/grpc/internal/g1$t;->d:Lio/grpc/internal/g1;

    iget-object v1, p0, Lio/grpc/internal/g1$t$g;->n:Lio/grpc/c;

    invoke-static {v0, v1}, Lio/grpc/internal/g1;->B(Lio/grpc/internal/g1;Lio/grpc/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/g1$t$g$a;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$t$g$a;-><init>(Lio/grpc/internal/g1$t$g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
