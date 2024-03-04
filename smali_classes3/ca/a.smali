.class public final Lca/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/a$b;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

.field private final b:Lea/e;

.field private c:Lca/a$b;

.field private final d:Lda/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lca/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lca/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Lda/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    .line 3
    new-instance v0, Lea/e;

    new-instance v1, Lga/a;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->i0()Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lga/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, v1}, Lea/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lca/a;->b:Lea/e;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    sget-object p1, Lca/a$b;->b:Lca/a$b;

    iput-object p1, p0, Lca/a;->c:Lca/a$b;

    .line 7
    iput-object p2, p0, Lca/a;->d:Lda/c;

    .line 8
    invoke-virtual {p2}, Lda/c;->i()V

    .line 9
    invoke-virtual {p0}, Lca/a;->f()V

    return-void
.end method

.method static synthetic a(Lca/a;)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;
    .locals 0

    iget-object p0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lca/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lca/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const-string v1, "api/qrcode/scanCode"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "userKey"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lca/a$a;

    invoke-direct {v1, p0, p1}, Lca/a$a;-><init>(Lca/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPersonalInformationScan()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const-class v3, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, ""

    .line 9
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    .line 10
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->finish()V

    :cond_1
    return-void

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanResultNoUrlActivity;->b0(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->finish()V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://www.facecast.live/x/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.facecast.live/x/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public c(Lcom/google/zxing/Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playQrScanSound()I

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lca/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lca/a;->c:Lca/a$b;

    sget-object v1, Lca/a$b;->b:Lca/a$b;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lca/a$b;->a:Lca/a$b;

    iput-object v0, p0, Lca/a;->c:Lca/a$b;

    .line 3
    iget-object v0, p0, Lca/a;->d:Lda/c;

    iget-object v1, p0, Lca/a;->b:Lea/e;

    invoke-virtual {v1}, Lea/e;->b()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lda/c;->g(Landroid/os/Handler;I)V

    .line 4
    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->d0()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->n0(I)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->n0(I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lca/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->finish()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lca/a;->f()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lca/a$b;->b:Lca/a$b;

    iput-object v0, p0, Lca/a;->c:Lca/a$b;

    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lca/a;->c(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lca/a$b;->a:Lca/a$b;

    iput-object p1, p0, Lca/a;->c:Lca/a$b;

    .line 10
    iget-object p1, p0, Lca/a;->d:Lda/c;

    iget-object v0, p0, Lca/a;->b:Lea/e;

    invoke-virtual {v0}, Lea/e;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lda/c;->g(Landroid/os/Handler;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
