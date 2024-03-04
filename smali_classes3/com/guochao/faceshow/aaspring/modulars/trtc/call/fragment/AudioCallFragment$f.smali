.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->r2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->onFailure(Lg7/a;)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getCurrentUserDiamond()I

    move-result v0

    invoke-virtual {p2, v0}, Lp9/a;->B(I)V

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getUserAccountState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getAccountUserState()I

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getUserAccountState()I

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getAccountUserState()I

    move-result p2

    if-nez p2, :cond_7

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 11
    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;->getUserAccountState()I

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 12
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_0
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
            "Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;",
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;->a(Lcom/guochao/faceshow/aaspring/beans/AppointHeartBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
