.class public interface abstract Lcom/google/android/exoplayer2/drm/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/u$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/drm/u;

.field public static final b:Lcom/google/android/exoplayer2/drm/u;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/u$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/u$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/u;->a:Lcom/google/android/exoplayer2/drm/u;

    .line 2
    sput-object v0, Lcom/google/android/exoplayer2/drm/u;->b:Lcom/google/android/exoplayer2/drm/u;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/k1;)I
.end method

.method public abstract b(Landroid/os/Looper;La2/s1;)V
.end method

.method public abstract c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/drm/u$b;
    .param p1    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method
