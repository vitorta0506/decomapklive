.class public final Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->setLiveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
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
        "com/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1",
        "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$setLiveDataObserve$2$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancelRescind(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->cancellation(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method
