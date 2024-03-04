.class public final Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceRoomHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "binding",
        "Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;",
        "getBinding",
        "()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;",
        "component_liveroom_release"
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
.field private final binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;->bind(Landroid/view/View;)Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    move-result-object p1

    const-string v0, "bind(view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;->binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;->binding:Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomListBinding;

    return-object v0
.end method
