.class public Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private c:Ljava/lang/String;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method public b()Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getH5PageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->c:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getPercent()F

    move-result v1

    :goto_0
    const-string v2, "heightRatio"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    const-string v2, "liveInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->a:Z

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->Q1(ZLandroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->d:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    return-object p0
.end method
