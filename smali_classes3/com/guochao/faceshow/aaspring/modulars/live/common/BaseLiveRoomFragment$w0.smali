.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w0"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SWIPE_TO_SHOW_LIVE_CHAT"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0d9e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    iput-object v0, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setLiveScrollToClearScreenView(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110037

    goto :goto_0

    :cond_3
    const v0, 0x7f110038

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz v2, :cond_4

    const v3, 0x7f0a0af5

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0$b;

    invoke-direct {v4, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const/4 v2, 0x1

    const-string v5, "swipe_to_show"

    invoke-virtual {v3, v0, v5, v4, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const v2, 0x7f0a0b47

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1209b9

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F3(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G4:Ljava/lang/String;

    :cond_4
    return-void
.end method
