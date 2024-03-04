.class public Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;,
        Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

.field b:Landroidx/recyclerview/widget/RecyclerView;

.field bottomLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Landroid/widget/TextView;

.field compile:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

.field gallery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:I
    .annotation build Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$SelectHolderType;
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    const/16 v0, 0x9

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    const/16 v0, 0x67

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->i:I

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1207d4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->k:Z

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->l:Z

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->m:Z

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->o:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->q:Ljava/util/List;

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->r:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->r:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    return v0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    return v0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->l:Z

    return p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f:I

    return p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    return-void
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->i:I

    return p0
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->o:Ljava/util/List;

    return-object p0
.end method

.method private g2(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->p:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->s:Landroidx/lifecycle/Observer;

    .line 9
    iget p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->i:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->s:Landroidx/lifecycle/Observer;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->s:Landroidx/lifecycle/Observer;

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    :goto_0
    return-void
.end method

.method private h2()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    const/4 v1, 0x2

    const-string v4, "%s(%d)"

    const-string v5, "#888888"

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 6
    :cond_2
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "jpg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "png"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "gif"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    const-string v5, "#7e27ff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    const-string v5, "#6365FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    if-lez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/v;->t(Z)V

    .line 16
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    const/4 v5, -0x1

    if-nez v0, :cond_8

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    const v2, 0x7f06009d

    invoke-virtual {v0, v1, v2, v5}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;II)V

    goto :goto_4

    .line 18
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SimpleMediaActivity;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    aput-object v6, v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v0, v1, v2, v5}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;II)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public e2()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    return-void
.end method

.method public f2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public gallery(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0238

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0456

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;->onGalleryClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->r:I

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;-><init>()V

    .line 8
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mUri:Landroid/net/Uri;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 11
    iput v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    const/high16 v1, -0x10000

    .line 12
    iput v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    .line 13
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_doodle_params"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 16
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d018d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x67

    const-string v3, "MediaType"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->i:I

    const/16 v2, 0x9

    const-string v3, "maxCount"

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f:I

    const-string v2, "SelectPaths"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f:I

    const v2, 0x7f1207d4

    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Confirm"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->j:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "showBottom"

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->k:Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isWatchingLive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    :cond_3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->l:Z

    .line 13
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->m:Z

    .line 14
    :cond_4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->k:Z

    if-nez v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->bottomLay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->bottomLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :goto_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->m:Z

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->gallery:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0a095c

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0269

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->c:Landroid/widget/TextView;

    .line 22
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;Landroid/view/View;)V

    .line 23
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->reset()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/16 p2, 0x65

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_5

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "key_image_path"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_image_selectable"

    .line 3
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-wide/16 v2, 0x0

    const-string v4, "key_image_duration"

    .line 4
    invoke-virtual {p3, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p3, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {p3, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 7
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setDuration(J)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelectable(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->r:I

    add-int/2addr p3, v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-interface {p1, p3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->o:Ljava/util/List;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 15
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->n:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const-string p1, "data"

    .line 21
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "send"

    .line 22
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_6

    .line 23
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 24
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->e:I

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    if-ne p2, v1, :cond_6

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 29
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h:Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;->onSelect(Landroid/view/View;Ljava/util/List;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$g;

    goto :goto_0

    :cond_0
    const-string p1, ""

    const-string v0, "activity bind to FindAllImagesFragment must implement OnLocalImageSelectedListener"

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMessageEvent(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getSelectPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->p:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->f2()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->h2()V

    return-void
.end method
