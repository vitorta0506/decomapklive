.class Lxg/f$b;
.super Lio/grpc/internal/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyg/c;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lokio/Buffer;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private final H:Lxg/b;

.field private final I:Lxg/o;

.field private final J:Lxg/g;

.field private K:Z

.field private final L:Lqh/d;

.field final synthetic M:Lxg/f;

.field private final y:I

.field private final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lxg/f;ILio/grpc/internal/i2;Ljava/lang/Object;Lxg/b;Lxg/o;Lxg/g;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg/f$b;->M:Lxg/f;

    .line 2
    invoke-static {p1}, Lxg/f;->C(Lxg/f;)Lio/grpc/internal/p2;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lio/grpc/internal/u0;-><init>(ILio/grpc/internal/i2;Lio/grpc/internal/p2;)V

    .line 3
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lxg/f$b;->B:Lokio/Buffer;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lxg/f$b;->C:Z

    .line 5
    iput-boolean p1, p0, Lxg/f$b;->D:Z

    .line 6
    iput-boolean p1, p0, Lxg/f$b;->E:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lxg/f$b;->K:Z

    const-string p1, "lock"

    .line 8
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lxg/f$b;->z:Ljava/lang/Object;

    .line 9
    iput-object p5, p0, Lxg/f$b;->H:Lxg/b;

    .line 10
    iput-object p6, p0, Lxg/f$b;->I:Lxg/o;

    .line 11
    iput-object p7, p0, Lxg/f$b;->J:Lxg/g;

    .line 12
    iput p8, p0, Lxg/f$b;->F:I

    .line 13
    iput p8, p0, Lxg/f$b;->G:I

    .line 14
    iput p8, p0, Lxg/f$b;->y:I

    .line 15
    invoke-static {p9}, Lqh/c;->b(Ljava/lang/String;)Lqh/d;

    move-result-object p1

    iput-object p1, p0, Lxg/f$b;->L:Lqh/d;

    return-void
.end method

