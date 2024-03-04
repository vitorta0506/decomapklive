.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;->a:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const-string v0, "#222222"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
