.class public final Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;
.super Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/gc_message_dispatchers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "gcimMessageDispatcher",
        "",
        "registerDispatcher",
        "unregisterDispatcher",
        "Lo7/a;",
        "gcimMessage",
        "",
        "dispatchGCIMMessage",
        "<init>",
        "()V",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;
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

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->Companion:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->dispatchers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 2
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->dispatchers:Ljava/util/ArrayList;

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

    return v1

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->dispatchers:Ljava/util/ArrayList;

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

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->dispatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
