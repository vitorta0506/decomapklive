.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->r0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->s0(Landroid/content/Context;I)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->s0(Landroid/content/Context;I)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    const v3, 0x7f120145

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->s0(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    return-void
.end method
