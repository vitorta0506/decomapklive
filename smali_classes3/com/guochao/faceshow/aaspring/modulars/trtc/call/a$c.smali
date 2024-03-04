.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->J(Landroidx/fragment/app/FragmentActivity;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onVideoClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->a:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f120916

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->N(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120915

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->B(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onVoiceClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->a:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f120916

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->N(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120915

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->B(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
