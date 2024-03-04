.class public final Lcom/google/android/gms/measurement/internal/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d9;->c0()Lcom/google/android/gms/measurement/internal/n4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a4;->a:Lcom/google/android/gms/measurement/internal/n4;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a4;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg4/c;->a(Landroid/content/Context;)Lg4/b;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a4;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    const-string v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 5
    invoke-virtual {v1, v2, v3}, Lg4/b;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 6
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a4;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j3;->v()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    .line 9
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
