.class public Lcom/guochao/faceshow/activity/MusicActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Landroid/os/Handler;

.field private C:Z

.field private D:Landroid/widget/RadioButton;

.field private E:Landroid/widget/LinearLayout;

.field private F:Lcom/guochao/faceshow/service/MediaService$a;

.field private G:Landroid/content/ServiceConnection;

.field H:Lcom/guochao/faceshow/utils/AAComAdapter;

.field private a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Lcom/guochao/faceshow/bean/MusicType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/RadioGroup;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/ImageView;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/widget/ListView;

.field private s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private t:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/bean/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->l:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->p:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/MusicActivity;->q:Z

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/guochao/faceshow/activity/MusicActivity;->u:I

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/activity/MusicActivity;->v:I

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->y:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->z:Z

    .line 10
    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$j;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->B:Landroid/os/Handler;

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    .line 12
    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MusicActivity$k;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->G:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicActivity;->r1()V

    return-void
.end method

.method static synthetic B0(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method private B1(Ljava/lang/String;)V
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

.method static synthetic E0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic F0(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic H0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->q:Z

    return p1
.end method

.method static synthetic I0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    return-object p0
.end method

.method static synthetic N0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->e:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    return-object p0
.end method

.method static synthetic P0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->t:Lcom/guochao/faceshow/utils/AAComAdapter;

    return-object p0
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic S0(Lcom/guochao/faceshow/activity/MusicActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    return p0
.end method

.method static synthetic T0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->l:I

    return p0
.end method

.method static synthetic W0(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->l:I

    return p1
.end method

.method static synthetic X0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->l:I

    return v0
.end method

.method static synthetic Y0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->v:I

    return p0
.end method

.method static synthetic Z0(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->v:I

    return p1
.end method

.method static synthetic a1(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/service/MediaService$a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    return-object p0
.end method

.method static synthetic b1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/MusicActivity;Lcom/guochao/faceshow/service/MediaService$a;)Lcom/guochao/faceshow/service/MediaService$a;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    return-object p1
.end method

.method static synthetic d1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MusicActivity;->t1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/MusicActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g1(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->m:I

    return p0
.end method

.method static synthetic h1(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->m:I

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->x:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic i1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MusicActivity;->B1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    return p1
.end method

.method static synthetic k1(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->w:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/activity/MusicActivity;->o1(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->k:I

    return p0
.end method

.method static synthetic m1(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->w:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    return p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    return p1
.end method

.method private o1(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
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

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$g;

    invoke-direct {v1, p0, p3, p4}, Lcom/guochao/faceshow/activity/MusicActivity$g;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    const/4 p3, 0x0

    invoke-interface {v0, p3, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    return v0
.end method

.method static synthetic q0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method private q1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/music/getMusicType"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$d;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$c;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method static synthetic r0(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicActivity;->q1()V

    return-void
.end method

.method private r1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/music/collectionList"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$f;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$e;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->j:I

    return p0
.end method

.method static synthetic t0(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->j:I

    return p1
.end method

.method private t1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/music/getMusics"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "mname"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MusicActivity$i;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MusicActivity$h;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method static synthetic u0(Lcom/guochao/faceshow/activity/MusicActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->u:I

    return p0
.end method

.method static synthetic v0(Lcom/guochao/faceshow/activity/MusicActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->u:I

    return p1
.end method

.method static synthetic y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->B:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a07be

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a07c1

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a07c3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iput-boolean v5, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->B:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const v0, 0x7f0f05e2

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->D:Landroid/widget/RadioButton;

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->D:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 11
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->q:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    iput v3, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicActivity;->q1()V

    goto :goto_1

    .line 20
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.GET_CONTENT"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "audio/*"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 24
    :cond_5
    iput-boolean v3, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->D:Landroid/widget/RadioButton;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->D:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 33
    iput v3, p0, Lcom/guochao/faceshow/activity/MusicActivity;->i:I

    .line 34
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicActivity;->r1()V

    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0079

    return v0
.end method

.method public initView()V
    .locals 7

    const v0, 0x7f0a0a18

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a17

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0a0a0b

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f0a0738

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    const v0, 0x7f0a0961

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v0, 0x7f0a0a20

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v0, 0x7f0a0a1d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->d:Landroid/widget/ListView;

    const v0, 0x7f0a0737

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->r:Landroid/widget/ListView;

    const v0, 0x7f0a07a1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v0, 0x7f0a07c3

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    const v0, 0x7f0a07c1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->g:Landroid/widget/RadioButton;

    const v0, 0x7f0a07be

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->D:Landroid/widget/RadioButton;

    const v0, 0x7f0a0919

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->h:Landroid/widget/RadioGroup;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->f:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120724

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v3, Lcom/guochao/faceshow/activity/MusicActivity$l;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/activity/MusicActivity$l;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    .line 21
    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$m;

    const v3, 0x7f0d0258

    invoke-direct {v0, p0, p0, v3}, Lcom/guochao/faceshow/activity/MusicActivity$m;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->H:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 22
    iget-object v4, p0, Lcom/guochao/faceshow/activity/MusicActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$n;

    const v4, 0x7f0d0259

    invoke-direct {v0, p0, p0, v4}, Lcom/guochao/faceshow/activity/MusicActivity$n;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->e:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 24
    iget-object v4, p0, Lcom/guochao/faceshow/activity/MusicActivity;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v4, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v4, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v4, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v0, v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v0, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v6, Lcom/guochao/faceshow/activity/MusicActivity$o;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/activity/MusicActivity$o;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v6}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    .line 32
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MusicActivity;->q1()V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->a:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    const/high16 v6, 0x40000

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 34
    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$p;

    invoke-direct {v0, p0, p0, v3}, Lcom/guochao/faceshow/activity/MusicActivity$p;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->t:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 35
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f120682

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/utils/AAComAdapter;->setEmptyAlert(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->r:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity;->t:Lcom/guochao/faceshow/utils/AAComAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v3, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->s:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$q;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$r;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$r;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 47
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/activity/MusicActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MusicActivity$b;-><init>(Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

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

    :cond_0
    const/16 p2, 0x3e8

    const/4 v0, -0x1

    if-ne p1, p2, :cond_1

    .line 2
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "musicPath"

    .line 5
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->k:I

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/service/MediaService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->G:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/service/MediaService$a;->a()V

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->G:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventBus(Lcom/guochao/faceshow/bean/MusicState;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p1, Lcom/guochao/faceshow/bean/MusicState;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->e()V

    .line 3
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->d()V

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->u:I

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicState;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->y:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/service/MediaService$a;->b(Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->F:Lcom/guochao/faceshow/service/MediaService$a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/service/MediaService$a;->c()V

    .line 11
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->A:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->B:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f0f05e2

    .line 6
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
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MusicActivity;->C:Z

    return-void
.end method

.method public x1()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity;->n:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
