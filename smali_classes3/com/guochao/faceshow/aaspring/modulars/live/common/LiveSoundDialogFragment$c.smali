.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->T1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->setSelected(I)V

    return-void
.end method
