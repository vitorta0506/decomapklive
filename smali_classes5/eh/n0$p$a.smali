.class Leh/n0$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n0$p;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leh/n0$p;


# direct methods
.method constructor <init>(Leh/n0$p;)V
    .locals 0

    iput-object p1, p0, Leh/n0$p$a;->a:Leh/n0$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/n0$p$a;->a:Leh/n0$p;

    iget-object v0, v0, Leh/n0$p;->j:Leh/n0;

    invoke-static {v0}, Leh/n0;->x(Leh/n0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leh/n0$p$a;->a:Leh/n0$p;

    .line 2
    invoke-static {v3}, Leh/n0$p;->c(Leh/n0$p;)Leh/a$f;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Leh/n0$p$a;->a:Leh/n0$p;

    invoke-static {v3}, Leh/n0$p;->d(Leh/n0$p;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} resource {1} initial fetch timeout"

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Leh/n0$p$a;->a:Leh/n0$p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/n0$p;->e(Leh/n0$p;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 5
    iget-object v0, p0, Leh/n0$p$a;->a:Leh/n0$p;

    invoke-virtual {v0}, Leh/n0$p;->k()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leh/n0$p$a;->a:Leh/n0$p;

    invoke-static {v1}, Leh/n0$p;->c(Leh/n0$p;)Leh/a$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
