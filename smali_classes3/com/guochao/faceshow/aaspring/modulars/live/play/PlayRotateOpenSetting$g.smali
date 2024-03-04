.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 10
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->setFlag(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->setGameInfoId(J)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;->a(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    .line 8
    :cond_2
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->g(I)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->h(I)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getIsJoin()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->j(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->i(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;

    move-result-object v2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Lc9/a;->r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d4()Landroid/widget/ImageView;

    :cond_5
    :goto_1
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    const v0, 0x7f1205b1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;->a(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
