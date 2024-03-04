.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 3
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->subscribe()Lth/b;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
