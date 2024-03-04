.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1100(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_3

    .line 5
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1200(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "LiveRoom\uff1a"

    const-string v1, "30\u79d2\u672a\u63a8\u6d41\u6210\u529f"

    .line 7
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f12067a

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->G0(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method
