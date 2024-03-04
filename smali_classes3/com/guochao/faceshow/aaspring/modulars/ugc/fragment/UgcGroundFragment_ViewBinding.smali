.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a0466

    const-string v1, "field \'mGenderSelector\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mGenderSelector\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a00b9

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0a0101

    const-string v1, "field \'mImageViewBackButton\' and method \'click\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewBackButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a028f

    const-string v2, "field \'mPeopleNearby\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPeopleNearby:Landroidx/cardview/widget/CardView;

    .line 15
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a028e

    const-string v2, "field \'mFindYou\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mFindYou:Landroidx/cardview/widget/CardView;

    .line 16
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a028d

    const-string v2, "field \'mDatingSquare\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mDatingSquare:Landroidx/cardview/widget/CardView;

    .line 17
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a0290

    const-string v2, "field \'mPlanet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPlanet:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a0510

    const-string v1, "field \'mSearch\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mSearch:Landroid/view/View;

    .line 19
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0d63

    const-string v2, "field \'ugcModuleTopLL\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    .line 20
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0a01

    const-string v2, "field \'mScan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mScan:Landroid/widget/ImageView;

    .line 21
    const-class v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f0a0af5

    const-string v2, "field \'mSvgaImageViewV2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mSvgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 22
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a012b

    const-string v2, "field \'m1v1Bg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->m1v1Bg:Landroid/widget/ImageView;

    const v0, 0x7f0a0a58

    const-string v1, "field \'sendDynamic\' and method \'click\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'sendDynamic\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendDynamic:Landroid/widget/ImageView;

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->e:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a5b

    const-string v2, "field \'sendTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0621

    const-string v2, "field \'lay_sendDynamic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPeopleNearby:Landroidx/cardview/widget/CardView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mFindYou:Landroidx/cardview/widget/CardView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mDatingSquare:Landroidx/cardview/widget/CardView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPlanet:Landroidx/cardview/widget/CardView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mSearch:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mScan:Landroid/widget/ImageView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mSvgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->m1v1Bg:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendDynamic:Landroid/widget/ImageView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->c:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->d:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
