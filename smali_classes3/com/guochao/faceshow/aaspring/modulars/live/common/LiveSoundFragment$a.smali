.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$a;
.super Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;


# direct methods
.method varargs constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;III[I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$a;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/high16 p2, 0x40200000    # 2.5f

    .line 2
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
