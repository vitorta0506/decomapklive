.class public interface abstract Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;,
        Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0008J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;",
        "",
        "getViewHolder",
        "Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;",
        "setLiveRoomOwnerUserInfo",
        "",
        "gcLiveRoomUserInfo",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;",
        "ViewHolder",
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
.method public abstract getViewHolder()Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setLiveRoomOwnerUserInfo(Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
