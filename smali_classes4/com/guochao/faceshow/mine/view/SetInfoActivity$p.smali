.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->P1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->a:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->a:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->getSelectedList()Ljava/util/Set;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/bean/EmotionalTag;)Lcom/guochao/faceshow/bean/EmotionalTag;

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object v2, v1, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/EmotionalTag;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->E0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/bean/EmotionalTag;)Lcom/guochao/faceshow/bean/EmotionalTag;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->B0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Lcom/guochao/faceshow/bean/EmotionalTag;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f120190

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$p;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->F0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    return-void
.end method
