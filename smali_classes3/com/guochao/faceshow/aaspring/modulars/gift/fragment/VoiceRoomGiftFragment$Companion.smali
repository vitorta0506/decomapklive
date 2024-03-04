.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;",
        "roomId",
        "",
        "toUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "type",
        "",
        "voiceId",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/model/GCUser;IIILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x4

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;->newInstance(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/model/GCUser;II)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/model/GCUser;II)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 2
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 4
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "voiceId"

    .line 5
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;-><init>()V

    .line 7
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
