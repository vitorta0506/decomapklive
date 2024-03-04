.class Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGranted(Lte/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;-><init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
