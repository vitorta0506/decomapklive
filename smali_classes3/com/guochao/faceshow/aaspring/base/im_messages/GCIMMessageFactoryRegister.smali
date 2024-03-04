.class public final Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;
.super Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/gc_message_factories"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J#\u0010\u000c\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\t*\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
        "factor",
        "",
        "registerFactory",
        "factory",
        "unregisterFactory",
        "Lo7/a;",
        "T",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "v2Message",
        "create",
        "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final factories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->Companion:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->factories:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;
    .locals 2
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

    const-string v0, "v2Message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->factories:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;

    .line 3
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;->create(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerFactory(Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->factories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterFactory(Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->factories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
