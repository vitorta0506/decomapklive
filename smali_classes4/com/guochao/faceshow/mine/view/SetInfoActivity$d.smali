.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->l0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->l0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const v0, 0x7f120196

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->h1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Z)Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$d;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V

    :goto_1
    return-void
.end method
