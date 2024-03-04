.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 3
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->subscribe()Lth/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;->a()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;->a()V

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
