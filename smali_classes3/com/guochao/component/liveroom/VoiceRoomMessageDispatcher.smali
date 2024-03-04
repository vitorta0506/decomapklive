.class public final Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;
.super Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;
.source "SourceFile"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;",
        "Landroidx/startup/Initializer<",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u00080\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;",
        "Landroidx/startup/Initializer;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;",
        "Landroid/content/Context;",
        "context",
        "create",
        "",
        "Ljava/lang/Class;",
        "dependencies",
        "Lo7/a;",
        "gcimMessage",
        "",
        "dispatchGCIMMessage",
        "gcimMessageDispatcher",
        "",
        "registerDispatcher",
        "unregisterDispatcher",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dispatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->Companion:Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->dispatchers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string v0, "/app/gc_message_dispatchers"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;->registerDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "emptyList()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 2
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->dispatchers:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;

    .line 3
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;->dispatchGCIMMessage(Lo7/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessageDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->dispatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessageDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->dispatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
