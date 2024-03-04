.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->tvFilterLevel:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getMinValue()F

    move-result p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/pusher/beauty/BeautyItem;->getMinValue()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/guochao/pusher/beauty/BeautyItem;->setCurrentValue(F)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->update(Lcom/guochao/pusher/beauty/BeautyItem;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/pusher/beauty/BeautyItem;->getCurrentValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lq9/a;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lq9/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object v0

    invoke-interface {p1, v0}, Lq9/a;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    :cond_0
    return-void
.end method
