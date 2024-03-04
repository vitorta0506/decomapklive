.class Leh/n0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n0;->k(Ljava/lang/String;Leh/p2$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/p2$d;

.field final synthetic c:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;Ljava/lang/String;Leh/p2$d;)V
    .locals 0

    iput-object p1, p0, Leh/n0$b;->c:Leh/n0;

    iput-object p2, p0, Leh/n0$b;->a:Ljava/lang/String;

    iput-object p3, p0, Leh/n0$b;->b:Leh/p2$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/n0$b;->c:Leh/n0;

    invoke-static {v0}, Leh/n0;->G(Leh/n0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/n0$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/n0$p;

    .line 2
    iget-object v1, p0, Leh/n0$b;->b:Leh/p2$d;

    invoke-virtual {v0, v1}, Leh/n0$p;->o(Leh/p2$m;)V

    .line 3
    invoke-virtual {v0}, Leh/n0$p;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Leh/n0$p;->q()V

    .line 5
    iget-object v1, p0, Leh/n0$b;->c:Leh/n0;

    invoke-static {v1}, Leh/n0;->x(Leh/n0;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Leh/n0$b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Unsubscribe EDS resource {0}"

    invoke-virtual {v1, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Leh/n0$b;->c:Leh/n0;

    invoke-static {v1}, Leh/n0;->G(Leh/n0;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Leh/n0$b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Leh/n0$p;->a(Leh/n0$p;)Leh/a;

    move-result-object v0

    sget-object v1, Leh/a$f;->e:Leh/a$f;

    invoke-virtual {v0, v1}, Leh/a;->u(Leh/a$f;)V

    :cond_0
    return-void
.end method
