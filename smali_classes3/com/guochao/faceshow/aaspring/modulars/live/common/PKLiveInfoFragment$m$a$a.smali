.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Z

    move-result v1

    invoke-static {v0, v2, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;IZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;IZZ)V

    :goto_0
    return-void
.end method
