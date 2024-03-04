.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/JudgeEditText;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/views/JudgeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->a:Lcom/guochao/faceshow/views/JudgeEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p1, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->y0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->v0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f120441

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$m;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Y1()V

    return-void
.end method
