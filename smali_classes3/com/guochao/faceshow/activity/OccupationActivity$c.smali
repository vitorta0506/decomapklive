.class Lcom/guochao/faceshow/activity/OccupationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/OccupationActivity;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/OccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->T1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    const v1, 0x7f120194

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/activity/OccupationActivity;->h:Lcom/guochao/faceshow/activity/OccupationActivity$g;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->T1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->V1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$c;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
