.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->getLocationInWindow([I)V

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-interface {v0, v1, p2}, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->f:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_3
    return-void
.end method
