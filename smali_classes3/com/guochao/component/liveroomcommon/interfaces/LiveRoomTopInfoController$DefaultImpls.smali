.class public final Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static setLiveRoomOwnerUserInfo(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V
    .locals 1
    .param p0    # Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "gcLiveRoomUserInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, La7/a;->b(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V

    return-void
.end method
