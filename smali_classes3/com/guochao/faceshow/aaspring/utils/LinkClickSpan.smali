.class public Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private final mInAppOpenUrl:Z

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mText:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mColor:I

    .line 5
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mInAppOpenUrl:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mInAppOpenUrl:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->c(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertKeywordLoadOrSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
