.class Leh/r2$d$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$d$d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/r2$d$d;


# direct methods
.method constructor <init>(Leh/r2$d$d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leh/r2$d$d$c;->b:Leh/r2$d$d;

    iput-object p2, p0, Leh/r2$d$d$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r2$d$d$c;->b:Leh/r2$d$d;

    iget-object v1, v0, Leh/r2$d$d;->d:Leh/r2$d;

    invoke-static {v1}, Leh/r2$d;->k(Leh/r2$d;)Leh/r2$d$d;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/r2$d$d$c;->b:Leh/r2$d$d;

    iget-object v0, v0, Leh/r2$d$d;->d:Leh/r2$d;

    iget-object v0, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/r2$d$d$c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "RDS resource {0} unavailable"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/r2$d$d$c;->b:Leh/r2$d$d;

    iget-object v0, v0, Leh/r2$d$d;->d:Leh/r2$d;

    invoke-static {v0}, Leh/r2$d;->o(Leh/r2$d;)V

    return-void
.end method
