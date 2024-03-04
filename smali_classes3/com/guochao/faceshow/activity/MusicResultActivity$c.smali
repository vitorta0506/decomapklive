.class Lcom/guochao/faceshow/activity/MusicResultActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicResultActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->k0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->k0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->m0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->l0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    const v0, 0x7f1207c0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->n0(Lcom/guochao/faceshow/activity/MusicResultActivity;Z)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->I0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$c;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->P0(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    return-void
.end method
