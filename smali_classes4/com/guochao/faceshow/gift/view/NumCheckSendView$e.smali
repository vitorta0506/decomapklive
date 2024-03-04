.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->g(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->l(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->b:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->j(Lcom/guochao/faceshow/gift/view/NumCheckSendView;I)I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->c:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->c(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$e;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;->a(II)V

    :cond_0
    return-void
.end method
