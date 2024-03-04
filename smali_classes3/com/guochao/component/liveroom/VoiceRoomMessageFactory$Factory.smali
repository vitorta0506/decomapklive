.class public final Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/liveroom/VoiceRoomMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
        "Lo7/a;",
        "T",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "v2Message",
        "create",
        "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;",
        "<init>",
        "()V",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;

    invoke-direct {v0}, Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;-><init>()V

    sput-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;->INSTANCE:Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;
    .locals 4
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo7/a;",
            ">(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "type"

    const-string v1, "v2Message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModelKt;->getClassForType(I)Ljava/lang/Class;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lo7/a;

    if-eqz v0, :cond_2

    check-cast p1, Lo7/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_4

    :cond_3
    return-object v1

    .line 11
    :cond_4
    throw p1
.end method
