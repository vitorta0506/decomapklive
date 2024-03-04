.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;

    iget-object p2, p2, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    const v0, 0x7f1206d3

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->l(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g$a;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;

    iget-object p2, p2, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method
