.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1",
        "Lcom/opensource/svgaplayer/SVGACallback;",
        "onFinished",
        "",
        "onPause",
        "onRepeat",
        "onStep",
        "frame",
        "",
        "percentage",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $view:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1;->$view:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator$animTo$2$2$onComplete$1;->$view:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->access$recycleSvga(Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;Lcom/opensource/svgaplayer/SVGAImageView;)V

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
