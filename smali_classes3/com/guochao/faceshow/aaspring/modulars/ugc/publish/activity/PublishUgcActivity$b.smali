.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    const v1, 0x7f1205a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;)V

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils;->getUgcAndVideoPermissions(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/utils/UgcAndVideoSendUtils$UgcAndVideoSendCallBack;)V

    return-void
.end method
