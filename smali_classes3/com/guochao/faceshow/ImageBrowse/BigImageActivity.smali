.class public Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$b;

.field private e:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)Lcom/guochao/faceshow/aaspring/views/HackyViewPager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0215

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_urls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x7f0a073b

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->e:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0853

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$b;-><init>(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->d:Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$b;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0a0540

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->c:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    invoke-virtual {v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f1209da

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    new-instance v1, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "STATE_POSITION"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->b:I

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    iget v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->b:I

    invoke-virtual {p1, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/BigImageActivity;->a:Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
