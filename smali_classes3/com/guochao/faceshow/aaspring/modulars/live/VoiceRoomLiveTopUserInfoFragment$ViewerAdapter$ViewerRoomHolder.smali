.class public final Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewerRoomHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Landroid/view/View;)V",
        "binding",
        "Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;",
        "getBinding",
        "()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;",
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
.field private final binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;

    move-result-object p1

    const-string p2, "bind(view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;->binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;->binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;

    return-object v0
.end method
