.class public final Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenPrefStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0014H\u0016R#\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;",
        "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "prefStorage",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getPrefStorage",
        "()Landroid/content/SharedPreferences;",
        "prefStorage$delegate",
        "Lkotlin/Lazy;",
        "has",
        "",
        "token",
        "",
        "reset",
        "",
        "restore",
        "Lkotlin/Pair;",
        "",
        "",
        "default",
        "store",
        "value",
        "Companion",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_NAME:Ljava/lang/String; = "rate_limit_backoff_storage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final prefStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->Companion:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$prefStorage$2;

    invoke-direct {v0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore$prefStorage$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->prefStorage$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getPrefStorage()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->prefStorage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->getPrefStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public reset(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->getPrefStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public restore(Ljava/lang/String;J)Lkotlin/Pair;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->getPrefStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public store(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;->getPrefStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
