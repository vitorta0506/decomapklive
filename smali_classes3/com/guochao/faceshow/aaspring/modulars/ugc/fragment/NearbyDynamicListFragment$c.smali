.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;)Landroid/widget/PopupWindow;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->f:Landroid/widget/PopupWindow;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->a:Z

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V

    const/4 p1, 0x1

    return p1
.end method
