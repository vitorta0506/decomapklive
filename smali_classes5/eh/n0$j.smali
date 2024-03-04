.class Leh/n0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n0;->w(Ljava/lang/String;Leh/p2$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/p2$h;

.field final synthetic c:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;Ljava/lang/String;Leh/p2$h;)V
    .locals 0

    iput-object p1, p0, Leh/n0$j;->c:Leh/n0;

    iput-object p2, p0, Leh/n0$j;->a:Ljava/lang/String;

    iput-object p3, p0, Leh/n0$j;->b:Leh/p2$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/n0$j;->c:Leh/n0;

    invoke-static {v0}, Leh/n0;->E(Leh/n0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/n0$j;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/n0$p;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/n0$j;->c:Leh/n0;

    invoke-static {v0}, Leh/n0;->x(Leh/n0;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Leh/n0$j;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Subscribe RDS resource {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Leh/n0$p;

    iget-object v1, p0, Leh/n0$j;->c:Leh/n0;

    sget-object v2, Leh/a$f;->c:Leh/a$f;

    iget-object v3, p0, Leh/n0$j;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Leh/n0$p;-><init>(Leh/n0;Leh/a$f;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Leh/n0$j;->c:Leh/n0;

    invoke-static {v1}, Leh/n0;->E(Leh/n0;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Leh/n0$j;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Leh/n0$p;->a(Leh/n0$p;)Leh/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Leh/a;->u(Leh/a$f;)V

    .line 6
    :cond_0
    iget-object v1, p0, Leh/n0$j;->b:Leh/p2$h;

    invoke-virtual {v0, v1}, Leh/n0$p;->g(Leh/p2$m;)V

    return-void
.end method
