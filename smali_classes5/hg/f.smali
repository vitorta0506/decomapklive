.class Lhg/f;
.super Lio/grpc/n0;
.source "SourceFile"


# static fields
.field private static final k:Lhg/d;


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private final d:Lio/grpc/r;

.field private final e:Lio/grpc/internal/m2;

.field private final f:Lcom/google/common/base/u;

.field private final g:Lhg/k;

.field private final h:Lio/grpc/internal/k$a;

.field private i:Lhg/d;

.field private j:Lhg/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lhg/i$m;->a:Lhg/i$m;

    invoke-static {v0}, Lhg/d;->a(Lhg/i$m;)Lhg/d;

    move-result-object v0

    sput-object v0, Lhg/f;->k:Lhg/d;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;Lio/grpc/r;Lhg/k;Lio/grpc/internal/m2;Lcom/google/common/base/u;Lio/grpc/internal/k$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    sget-object v0, Lhg/f;->k:Lhg/d;

    iput-object v0, p0, Lhg/f;->i:Lhg/d;

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Lhg/f;->c:Lio/grpc/n0$d;

    const-string p1, "context"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/r;

    iput-object p1, p0, Lhg/f;->d:Lio/grpc/r;

    const-string p1, "time provider"

    .line 5
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/m2;

    iput-object p1, p0, Lhg/f;->e:Lio/grpc/internal/m2;

    const-string p1, "stopwatch"

    .line 6
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/u;

    iput-object p1, p0, Lhg/f;->f:Lcom/google/common/base/u;

    const-string p1, "backoffPolicyProvider"

    .line 7
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/k$a;

    iput-object p1, p0, Lhg/f;->h:Lio/grpc/internal/k$a;

    const-string p1, "subchannelPool"

    .line 8
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhg/k;

    iput-object p1, p0, Lhg/f;->g:Lhg/k;

    .line 9
    invoke-direct {p0}, Lhg/f;->f()V

    .line 10
    iget-object p1, p0, Lhg/f;->j:Lhg/i;

    const-string p2, "grpclbState"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lhg/f;->g()V

    .line 2
    iget-object v0, p0, Lhg/f;->j:Lhg/i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Should\'ve been cleared"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lhg/i;

    iget-object v3, p0, Lhg/f;->i:Lhg/d;

    iget-object v4, p0, Lhg/f;->c:Lio/grpc/n0$d;

    iget-object v5, p0, Lhg/f;->d:Lio/grpc/r;

    iget-object v6, p0, Lhg/f;->g:Lhg/k;

    iget-object v7, p0, Lhg/f;->e:Lio/grpc/internal/m2;

    iget-object v8, p0, Lhg/f;->f:Lcom/google/common/base/u;

    iget-object v9, p0, Lhg/f;->h:Lio/grpc/internal/k$a;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lhg/i;-><init>(Lhg/d;Lio/grpc/n0$d;Lio/grpc/r;Lhg/k;Lio/grpc/internal/m2;Lcom/google/common/base/u;Lio/grpc/internal/k$a;)V

    iput-object v0, p0, Lhg/f;->j:Lhg/i;

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/f;->j:Lhg/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lhg/i;->I()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lhg/f;->j:Lhg/i;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/f;->j:Lhg/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lhg/i;->G(Lio/grpc/Status;)V

    :cond_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v0

    .line 2
    sget-object v1, Lhg/e;->c:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v0, "No backend or balancer addresses found"

    .line 6
    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lhg/f;->b(Lio/grpc/Status;)V

    return-void

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/x;

    .line 11
    invoke-virtual {v2}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v3

    sget-object v4, Lhg/e;->d:Lio/grpc/a$c;

    invoke-virtual {v3, v4}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v4

    sget-object v5, Lio/grpc/x;->d:Lio/grpc/a$c;

    .line 13
    invoke-virtual {v4, v5, v3}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v3

    .line 15
    new-instance v4, Lio/grpc/x;

    invoke-virtual {v2}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is a bug: LB address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have an authority."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhg/d;

    if-nez p1, :cond_4

    .line 19
    sget-object p1, Lhg/f;->k:Lhg/d;

    .line 20
    :cond_4
    iget-object v2, p0, Lhg/f;->i:Lhg/d;

    invoke-virtual {v2, p1}, Lhg/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 21
    iput-object p1, p0, Lhg/f;->i:Lhg/d;

    .line 22
    iget-object v2, p0, Lhg/f;->c:Lio/grpc/n0$d;

    invoke-virtual {v2}, Lio/grpc/n0$d;->d()Lio/grpc/ChannelLogger;

    move-result-object v2

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lhg/f;->f()V

    .line 24
    :cond_5
    iget-object p1, p0, Lhg/f;->j:Lhg/i;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lhg/i;->B(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lhg/f;->g()V

    return-void
.end method
