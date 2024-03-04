.class public Leb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/b$n;
    }
.end annotation


# instance fields
.field private A:Lcom/guochao/faceshow/views/m;

.field private B:I

.field private C:Lcom/guochao/faceshow/utils/TailWaterMark;

.field private D:I

.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/view/Window;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field private q:Lcom/tencent/rtmp/TXLivePlayer;

.field private r:Lcom/tencent/rtmp/TXVodPlayer;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/app/Activity;

.field private y:Ljava/lang/String;

.field private z:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Leb/b;->y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Leb/b;->B:I

    .line 4
    iput-object p1, p0, Leb/b;->x:Landroid/app/Activity;

    .line 5
    invoke-direct {p0, p1}, Leb/b;->B(Landroid/content/Context;)V

    const/16 p1, 0x1001

    .line 6
    iput p1, p0, Leb/b;->D:I

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f0d042a

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leb/b;->c:Landroid/view/View;

    const v1, 0x7f0a03bd

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getFbShare()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Leb/b;->c:Landroid/view/View;

    const v2, 0x7f0a0a6d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-object v2, p0, Leb/b;->c:Landroid/view/View;

    const v3, 0x7f0a0a69

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Leb/b;->d:Landroid/view/View;

    .line 6
    iget-object v2, p0, Leb/b;->c:Landroid/view/View;

    const v3, 0x7f0a0a6e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Leb/b;->e:Landroid/view/View;

    .line 7
    iget-object v2, p0, Leb/b;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    iget-object v2, p0, Leb/b;->c:Landroid/view/View;

    const v3, 0x7f0a0e44

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 9
    iget-object v3, p0, Leb/b;->c:Landroid/view/View;

    const v4, 0x7f0a0a95

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 10
    iget-object v4, p0, Leb/b;->c:Landroid/view/View;

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Leb/b;->k:Landroid/view/View;

    .line 11
    iget-object v4, p0, Leb/b;->c:Landroid/view/View;

    const v5, 0x7f0a0267

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Leb/b;->i:Landroid/view/View;

    .line 12
    iget-object v4, p0, Leb/b;->c:Landroid/view/View;

    const v5, 0x7f0a0971

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Leb/b;->j:Landroid/view/View;

    .line 13
    iget-object v4, p0, Leb/b;->c:Landroid/view/View;

    const v5, 0x7f0a0e45

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 14
    iget-object v5, p0, Leb/b;->c:Landroid/view/View;

    const v6, 0x7f0a02ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Leb/b;->f:Landroid/view/View;

    .line 15
    iget-object v5, p0, Leb/b;->c:Landroid/view/View;

    const v6, 0x7f0a0d7b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Leb/b;->g:Landroid/view/View;

    .line 16
    iget-object v5, p0, Leb/b;->c:Landroid/view/View;

    const v6, 0x7f0a09f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Leb/b;->h:Landroid/view/View;

    .line 17
    iget-object v5, p0, Leb/b;->c:Landroid/view/View;

    const v6, 0x7f0a0799

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Leb/a;

    invoke-direct {v6, p0}, Leb/a;-><init>(Leb/b;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v5, Leb/b$e;

    invoke-direct {v5, p0}, Leb/b$e;-><init>(Leb/b;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v0, Leb/b$f;

    invoke-direct {v0, p0}, Leb/b$f;-><init>(Leb/b;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v0, Leb/b$g;

    invoke-direct {v0, p0}, Leb/b$g;-><init>(Leb/b;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v0, Leb/b$h;

    invoke-direct {v0, p0}, Leb/b$h;-><init>(Leb/b;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v0, Leb/b$i;

    invoke-direct {v0, p0}, Leb/b$i;-><init>(Leb/b;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Leb/b;->d:Landroid/view/View;

    new-instance v1, Leb/b$j;

    invoke-direct {v1, p0}, Leb/b$j;-><init>(Leb/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Leb/b;->e:Landroid/view/View;

    new-instance v1, Leb/b$k;

    invoke-direct {v1, p0}, Leb/b$k;-><init>(Leb/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Leb/b;->h:Landroid/view/View;

    new-instance v1, Leb/b$l;

    invoke-direct {v1, p0}, Leb/b$l;-><init>(Leb/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Leb/b;->j:Landroid/view/View;

    new-instance v1, Leb/b$m;

    invoke-direct {v1, p0}, Leb/b$m;-><init>(Leb/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Leb/b;->i:Landroid/view/View;

    new-instance v1, Leb/b$a;

    invoke-direct {v1, p0, p1}, Leb/b$a;-><init>(Leb/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Leb/b;->k:Landroid/view/View;

    new-instance v1, Leb/b$b;

    invoke-direct {v1, p0, p1}, Leb/b$b;-><init>(Leb/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Leb/b;->c:Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/utils/Tool;->createPopWindowBottomInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Leb/b;->a:Landroid/widget/PopupWindow;

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "text/plain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Leb/b;->m:Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    if-eqz v1, :cond_0

    iget-object v3, p0, Leb/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Leb/b;->n:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p0, Leb/b;->o:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_1
    iget-object v1, p0, Leb/b;->n:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Leb/b;->m:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Leb/b;->n:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Leb/b;->m:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leb/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Leb/b;->p:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    new-instance v1, Leb/b$c;

    invoke-direct {v1, p0}, Leb/b$c;-><init>(Leb/b;)V

    invoke-direct {p0, v0, p1, p2, v1}, Leb/b;->w(Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    return-void
.end method

.method private E(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p1, "\u4f20\u5165\u7684VideoItem == null,\u8bf7\u68c0\u67e5\u4f60\u7684\u4ee3\u7801.."

    .line 1
    invoke-direct {p0, p1}, Leb/b;->x(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Leb/b;->p:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 3
    iget-object p1, p0, Leb/b;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Leb/b;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Leb/b;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Leb/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Leb/b;->C(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Leb/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Leb/b;->x:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Leb/b;)Lcom/tencent/rtmp/TXLivePlayer;
    .locals 0

    iget-object p0, p0, Leb/b;->q:Lcom/tencent/rtmp/TXLivePlayer;

    return-object p0
.end method

.method static synthetic g(Leb/b;)Lcom/tencent/rtmp/TXVodPlayer;
    .locals 0

    iget-object p0, p0, Leb/b;->r:Lcom/tencent/rtmp/TXVodPlayer;

    return-object p0
.end method

.method static synthetic h(Leb/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leb/b;->x(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Leb/b;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;
    .locals 0

    iget-object p0, p0, Leb/b;->p:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    return-object p0
.end method

.method static synthetic j(Leb/b;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iget-object p0, p0, Leb/b;->A:Lcom/guochao/faceshow/views/m;

    return-object p0
.end method

.method static synthetic k(Leb/b;Lcom/guochao/faceshow/views/m;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iput-object p1, p0, Leb/b;->A:Lcom/guochao/faceshow/views/m;

    return-object p1
.end method

.method static synthetic l(Leb/b;)I
    .locals 0

    iget p0, p0, Leb/b;->B:I

    return p0
.end method

.method static synthetic m(Leb/b;I)I
    .locals 0

    iput p1, p0, Leb/b;->B:I

    return p1
.end method

.method static synthetic n(Leb/b;)Lcom/guochao/faceshow/utils/TailWaterMark;
    .locals 0

    iget-object p0, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    return-object p0
.end method

.method static synthetic o(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Leb/b;)Lu9/a;
    .locals 0

    invoke-direct {p0}, Leb/b;->z()Lu9/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Leb/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leb/b;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic t(Leb/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leb/b;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Leb/b;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Leb/b;->b:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic v(Leb/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leb/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method private w(Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkStoragePer()Z

    move-result p3

    if-nez p3, :cond_1

    .line 2
    iget-object p1, p0, Leb/b;->z:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/PermissionTools;->requestStoragePerByFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Leb/b;->x:Landroid/app/Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/PermissionTools;->requestStoragePer(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, p3

    move v7, v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v0

    const/4 v8, 0x0

    .line 8
    :goto_2
    iget-object p3, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    if-nez p3, :cond_3

    .line 9
    new-instance p3, Lcom/guochao/faceshow/utils/TailWaterMark;

    iget-object v0, p0, Leb/b;->x:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/guochao/faceshow/utils/TailWaterMark;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    iget-object v2, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideoToDCMI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 13
    :cond_4
    iget-object p1, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/utils/TailWaterMark;->setWaterMarkProcessListener(Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SharePopWindowController"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static y()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12002a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()Lu9/a;
    .locals 1

    new-instance v0, Leb/b$d;

    invoke-direct {v0, p0}, Leb/b$d;-><init>(Leb/b;)V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/b;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Leb/b;->C:Lcom/guochao/faceshow/utils/TailWaterMark;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->cancelProcess()V

    :cond_1
    return-void
.end method

.method public F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SHARE_TYPE_PAGE"

    .line 1
    iput-object v0, p0, Leb/b;->v:Ljava/lang/String;

    .line 2
    iput-object p6, p0, Leb/b;->w:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Leb/b;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p3, p4, p5}, Leb/b;->G(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Leb/b;->n:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Leb/b;->l:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Leb/b;->o:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Leb/b;->a:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    const/16 p3, 0x53

    const/4 p4, 0x0

    .line 5
    invoke-virtual {p2, p1, p3, p4, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public H(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 1

    const-string v0, "SHARE_TYPE_VIDEO"

    .line 1
    iput-object v0, p0, Leb/b;->v:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p5}, Leb/b;->E(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 3
    iget-object p5, p0, Leb/b;->p:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez p5, :cond_0

    const-string p5, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Leb/b;->w:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Leb/b;->G(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnDeleteBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/b;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Leb/b;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnUpLoadBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/b;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Leb/b;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
