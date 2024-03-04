.class Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;
.super Lod/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lod/a<",
        "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    invoke-direct {p0}, Lod/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;->b(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;ILjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;ILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->type:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput-object p1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    sput-object p2, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->h:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 5
    iget-wide v0, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->endTime:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    iget-wide v0, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_2

    .line 6
    sget-boolean p1, Lcom/guochao/faceshow/BaseAppContext;->isClearHalloween:Z

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->b:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->a:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1

    return-void

    .line 8
    :cond_1
    sget-boolean p1, Lcom/guochao/faceshow/activity/MainActivity;->w:Z

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;Landroid/content/Context;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V

    :cond_3
    :goto_0
    return-void
.end method
