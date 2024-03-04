.class public Lcom/guochao/faceshow/aaspring/utils/SvgaHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playAnim(Lcom/opensource/svgaplayer/SVGAImageView;Ljava/io/File;Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;->onError()V

    :cond_2
    :goto_0
    return-void
.end method
