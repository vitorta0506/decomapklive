.class Lcom/guochao/faceshow/activity/MainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$b;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity$b;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity$b;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity$b;->a:Lcom/guochao/faceshow/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/MainActivity;->a1(Lcom/guochao/faceshow/activity/MainActivity;Z)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withEmptyChat:Z

    :cond_0
    return-void
.end method
