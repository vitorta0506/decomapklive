.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->onClick(Landroid/app/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getNick_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Ld9/g;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setKink(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
