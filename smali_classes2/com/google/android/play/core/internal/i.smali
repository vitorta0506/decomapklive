.class public final synthetic Lcom/google/android/play/core/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/s;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/internal/s;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->i(Lcom/google/android/play/core/internal/s;)V

    return-void
.end method
