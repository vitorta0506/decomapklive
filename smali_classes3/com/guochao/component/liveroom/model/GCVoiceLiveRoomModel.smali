.class public interface abstract Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010#\u001a\u00020\u000cH\u0016R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0013\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u0018\u0010\u0015\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u0018\u0010\u0017\u001a\u00020\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u0005\"\u0004\u0008\u001b\u0010\u0007R \u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006$\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;",
        "",
        "backgroundImage",
        "",
        "getBackgroundImage",
        "()Ljava/lang/String;",
        "setBackgroundImage",
        "(Ljava/lang/String;)V",
        "coverImgUrl",
        "getCoverImgUrl",
        "setCoverImgUrl",
        "forbiddenMessage",
        "",
        "getForbiddenMessage",
        "()Z",
        "setForbiddenMessage",
        "(Z)V",
        "isVoiceRoom",
        "setVoiceRoom",
        "isVoiceRoomAdministrator",
        "setVoiceRoomAdministrator",
        "isVoiceRoomMember",
        "setVoiceRoomMember",
        "isVoiceRoomOwner",
        "setVoiceRoomOwner",
        "title",
        "getTitle",
        "setTitle",
        "usersOnSeat",
        "",
        "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;",
        "getUsersOnSeat",
        "()Ljava/util/List;",
        "setUsersOnSeat",
        "(Ljava/util/List;)V",
        "isVoiceRoomVisitor",
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


# virtual methods
.method public abstract getBackgroundImage()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCoverImgUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getForbiddenMessage()Z
.end method

.method public abstract getTitle()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getUsersOnSeat()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isVoiceRoom()Z
.end method

.method public abstract isVoiceRoomAdministrator()Z
.end method

.method public abstract isVoiceRoomMember()Z
.end method

.method public abstract isVoiceRoomOwner()Z
.end method

.method public abstract isVoiceRoomVisitor()Z
.end method

.method public abstract setBackgroundImage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCoverImgUrl(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setForbiddenMessage(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setUsersOnSeat(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVoiceRoom(Z)V
.end method

.method public abstract setVoiceRoomAdministrator(Z)V
.end method

.method public abstract setVoiceRoomMember(Z)V
.end method

.method public abstract setVoiceRoomOwner(Z)V
.end method
