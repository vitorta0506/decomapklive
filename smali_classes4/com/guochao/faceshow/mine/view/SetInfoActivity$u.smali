.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->H0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f120440

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->G0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f1205a1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$u;->b:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->c2()V

    return-void
.end method
