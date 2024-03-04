.class public abstract Lcom/google/android/datatransport/cct/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/i;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/k;",
            ">;)",
            "Lcom/google/android/datatransport/cct/internal/i;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/cct/internal/d;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/internal/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Ld6/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lf6/d;

    invoke-direct {v0}, Lf6/d;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b;->a:Le6/a;

    .line 2
    invoke-virtual {v0, v1}, Lf6/d;->j(Le6/a;)Lf6/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lf6/d;->k(Z)Lf6/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lf6/d;->i()Ld6/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/internal/k;",
            ">;"
        }
    .end annotation
.end method
