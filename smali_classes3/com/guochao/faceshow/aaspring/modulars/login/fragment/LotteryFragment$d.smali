.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;
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
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iput-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lp9/a;->B(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;

    :cond_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;",
            ">;)V"
        }
    .end annotation

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
