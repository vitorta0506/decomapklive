.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "URL",
        "",
        "staticImgs",
        "",
        "appStatic",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
        "currentUrl",
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


# static fields
.field private static final URL:Ljava/lang/String; = "https://fsveg.buzzcast.info/app_static/voice_room_bg/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final staticImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http://mp4.gchao.com/group1/M00/01/2B/aOhHF2NV6XuABwn-AAMx3rA7fjU430.png"

    const-string v1, "http://mp4.gchao.com/group1/M00/01/2C/aOhHF2NXOneATXDRAAjc-vzGGYg667.png"

    const-string v2, "http://mp4.gchao.com/group1/M00/01/2C/aOhHF2NXOnqAVklUAAOw-2Jc6r8536.png"

    const-string v3, "http://mp4.gchao.com/group1/M00/01/30/aOhHF2NbfYuACcSQAAaGfBITLv0082.png"

    const-string v4, "http://mp4.gchao.com/group1/M00/01/2B/aOhHF2NV6ZmAGf5XAAkWQZujCdI874.png"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModelKt;->staticImgs:Ljava/util/List;

    return-void
.end method

.method public static final appStatic(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    sget v2, Lcom/guochao/component/liveroom/R$mipmap;->voice_room_create_bg:I

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v9, 0x0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, -0x1

    move-object v1, v8

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;-><init>(ILandroid/net/Uri;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModelKt;->staticImgs:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v9, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Ljava/lang/String;

    .line 14
    new-instance v10, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;-><init>(ILandroid/net/Uri;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v9

    goto :goto_2

    :cond_3
    return-object v0
.end method
