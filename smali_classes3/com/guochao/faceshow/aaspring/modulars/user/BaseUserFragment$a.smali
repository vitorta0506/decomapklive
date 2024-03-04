.class Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->X1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getLevelId()I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserSmallImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/bean/UserBean;->setSmallImg(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserSex()I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserAge()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/bean/UserBean;->setUserAge(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "payPassword"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/bean/UserBean;->setUserMvpInfo(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    move-result-object p2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lp7/i;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getLookMeNum()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getLookMeNum()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    const-string p2, "--"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
