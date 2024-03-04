.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const v0, 0x7f0a0529

    .line 1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 3

    const p1, 0x7f0a0529

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string p1, "inputting"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method
