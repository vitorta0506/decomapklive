.class Leh/r2$d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$d$d;->c(Leh/p2$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/p2$i;

.field final synthetic b:Leh/r2$d$d;


# direct methods
.method constructor <init>(Leh/r2$d$d;Leh/p2$i;)V
    .locals 0

    iput-object p1, p0, Leh/r2$d$d$a;->b:Leh/r2$d$d;

    iput-object p2, p0, Leh/r2$d$d$a;->a:Leh/p2$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r2$d$d$a;->b:Leh/r2$d$d;

    iget-object v1, v0, Leh/r2$d$d;->d:Leh/r2$d;

    invoke-static {v1}, Leh/r2$d;->k(Leh/r2$d;)Leh/r2$d$d;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/r2$d$d$a;->b:Leh/r2$d$d;

    iget-object v0, v0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/r2$d$d$a;->a:Leh/p2$i;

    aput-object v4, v2, v3

    const-string v3, "Received RDS resource update: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/r2$d$d$a;->b:Leh/r2$d$d;

    iget-object v1, v0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v2, p0, Leh/r2$d$d$a;->a:Leh/p2$i;

    iget-object v2, v2, Leh/p2$i;->a:Ljava/util/List;

    invoke-static {v0}, Leh/r2$d$d;->h(Leh/r2$d$d;)J

    move-result-wide v3

    iget-object v0, p0, Leh/r2$d$d$a;->b:Leh/r2$d$d;

    invoke-static {v0}, Leh/r2$d$d;->i(Leh/r2$d$d;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Leh/r2$d;->j(Leh/r2$d;Ljava/util/List;JLjava/util/List;)V

    return-void
.end method
