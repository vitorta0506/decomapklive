.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:F

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/widget/PopupWindow;FLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->a:Landroid/widget/PopupWindow;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->b:F

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x1

    const v5, 0x800033

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->a:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    aget v7, v0, v2

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    .line 6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v4

    .line 7
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    invoke-virtual {v1, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 9
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/high16 v7, 0x42200000    # 40.0f

    if-gt v1, v6, :cond_3

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->a:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v8

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v8, v7

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->b:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget v0, v0, v4

    .line 12
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 13
    invoke-virtual {v1, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->a:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v8

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v8, v7

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->b:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget v0, v0, v4

    .line 16
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 17
    invoke-virtual {v1, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
