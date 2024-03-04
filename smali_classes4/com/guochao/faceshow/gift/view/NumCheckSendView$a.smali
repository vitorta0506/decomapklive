.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/NumCheckSendView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object p1, p1, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->a(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f1203e6

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->f(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->g(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$a;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    :goto_0
    return-void
.end method
