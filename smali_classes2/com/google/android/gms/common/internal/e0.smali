.class final Lcom/google/android/gms/common/internal/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field final synthetic a:Lv3/c;


# direct methods
.method constructor <init>(Lv3/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lv3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lv3/c;

    invoke-interface {v0, p1}, Lv3/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lv3/c;

    invoke-interface {v0, p1}, Lv3/c;->onConnectionSuspended(I)V

    return-void
.end method
