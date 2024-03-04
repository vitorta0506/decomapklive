.class public Lcom/guochao/faceshow/activity/MusicResultActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field private k:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/bean/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/ImageView;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->f:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->j:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->l:Z

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->m:I

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->n:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->p:Z

    const v0, 0x7a120

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->s:I

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic B0(Lcom/guochao/faceshow/activity/MusicResultActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->r:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic E0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/activity/MusicResultActivity;->Q0(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic H0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    return p0
.end method

.method static synthetic I0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    return p1
.end method

.method static synthetic N0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    return v0
.end method

.method static synthetic P0(Lcom/guochao/faceshow/activity/MusicResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->S0()V

    return-void
.end method

.method private Q0(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f010048

    .line 1
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f0f0524

    .line 2
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Music"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".mp3"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$g;

    invoke-direct {v1, p0, p3, p4}, Lcom/guochao/faceshow/activity/MusicResultActivity$g;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    const/4 p3, 0x0

    invoke-interface {v0, p3, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private S0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->GETALLMUSIC:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "10"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->f:Ljava/lang/String;

    const-string v2, "mname"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->e:Ljava/lang/String;

    const-string v2, "type_id"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicResultActivity$f;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicResultActivity$e;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method private T0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->saveOrDelete:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    const-string v1, "musicId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->T0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->m:I

    return p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->d:I

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->d:I

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->m:I

    return p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->h:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/MusicResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->j:Z

    return p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->k:Lcom/guochao/faceshow/utils/AAComAdapter;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic q0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->p:Z

    return p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->l:Z

    return p0
.end method

.method static synthetic s0(Lcom/guochao/faceshow/activity/MusicResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->l:Z

    return p1
.end method

.method static synthetic t0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->o:Z

    return p0
.end method

.method static synthetic u0(Lcom/guochao/faceshow/activity/MusicResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->o:Z

    return p1
.end method

.method static synthetic v0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->q:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic y0(Lcom/guochao/faceshow/activity/MusicResultActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->q:Landroid/widget/LinearLayout;

    return-object p1
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007a

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0d02e2

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a17

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->h:Landroid/widget/EditText;

    const v1, 0x7f0a0a0b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f0a0738

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->a:Landroid/widget/ListView;

    const v1, 0x7f0a0961

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120724

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 8
    new-instance v0, Lcom/guochao/faceshow/activity/MusicResultActivity$a;

    const v1, 0x7f0d0258

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/activity/MusicResultActivity$a;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->k:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicResultActivity$b;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->S0()V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicResultActivity$c;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicResultActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicResultActivity$d;-><init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->e:Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const p1, 0x7f12032b

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->p:Z

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->o:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/guochao/faceshow/bean/MusicState;

    const/16 v1, 0x64

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/bean/MusicState;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f0f05e2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity;->p:Z

    return-void
.end method
