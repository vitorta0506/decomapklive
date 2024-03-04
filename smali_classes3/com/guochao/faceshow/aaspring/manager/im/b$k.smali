.class Lcom/guochao/faceshow/aaspring/manager/im/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->s0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->P(Lcom/guochao/faceshow/aaspring/manager/im/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/im/b$m;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->m()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b$m;->f0(Z)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/manager/im/b;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
