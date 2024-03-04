.class public final synthetic Ly3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ly3/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    check-cast p1, Ly3/e;

    check-cast p2, Lt4/h;

    sget v1, Ly3/d;->n:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ly3/a;

    invoke-virtual {p1, v0}, Ly3/a;->G0(Lcom/google/android/gms/common/internal/TelemetryData;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lt4/h;->c(Ljava/lang/Object;)V

    return-void
.end method
