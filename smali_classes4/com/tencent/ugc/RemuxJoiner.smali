.class public Lcom/tencent/ugc/RemuxJoiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::ugc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemuxJoiner"


# instance fields
.field private mListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConcatableWithoutReencode(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/ugc/RemuxJoiner;->nativeIsConcatableWithoutReencode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static native nativeCreate(Lcom/tencent/ugc/RemuxJoiner;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeIsConcatableWithoutReencode(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSetSourcePaths(J[Ljava/lang/Object;)Z
.end method

.method private static native nativeSetTargetPath(JLjava/lang/String;)Z
.end method

.method private static native nativeStart(J)Z
.end method

.method private static native nativeStop(J)V
.end method

.method private onComplete(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;->onRemuxJoinerComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onProgress(F)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;->onRemuxJoinerProgress(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 6

    const-string v0, "RemuxJoiner"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "RemuxJoiner is already initialize!"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/ugc/RemuxJoiner;->nativeCreate(Lcom/tencent/ugc/RemuxJoiner;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    return-void
.end method

.method public setSourcePaths(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "RemuxJoiner"

    const-string v0, "RemuxJoiner is not initialize"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/RemuxJoiner;->nativeSetSourcePaths(J[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTargetPath(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "RemuxJoiner"

    const-string v0, "RemuxJoiner is not initialize"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/RemuxJoiner;->nativeSetTargetPath(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoJoinerListener(Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/RemuxJoiner;->mListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

    return-void
.end method

.method public start()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const/4 v2, 0x0

    const-string v3, "RemuxJoiner"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-string v0, "RemuxJoiner is not initialize"

    .line 2
    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/ugc/RemuxJoiner;->nativeStart(J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native RemuxJoiner start failed."

    .line 4
    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "RemuxJoiner"

    const-string v1, "RemuxJoiner is not initialize"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/ugc/RemuxJoiner;->nativeStop(J)V

    return-void
.end method

.method public uninitialize()V
    .locals 5

    const-string v0, "RemuxJoiner"

    const-string/jumbo v1, "unInitialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/ugc/RemuxJoiner;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/tencent/ugc/RemuxJoiner;->mNativeHandle:J

    :cond_0
    return-void
.end method