.method static synthetic Y(Lxg/f$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxg/f$b;->z:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic Z(Lxg/f$b;Lio/grpc/s0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lxg/f$b;->g0(Lio/grpc/s0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a0(Lxg/f$b;Lokio/Buffer;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lxg/f$b;->e0(Lokio/Buffer;ZZ)V

    return-void
.end method

.method static synthetic b0(Lxg/f$b;Lio/grpc/Status;ZLio/grpc/s0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lxg/f$b;->c0(Lio/grpc/Status;ZLio/grpc/s0;)V

    return-void
.end method

.method private c0(Lio/grpc/Status;ZLio/grpc/s0;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lxg/f$b;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxg/f$b;->E:Z

    .line 3
    iget-boolean v1, p0, Lxg/f$b;->K:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object p2, p0, Lxg/f$b;->J:Lxg/g;

    iget-object v1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {p2, v1}, Lxg/g;->j0(Lxg/f;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lxg/f$b;->A:Ljava/util/List;

    .line 6
    iget-object p2, p0, Lxg/f$b;->B:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->clear()V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lxg/f$b;->K:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p3, Lio/grpc/s0;

    invoke-direct {p3}, Lio/grpc/s0;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lxg/f$b;->J:Lxg/g;

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    .line 10
    invoke-virtual {v0}, Lxg/f;->P()I

    move-result v2

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    sget-object v6, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    .line 11
    invoke-virtual/range {v1 .. v7}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    :goto_1
    return-void
.end method

.method private d0()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/a$c;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lxg/f$b;->J:Lxg/g;

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {v0}, Lxg/f;->P()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v5, 0x0

    sget-object v6, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v8, p0, Lxg/f$b;->J:Lxg/g;

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {v0}, Lxg/f;->P()I

    move-result v9

    const/4 v10, 0x0

    sget-object v11, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    :goto_0
    return-void
.end method

.method private e0(Lokio/Buffer;ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lxg/f$b;->E:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lxg/f$b;->K:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    iget-object v0, p0, Lxg/f$b;->B:Lokio/Buffer;

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 5
    iget-boolean p1, p0, Lxg/f$b;->C:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lxg/f$b;->C:Z

    .line 6
    iget-boolean p1, p0, Lxg/f$b;->D:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lxg/f$b;->D:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {v0}, Lxg/f;->P()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lxg/f$b;->I:Lxg/o;

    iget-object v1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {v1}, Lxg/f;->P()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1, p3}, Lxg/o;->c(ZILokio/Buffer;Z)V

    :goto_1
    return-void
.end method

.method private g0(Lio/grpc/s0;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    .line 2
    invoke-static {v0}, Lxg/f;->H(Lxg/f;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    .line 3
    invoke-static {v0}, Lxg/f;->I(Lxg/f;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    .line 4
    invoke-static {v0}, Lxg/f;->B(Lxg/f;)Z

    move-result v5

    iget-object v0, p0, Lxg/f$b;->J:Lxg/g;

    .line 5
    invoke-virtual {v0}, Lxg/g;->d0()Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-static/range {v1 .. v6}, Lxg/c;->a(Lio/grpc/s0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lxg/f$b;->A:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lxg/f$b;->J:Lxg/g;

    iget-object p2, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {p1, p2}, Lxg/g;->q0(Lxg/f;)V

    return-void
.end method


# virtual methods
.method protected R(Lio/grpc/Status;ZLio/grpc/s0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lxg/f$b;->c0(Lio/grpc/Status;ZLio/grpc/s0;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lxg/f$b;->G:I

    sub-int/2addr v0, p1

    iput v0, p0, Lxg/f$b;->G:I

    int-to-float p1, v0

    .line 2
    iget v1, p0, Lxg/f$b;->y:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget p1, p0, Lxg/f$b;->F:I

    add-int/2addr p1, v1

    iput p1, p0, Lxg/f$b;->F:I

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lxg/f$b;->G:I

    .line 5
    iget-object p1, p0, Lxg/f$b;->H:Lxg/b;

    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {v0}, Lxg/f;->P()I

    move-result v0

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lxg/b;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lxg/f$b;->R(Lio/grpc/Status;ZLio/grpc/s0;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxg/f$b;->d0()V

    .line 2
    invoke-super {p0, p1}, Lio/grpc/internal/u0;->d(Z)V

    return-void
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxg/f$b;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {v0}, Lxg/f;->E(Lxg/f;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "the stream has been started with id %s"

    invoke-static {v0, v2, p1}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {v0, p1}, Lxg/f;->F(Lxg/f;I)I

    .line 3
    iget-object p1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {p1}, Lxg/f;->J(Lxg/f;)Lxg/f$b;

    move-result-object p1

    invoke-virtual {p1}, Lxg/f$b;->s()V

    .line 4
    iget-boolean p1, p0, Lxg/f$b;->K:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object v2, p0, Lxg/f$b;->H:Lxg/b;

    iget-object p1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {p1}, Lxg/f;->B(Lxg/f;)Z

    move-result v3

    const/4 v4, 0x0

    iget-object p1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {p1}, Lxg/f;->E(Lxg/f;)I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lxg/f$b;->A:Ljava/util/List;

    invoke-virtual/range {v2 .. v7}, Lxg/b;->synStream(ZZIILjava/util/List;)V

    .line 6
    iget-object p1, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {p1}, Lxg/f;->G(Lxg/f;)Lio/grpc/internal/i2;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/i2;->c()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lxg/f$b;->A:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lxg/f$b;->B:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 9
    iget-object p1, p0, Lxg/f$b;->I:Lxg/o;

    iget-boolean v0, p0, Lxg/f$b;->C:Z

    iget-object v2, p0, Lxg/f$b;->M:Lxg/f;

    invoke-static {v2}, Lxg/f;->E(Lxg/f;)I

    move-result v2

    iget-object v3, p0, Lxg/f$b;->B:Lokio/Buffer;

    iget-boolean v4, p0, Lxg/f$b;->D:Z

    invoke-virtual {p1, v0, v2, v3, v4}, Lxg/o;->c(ZILokio/Buffer;Z)V

    .line 10
    :cond_1
    iput-boolean v1, p0, Lxg/f$b;->K:Z

    :cond_2
    return-void
.end method

.method public h0(Lokio/Buffer;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    .line 2
    iget v0, p0, Lxg/f$b;->F:I

    sub-int/2addr v0, v1

    iput v0, p0, Lxg/f$b;->F:I

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lxg/f$b;->H:Lxg/b;

    iget-object p2, p0, Lxg/f$b;->M:Lxg/f;

    invoke-virtual {p2}, Lxg/f;->P()I

    move-result p2

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lxg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 4
    iget-object v1, p0, Lxg/f$b;->J:Lxg/g;

    iget-object p1, p0, Lxg/f$b;->M:Lxg/f;

    .line 5
    invoke-virtual {p1}, Lxg/f;->P()I

    move-result v2

    sget-object p1, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 6
    invoke-virtual {p1, p2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v1 .. v7}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lxg/j;

    invoke-direct {v0, p1}, Lxg/j;-><init>(Lokio/Buffer;)V

    invoke-super {p0, v0, p2}, Lio/grpc/internal/u0;->U(Lio/grpc/internal/v1;Z)V

    return-void
.end method

.method public i0(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lxg/q;->c(Ljava/util/List;)Lio/grpc/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/u0;->W(Lio/grpc/s0;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lxg/q;->a(Ljava/util/List;)Lio/grpc/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/u0;->V(Lio/grpc/s0;)V

    :goto_0
    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/grpc/internal/d$a;->s()V

    .line 2
    invoke-virtual {p0}, Lio/grpc/internal/d$a;->m()Lio/grpc/internal/p2;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/p2;->c()V

    return-void
.end method

.method tag()Lqh/d;
    .locals 1

    iget-object v0, p0, Lxg/f$b;->L:Lqh/d;

    return-object v0
.end method
