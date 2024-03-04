.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->setCurrentItem(I)V

    return-void
.end method
