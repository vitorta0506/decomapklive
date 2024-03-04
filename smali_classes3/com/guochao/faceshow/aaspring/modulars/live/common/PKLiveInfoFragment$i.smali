.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;
.super Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->o2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method
