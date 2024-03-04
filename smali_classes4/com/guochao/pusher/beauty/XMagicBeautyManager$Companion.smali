.class public final Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/beauty/XMagicBeautyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "lib_pusher_and_player_release"
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

    invoke-direct {p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->access$getInstance$cp()Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;-><init>(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->access$setInstance$cp(Lcom/guochao/pusher/beauty/XMagicBeautyManager;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->access$getInstance$cp()Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
