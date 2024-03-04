.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 2
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    return-void
.end method
