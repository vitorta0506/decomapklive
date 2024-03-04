.class public final Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;
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
.method public static isVoiceRoomVisitor(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z
    .locals 0
    .param p0    # Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lz6/a;->b(Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;)Z

    move-result p0

    return p0
.end method
