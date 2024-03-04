.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeNameLang()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
