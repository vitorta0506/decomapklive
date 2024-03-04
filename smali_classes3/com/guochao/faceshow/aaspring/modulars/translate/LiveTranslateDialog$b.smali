.class Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
