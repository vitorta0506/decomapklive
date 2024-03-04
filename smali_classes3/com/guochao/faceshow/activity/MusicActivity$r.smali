.class Lcom/guochao/faceshow/activity/MusicActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->x1()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->q0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->b1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->a1(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const v2, 0x7f1207c0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->E0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->G0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->E0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->H0(Lcom/guochao/faceshow/activity/MusicActivity;Z)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->o0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$r;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->a1(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->d1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V

    return-void
.end method
