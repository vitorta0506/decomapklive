.class Lcom/guochao/faceshow/activity/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MainActivity;->initView()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$e;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killActivity(Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$e;->a:Lcom/guochao/faceshow/activity/MainActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->T1(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$e;->a:Lcom/guochao/faceshow/activity/MainActivity;

    const v0, 0x7f0a04ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/activity/MainActivity;->m1(ILandroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$e;->a:Lcom/guochao/faceshow/activity/MainActivity;

    const v0, 0x7f0a04e9

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/activity/MainActivity;->m1(ILandroid/view/View;)V

    return-void
.end method
