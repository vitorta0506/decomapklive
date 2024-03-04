.class public Lorg/libpag/PAGMovie;
.super Lorg/libpag/PAGImage;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "libpag"

    .line 1
    invoke-static {v0}, Lorg/extra/tools/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/libpag/PAGMovie;->nativeInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/libpag/PAGImage;-><init>(J)V

    return-void
.end method

.method public static FromComposition(Lorg/libpag/PAGComposition;)Lorg/libpag/PAGMovie;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/libpag/PAGMovie;->MakeFromComposition(Lorg/libpag/PAGComposition;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lorg/libpag/PAGMovie;

    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGMovie;-><init>(J)V

    return-object p0
.end method

.method public static FromVideoPath(Ljava/lang/String;)Lorg/libpag/PAGMovie;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/libpag/PAGMovie;->MakeFromVideoPath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lorg/libpag/PAGMovie;

    invoke-direct {p0, v0, v1}, Lorg/libpag/PAGMovie;-><init>(J)V

    return-object p0
.end method

.method public static FromVideoPath(Ljava/lang/String;JJ)Lorg/libpag/PAGMovie;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/libpag/PAGMovie;->MakeFromVideoPath(Ljava/lang/String;JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p4, p0, p2

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance p2, Lorg/libpag/PAGMovie;

    invoke-direct {p2, p0, p1}, Lorg/libpag/PAGMovie;-><init>(J)V

    return-object p2
.end method

.method private static native MakeFromComposition(Lorg/libpag/PAGComposition;)J
.end method

.method private static native MakeFromVideoPath(Ljava/lang/String;)J
.end method

.method private static native MakeFromVideoPath(Ljava/lang/String;JJ)J
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public native duration()J
.end method
