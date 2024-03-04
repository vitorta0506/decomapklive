.class public Lcom/guochao/faceshow/activity/ReportDetailActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activity/ReportDetailActivity$g;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field cbChild:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbEight:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbEleven:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbFifth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbFirst:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbForth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbNinth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbSecond:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbSeventh:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbSixth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbTenth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbThird:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field etReportContent:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/guochao/faceshow/activity/ReportDetailActivity$g;

.field private k:Lcom/guochao/faceshow/views/l;

.field private l:Lcom/guochao/faceshow/views/e;

.field public mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->d:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->u0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->t0()V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Lcom/guochao/faceshow/views/l;)Lcom/guochao/faceshow/views/l;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    return-object p1
.end method

.method private s0()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x9

    const-string v4, "2"

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    const-string v3, "add_com_guochao"

    .line 11
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    new-instance v2, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    const v7, 0x7f0d0240

    iget-object v8, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v10, v3, 0x1

    move-object v5, v2

    move-object v6, p0

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;Z)V

    iput-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->f:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/activity/ReportDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity$b;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->setOnItemListener(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$d;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->f:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->g(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->f:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/utils/ReportController$ReportType;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "infoId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "reportType"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private t0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/views/l;

    invoke-direct {v0}, Lcom/guochao/faceshow/views/l;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/l;->f(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/l;->g(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->i()V

    .line 9
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/ReportDetailActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity$e;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 11
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 13
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "add_com_guochao"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "REPORT_UPLOAD"

    .line 16
    invoke-virtual {v0, v2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->d:Ljava/lang/String;

    const-string v3, "content"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->a:Ljava/lang/String;

    const-string v3, "account"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->i:Ljava/util/ArrayList;

    const-string v3, "files"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->c:Ljava/lang/String;

    const-string v3, "typeId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "infoId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method private u0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/activity/ReportDetailActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity$f;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1209a2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->g()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->h(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->l:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c3

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pathPhoto"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->h:Ljava/lang/String;

    const-string v1, "account"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->a:Ljava/lang/String;

    const-string v1, "infoId"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->b:Ljava/lang/String;

    const-string v1, "reportType"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    const-string v2, "8"

    .line 7
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->SP_KEY_SWITCH_SCREEN_SHOTS:Ljava/lang/String;

    sget v3, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;Lcom/guochao/faceshow/activity/ReportDetailActivity$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->j:Lcom/guochao/faceshow/activity/ReportDetailActivity$g;

    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "REPORT_PIC_TEXT_UPLOAD_STATUS"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->j:Lcom/guochao/faceshow/activity/ReportDetailActivity$g;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    new-instance v0, Lcom/guochao/faceshow/activity/ReportDetailActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity$c;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFirst:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSecond:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbThird:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbForth:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFifth:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSixth:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSeventh:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEight:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbNinth:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbTenth:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    :cond_2
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p2, "media"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x9

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e:Ljava/lang/String;

    const-string p2, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    const-string p2, "add_com_guochao"

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->f:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->s0()V

    const p1, 0x7f1207d4

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f060093

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ReportDetailActivity$a;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->j:Lcom/guochao/faceshow/activity/ReportDetailActivity$g;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->etReportContent:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
