.class Leh/n0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/n0;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;)V
    .locals 0

    iput-object p1, p0, Leh/n0$g;->a:Leh/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    invoke-static {v0}, Leh/n0;->L(Leh/n0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/n0;->M(Leh/n0;Z)Z

    .line 3
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    invoke-static {v0}, Leh/n0;->y(Leh/n0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/a;

    .line 4
    invoke-virtual {v1}, Leh/a;->z()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    invoke-static {v0}, Leh/n0;->z(Leh/n0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    invoke-static {v0}, Leh/n0;->B(Leh/n0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/r1;

    .line 7
    invoke-virtual {v1}, Leh/r1;->q()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Leh/n0$g;->a:Leh/n0;

    invoke-static {v0}, Leh/n0;->C(Leh/n0;)V

    return-void
.end method
