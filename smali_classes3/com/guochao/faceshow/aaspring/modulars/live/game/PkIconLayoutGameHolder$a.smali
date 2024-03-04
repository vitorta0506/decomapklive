.class Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Lcom/opensource/svgaplayer/SVGAVideoEntity;)Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->q(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
