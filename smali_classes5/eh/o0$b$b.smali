.class Leh/o0$b$b;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/o0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$i;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/x0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field final synthetic d:Leh/o0$b;


# direct methods
.method private constructor <init>(Leh/o0$b;Lio/grpc/n0$i;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/n0$i;",
            "Ljava/util/List<",
            "Leh/x0;",
            ">;J)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    .line 3
    iput-object p2, p0, Leh/o0$b$b;->a:Lio/grpc/n0$i;

    .line 4
    iput-object p3, p0, Leh/o0$b$b;->b:Ljava/util/List;

    .line 5
    iput-wide p4, p0, Leh/o0$b$b;->c:J

    return-void
.end method

.method synthetic constructor <init>(Leh/o0$b;Lio/grpc/n0$i;Ljava/util/List;JLeh/o0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/o0$b$b;-><init>(Leh/o0$b;Lio/grpc/n0$i;Ljava/util/List;J)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 5

    .line 1
    iget-object v0, p0, Leh/o0$b$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/x0;

    .line 2
    iget-object v2, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object v2, v2, Leh/o0$b;->h:Leh/o0;

    invoke-static {v2}, Leh/o0;->f(Leh/o0;)Leh/j2;

    move-result-object v2

    const v3, 0xf4240

    invoke-interface {v2, v3}, Leh/j2;->b(I)I

    move-result v2

    .line 3
    invoke-virtual {v1}, Leh/x0;->c()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object p1, p1, Leh/o0$b;->h:Leh/o0;

    invoke-static {p1}, Leh/o0;->g(Leh/o0;)Leh/q2;

    move-result-object p1

    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1}, Leh/x0;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Drop request with category: {0}"

    .line 6
    invoke-virtual {p1, v0, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object p1, p1, Leh/o0$b;->h:Leh/o0;

    invoke-static {p1}, Leh/o0;->h(Leh/o0;)Leh/s1$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object p1, p1, Leh/o0$b;->h:Leh/o0;

    invoke-static {p1}, Leh/o0;->h(Leh/o0;)Leh/s1$b;

    move-result-object p1

    invoke-virtual {v1}, Leh/x0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Leh/s1$b;->c(Ljava/lang/String;)V

    .line 9
    :cond_1
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Leh/x0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/grpc/n0$e;->e(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    iget-object v0, p0, Leh/o0$b$b;->a:Lio/grpc/n0$i;

    invoke-virtual {v0, p1}, Lio/grpc/n0$i;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/grpc/n0$e;->a()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lio/grpc/n0$e;->c()Lio/grpc/n0$h;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    sget-boolean v0, Leh/o0;->n:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Leh/o0$b$b;->d:Leh/o0$b;

    invoke-static {v0}, Leh/o0$b;->o(Leh/o0$b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Leh/o0$b$b;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 16
    iget-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object p1, p1, Leh/o0$b;->h:Leh/o0;

    invoke-static {p1}, Leh/o0;->h(Leh/o0;)Leh/s1$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Leh/o0$b$b;->d:Leh/o0$b;

    iget-object p1, p1, Leh/o0$b;->h:Leh/o0;

    invoke-static {p1}, Leh/o0;->h(Leh/o0;)Leh/s1$b;

    move-result-object p1

    invoke-virtual {p1}, Leh/s1$b;->b()V

    .line 18
    :cond_3
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v0, "Cluster max concurrent requests limit exceeded"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/n0$e;->e(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    invoke-virtual {p1}, Lio/grpc/n0$e;->c()Lio/grpc/n0$h;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v0

    invoke-static {}, Leh/o0;->l()Lio/grpc/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/s1$d;

    if-eqz v0, :cond_5

    .line 20
    new-instance v1, Leh/o0$c;

    iget-object v2, p0, Leh/o0$b$b;->d:Leh/o0$b;

    .line 21
    invoke-static {v2}, Leh/o0$b;->o(Leh/o0$b;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {p1}, Lio/grpc/n0$e;->b()Lio/grpc/k$a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Leh/o0$c;-><init>(Leh/s1$d;Ljava/util/concurrent/atomic/AtomicLong;Lio/grpc/k$a;Leh/o0$a;)V

    .line 22
    invoke-virtual {p1}, Lio/grpc/n0$e;->c()Lio/grpc/n0$h;

    move-result-object p1

    invoke-static {p1, v1}, Lio/grpc/n0$e;->i(Lio/grpc/n0$h;Lio/grpc/k$a;)Lio/grpc/n0$e;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/o0$b$b;->a:Lio/grpc/n0$i;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
