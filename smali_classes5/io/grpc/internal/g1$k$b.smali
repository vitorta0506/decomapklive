.class final Lio/grpc/internal/g1$k$b;
.super Lio/grpc/internal/z1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$k;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/s0;Lio/grpc/r;)Lio/grpc/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/z1<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic C:Lio/grpc/MethodDescriptor;

.field final synthetic D:Lio/grpc/s0;

.field final synthetic E:Lio/grpc/c;

.field final synthetic F:Lio/grpc/internal/a2;

.field final synthetic G:Lio/grpc/internal/t0;

.field final synthetic H:Lio/grpc/internal/z1$c0;

.field final synthetic I:Lio/grpc/r;

.field final synthetic J:Lio/grpc/internal/g1$k;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$k;Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;Lio/grpc/internal/a2;Lio/grpc/internal/t0;Lio/grpc/internal/z1$c0;Lio/grpc/r;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 1
    iput-object v0, v13, Lio/grpc/internal/g1$k$b;->J:Lio/grpc/internal/g1$k;

    move-object/from16 v2, p2

    iput-object v2, v13, Lio/grpc/internal/g1$k$b;->C:Lio/grpc/MethodDescriptor;

    move-object/from16 v3, p3

    iput-object v3, v13, Lio/grpc/internal/g1$k$b;->D:Lio/grpc/s0;

    iput-object v1, v13, Lio/grpc/internal/g1$k$b;->E:Lio/grpc/c;

    move-object/from16 v10, p5

    iput-object v10, v13, Lio/grpc/internal/g1$k$b;->F:Lio/grpc/internal/a2;

    move-object/from16 v11, p6

    iput-object v11, v13, Lio/grpc/internal/g1$k$b;->G:Lio/grpc/internal/t0;

    move-object/from16 v12, p7

    iput-object v12, v13, Lio/grpc/internal/g1$k$b;->H:Lio/grpc/internal/z1$c0;

    move-object/from16 v4, p8

    iput-object v4, v13, Lio/grpc/internal/g1$k$b;->I:Lio/grpc/r;

    .line 2
    iget-object v4, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    .line 3
    invoke-static {v4}, Lio/grpc/internal/g1;->y(Lio/grpc/internal/g1;)Lio/grpc/internal/z1$t;

    move-result-object v4

    iget-object v5, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    .line 4
    invoke-static {v5}, Lio/grpc/internal/g1;->z(Lio/grpc/internal/g1;)J

    move-result-wide v5

    iget-object v7, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    .line 5
    invoke-static {v7}, Lio/grpc/internal/g1;->A(Lio/grpc/internal/g1;)J

    move-result-wide v7

    iget-object v9, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    .line 6
    invoke-static {v9, v1}, Lio/grpc/internal/g1;->B(Lio/grpc/internal/g1;Lio/grpc/c;)Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v0, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    .line 7
    invoke-static {v0}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v14

    .line 8
    invoke-direct/range {v0 .. v12}, Lio/grpc/internal/z1;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/internal/z1$t;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/a2;Lio/grpc/internal/t0;Lio/grpc/internal/z1$c0;)V

    return-void
.end method


# virtual methods
.method f0(Lio/grpc/s0;Lio/grpc/k$a;IZ)Lio/grpc/internal/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$k$b;->E:Lio/grpc/c;

    invoke-virtual {v0, p2}, Lio/grpc/c;->r(Lio/grpc/k$a;)Lio/grpc/c;

    move-result-object p2

    .line 2
    invoke-static {p2, p1, p3, p4}, Lio/grpc/internal/GrpcUtil;->g(Lio/grpc/c;Lio/grpc/s0;IZ)[Lio/grpc/k;

    move-result-object p3

    .line 3
    iget-object p4, p0, Lio/grpc/internal/g1$k$b;->J:Lio/grpc/internal/g1$k;

    new-instance v0, Lio/grpc/internal/t1;

    iget-object v1, p0, Lio/grpc/internal/g1$k$b;->C:Lio/grpc/MethodDescriptor;

    invoke-direct {v0, v1, p1, p2}, Lio/grpc/internal/t1;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;)V

    .line 4
    invoke-static {p4, v0}, Lio/grpc/internal/g1$k;->b(Lio/grpc/internal/g1$k;Lio/grpc/n0$f;)Lio/grpc/internal/r;

    move-result-object p4

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$k$b;->I:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/g1$k$b;->C:Lio/grpc/MethodDescriptor;

    invoke-interface {p4, v1, p1, p2, p3}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p2, p0, Lio/grpc/internal/g1$k$b;->I:Lio/grpc/r;

    invoke-virtual {p2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/g1$k$b;->I:Lio/grpc/r;

    invoke-virtual {p2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw p1
.end method

.method g0()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$k$b;->J:Lio/grpc/internal/g1$k;

    iget-object v0, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->D(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/g1$x;->d(Lio/grpc/internal/z1;)V

    return-void
.end method

.method h0()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$k$b;->J:Lio/grpc/internal/g1$k;

    iget-object v0, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->D(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/g1$x;->a(Lio/grpc/internal/z1;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method