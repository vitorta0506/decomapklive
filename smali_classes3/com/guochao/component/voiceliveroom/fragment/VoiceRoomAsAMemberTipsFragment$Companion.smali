.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;",
        "price",
        "",
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

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;IILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;->newInstance(I)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(I)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "price"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
