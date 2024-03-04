.class public final Lcom/guochao/faceshow/aaspring/views/ParallaxImageView$target$1;
.super Ls0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/i<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/views/ParallaxImageView$target$1",
        "Ls0/i;",
        "Landroid/graphics/Bitmap;",
        "resource",
        "Lt0/f;",
        "transition",
        "",
        "onResourceReady",
        "Landroid/graphics/drawable/Drawable;",
        "errorDrawable",
        "onLoadFailed",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView$target$1;->this$0:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    invoke-direct {p0}, Ls0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView$target$1;->this$0:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
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
            "Landroid/graphics/Bitmap;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView$target$1;->this$0:Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/ParallaxImageView$target$1;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
