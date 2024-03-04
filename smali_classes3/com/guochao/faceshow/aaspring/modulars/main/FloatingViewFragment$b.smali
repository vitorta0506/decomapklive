.class Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->T1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_float_click:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->g:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v2, v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v2}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_float_close:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/main/FloatingViewFragment;)V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/guochao/faceshow/BaseAppContext;->isClearHalloween:Z

    return-void
.end method
