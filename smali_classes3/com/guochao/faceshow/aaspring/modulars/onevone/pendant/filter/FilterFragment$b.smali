.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;

    move-result-object p3

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    int-to-float v0, p2

    invoke-interface {p3, p1, v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setFilter(Ljava/lang/String;F)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;

    move-result-object p1

    int-to-float p3, p2

    invoke-virtual {p1, p3}, Lcom/guochao/pusher/beauty/FilterItem;->setCurrentValue(F)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->tvFilterLevel:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/FilterItem;->getCurrentValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilterStrength(F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V

    return-void
.end method
