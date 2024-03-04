.class public Lcom/guochao/faceshow/service/AppBackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->m:Ljava/util/List;

    const-string v0, "-1"

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/service/AppBackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->l:Z

    return p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/service/AppBackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->p:Ljava/lang/String;

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lf7/b;->j0:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "videoFile"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "imgFile"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->d:Ljava/lang/String;

    const-string v2, "musicId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/service/AppBackgroundService$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$a;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v2, Lf7/b;->j0:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "files"

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->S(Ljava/lang/String;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "flag"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/service/AppBackgroundService$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$b;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 9
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/service/AppBackgroundService;->p()V

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lf7/b;->g0:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->n:Ljava/lang/String;

    const-string v2, "account"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->a:Ljava/lang/String;

    const-string v2, "content"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->o:Ljava/lang/String;

    const-string v2, "infoId"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->q:Ljava/lang/String;

    const-string v2, "reportType"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->p:Ljava/lang/String;

    const-string/jumbo v2, "typeId"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/service/AppBackgroundService$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/service/AppBackgroundService$c;-><init>(Lcom/guochao/faceshow/service/AppBackgroundService;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 p2, 0x2

    :try_start_0
    const-string p3, "SHORT_VIDEO_UPLOAD"

    .line 1
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "content"

    const-string v1, "AppBackgroundService"

    if-eqz p3, :cond_4

    :try_start_1
    const-string p3, "retry"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/service/AppBackgroundService;->n()V

    const-string p1, "short_video :service \u6536\u5230 \u91cd\u8bd5\u4e0a\u4f20\u7684intent"

    .line 4
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    const-string p3, "short_video : service\u6536\u5230\u4e0a\u4f20\u7684intent"

    .line 5
    invoke-static {v1, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "json"

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-nez p3, :cond_1

    move-object p3, v3

    .line 7
    :cond_1
    :try_start_2
    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->e:Ljava/lang/String;

    const-string p3, "imgPath"

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->c:Ljava/lang/String;

    const-string p3, "isPrivate"

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->f:Ljava/lang/String;

    const-string/jumbo p3, "videoType"

    .line 10
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->b:Ljava/lang/String;

    const-string/jumbo p3, "videoPath"

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->g:Ljava/lang/String;

    const-string p3, "isSource"

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->h:Ljava/lang/String;

    const-string p3, "musicId"

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    move-object p3, v3

    .line 14
    :cond_2
    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->d:Ljava/lang/String;

    const-string p3, "musicName"

    .line 15
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, p3

    .line 16
    :goto_0
    iput-object v3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->i:Ljava/lang/String;

    const-string/jumbo p3, "width"

    .line 17
    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->j:I

    const-string p3, "height"

    .line 18
    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->k:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->a:Ljava/lang/String;

    const-string/jumbo p3, "sync_to_dynamic"

    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->l:Z

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/service/AppBackgroundService;->n()V

    :cond_4
    const-string p3, "REPORT_UPLOAD"

    .line 22
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string p3, "files"

    .line 23
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->m:Ljava/util/List;

    const-string p3, "REPORT_UPLOAD : service\u6536\u5230\u4e0a\u4f20\u7684intent"

    .line 24
    invoke-static {v1, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->a:Ljava/lang/String;

    const-string p3, "account"

    .line 26
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->n:Ljava/lang/String;

    const-string/jumbo p3, "typeId"

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->p:Ljava/lang/String;

    const-string p3, "infoId"

    .line 28
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->o:Ljava/lang/String;

    const-string p3, "reportType"

    .line 29
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/service/AppBackgroundService;->q:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/guochao/faceshow/service/AppBackgroundService;->o()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return p2
.end method
