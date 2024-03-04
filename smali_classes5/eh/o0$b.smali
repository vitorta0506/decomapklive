.class final Leh/o0$b;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/o0$b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private b:Lio/grpc/ConnectivityState;

.field private c:Lio/grpc/n0$i;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/x0;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lih/f;

.field private final g:Leh/j0$d;

.field final synthetic h:Leh/o0;


# direct methods
.method private constructor <init>(Leh/o0;Ljava/util/concurrent/atomic/AtomicLong;Leh/j0$d;)V
    .locals 2

    .line 2
    iput-object p1, p0, Leh/o0$b;->h:Leh/o0;

    invoke-direct {p0}, Ldh/b;-><init>()V

    .line 3
    sget-object p1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object p1, p0, Leh/o0$b;->b:Lio/grpc/ConnectivityState;

    .line 4
    sget-object p1, Leh/t2;->a:Lio/grpc/n0$i;

    iput-object p1, p0, Leh/o0$b;->c:Lio/grpc/n0$i;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leh/o0$b;->d:Ljava/util/List;

    const-wide/16 v0, 0x400

    .line 6
    iput-wide v0, p0, Leh/o0$b;->e:J

    const-string p1, "inFlights"

    .line 7
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Leh/o0$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    iput-object p3, p0, Leh/o0$b;->g:Leh/j0$d;

    return-void
.end method

.method synthetic constructor <init>(Leh/o0;Ljava/util/concurrent/atomic/AtomicLong;Leh/j0$d;Leh/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leh/o0$b;-><init>(Leh/o0;Ljava/util/concurrent/atomic/AtomicLong;Leh/j0$d;)V

    return-void
.end method

.method static synthetic n(Leh/o0$b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/o0$b;->r(Ljava/util/List;)V

    return-void
.end method

.method static synthetic o(Leh/o0$b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Leh/o0$b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic p(Leh/o0$b;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/o0$b;->s(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic q(Leh/o0$b;Leh/i1;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/o0$b;->t(Leh/i1;)V

    return-void
.end method

.method private r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/x0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/o0$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Leh/o0$b;->d:Ljava/util/List;

    .line 3
    iget-object p1, p0, Leh/o0$b;->b:Lio/grpc/ConnectivityState;

    iget-object v0, p0, Leh/o0$b;->c:Lio/grpc/n0$i;

    invoke-virtual {p0, p1, v0}, Leh/o0$b;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_0
    return-void
.end method

.method private s(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Leh/o0$b;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x400

    .line 3
    :goto_0
    iput-wide v0, p0, Leh/o0$b;->e:J

    .line 4
    iget-object p1, p0, Leh/o0$b;->b:Lio/grpc/ConnectivityState;

    iget-object v0, p0, Leh/o0$b;->c:Lio/grpc/n0$i;

    invoke-virtual {p0, p1, v0}, Leh/o0$b;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method private t(Leh/i1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/o0$b;->f:Lih/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lih/f;->a()Leh/b1;

    move-result-object v0

    check-cast v0, Leh/i1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Leh/o0$b;->f:Lih/f;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lih/f;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    new-instance v1, Lih/f;

    iget-object v0, p0, Leh/o0$b;->h:Leh/o0;

    invoke-static {v0}, Leh/o0;->k(Leh/o0;)Leh/p2;

    move-result-object v0

    invoke-virtual {v0}, Leh/p2;->p()Leh/k2;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lih/f;-><init>(Leh/b1;Leh/k2;)V

    .line 7
    :cond_3
    iput-object v1, p0, Leh/o0$b;->f:Lih/f;

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/n0$b;)Lio/grpc/n0$h;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/x;

    .line 3
    invoke-virtual {v2}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v3

    sget-object v4, Leh/o1;->d:Lio/grpc/a$c;

    iget-object v5, p0, Leh/o0$b;->h:Leh/o0;

    .line 4
    invoke-static {v5}, Leh/o0;->i(Leh/o0;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v3, v4, v5}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    .line 6
    sget-boolean v4, Leh/o0;->o:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Leh/o0$b;->f:Lih/f;

    if-eqz v4, :cond_0

    .line 7
    sget-object v5, Leh/o1;->a:Lio/grpc/a$c;

    invoke-virtual {v3, v5, v4}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    .line 8
    :cond_0
    new-instance v4, Lio/grpc/x;

    invoke-virtual {v2}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    invoke-virtual {v1}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v1

    sget-object v2, Leh/o1;->e:Lio/grpc/a$c;

    invoke-virtual {v1, v2}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/t1;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 10
    invoke-static {v1, v1, v1}, Leh/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Leh/t1;

    move-result-object v1

    .line 11
    :cond_2
    iget-object v2, p0, Leh/o0$b;->g:Leh/j0$d;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, p0, Leh/o0$b;->h:Leh/o0;

    invoke-static {v2}, Leh/o0;->k(Leh/o0;)Leh/p2;

    move-result-object v2

    iget-object v3, p0, Leh/o0$b;->g:Leh/j0$d;

    iget-object v4, p0, Leh/o0$b;->h:Leh/o0;

    invoke-static {v4}, Leh/o0;->i(Leh/o0;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Leh/o0$b;->h:Leh/o0;

    invoke-static {v5}, Leh/o0;->j(Leh/o0;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Leh/p2;->i(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;Leh/t1;)Leh/s1$d;

    move-result-object v1

    .line 13
    :goto_1
    invoke-virtual {p1}, Lio/grpc/n0$b;->b()Lio/grpc/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v2

    .line 14
    invoke-static {}, Leh/o0;->l()Lio/grpc/a$c;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3, v1}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lio/grpc/n0$b;->d()Lio/grpc/n0$b$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/grpc/n0$b$a;->e(Ljava/util/List;)Lio/grpc/n0$b$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Leh/o0$b;->m()Lio/grpc/n0$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p1

    .line 19
    new-instance v0, Leh/o0$b$a;

    invoke-direct {v0, p0, v1, p1}, Leh/o0$b$a;-><init>(Leh/o0$b;Leh/s1$d;Lio/grpc/n0$h;)V

    return-object v0
.end method

.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 8

    .line 1
    iput-object p1, p0, Leh/o0$b;->b:Lio/grpc/ConnectivityState;

    .line 2
    iput-object p2, p0, Leh/o0$b;->c:Lio/grpc/n0$i;

    .line 3
    new-instance v7, Leh/o0$b$b;

    iget-object v3, p0, Leh/o0$b;->d:Ljava/util/List;

    iget-wide v4, p0, Leh/o0$b;->e:J

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Leh/o0$b$b;-><init>(Leh/o0$b;Lio/grpc/n0$i;Ljava/util/List;JLeh/o0$a;)V

    .line 4
    invoke-virtual {p0}, Leh/o0$b;->m()Lio/grpc/n0$d;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Leh/o0$b;->h:Leh/o0;

    invoke-static {v0}, Leh/o0;->m(Leh/o0;)Lio/grpc/n0$d;

    move-result-object v0

    return-object v0
.end method
