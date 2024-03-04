.class public final Lcom/google/android/gms/internal/measurement/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/gc;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w6;

.field public static final b:Lcom/google/android/gms/internal/measurement/w6;

.field public static final c:Lcom/google/android/gms/internal/measurement/w6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/s6;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k6;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s6;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s6;->b()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s6;->a()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    const-string v1, "measurement.collection.event_safelist"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s6;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/hc;->a:Lcom/google/android/gms/internal/measurement/w6;

    const-string v1, "measurement.service.store_null_safelist"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s6;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/hc;->b:Lcom/google/android/gms/internal/measurement/w6;

    const-string v1, "measurement.service.store_safelist"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s6;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/hc;->c:Lcom/google/android/gms/internal/measurement/w6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/hc;->b:Lcom/google/android/gms/internal/measurement/w6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/hc;->c:Lcom/google/android/gms/internal/measurement/w6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
