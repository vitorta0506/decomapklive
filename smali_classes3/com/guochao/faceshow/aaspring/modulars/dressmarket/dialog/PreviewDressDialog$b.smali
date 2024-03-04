.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->Y1(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
