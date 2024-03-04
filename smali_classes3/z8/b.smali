.class public Lz8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/player/GCLivePlayer;

.field private b:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz8/b;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz8/b;->e:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lz8/b;->i:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lz8/b;->j:J

    return-wide v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz8/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 1

    iget-object v0, p0, Lz8/b;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz8/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lz8/b;->f:J

    return-wide v0
.end method

.method public f()Lcom/guochao/player/GCLivePlayer;
    .locals 1

    iget-object v0, p0, Lz8/b;->a:Lcom/guochao/player/GCLivePlayer;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lz8/b;->c:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lz8/b;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lz8/b;->g:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lz8/b;->h:Z

    return v0
.end method

.method public k()V
    .locals 2

    const-string v0, "FloatWindowValueHolder.release()"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lz8/b;->f()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lz8/b;->i:Z

    return-void
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Lz8/b;->j:J

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lz8/b;->g:Z

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz8/b;->e:Ljava/util/List;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lz8/b;->h:Z

    return-void
.end method

.method public q(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0

    iput-object p1, p0, Lz8/b;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz8/b;->d:Ljava/util/List;

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lz8/b;->f:J

    return-void
.end method

.method public t(Lcom/guochao/player/GCLivePlayer;)V
    .locals 0

    iput-object p1, p0, Lz8/b;->a:Lcom/guochao/player/GCLivePlayer;

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lz8/b;->c:I

    return-void
.end method
