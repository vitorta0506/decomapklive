.class public Lcom/google/android/gms/common/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/o$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/j0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/j0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/internal/m0;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/o$a;)Lt4/g;
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/internal/o$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/o$a<",
            "TR;TT;>;)",
            "Lt4/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/internal/m0;

    new-instance v1, Lt4/h;

    invoke-direct {v1}, Lt4/h;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/k0;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/k0;-><init>(Lcom/google/android/gms/common/api/f;Lt4/h;Lcom/google/android/gms/common/internal/o$a;Lcom/google/android/gms/common/internal/m0;)V

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/f$a;)V

    .line 3
    invoke-virtual {v1}, Lt4/h;->a()Lt4/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/f;)Lt4/g;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TR;>;)",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/l0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/l0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/o$a;)Lt4/g;

    move-result-object p0

    return-object p0
.end method
