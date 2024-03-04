.class public Lcom/guochao/faceshow/gift/data/AnimFlag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# instance fields
.field public A:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

.field public transient a:Landroid/view/animation/Animation;

.field public transient b:Landroid/view/animation/Animation;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:J

.field public transient k:Ljava/lang/Runnable;

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:I

.field public p:J

.field public q:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field public r:I

.field public s:Z

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->l:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->m:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->y:I

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->z:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->x:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/data/AnimFlag;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method
