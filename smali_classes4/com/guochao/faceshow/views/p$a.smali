.class Lcom/guochao/faceshow/views/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/p;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/p;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p1}, Lcom/guochao/faceshow/views/p;->b(Lcom/guochao/faceshow/views/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p1}, Lcom/guochao/faceshow/views/p;->c(Lcom/guochao/faceshow/views/p;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p1}, Lcom/guochao/faceshow/views/p;->d(Lcom/guochao/faceshow/views/p;)Lcom/guochao/faceshow/views/p$c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p1}, Lcom/guochao/faceshow/views/p;->d(Lcom/guochao/faceshow/views/p;)Lcom/guochao/faceshow/views/p$c;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/views/p$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p2}, Lcom/guochao/faceshow/views/p;->b(Lcom/guochao/faceshow/views/p;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p2}, Lcom/guochao/faceshow/views/p;->c(Lcom/guochao/faceshow/views/p;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/views/p$a;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/views/p;->e(Lcom/guochao/faceshow/views/p;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
