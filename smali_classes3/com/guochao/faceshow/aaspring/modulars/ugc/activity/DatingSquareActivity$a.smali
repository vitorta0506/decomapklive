.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 3
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
