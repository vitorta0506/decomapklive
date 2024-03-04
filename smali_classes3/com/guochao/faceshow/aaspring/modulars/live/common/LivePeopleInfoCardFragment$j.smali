.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cancelFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setIs_tutual(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->peopleCardUserFocus:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f12039f

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setIs_tutual(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$j;->b(Ljava/lang/String;)V

    return-void
.end method
