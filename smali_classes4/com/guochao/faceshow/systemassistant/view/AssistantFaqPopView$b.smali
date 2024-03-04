.class Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->e(Ljava/util/List;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->d:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;

    iput-object p3, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->b:Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;

    iput p4, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->d:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->a(Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->b:Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$b;->c:I

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
