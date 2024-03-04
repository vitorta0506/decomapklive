.class Lcom/guochao/faceshow/aaspring/views/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/h$b;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->b:Lcom/guochao/faceshow/aaspring/views/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/h;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/h;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->b:Lcom/guochao/faceshow/aaspring/views/h$b;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/h$a;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/views/h$b;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
