.class public Lcom/twitter/sdk/android/tweetui/GalleryActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    }
.end annotation


# instance fields
.field a:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MEDIA_ENTITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;-><init>(ILjava/util/List;)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GALLERY_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    return-object v0
.end method

.method b()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$a;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method c()Lcom/twitter/sdk/android/tweetui/internal/i$a;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$b;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$b;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    sget v0, Lcom/twitter/sdk/android/tweetui/R$anim;->tw__slide_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__gallery_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->a()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->a:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    .line 4
    new-instance p1, Lcom/twitter/sdk/android/tweetui/j;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->c()Lcom/twitter/sdk/android/tweetui/internal/i$a;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/twitter/sdk/android/tweetui/j;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/i$a;)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->a:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntities:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/j;->a(Ljava/util/List;)V

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__view_pager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__gallery_page_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 9
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->b()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 10
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->a:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget p1, p1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntityIndex:I

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
