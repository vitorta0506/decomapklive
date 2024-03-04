.class final Lcom/google/android/gms/measurement/internal/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/h1;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l9;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l9;->a:Lcom/google/android/gms/internal/measurement/h1;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/l9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/l9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l9;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->L()Lcom/google/android/gms/measurement/internal/y7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l9;->a:Lcom/google/android/gms/internal/measurement/h1;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l9;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y7;->T(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
