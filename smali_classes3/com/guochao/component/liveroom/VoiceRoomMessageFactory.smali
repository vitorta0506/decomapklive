.class public final Lcom/guochao/component/liveroom/VoiceRoomMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00010\t0\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/component/liveroom/VoiceRoomMessageFactory;",
        "Landroidx/startup/Initializer;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
        "()V",
        "create",
        "context",
        "Landroid/content/Context;",
        "dependencies",
        "",
        "Ljava/lang/Class;",
        "Factory",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;
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

    const-string v0, "/app/gc_message_factories"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    sget-object v0, Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;->INSTANCE:Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;->registerFactory(Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/component/liveroom/VoiceRoomMessageFactory;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;

    move-result-object p1

    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 3
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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
