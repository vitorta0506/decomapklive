.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0f02e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$l;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageViewBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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
