.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->P1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->c:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->c:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->setStyle(I)V

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_permiss_switch:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_switch_tab:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method
