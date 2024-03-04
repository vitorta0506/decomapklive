.class public Lorg/light/internal/relinker/ReLinker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/internal/relinker/ReLinker$LibraryInstaller;,
        Lorg/light/internal/relinker/ReLinker$LibraryLoader;,
        Lorg/light/internal/relinker/ReLinker$Logger;,
        Lorg/light/internal/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Lorg/light/internal/relinker/ReLinkerInstance;
    .locals 1

    new-instance v0, Lorg/light/internal/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lorg/light/internal/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lorg/light/internal/relinker/ReLinkerInstance;->force()Lorg/light/internal/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lorg/light/internal/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/light/internal/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/light/internal/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lorg/light/internal/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/light/internal/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, p2}, Lorg/light/internal/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/light/internal/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static log(Lorg/light/internal/relinker/ReLinker$Logger;)Lorg/light/internal/relinker/ReLinkerInstance;
    .locals 1

    new-instance v0, Lorg/light/internal/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lorg/light/internal/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0}, Lorg/light/internal/relinker/ReLinkerInstance;->log(Lorg/light/internal/relinker/ReLinker$Logger;)Lorg/light/internal/relinker/ReLinkerInstance;

    move-result-object p0

    return-object p0
.end method

.method public static recursively()Lorg/light/internal/relinker/ReLinkerInstance;
    .locals 1

    new-instance v0, Lorg/light/internal/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lorg/light/internal/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lorg/light/internal/relinker/ReLinkerInstance;->recursively()Lorg/light/internal/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method
