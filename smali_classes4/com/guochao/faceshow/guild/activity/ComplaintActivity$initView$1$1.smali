.class public final Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1",
        "Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog$OnMenuClickListener;",
        "confirm",
        "",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->editReason:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->access$getContractHistoryBean$p(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1c

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
