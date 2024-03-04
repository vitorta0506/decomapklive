.class public final Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->startCalling(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u0008\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\t\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;",
        "Landroid/app/Dialog;",
        "dialog",
        "Landroidx/fragment/app/DialogFragment;",
        "fragment",
        "",
        "onVideoClick",
        "onVoiceClick",
        "onCancel",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onVideoClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->access$checkPermission(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    return-void
.end method

.method public onVoiceClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/DialogFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$startCalling$1;->$roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->access$checkPermission(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    return-void
.end method
