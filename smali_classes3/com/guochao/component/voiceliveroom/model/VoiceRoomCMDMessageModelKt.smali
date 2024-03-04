.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a8\u0006\n"
    }
    d2 = {
        "getClassForType",
        "Ljava/lang/Class;",
        "T",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;",
        "type",
        "",
        "send",
        "",
        "groupId",
        "",
        "component_liveroom_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getClassForType(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;",
            ">(I)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put your class for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " here"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :pswitch_1
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;

    goto :goto_0

    :pswitch_2
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;

    goto :goto_0

    :pswitch_3
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;

    goto :goto_0

    :pswitch_4
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;

    goto :goto_0

    :pswitch_5
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;

    goto :goto_0

    :pswitch_6
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;

    goto :goto_0

    :pswitch_7
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;

    goto :goto_0

    :pswitch_8
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;

    goto :goto_0

    :pswitch_9
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;

    goto :goto_0

    :pswitch_a
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;

    goto :goto_0

    :pswitch_b
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;

    goto :goto_0

    :pswitch_c
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;

    goto :goto_0

    :pswitch_d
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;

    goto :goto_0

    :pswitch_e
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnMuteModel;

    goto :goto_0

    :pswitch_f
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDMuteModel;

    goto :goto_0

    :pswitch_10
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;

    goto :goto_0

    :pswitch_11
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;

    goto :goto_0

    :pswitch_12
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDTobeMemberMessageModel;

    goto :goto_0

    :pswitch_13
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;

    goto :goto_0

    :pswitch_14
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;

    goto :goto_0

    :pswitch_15
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;

    goto :goto_0

    :pswitch_16
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDNatureModel;

    goto :goto_0

    :pswitch_17
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;

    goto :goto_0

    :pswitch_18
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;

    goto :goto_0

    :pswitch_19
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;

    goto :goto_0

    :pswitch_1a
    const-class p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final send(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModelKt$send$1;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModelKt$send$1;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->sendC2CCustomMessage([BLjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;

    return-void
.end method
