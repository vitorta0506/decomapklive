.class Lcom/guochao/faceshow/aaspring/beans/Comment$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$typeListBean:Lcom/guochao/faceshow/bean/CommentTypeListBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/bean/CommentTypeListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$typeListBean:Lcom/guochao/faceshow/bean/CommentTypeListBean;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$context:Landroid/content/Context;

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$typeListBean:Lcom/guochao/faceshow/bean/CommentTypeListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CommentTypeListBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
