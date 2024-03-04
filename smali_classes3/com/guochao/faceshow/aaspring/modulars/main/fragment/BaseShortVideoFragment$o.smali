.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$o;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0x5

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
