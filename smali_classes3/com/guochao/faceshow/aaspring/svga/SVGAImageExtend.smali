.class public Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;
.super Lcom/opensource/svgaplayer/SVGAImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;,
        Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGACallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;-><init>(Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;Lcom/opensource/svgaplayer/SVGACallback;)V

    invoke-super {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    return-void
.end method

.method public setMediaSource(Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;->a:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$b;

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$b;->a()V

    return-void
.end method

.method public setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method
