.class public final Lcom/gl/gaussblur/GaussBlurNativeAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0083 J!\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0083 J\u0011\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0083 J\u0011\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0083 J\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0083 J \u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u0008\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0010H\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/gl/gaussblur/GaussBlurNativeAPI;",
        "",
        "()V",
        "nativeReleaseResources",
        "",
        "nativeRenderGaussBlur",
        "",
        "textureId",
        "width",
        "height",
        "nativeSetBlurIteraions",
        "iterations",
        "nativeSetKernelSize",
        "kernelSize",
        "nativeSetSigma",
        "sigma",
        "",
        "process",
        "release",
        "setBlurIteraions",
        "setKernelSize",
        "setSigma",
        "delta",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/gl/gaussblur/GaussBlurNativeAPI;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gl/gaussblur/GaussBlurNativeAPI;

    invoke-direct {v0}, Lcom/gl/gaussblur/GaussBlurNativeAPI;-><init>()V

    sput-object v0, Lcom/gl/gaussblur/GaussBlurNativeAPI;->INSTANCE:Lcom/gl/gaussblur/GaussBlurNativeAPI;

    const-string v0, "GaussBlur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final native nativeReleaseResources()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeRenderGaussBlur(III)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeSetBlurIteraions(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeSetKernelSize(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeSetSigma(F)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final process(III)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->nativeRenderGaussBlur(III)I

    move-result p1

    .line 2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    const/16 v0, 0x501

    if-eq p2, v0, :cond_1

    const/16 v0, 0x502

    if-eq p2, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->release()V

    return p0
.end method

.method public static final release()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->nativeReleaseResources()V

    return-void
.end method

.method public static final setBlurIteraions(I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->nativeSetBlurIteraions(I)V

    return-void
.end method

.method public static final setKernelSize(I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->nativeSetKernelSize(I)V

    return-void
.end method

.method public static final setSigma(F)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->nativeSetSigma(F)V

    return-void
.end method
