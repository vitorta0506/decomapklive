.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/n;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ListView;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field public l:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->j:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i()V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->j()V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->a:Landroid/content/Context;

    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IMID"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/live/ban/closeLiveBanByUid"

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->k:Ljava/lang/String;

    const-string v2, "liveId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/live/kick/liveRelieveUser"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v7}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->j:Ljava/lang/String;

    const-string v2, "IMID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/live/ban/liveBanList"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->k:Ljava/lang/String;

    const-string v2, "liveId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/live/kick/liveKickList"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private k()V
    .locals 5

    const v0, 0x7f0a0730

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    const v0, 0x7f0a0c1b

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0c2b

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0c10

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0d37

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->d:Landroid/view/View;

    const v0, 0x7f0a0d38

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->e:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42fa0000    # 125.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const v3, 0x800003

    const/16 v4, 0x11

    if-le v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 22
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d03a8

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->k()V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->l()V

    return-void
.end method

.method public setonMuteListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->l:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;

    return-void
.end method
