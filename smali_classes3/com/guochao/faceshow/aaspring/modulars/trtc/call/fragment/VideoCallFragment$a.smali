.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->r2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;
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
            "Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    const-string v0, ""

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;->getAppointState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    const v1, 0x7f12090a

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 5
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->onFailure(Lg7/a;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    :cond_3
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
            "Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/TrtcMeetResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
