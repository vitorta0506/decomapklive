.class public Lcom/guochao/faceshow/web/WebViewActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0f02fb

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->k:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->shouldOpenOutside(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->c:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lx6/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "inviteMoney"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->a:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->b:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->c:I

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->d:Ljava/lang/String;

    const-string v2, "shareTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->e:Ljava/lang/String;

    const-string v2, "shareText"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->f:Ljava/lang/String;

    const-string v2, "shareImg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->g:Ljava/lang/String;

    const-string v2, "shareUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->h:Ljava/lang/String;

    const-string v2, "pageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-boolean v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->i:Z

    const-string/jumbo v2, "withShare"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    iget v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->k:I

    const-string v2, "shareIcon"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    iget-boolean v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->j:Z

    const-string v2, "hideTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    iget-boolean v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->m:Z

    const-string v2, "hasMore"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    iget v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->l:I

    const-string v2, "backgroundRes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget-boolean v1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->n:Z

    const-string v2, "showScrollbar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public c(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->m:Z

    return-object p0
.end method

.method public d(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->n:Z

    return-object p0
.end method

.method public e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->c:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->j:Z

    :goto_0
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->i:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$e;->a:Ljava/lang/String;

    return-object p0
.end method
