.class Lz8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz8/c;


# direct methods
.method constructor <init>(Lz8/c;)V
    .locals 0

    iput-object p1, p0, Lz8/c$a;->a:Lz8/c;

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
    iget-object v0, p0, Lz8/c$a;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v1, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v1, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lz8/c$a;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->r:Lcom/opensource/svgaplayer/SVGAImageView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
