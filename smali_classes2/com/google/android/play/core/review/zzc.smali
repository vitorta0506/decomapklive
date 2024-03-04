.class final Lcom/google/android/play/core/review/zzc;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ld5/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/d;Landroid/os/Handler;Ld5/o;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/play/core/review/zzc;->a:Ld5/o;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/review/zzc;->a:Ld5/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
