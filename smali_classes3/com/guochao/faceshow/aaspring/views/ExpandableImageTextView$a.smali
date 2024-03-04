.class Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->e(Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;)Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;->b:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->a(Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;)Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x200b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView$c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
