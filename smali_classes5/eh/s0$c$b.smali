.class final Leh/s0$c$b;
.super Leh/s0$c$a;
.source "SourceFile"

# interfaces
.implements Leh/p2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final j:Ljava/lang/String;

.field final synthetic k:Leh/s0$c;


# direct methods
.method private constructor <init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V
    .locals 7

    .line 2
    iput-object p1, p0, Leh/s0$c$b;->k:Leh/s0$c;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 3
    invoke-direct/range {v0 .. v6}, Leh/s0$c$a;-><init>(Leh/s0$c;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V

    .line 4
    iput-object p3, p0, Leh/s0$c$b;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Leh/s0$c$b;-><init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V

    return-void
.end method

.method static synthetic i(Leh/s0$c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/s0$c$b;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/s0$c$b$c;

    invoke-direct {v1, p0, p1}, Leh/s0$c$b$c;-><init>(Leh/s0$c$b;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/s0$c$b$a;

    invoke-direct {v1, p0, p1}, Leh/s0$c$b$a;-><init>(Leh/s0$c$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Leh/p2$e;)V
    .locals 2

    iget-object v0, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v0, v0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v0}, Leh/s0;->j(Leh/s0;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/s0$c$b$b;

    invoke-direct {v1, p0, p1}, Leh/s0$c$b$b;-><init>(Leh/s0$c$b;Leh/p2$e;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected g()V
    .locals 5

    .line 1
    invoke-super {p0}, Leh/s0$c$a;->g()V

    .line 2
    iget-object v0, p0, Leh/s0$c$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leh/s0$c$a;->a:Ljava/lang/String;

    .line 3
    :goto_0
    iget-object v1, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Stop watching EDS resource {0}"

    invoke-virtual {v1, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->f(Leh/s0;)Leh/p2;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Leh/p2;->k(Ljava/lang/String;Leh/p2$d;)V

    return-void
.end method

.method h()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/s0$c$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leh/s0$c$a;->a:Ljava/lang/String;

    .line 2
    :goto_0
    iget-object v1, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Start watching EDS resource {0}"

    invoke-virtual {v1, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Leh/s0$c$b;->k:Leh/s0$c;

    iget-object v1, v1, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->f(Leh/s0;)Leh/p2;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Leh/p2;->u(Ljava/lang/String;Leh/p2$d;)V

    return-void
.end method
