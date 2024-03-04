.class public abstract Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008&\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0001H&J\u0008\u0010\u0018\u001a\u00020\u0000H&J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;",
        "",
        "context",
        "Landroid/content/Context;",
        "path",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "bundle",
        "Landroid/os/Bundle;",
        "getBundle",
        "()Landroid/os/Bundle;",
        "setBundle",
        "(Landroid/os/Bundle;)V",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "getContext",
        "()Landroid/content/Context;",
        "getPath",
        "()Ljava/lang/String;",
        "findObject",
        "go",
        "requestCode",
        "withParam",
        "key",
        "value",
        "withParams",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private code:I

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->path:Ljava/lang/String;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->code:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract findObject()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected final getBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->code:I

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->path:Ljava/lang/String;

    return-object v0
.end method

.method public abstract go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final requestCode(I)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->code:I

    return-object p0
.end method

.method protected final setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method protected final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->code:I

    return-void
.end method

.method public final withParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final withParams(Landroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->bundle:Landroid/os/Bundle;

    return-object p0
.end method
