.class public final Lcom/guochao/pusher/GCLivePusher$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/GCLivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/pusher/GCLivePusher$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "pusherType",
        "Lcom/guochao/pusher/GCLivePusher;",
        "createPusher",
        "",
        "init",
        "TYPE_TENCENT",
        "I",
        "TYPE_ZEGO",
        "<init>",
        "()V",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/pusher/GCLivePusher$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPusher(Landroid/content/Context;I)Lcom/guochao/pusher/GCLivePusher;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/guochao/pusher/GCLivePusher;

    new-instance v0, Lcom/guochao/pusher/tencent/TencentLivePusher;

    invoke-direct {v0, p1}, Lcom/guochao/pusher/tencent/TencentLivePusher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p2, v0, p1}, Lcom/guochao/pusher/GCLivePusher;-><init>(Lcom/guochao/pusher/base/ILivePusher;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p2
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
