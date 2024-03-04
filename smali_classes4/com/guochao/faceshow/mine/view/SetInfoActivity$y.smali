.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This nickname has been used"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f2

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f1205a1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f120087

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->mNickname:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$y;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nickname"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
