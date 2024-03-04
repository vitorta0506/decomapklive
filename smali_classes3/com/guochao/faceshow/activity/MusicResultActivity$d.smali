.class Lcom/guochao/faceshow/activity/MusicResultActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    :cond_0
    if-eqz p3, :cond_2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->k0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicResultActivity;->m0(Lcom/guochao/faceshow/activity/MusicResultActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->l0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    const p3, 0x7f1207c0

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return p2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicResultActivity;->n0(Lcom/guochao/faceshow/activity/MusicResultActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicResultActivity;->I0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$d;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->P0(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
