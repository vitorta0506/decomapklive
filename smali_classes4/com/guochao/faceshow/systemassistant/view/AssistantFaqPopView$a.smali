.class Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$a;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
