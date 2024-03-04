.class public final Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;
.super Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0001H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;",
        "Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;",
        "context",
        "Landroid/content/Context;",
        "path",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "findObject",
        "",
        "go",
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
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findObject()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->with(Landroid/os/Bundle;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->with(Landroid/os/Bundle;)Lcom/alibaba/android/arouter/facade/Postcard;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
