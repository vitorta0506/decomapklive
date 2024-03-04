.class Lsa/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;)V
    .locals 0

    iput-object p1, p0, Lsa/c$g;->a:Lsa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->d(Lsa/c;)I

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v1}, Lsa/c;->f(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lsa/c;->m(Lsa/c;Landroid/view/ViewGroup;Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v3}, Lsa/c;->n(Lsa/c;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveJoin"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v1}, Lsa/c;->f(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/c$g;->a:Lsa/c;

    invoke-static {v1}, Lsa/c;->j(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
