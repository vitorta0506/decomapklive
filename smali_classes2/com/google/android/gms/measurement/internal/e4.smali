.class final Lcom/google/android/gms/measurement/internal/e4;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/h4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/h4;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e4;->a:Lcom/google/android/gms/measurement/internal/h4;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e4;->a:Lcom/google/android/gms/measurement/internal/h4;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/h4;->s(Lcom/google/android/gms/measurement/internal/h4;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/b1;

    move-result-object p1

    return-object p1
.end method
