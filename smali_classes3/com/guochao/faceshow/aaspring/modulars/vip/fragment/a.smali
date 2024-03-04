.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/billingclient/api/e;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;Ljava/util/List;Lcom/android/billingclient/api/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->c:Lcom/android/billingclient/api/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/a;->c:Lcom/android/billingclient/api/e;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;->b(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;Ljava/util/List;Lcom/android/billingclient/api/e;)V

    return-void
.end method
