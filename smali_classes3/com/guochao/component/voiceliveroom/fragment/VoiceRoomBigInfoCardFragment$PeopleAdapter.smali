.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PeopleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;",
        "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V",
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


# instance fields
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    .line 2
    sget p1, Lcom/guochao/component/liveroom/R$layout;->item_big_info_member:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;->convert(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)V
    .locals 4
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;->headerIV:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    sget v3, Lcom/guochao/lib_core/R$mipmap;->icon_head_default:I

    .line 4
    invoke-static {v0, v1, v3}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
