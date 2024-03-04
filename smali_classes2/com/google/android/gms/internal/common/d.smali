.class public final Lcom/google/android/gms/internal/common/d;
.super Lcom/google/android/gms/internal/common/b;
.source "SourceFile"


# direct methods
.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/common/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/b;

    return-object p0
.end method

.method public final d(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/d;
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/google/android/gms/internal/common/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/b;

    goto :goto_0

    :cond_0
    return-object p0
.end method
