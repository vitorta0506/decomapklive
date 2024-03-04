.class Lsa/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->B(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic b:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic c:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    iput-object p1, p0, Lsa/c$d;->c:Lsa/c;

    iput-object p2, p0, Lsa/c$d;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iput-object p3, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

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
    iget-object v0, p0, Lsa/c$d;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-boolean v0, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V

    .line 4
    :goto_0
    iget-object v0, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 5
    iget-object p1, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 6
    iget-object p1, p0, Lsa/c$d;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-boolean v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->t:I

    .line 8
    iget-object p1, p0, Lsa/c$d;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v0, Lsa/c$d$a;

    invoke-direct {v0, p0}, Lsa/c$d$a;-><init>(Lsa/c$d;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    :cond_1
    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lsa/c$d;->c:Lsa/c;

    iget-object v1, p0, Lsa/c$d;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    invoke-static {v0, v1}, Lsa/c;->i(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    return-void
.end method
