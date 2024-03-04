.class public final synthetic Lz6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z
    .locals 1

    invoke-interface {p0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomMember()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z
    .locals 0

    invoke-static {p0}, Lz6/a;->a(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z

    move-result p0

    return p0
.end method
