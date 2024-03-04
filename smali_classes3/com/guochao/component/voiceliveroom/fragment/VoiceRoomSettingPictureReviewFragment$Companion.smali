.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;",
        "url",
        "Landroid/net/Uri;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/net/Uri;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;

    invoke-direct {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
