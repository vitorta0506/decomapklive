.class Lcom/guochao/faceshow/gift/view/NumCheckSendView$c;
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

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$c;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/gift/view/NumCheckSendView$c;->a:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->k(Lcom/guochao/faceshow/gift/view/NumCheckSendView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
