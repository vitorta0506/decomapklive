.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t2(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->d:I

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->e:I

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$p;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$p;->onFinished()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->d:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$b;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V

    return-void
.end method
