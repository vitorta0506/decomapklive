.class Lcom/guochao/faceshow/fragment/TCTimeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/SliderViewContainer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/TCTimeFragment;->d2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/fragment/TCTimeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->P1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->R1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->Q1(Lcom/guochao/faceshow/fragment/TCTimeFragment;I)I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;

    invoke-direct {v1}, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;-><init>()V

    .line 6
    iput-wide p1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p1

    .line 7
    iput-wide v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->endTime:J

    const/4 v2, 0x3

    .line 8
    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->repeatTimes:I

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->S1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)Lcom/tencent/ugc/TXVideoEditer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setRepeatPlay(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/TCTimeFragment$a;->a:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/TCTimeFragment;->T1(Lcom/guochao/faceshow/fragment/TCTimeFragment;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/views/s;->B(J)V

    return-void
.end method
