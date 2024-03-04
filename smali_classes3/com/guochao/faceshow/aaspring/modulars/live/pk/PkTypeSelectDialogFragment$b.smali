.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->getImgList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->getImgList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;->setImg(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->setAvatarList(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    const v2, 0x7f1206fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->getWaitPeople()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;->getWaitPeople()Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, v3, v0

    invoke-virtual {p2, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 4
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const v2, 0x7f1206fc

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment$b;->a(Lcom/guochao/faceshow/aaspring/beans/PkSelectTypeData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
