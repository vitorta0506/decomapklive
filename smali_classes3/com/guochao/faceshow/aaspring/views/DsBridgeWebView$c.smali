.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->v(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/lang/Float;
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->m(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/Float;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->a(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;->b(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/Float;)V

    return-void
.end method