.class public Lcom/vk/api/sdk/requests/VKRequest;
.super Lcom/vk/api/sdk/internal/ApiCommand;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/requests/VKRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/api/sdk/internal/ApiCommand<",
        "TT;>;",
        "Lcom/vk/api/sdk/e<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\r\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 ;*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001;B\u001b\u0012\u0006\u0010%\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u00089\u0010:J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0008J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\tJ\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\nJ\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u000bJ\'\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u000c2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\r\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u000c2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u0010J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0011J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0012J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0013J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0019J\u0017\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001f\u001a\u00020\u0008H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0014R\"\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0019\u0010+\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010(R\"\u0010\u001e\u001a\u00020\u00088\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R$\u00103\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00088\u0004@BX\u0084\u000e\u00a2\u0006\u000c\n\u0004\u00083\u0010-\u001a\u0004\u00083\u0010/R#\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004048\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lcom/vk/api/sdk/requests/VKRequest;",
        "T",
        "Lcom/vk/api/sdk/e;",
        "Lcom/vk/api/sdk/internal/ApiCommand;",
        "",
        "name",
        "value",
        "addParam",
        "",
        "",
        "",
        "",
        "",
        "",
        "values",
        "(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;",
        "",
        "",
        "Lcom/vk/dto/common/id/UserId;",
        "",
        "response",
        "parse",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "Lorg/json/JSONObject;",
        "r",
        "(Lorg/json/JSONObject;)Ljava/lang/Object;",
        "Lcom/vk/api/sdk/VKApiManager;",
        "manager",
        "onExecute",
        "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;",
        "allowNoAuth",
        "allow",
        "setAnonymous",
        "Lcom/vk/api/sdk/VKApiConfig;",
        "config",
        "Lcom/vk/api/sdk/VKMethodCall$Builder;",
        "createBaseCallBuilder",
        "method",
        "Ljava/lang/String;",
        "getMethod",
        "()Ljava/lang/String;",
        "setMethod",
        "(Ljava/lang/String;)V",
        "requestApiVersion",
        "getRequestApiVersion",
        "Z",
        "getAllowNoAuth",
        "()Z",
        "setAllowNoAuth",
        "(Z)V",
        "<set-?>",
        "isAnonymous",
        "Ljava/util/LinkedHashMap;",
        "params",
        "Ljava/util/LinkedHashMap;",
        "getParams",
        "()Ljava/util/LinkedHashMap;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vk/api/sdk/requests/VKRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_MALFORMED_RESPONSE:I = -0x2


# instance fields
.field private volatile allowNoAuth:Z

.field private volatile isAnonymous:Z

.field private method:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final params:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestApiVersion:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/requests/VKRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/requests/VKRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/requests/VKRequest;->Companion:Lcom/vk/api/sdk/requests/VKRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/internal/ApiCommand;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    iput-object p2, p0, Lcom/vk/api/sdk/requests/VKRequest;->requestApiVersion:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addParam(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/vk/api/sdk/requests/VKRequest$addParam$7;->INSTANCE:Lcom/vk/api/sdk/requests/VKRequest$addParam$7;

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addParam(Ljava/lang/CharSequence;[I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addParam(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addParam(Ljava/lang/String;F)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "toString(value)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final addParam(Ljava/lang/String;I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "toString(value)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addParam(Ljava/lang/String;J)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(value)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowNoAuth()Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/requests/VKRequest;->setAllowNoAuth(Z)V

    return-object p0
.end method

.method protected createBaseCallBuilder(Lcom/vk/api/sdk/VKApiConfig;)Lcom/vk/api/sdk/VKMethodCall$Builder;
    .locals 1
    .param p1    # Lcom/vk/api/sdk/VKApiConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/vk/api/sdk/VKMethodCall$Builder;

    invoke-direct {p1}, Lcom/vk/api/sdk/VKMethodCall$Builder;-><init>()V

    return-object p1
.end method

.method protected final getAllowNoAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/api/sdk/requests/VKRequest;->allowNoAuth:Z

    return v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final getRequestApiVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/requests/VKRequest;->requestApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected final isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/api/sdk/requests/VKRequest;->isAnonymous:Z

    return v0
.end method

.method protected onExecute(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/vk/api/sdk/VKApiManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/VKApiManager;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vk/api/sdk/requests/VKRequest;->requestApiVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getLang()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lang"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getDeviceId()Lkotlin/Lazy;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "device_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lcom/vk/api/sdk/VKApiConfig;->getExternalDeviceId()Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vk/api/sdk/requests/VKRequest;->getParams()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "external_device_id"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    const-string/jumbo v3, "v"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/requests/VKRequest;->createBaseCallBuilder(Lcom/vk/api/sdk/VKApiConfig;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->params:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/util/Map;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vk/api/sdk/VKMethodCall$Builder;->method(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->version(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lcom/vk/api/sdk/requests/VKRequest;->isAnonymous:Z

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->setAnonymous(Z)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lcom/vk/api/sdk/requests/VKRequest;->allowNoAuth:Z

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->allowNoAuth(Z)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->build()Lcom/vk/api/sdk/VKMethodCall;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/VKApiException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/requests/VKRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    new-instance v12, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    const/4 v3, 0x1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    move-object v0, v12

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v12
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final setAllowNoAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vk/api/sdk/requests/VKRequest;->allowNoAuth:Z

    return-void
.end method

.method public setAnonymous(Z)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/vk/api/sdk/requests/VKRequest;->isAnonymous:Z

    return-object p0
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vk/api/sdk/requests/VKRequest;->method:Ljava/lang/String;

    return-void
.end method
