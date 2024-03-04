.class Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp7/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Ld9/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Ld9/g;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ld9/g;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;->e()V

    :cond_0
    return-void
.end method
