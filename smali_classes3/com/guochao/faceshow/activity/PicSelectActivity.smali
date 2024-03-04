.class public Lcom/guochao/faceshow/activity/PicSelectActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->d:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->j:Z

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/PicSelectActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->d:I

    return p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/PicSelectActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->d:I

    return p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/PicSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->g:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->c:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    return-object p0
.end method

.method private m0()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "Thumb"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f080220

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->c:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/activity/PicSelectActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/PicSelectActivity$c;-><init>(Lcom/guochao/faceshow/activity/PicSelectActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->j:Z

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0092

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f120220

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imgPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->i:Ljava/lang/String;

    const v0, 0x7f0a027f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a04b9

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->i:Ljava/lang/String;

    const v2, 0x7f080220

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v0, Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    const v1, 0x7f0d025f

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/activity/PicSelectActivity$b;-><init>(Lcom/guochao/faceshow/activity/PicSelectActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->c:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->c:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PicSelectActivity;->m0()V

    return-void
.end method

.method public loadData()V
    .locals 2

    const v0, 0x7f12069a

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/activity/PicSelectActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/PicSelectActivity$a;-><init>(Lcom/guochao/faceshow/activity/PicSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method

.method public n0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/PicSelectActivity;->e:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
