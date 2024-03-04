.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->updateDatas(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "i",
        "",
        "onPageScrolled",
        "v",
        "",
        "i1",
        "onPageSelected",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mEventItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->$mEventItemBeans:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->getMPageIndicatorView()Lcom/rd/PageIndicatorView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->getMPageIndicatorView()Lcom/rd/PageIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->$mEventItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->getMPageIndicatorView()Lcom/rd/PageIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->$mEventItemBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/rd/PageIndicatorView;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->$mEventItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->getMPageIndicatorView()Lcom/rd/PageIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;->$mEventItemBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageSelected(I)V

    :cond_1
    return-void
.end method
