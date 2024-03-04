.class public final Lcom/guochao/faceshow/adapters/PeopleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
        "Lcom/guochao/faceshow/adapters/PeopleViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/adapters/PeopleAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
        "Lcom/guochao/faceshow/adapters/PeopleViewHolder;",
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

    const v0, 0x7f0d0280

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapters/PeopleViewHolder;

    check-cast p2, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/PeopleAdapter;->convert(Lcom/guochao/faceshow/adapters/PeopleViewHolder;Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;)V

    return-void
.end method

.method protected convert(Lcom/guochao/faceshow/adapters/PeopleViewHolder;Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/adapters/PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/adapters/PeopleViewHolder;->getBinding()Lcom/guochao/faceshow/databinding/ItemUserHomePageUsersBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ItemUserHomePageUsersBinding;->headerIV:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0f020e

    .line 3
    invoke-static {p1, p2, v0}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method
