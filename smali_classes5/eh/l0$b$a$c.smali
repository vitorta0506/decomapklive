.class Leh/l0$b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/l0$b$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/l0$b$a;


# direct methods
.method constructor <init>(Leh/l0$b$a;)V
    .locals 0

    iput-object p1, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->i(Leh/l0$b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/l0$b$a;->l(Leh/l0$b$a;Z)Z

    .line 3
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/l0$b$a;->n(Leh/l0$b$a;Leh/p2$c;)Leh/p2$c;

    .line 4
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/l0$b$a;

    .line 6
    invoke-virtual {v2}, Leh/l0$b$a;->r()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    invoke-static {v0, v1}, Leh/l0$b$a;->h(Leh/l0$b$a;Ljava/util/Map;)Ljava/util/Map;

    .line 8
    :cond_2
    iget-object v0, p0, Leh/l0$b$a$c;->a:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    invoke-static {v0}, Leh/l0$b;->d(Leh/l0$b;)V

    return-void
.end method
