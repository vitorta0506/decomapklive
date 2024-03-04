.class public final Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->initView(Landroid/os/Bundle;)V
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
        "com/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2",
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
.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->editReason:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->access$getContractHistoryBean$p(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;

    invoke-static {v5}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->access$getContractHistoryBean$p(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6
    :cond_1
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
