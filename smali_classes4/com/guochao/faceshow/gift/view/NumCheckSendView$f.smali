.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setOnMultiClickListener(Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

.field final synthetic b:Lcom/guochao/faceshow/gift/view/NumCheckSendView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/view/NumCheckSendView;Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;->b:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iput-object p2, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$f;->b:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object v1, v0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->i(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
