.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;
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

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->b(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$b;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->i(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
