.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;II)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;->a:I

    .line 3
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;->b:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;->a:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->b2(IIII)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    move-result-object p1

    return-object p1
.end method
