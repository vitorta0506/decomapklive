.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;
.super Lcom/guochao/faceshow/views/flowlayout/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->P1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/views/flowlayout/a<",
        "Lcom/guochao/faceshow/bean/EmotionalTag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

.field final synthetic f:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/util/List;Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->f:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->e:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/flowlayout/a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/EmotionalTag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->i(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILcom/guochao/faceshow/bean/EmotionalTag;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILcom/guochao/faceshow/bean/EmotionalTag;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->f:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->e:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;

    const v1, 0x7f0d028c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p3, Lcom/guochao/faceshow/bean/EmotionalTag;->tname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget p3, p3, Lcom/guochao/faceshow/bean/EmotionalTag;->have:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$o;->f:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p3, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->A0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;I)I

    :cond_0
    return-object p1
.end method
