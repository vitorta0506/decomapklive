.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->u0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGranted(Lte/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KEY_DATING_SQUARE_TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module_notification"

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->a:I

    const-string v2, "appointState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    const v0, 0x7f010027

    const v1, 0x7f010025

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
