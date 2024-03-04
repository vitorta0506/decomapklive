.class Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
