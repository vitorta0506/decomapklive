.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

    return-void
.end method
