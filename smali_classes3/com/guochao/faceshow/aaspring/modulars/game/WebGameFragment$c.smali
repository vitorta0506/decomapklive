.class Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->playWinAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->f:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->f:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->f:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->f:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object v0

    const v1, 0x7f110027

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playRaw(I)I

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f110022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$f;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-direct {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V

    const-string v4, "lottery"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :cond_2
    :goto_0
    return-void
.end method
