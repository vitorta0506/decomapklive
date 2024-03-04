.class public Lcom/guochao/faceshow/aaspring/views/j;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/j;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/j;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->c(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/j;->b:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
