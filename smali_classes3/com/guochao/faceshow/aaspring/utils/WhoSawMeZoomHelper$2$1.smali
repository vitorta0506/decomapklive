.class Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ly7/e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ly7/e;->g(Z)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
