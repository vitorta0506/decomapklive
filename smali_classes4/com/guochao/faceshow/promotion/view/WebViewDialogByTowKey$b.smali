.class Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;->a:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;->a:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;

    invoke-static {p1}, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->P1(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$b;->a:Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;

    invoke-static {p1}, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;->P1(Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey;)Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/promotion/view/WebViewDialogByTowKey$c;->onConfirm()V

    :cond_0
    return-void
.end method
