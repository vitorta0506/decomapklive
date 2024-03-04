.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method
