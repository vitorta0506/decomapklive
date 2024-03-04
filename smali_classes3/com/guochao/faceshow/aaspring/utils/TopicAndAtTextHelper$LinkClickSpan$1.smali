.class Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->val$widget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->c(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->val$widget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$LinkClickSpan;->this$0:Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper;)Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/TopicAndAtTextHelper$OnDoubleTapClickListener;->onDoubleTap()V

    :cond_0
    return-void
.end method
