.class public final Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0278

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;->convert(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)V

    return-void
.end method

.method protected convert(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;->headerIV:Landroid/widget/ImageView;

    const v0, 0x7f0f0635

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1205db

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;->headerIV:Landroid/widget/ImageView;

    invoke-interface {p2}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f020e

    .line 6
    invoke-static {v0, v1, v2}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;->getBinding()Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;->nameTV:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
