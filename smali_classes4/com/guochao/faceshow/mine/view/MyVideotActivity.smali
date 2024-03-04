.class public Lcom/guochao/faceshow/mine/view/MyVideotActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->e:Ljava/util/List;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/mine/view/MyVideotActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c5

    return v0
.end method

.method public initView()V
    .locals 1

    const v0, 0x7f0a0b25

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a0e0f

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->b:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120678

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->d:Ljava/util/List;

    const v1, 0x7f1206ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->d:Ljava/util/List;

    const v1, 0x7f12073b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;-><init>()V

    .line 7
    new-instance v1, Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/fragment/MyVideoFragment;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v0, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/adapter/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const-string v0, "my_point_praises"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method
