.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->q(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez p1, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K3(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    goto :goto_2

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K2()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K3(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y2(I)V

    .line 12
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    goto :goto_2

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y2(I)V

    .line 14
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    :goto_2
    return-void
.end method
