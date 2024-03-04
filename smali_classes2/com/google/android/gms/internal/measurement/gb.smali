.class public final Lcom/google/android/gms/internal/measurement/gb;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/h9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/h9;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/h9;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/measurement/gb;)Lcom/google/android/gms/internal/measurement/h9;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    return-object p0
.end method


# virtual methods
.method public final U0(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/h9;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    check-cast v0, Lcom/google/android/gms/internal/measurement/g9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/g9;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/fb;-><init>(Lcom/google/android/gms/internal/measurement/gb;)V

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/measurement/h9;
    .locals 0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/eb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/eb;-><init>(Lcom/google/android/gms/internal/measurement/gb;I)V

    return-object v0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/h9;->o(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/h9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
