.class public final Lcom/google/android/gms/internal/measurement/le;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "internal.platform"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ke;

    const-string v2, "getVersion"

    .line 2
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/ke;-><init>(Lcom/google/android/gms/internal/measurement/le;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/measurement/t4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->U:Lcom/google/android/gms/internal/measurement/q;

    return-object p1
.end method
