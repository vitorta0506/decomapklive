.class public interface abstract Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
        "",
        "clear",
        "",
        "isActive",
        "",
        "newId",
        "",
        "processMethod",
        "clientId",
        "methodName",
        "",
        "shouldWait",
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
.field public static final Companion:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;->$$INSTANCE:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;

    sput-object v0, Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;->Companion:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isActive()Z
.end method

.method public abstract newId()I
.end method

.method public abstract processMethod(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract shouldWait(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
