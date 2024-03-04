.class Leh/r2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$d;->e(Leh/p2$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/p2$g;

.field final synthetic b:Leh/r2$d;


# direct methods
.method constructor <init>(Leh/r2$d;Leh/p2$g;)V
    .locals 0

    iput-object p1, p0, Leh/r2$d$a;->b:Leh/r2$d;

    iput-object p2, p0, Leh/r2$d$a;->a:Leh/p2$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Leh/r2$d$a;->b:Leh/r2$d;

    invoke-static {v0}, Leh/r2$d;->h(Leh/r2$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/r2$d$a;->b:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Leh/r2$d$a;->a:Leh/p2$g;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Receive LDS resource update: {0}"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/r2$d$a;->a:Leh/p2$g;

    invoke-virtual {v0}, Leh/p2$g;->c()Leh/n1;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Leh/n1;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Leh/n1;->f()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v6, p0, Leh/r2$d$a;->b:Leh/r2$d;

    invoke-static {v6}, Leh/r2$d;->i(Leh/r2$d;)V

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, p0, Leh/r2$d$a;->b:Leh/r2$d;

    invoke-virtual {v0}, Leh/n1;->e()J

    move-result-wide v4

    .line 8
    invoke-virtual {v0}, Leh/n1;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 9
    invoke-static {v1, v3, v4, v5, v0}, Leh/r2$d;->j(Leh/r2$d;Ljava/util/List;JLjava/util/List;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Leh/r2$d$a;->b:Leh/r2$d;

    new-instance v13, Leh/r2$d$d;

    .line 11
    invoke-virtual {v0}, Leh/n1;->e()J

    move-result-wide v9

    .line 12
    invoke-virtual {v0}, Leh/n1;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    const/4 v12, 0x0

    move-object v6, v13

    move-object v7, v3

    move-object v8, v4

    invoke-direct/range {v6 .. v12}, Leh/r2$d$d;-><init>(Leh/r2$d;Ljava/lang/String;JLjava/util/List;Leh/r2$a;)V

    .line 13
    invoke-static {v3, v13}, Leh/r2$d;->l(Leh/r2$d;Leh/r2$d$d;)Leh/r2$d$d;

    .line 14
    iget-object v0, p0, Leh/r2$d$a;->b:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v5

    const-string v3, "Start watching RDS resource {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Leh/r2$d$a;->b:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->q(Leh/r2;)Leh/p2;

    move-result-object v0

    iget-object v1, p0, Leh/r2$d$a;->b:Leh/r2$d;

    invoke-static {v1}, Leh/r2$d;->k(Leh/r2$d;)Leh/r2$d$d;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Leh/p2;->w(Ljava/lang/String;Leh/p2$h;)V

    :goto_0
    return-void
.end method
