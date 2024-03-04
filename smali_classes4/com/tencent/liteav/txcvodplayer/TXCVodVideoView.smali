.class public Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;,
        Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:F

.field private E:J

.field private volatile F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:I

.field private K:I

.field private L:Z

.field private M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field private N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

.field private O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

.field private P:I

.field private Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

.field private R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

.field private S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

.field private T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

.field private U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

.field private V:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

.field private W:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

.field public a:I

.field private aa:I

.field private ab:Lcom/tencent/liteav/txcplayer/d;

.field private ac:Z

.field public b:I

.field public c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

.field protected d:Z

.field protected final e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;

.field i:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

.field j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

.field public k:Landroid/os/Handler;

.field private l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:I

.field private v:Z

.field private w:Landroid/content/Context;

.field private x:Lcom/tencent/liteav/txcplayer/e;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/tencent/liteav/txcvodplayer/renderer/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    const/4 v2, 0x2

    .line 9
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:I

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    const/16 v3, 0x64

    .line 12
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:Z

    const/16 v3, -0x3e8

    .line 14
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 15
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:I

    .line 16
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Ljava/lang/Object;

    .line 17
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;

    .line 18
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 19
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 20
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 21
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 22
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 23
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 24
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 25
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 26
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 27
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 28
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 29
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    .line 30
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ac:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 34
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 36
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 37
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    const/4 v1, 0x2

    .line 40
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:I

    .line 41
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    const/16 v2, 0x64

    .line 43
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 44
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:Z

    const/16 v2, -0x3e8

    .line 45
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 46
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:I

    .line 47
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;

    .line 49
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 50
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 51
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 52
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 53
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 54
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 55
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 56
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 57
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 58
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 59
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 60
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    .line 61
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ac:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 64
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 65
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    const/4 p3, 0x0

    .line 66
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 67
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 68
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e:I

    .line 72
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    const/16 v1, 0x64

    .line 74
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 75
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:Z

    const/16 v1, -0x3e8

    .line 76
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 77
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:I

    .line 78
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Ljava/lang/Object;

    .line 79
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$8;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;

    .line 80
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$9;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    .line 81
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    .line 82
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    .line 83
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$12;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    .line 84
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    .line 85
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    .line 86
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$2;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    .line 87
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    .line 88
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    .line 89
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$5;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    .line 90
    new-instance p3, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;

    invoke-direct {p3, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$6;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    .line 91
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    .line 92
    iput-boolean p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ac:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    return-object p0
.end method

.method static synthetic B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/d;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Lcom/tencent/liteav/txcplayer/d;

    return-object p0
.end method

.method static synthetic C(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)Lcom/tencent/liteav/txcvodplayer/renderer/a$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x83a

    const/16 v1, -0x900

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ac:Z

    if-eqz v2, :cond_1

    return-void

    .line 70
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x65

    .line 71
    iput v3, v2, Landroid/os/Message;->what:I

    .line 72
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 73
    iput p1, v2, Landroid/os/Message;->arg1:I

    const-string v4, "description"

    .line 74
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 76
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/16 p2, 0x7e2

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7e0

    if-eq p1, p2, :cond_3

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "sendSimpleEvent "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " vod="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TXCVodVideoView"

    invoke-static {p3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 79
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ac:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    .line 10
    new-instance p1, Lcom/tencent/liteav/txcplayer/e;

    invoke-direct {p1}, Lcom/tencent/liteav/txcplayer/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRender(I)V

    .line 12
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    .line 13
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 17
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 18
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    return-void
.end method

.method private static a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->stopRenderProcess(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/os/Bundle;)V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Lcom/tencent/liteav/txcplayer/d;

    if-eqz p0, :cond_0

    const/16 v0, 0x7e4

    .line 82
    invoke-interface {p0, v0, p1}, Lcom/tencent/liteav/txcplayer/d;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return p1
.end method

.method private static b(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {p0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    const-string v0, "TXCVodVideoView"

    const-string v1, "bindSurfaceHolder"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->c()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->b()Landroid/view/Surface;

    move-result-object v0

    .line 7
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->connectPlayer(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-interface {p1, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:I

    return p1
.end method

.method private c(Z)V
    .locals 5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replay, isFromErrorState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 5
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_1

    .line 7
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:I

    if-lez v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    .line 9
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    int-to-long v0, p1

    .line 10
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return p0
.end method

.method static synthetic d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object p0
.end method

.method private e()Z
    .locals 10

    const-string v0, ".hls"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openVideo vod="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVodVideoView"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 5
    iget-object v1, v1, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    .line 7
    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V

    .line 8
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 10
    invoke-virtual {v1, v5, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 11
    :try_start_0
    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/liteav/txcplayer/f;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 12
    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f:Ljava/lang/Object;

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 13
    invoke-interface {v6, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->attachTRTC(Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 15
    iget-object v6, v6, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    const-string v7, "/"

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v6, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 19
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 22
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    iget-wide v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    .line 23
    iput-wide v7, v0, Lcom/tencent/liteav/txcplayer/e;->o:J

    .line 24
    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:I

    if-ltz v7, :cond_6

    .line 25
    iput v7, v0, Lcom/tencent/liteav/txcplayer/e;->r:I

    .line 26
    :cond_6
    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    if-ne v7, v5, :cond_7

    .line 27
    iput-boolean v1, v0, Lcom/tencent/liteav/txcplayer/e;->w:Z

    goto :goto_2

    .line 28
    :cond_7
    iput-boolean v3, v0, Lcom/tencent/liteav/txcplayer/e;->w:Z

    :goto_2
    if-ne v7, v5, :cond_8

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->enableAdaptiveBitrate()V

    goto :goto_3

    :cond_8
    const/16 v0, -0x3e8

    if-eq v7, v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    .line 31
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setConfig(Lcom/tencent/liteav/txcplayer/e;)V

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:Ljava/util/Map;

    invoke-interface {v0, v7}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setPrivateConfig(Ljava/util/Map;)V

    .line 33
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 34
    iget-object v0, v0, Lcom/tencent/liteav/txcplayer/e;->h:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 36
    iget-object v8, v8, Lcom/tencent/liteav/txcplayer/e;->h:Ljava/util/Map;

    .line 37
    invoke-interface {v0, v7, v6, v8}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_4

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDataSource(Ljava/lang/String;)V

    .line 39
    :goto_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;

    .line 41
    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v8, v6, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$b;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V

    .line 43
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->N:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V

    .line 45
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->O:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->T:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->U:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->V:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->R:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V

    .line 51
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->S:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    new-instance v6, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnGetTXCVodVideoViewTargetState(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->W:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    invoke-interface {v0, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSubtitleFrameDataListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    invoke-static {v0, v6}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioStreamType(I)V

    .line 56
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setScreenOnWhilePlaying(Z)V

    .line 57
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->prepareAsync()V

    .line 58
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    invoke-interface {v0, v4}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    .line 59
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:Z

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    .line 60
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 61
    invoke-static {v0}, Lcom/tencent/liteav/base/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput v5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 63
    iput v5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    invoke-interface {v0, v1, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;->a(II)Z

    goto :goto_6

    .line 65
    :catch_1
    iput v5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 66
    iput v5, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->Q:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;

    const/16 v2, -0x3ec

    const/16 v3, -0x8ff

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;->a(II)Z

    :goto_6
    return v1
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:I

    return p0
.end method

.method static synthetic f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    return p1
.end method

.method private f()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnPreparedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoSizeChangedListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$m;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnCompletionListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnInfoListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$h;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnBufferingUpdateListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSeekCompleteListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnTimedTextListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHLSKeyErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnHevcVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnVideoDecoderErrorListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$l;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnGetTXCVodVideoViewTargetState(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$a;)V

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setOnSubtitleFrameDataListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:I

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    return p1
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    return p1
.end method

.method static synthetic h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v:Z

    return p0
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->o:I

    return p1
.end method

.method static synthetic i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->p:I

    return p1
.end method

.method static synthetic k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)F
    .locals 0

    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    return p0
.end method

.method static synthetic n(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Z

    return v0
.end method

.method static synthetic o(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    return p0
.end method

.method static synthetic p(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 0

    iget p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    return p0
.end method

.method static synthetic q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic s(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->E:J

    return-wide v0
.end method

.method static synthetic u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:I

    return v0
.end method

.method static synthetic v(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:I

    return v0
.end method

.method static synthetic w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Z

    return p0
.end method

.method static synthetic x(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V

    return-void
.end method

.method static synthetic y(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    return v0
.end method

.method static synthetic z(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start vod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    if-nez v0, :cond_0

    .line 48
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    const/16 v0, 0x7d4

    const-string v3, "Playback started"

    const-string v4, "playing"

    .line 49
    invoke-direct {p0, v0, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v3, 0x64

    .line 51
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seek to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getUrlPathExtention()Ljava/lang/String;

    move-result-object v0

    const-string v2, "m3u8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result p1

    .line 62
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    if-nez v0, :cond_4

    .line 63
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    .line 66
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    .line 67
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "seekTo Exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method final a(Z)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release player "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    .line 29
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    if-eqz p1, :cond_0

    .line 31
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b:I

    .line 32
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    .line 33
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    .line 35
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->L:Z

    const/16 p1, -0x3e8

    .line 36
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    if-eqz p1, :cond_1

    .line 38
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p1

    const/16 v3, 0x8

    if-lt p1, v3, :cond_1

    .line 39
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 40
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 41
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    .line 42
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    .line 43
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const-string v1, "TXCVodVideoView"

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->stop()V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stop exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop vod="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)Z
    .locals 1

    .line 18
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    if-nez v0, :cond_0

    .line 19
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->publishAudioToNetwork()V

    :cond_0
    return-void
.end method

.method public getBitrateIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    return v0
.end method

.method public getBufferDuration()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPlayableDurationMs()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v2

    .line 4
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 5
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->s:J

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->F:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    if-ltz v0, :cond_0

    int-to-long v0, v0

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 6
    iget-boolean v2, v2, Lcom/tencent/liteav/txcplayer/e;->i:Z

    if-nez v2, :cond_3

    .line 7
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    int-to-long v0, v2

    :cond_3
    return-wide v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:I

    if-gtz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:I

    return v0
.end method

.method public getMediaInfo()Lcom/tencent/liteav/txcplayer/model/b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getMediaInfo()Lcom/tencent/liteav/txcplayer/model/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getMetaRotationDegree()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedBitrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/txcplayer/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getUrlPathExtention()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    return v0
.end method

.method public getVideoRotationDegree()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    return v0
.end method

.method public setAudioPlayoutVolume(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    :cond_1
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 2
    iput-boolean p1, v0, Lcom/tencent/liteav/txcplayer/e;->p:Z

    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBitrateIndex "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBitrateIndex()I

    move-result v0

    if-eq v0, p1, :cond_6

    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->J:I

    .line 4
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/model/a;

    if-eqz v2, :cond_2

    .line 8
    iget v3, v2, Lcom/tencent/liteav/txcplayer/model/a;->a:I

    if-ne v3, p1, :cond_2

    .line 9
    iget v0, v2, Lcom/tencent/liteav/txcplayer/model/a;->d:I

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->K:I

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_5

    .line 11
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 12
    iget-boolean v2, v2, Lcom/tencent/liteav/txcplayer/e;->j:Z

    if-eqz v2, :cond_4

    if-eq p1, v1, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getBitrateIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setBitrateIndex(I)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcplayer/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    .line 6
    iput-object v0, p1, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/txcplayer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->ab:Lcom/tencent/liteav/txcplayer/d;

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->I:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    return-void

    .line 4
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->H:I

    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setAudioVolume(I)V

    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    return-void
.end method

.method public setPrivateConfig(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setPrivateConfig(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setRate(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRate "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setRate(F)V

    .line 4
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->D:F

    return-void
.end method

.method public setRender(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "invalid render %d\n"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(II)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b(II)V

    .line 7
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->setAspectRatio(I)V

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/a;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/a;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/a;)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setAspectRatio(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setVideoRotation(I)V

    :cond_1
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$1;-><init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l:Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    :cond_0
    return-void
.end method

.method public setRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/a;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderView "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    invoke-interface {v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    invoke-interface {v2, v3}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->b(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V

    .line 7
    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    .line 11
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setAspectRatio(I)V

    .line 12
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->m:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->n:I

    if-lez v1, :cond_3

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->a(II)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B:I

    if-lez v1, :cond_4

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->b(II)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->getView()Landroid/view/View;

    move-result-object p1

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j:Lcom/tencent/liteav/txcvodplayer/renderer/a$a;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V

    .line 22
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setVideoRotation(I)V

    return-void
.end method

.method public setStartTime(F)V
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->t:J

    return-void
.end method

.method public setTXCOnSubtitleFrameDataListener(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->M:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$b;

    return-void
.end method

.method public setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTextureRenderView "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodVideoView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/renderer/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$b;->a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a(II)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c:Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    invoke-interface {v1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b(II)V

    .line 6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->setAspectRatio(I)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/renderer/a;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoRotationDegree(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x168

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "not support degree "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q:I

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setVideoRotation(I)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z:Lcom/tencent/liteav/txcvodplayer/renderer/a;

    if-eqz p1, :cond_3

    .line 6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->aa:I

    invoke-interface {p1, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->setAspectRatio(I)V

    :cond_3
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x:Lcom/tencent/liteav/txcplayer/e;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->G:I

    .line 5
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->P:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setVideoURI "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
