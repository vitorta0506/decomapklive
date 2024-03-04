.class public Lsa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/a$h;,
        Lsa/a$j;,
        Lsa/a$i;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "a"


# instance fields
.field private a:Lcom/opensource/svgaplayer/SVGAImageView;

.field private b:Lcom/opensource/svgaplayer/SVGAImageView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsa/a$i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

.field private j:Lsa/a$h;

.field private k:Lsa/a$j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsa/a;->d:Z

    .line 3
    iput-boolean v0, p0, Lsa/a;->e:Z

    .line 4
    iput-boolean v0, p0, Lsa/a;->f:Z

    .line 5
    new-instance v0, Lsa/a$b;

    invoke-direct {v0, p0}, Lsa/a$b;-><init>(Lsa/a;)V

    iput-object v0, p0, Lsa/a;->j:Lsa/a$h;

    .line 6
    invoke-virtual/range {p0 .. p5}, Lsa/a;->j(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lsa/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsa/a;->d:Z

    return p1
.end method

.method static synthetic b(Lsa/a;)V
    .locals 0

    invoke-direct {p0}, Lsa/a;->o()V

    return-void
.end method

.method static synthetic c(Lsa/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lsa/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lsa/a;)Lsa/a$j;
    .locals 0

    iget-object p0, p0, Lsa/a;->k:Lsa/a$j;

    return-object p0
.end method

.method static synthetic e(Lsa/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsa/a;->e:Z

    return p1
.end method

.method static synthetic f(Lsa/a;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic g(Lsa/a;Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsa/a;->n(Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    return-void
.end method

.method private i(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 2
    new-instance v0, Lsa/a$a;

    invoke-direct {v0, p0, p1}, Lsa/a$a;-><init>(Lsa/a;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsa/a;->d:Z

    return-void
.end method

.method private l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p6, 0x7ffffffe

    const/4 v0, 0x1

    if-ne p3, p6, :cond_1

    .line 1
    iput-boolean v0, p0, Lsa/a;->d:Z

    .line 2
    new-instance p2, Lsa/a$c;

    invoke-direct {p2, p0, p1}, Lsa/a$c;-><init>(Lsa/a;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-static {p2, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->q(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;I)V

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    invoke-virtual {p1, v0, p4, p3}, Lcom/guochao/faceshow/aaspring/manager/a;->q(III)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lsa/a;->d:Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    new-instance p2, Lsa/a$d;

    invoke-direct {p2, p0}, Lsa/a$d;-><init>(Lsa/a;)V

    invoke-virtual {p1, v0, p4, p3, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->i(IIILcom/guochao/faceshow/aaspring/manager/a$k;)V

    .line 6
    invoke-direct {p0}, Lsa/a;->o()V

    return-void

    .line 7
    :cond_2
    iput-boolean v0, p0, Lsa/a;->d:Z

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    new-instance p5, Lsa/a$e;

    invoke-direct {p5, p0, p2}, Lsa/a$e;-><init>(Lsa/a;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0, p4, p3, p5}, Lcom/guochao/faceshow/aaspring/manager/a;->i(IIILcom/guochao/faceshow/aaspring/manager/a$k;)V

    return-void
.end method

.method private m(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lsa/a;->d:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance v0, Lsa/a$f;

    invoke-direct {v0, p0, p2}, Lsa/a$f;-><init>(Lsa/a;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    return-void
.end method

.method private n(Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/a;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lsa/a;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getPointPaths()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getDrawWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getDrawHeight()I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->playPoints(Ljava/util/List;IIZ)V

    return-void
.end method

.method private o()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lsa/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lsa/a;->d:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lsa/a;->e:Z

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lsa/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 5
    iget-object v0, p0, Lsa/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lsa/a$i;

    if-eqz v8, :cond_e

    .line 6
    iget-object v0, v8, Lsa/a$i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 7
    :cond_3
    iget-object v0, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lsa/a;->e:Z

    .line 9
    iget-object v0, p0, Lsa/a;->k:Lsa/a$j;

    if-eqz v0, :cond_4

    .line 10
    iget-object v1, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-object v2, v8, Lsa/a$i;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lsa/a$j;->b(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lsa/a;->j:Lsa/a$h;

    invoke-virtual {v0, v8}, Lsa/a$h;->c(Lsa/a$i;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/a;->j:Lsa/a$h;

    iget-object v2, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getEffectTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getEffectTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getEffectTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    goto :goto_1

    :cond_6
    :goto_0
    const-wide/16 v2, 0x1388

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    const/4 v0, -0x1

    .line 13
    :try_start_0
    iget-object v2, v8, Lsa/a$i;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget-object v3, v8, Lsa/a$i;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v2

    move v6, v3

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v2, -0x1

    .line 15
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v2

    const/4 v6, -0x1

    :goto_3
    if-ne v5, v0, :cond_8

    const-string v0, "\u793c\u7269ID\u89e3\u6790\u51fa\u9519,\u627e\u4e0d\u5230\u793c\u7269ID == -1"

    .line 16
    invoke-direct {p0, v0}, Lsa/a;->p(Ljava/lang/String;)V

    .line 17
    iput-boolean v1, p0, Lsa/a;->d:Z

    .line 18
    invoke-direct {p0}, Lsa/a;->o()V

    return-void

    .line 19
    :cond_8
    iget-object v0, v8, Lsa/a$i;->c:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    iget-object v3, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v4, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    iget v7, v8, Lsa/a$i;->e:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V

    goto :goto_5

    .line 21
    :cond_9
    iget-object v0, v8, Lsa/a$i;->c:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    iget-object v3, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v4, p0, Lsa/a;->h:Landroid/view/ViewGroup;

    iget v7, v8, Lsa/a$i;->e:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V

    goto :goto_5

    .line 23
    :cond_a
    iget-object v0, v8, Lsa/a$i;->c:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v3, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v4, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    iget v7, v8, Lsa/a$i;->e:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V

    goto :goto_5

    .line 25
    :cond_b
    iget-object v0, v8, Lsa/a$i;->c:Ljava/lang/String;

    const-string v2, "100"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    iget-object v3, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v4, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    iget v7, v8, Lsa/a$i;->e:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V

    goto :goto_5

    .line 27
    :cond_c
    iget-object v0, v8, Lsa/a$i;->c:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, v8, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-object v1, v8, Lsa/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-direct {p0, v0, v1}, Lsa/a;->m(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    goto :goto_5

    .line 29
    :cond_d
    iput-boolean v1, p0, Lsa/a;->d:Z

    .line 30
    invoke-direct {p0}, Lsa/a;->o()V

    const-string v0, "\u793c\u7269type\u9519\u8bef,\u8bf7\u68c0\u67e5\u793c\u7269type\u662f\u5426\u662f \'2\' \u6216\u8005 \'8\' "

    .line 31
    invoke-direct {p0, v0}, Lsa/a;->p(Ljava/lang/String;)V

    goto :goto_5

    .line 32
    :cond_e
    :goto_4
    iput-boolean v1, p0, Lsa/a;->d:Z

    .line 33
    invoke-direct {p0}, Lsa/a;->o()V

    :cond_f
    :goto_5
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lsa/a;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lsa/a$i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsa/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j(Landroid/content/Context;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "context == null,\u8bf7\u68c0\u67e5\u4f60\u7684\u4ee3\u7801\u903b\u8f91.."

    .line 1
    invoke-direct {p0, p1}, Lsa/a;->p(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const-string p1, "bigSvgaImageView && middleSvgaImageView \u90fd\u662fnull,\u8bf7\u68c0\u67e5\u4f60\u7684\u4ee3\u7801\u903b\u8f91.."

    .line 2
    invoke-direct {p0, p1}, Lsa/a;->p(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/a;->c:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 5
    iput-object p3, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 6
    iput-object p4, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    .line 7
    iput-object p5, p0, Lsa/a;->h:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lsa/a;->f:Z

    .line 9
    invoke-direct {p0, p2}, Lsa/a;->i(Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 10
    iget-object p1, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0, p1}, Lsa/a;->i(Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lsa/a;->e:Z

    return v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsa/a;->f:Z

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsa/a;->d:Z

    .line 2
    iput-boolean v0, p0, Lsa/a;->e:Z

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsa/a;->f:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lsa/a;->d:Z

    .line 3
    iput-boolean v1, p0, Lsa/a;->e:Z

    .line 4
    iget-object v1, p0, Lsa/a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    :cond_0
    iget-object v1, p0, Lsa/a;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    :cond_1
    iget-object v1, p0, Lsa/a;->h:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    :cond_2
    iget-object v1, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 12
    iget-object v1, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 13
    :cond_3
    iget-object v1, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 15
    iget-object v0, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 16
    :cond_4
    iget-object v0, p0, Lsa/a;->j:Lsa/a$h;

    if-eqz v0, :cond_5

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lsa/a;->j:Lsa/a$h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_5
    iget-object v0, p0, Lsa/a;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->clearPoints()Z

    :cond_6
    return-void
.end method

.method public t(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsa/a;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setAnimationOnlyMode(Z)V

    .line 3
    iget-object p1, p0, Lsa/a;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    new-instance v0, Lsa/a$g;

    invoke-direct {v0, p0}, Lsa/a$g;-><init>(Lsa/a;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setPlayPointsListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public u(Lsa/a$j;)V
    .locals 0

    iput-object p1, p0, Lsa/a;->k:Lsa/a$j;

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 1
    .param p7    # Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lsa/a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsa/a;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lsa/a$i;

    invoke-direct {v0}, Lsa/a$i;-><init>()V

    .line 3
    iput-object p1, v0, Lsa/a$i;->b:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lsa/a$i;->c:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lsa/a$i;->d:Ljava/lang/String;

    .line 6
    iput p4, v0, Lsa/a$i;->e:I

    .line 7
    iput-object p5, v0, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 8
    iput-object p6, v0, Lsa/a$i;->g:Ljava/lang/String;

    .line 9
    iput-object p7, v0, Lsa/a$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    if-eqz p7, :cond_1

    .line 10
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isSelfSend()Z

    move-result p1

    iput-boolean p1, v0, Lsa/a$i;->h:Z

    :cond_1
    if-lez p4, :cond_2

    .line 11
    iget-object p1, p0, Lsa/a;->c:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsa/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget-boolean p1, p0, Lsa/a;->d:Z

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    invoke-direct {p0}, Lsa/a;->o()V

    return-void
.end method
