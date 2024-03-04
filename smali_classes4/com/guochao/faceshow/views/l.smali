.class public Lcom/guochao/faceshow/views/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/l;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/l;->b:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/views/l;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/l;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/l;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/l;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/guochao/faceshow/views/l;->c:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02fc

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p2, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a0629

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f0a08d0

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/views/l;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f110020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/views/l$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/views/l$a;-><init>(Lcom/guochao/faceshow/views/l;)V

    const-string v4, "global_loading"

    invoke-virtual {p2, v1, v4, v3, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 9
    new-instance p2, Landroid/app/Dialog;

    const v1, 0x7f1304c8

    invoke-direct {p2, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    .line 10
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f06038c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/l;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/l;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/utils/a;

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method
