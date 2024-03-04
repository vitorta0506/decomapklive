.class final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IconTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016R\"\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;",
        "Ls0/c;",
        "Landroid/graphics/drawable/Drawable;",
        "resource",
        "Lt0/f;",
        "transition",
        "",
        "onResourceReady",
        "placeholder",
        "onLoadCleared",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;",
        "kotlin.jvm.PlatformType",
        "icon",
        "Ljava/lang/ref/WeakReference;",
        "iconSpan",
        "<init>",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final icon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iconSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls0/c;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->icon:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->onResourceReady$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static final onResourceReady$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->icon:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->access$setIcon(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->icon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->access$setIcon(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p1, v0, p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V

    return-void
.end method
