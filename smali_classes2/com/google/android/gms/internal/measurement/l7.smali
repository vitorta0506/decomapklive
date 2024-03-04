.class final Lcom/google/android/gms/internal/measurement/l7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/measurement/k8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/k8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l7;->d:Lcom/google/android/gms/internal/measurement/k8;

    return-void
.end method
