.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->d(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$d;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->e(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
