.class Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->e0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->l0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->k0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->m0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    const v1, 0x7f120194

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->i0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    const v1, 0x7f120443

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->r0()V

    return-void
.end method
