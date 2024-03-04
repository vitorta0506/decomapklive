.class public abstract Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\u0014H\u0016J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0014H\u0016J\u0018\u00104\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00105\u001a\u00020/H\u0016R \u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u001b\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u001a\u0010\u001d\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u0018R\u0018\u0010!\u001a\u00020\u0008X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\n\"\u0004\u0008#\u0010\u000cR\u001c\u0010$\u001a\u0004\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\n\"\u0004\u0008&\u0010\u000cR\"\u0010\'\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00066"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "backgroundImage",
        "",
        "getBackgroundImage",
        "()Ljava/lang/String;",
        "setBackgroundImage",
        "(Ljava/lang/String;)V",
        "chatGroupId",
        "getChatGroupId",
        "setChatGroupId",
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
        "liveRoomId",
        "getLiveRoomId",
        "setLiveRoomId",
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
        "describeContents",
        "",
        "isMultiLiveRoom",
        "setMultiLiveRoom",
        "",
        "multiLiveRoom",
        "writeToParcel",
        "flags",
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
.field private backgroundImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backImgUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chatGroupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coverImgUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private forbiddenMessage:Z

.field private isVoiceRoom:Z

.field private isVoiceRoomAdministrator:Z

.field private isVoiceRoomMember:Z

.field private isVoiceRoomOwner:Z

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private usersOnSeat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->chatGroupId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->backgroundImage:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->coverImgUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setLiveRoomId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setChatGroupId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoom(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomOwner(Z)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomMember(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomAdministrator(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setBackgroundImage(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setCoverImgUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setTitle(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0, v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setForbiddenMessage(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getChatGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->chatGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->coverImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForbiddenMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->forbiddenMessage:Z

    return v0
.end method

.method public abstract getLiveRoomId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUsersOnSeat()Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->usersOnSeat:Ljava/util/List;

    return-object v0
.end method

.method public isMultiLiveRoom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVoiceRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom:Z

    return v0
.end method

.method public isVoiceRoomAdministrator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator:Z

    return v0
.end method

.method public isVoiceRoomMember()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomMember:Z

    return v0
.end method

.method public isVoiceRoomOwner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner:Z

    return v0
.end method

.method public synthetic isVoiceRoomVisitor()Z
    .locals 1

    invoke-static {p0}, Lz6/a;->a(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->backgroundImage:Ljava/lang/String;

    return-void
.end method

.method public setChatGroupId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->chatGroupId:Ljava/lang/String;

    return-void
.end method

.method public setCoverImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->coverImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setForbiddenMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->forbiddenMessage:Z

    return-void
.end method

.method public abstract setLiveRoomId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public setMultiLiveRoom(Z)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setUsersOnSeat(Ljava/util/List;)V
    .locals 0
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

    iput-object p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->usersOnSeat:Ljava/util/List;

    return-void
.end method

.method public setVoiceRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom:Z

    return-void
.end method

.method public setVoiceRoomAdministrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator:Z

    return-void
.end method

.method public setVoiceRoomMember(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomMember:Z

    return-void
.end method

.method public setVoiceRoomOwner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomMember()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getBackgroundImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getForbiddenMessage()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
