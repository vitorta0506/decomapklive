.class Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->access$200(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->access$200(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
