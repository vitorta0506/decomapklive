.class final Lcom/google/android/gms/measurement/internal/c9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/d9;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c9;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d9;->c()Le4/d;

    move-result-object p1

    invoke-interface {p1}, Le4/d;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c9;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/d9;Ljava/lang/String;Lp4/a0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c9;-><init>(Lcom/google/android/gms/measurement/internal/d9;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/d9;Lp4/a0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d9;->h0()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k9;->q()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c9;-><init>(Lcom/google/android/gms/measurement/internal/d9;Ljava/lang/String;)V

    return-void
.end method
