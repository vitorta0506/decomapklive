.class Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;
.super Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/PKProgressView;->f(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/PKProgressView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/PKProgressView;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 3
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    new-instance v1, Lcom/opensource/svgaplayer/utils/SVGARange;

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/opensource/svgaplayer/utils/SVGARange;-><init>(II)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
