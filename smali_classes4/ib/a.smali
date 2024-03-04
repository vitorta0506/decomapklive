.class public Lib/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;I)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 4
    new-instance p2, Lib/a$a;

    invoke-direct {p2, p1}, Lib/a$a;-><init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    sget p1, Lib/b;->a:I

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;II)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 5
    new-instance v1, Lib/a$b;

    invoke-direct {v1, p1, p3, p0}, Lib/a$b;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;ILandroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p3

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance p2, Lib/a$c;

    invoke-direct {p2, p1}, Lib/a$c;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string p1, "play_focus"

    .line 8
    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method
