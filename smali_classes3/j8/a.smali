.class public Lj8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:Lcom/tencent/qgame/animplayer/AnimView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lj8/a;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lj8/a;->c:Z

    const/4 p1, 0x4

    .line 4
    iput p1, p0, Lj8/a;->d:I

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Lj8/a;->a:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lj8/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 7
    iput p3, p0, Lj8/a;->d:I

    return-void
.end method

.method static synthetic a(Lj8/a;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lj8/a;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic b(Lj8/a;Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimView;
    .locals 0

    iput-object p1, p0, Lj8/a;->e:Lcom/tencent/qgame/animplayer/AnimView;

    return-object p1
.end method

.method static synthetic c(Lj8/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj8/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lj8/a;)V
    .locals 0

    invoke-direct {p0}, Lj8/a;->h()V

    return-void
.end method

.method static synthetic e(Lj8/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lj8/a;->c:Z

    return p1
.end method

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lj8/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lj8/a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lj8/a;->c:Z

    .line 4
    iget-object v2, p0, Lj8/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Lj8/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Lj8/a$a;

    invoke-direct {v4, p0}, Lj8/a$a;-><init>(Lj8/a;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget v6, p0, Lj8/a;->d:I

    aput v6, v5, v1

    const/16 v6, 0xf

    aput v6, v5, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/guochao/faceshow/aaspring/manager/a;->j(IILcom/guochao/faceshow/aaspring/manager/a$k;[I)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj8/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean p1, p0, Lj8/a;->c:Z

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lj8/a;->h()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj8/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj8/a;->e:Lcom/tencent/qgame/animplayer/AnimView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimView;->stopPlay()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj8/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lj8/a;->c:Z

    return-void
.end method
