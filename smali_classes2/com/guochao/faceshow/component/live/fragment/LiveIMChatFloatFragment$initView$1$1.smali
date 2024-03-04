.class public final Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1",
        "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;",
        "onInputModeChange",
        "",
        "mode",
        "",
        "app_GooglePlayRelease"
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
.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputModeChange(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->access$setCurrentMode$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->access$getCurrentMode$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-static {p1, v2, v2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->access$setViewHeight(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;ZI)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->access$setViewHeight(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;ZI)V

    :goto_0
    return-void
.end method
