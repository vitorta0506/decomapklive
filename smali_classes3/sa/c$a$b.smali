.class Lsa/c$a$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c$a;


# direct methods
.method constructor <init>(Lsa/c$a;)V
    .locals 0

    iput-object p1, p0, Lsa/c$a$b;->a:Lsa/c$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsa/c$a$b;->a:Lsa/c$a;

    iget-object v0, v0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/c$a$b;->a:Lsa/c$a;

    iget-object v1, v1, Lsa/c$a;->a:Lsa/c;

    invoke-static {v1}, Lsa/c;->j(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lsa/c$a$b;->a:Lsa/c$a;

    iget-object v0, v0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lsa/c;->m(Lsa/c;Landroid/view/ViewGroup;Z)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lsa/c$a$b;->a:Lsa/c$a;

    iget-object v3, v3, Lsa/c$a;->a:Lsa/c;

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

    return-void
.end method
