.class public Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomInviteListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;",
        "Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomInviteListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;",
        "Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/guochao/component/liveroom/R$layout;->item_voice_room_invite:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomInviteListAdapter;->convert(Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;->headerIV:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;->getUserImg()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget v2, Lcom/guochao/lib_core/R$mipmap;->icon_head_default:I

    .line 4
    invoke-static {v0, v1, v2}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel$VoiceRoomInviteUser;->getNature()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;->lockIV:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;->lockIV:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
