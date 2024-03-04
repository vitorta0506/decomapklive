.class Lcom/guochao/faceshow/activity/MusicActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->q0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/guochao/faceshow/activity/MusicActivity;->b1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->a1(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const v1, 0x7f1207c0

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->E0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/activity/MusicActivity;->H0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    return v0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/MusicActivity;->E0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->H0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->o0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$a;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->a1(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity;->d1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V

    return v0

    :cond_2
    return p1
.end method
