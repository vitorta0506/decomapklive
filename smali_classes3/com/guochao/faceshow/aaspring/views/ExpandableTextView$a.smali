.class Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->a(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->c(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setExpand(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->d(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->d(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p1

    const v0, 0x7f0a0656

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView$a;->a:Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;->d(Lcom/guochao/faceshow/aaspring/views/ExpandableTextView;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
