.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field public a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->X1()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->W1()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;->getInstance(II)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
