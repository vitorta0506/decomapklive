.class final Lcom/google/android/gms/common/internal/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field final synthetic a:Lv3/h;


# direct methods
.method constructor <init>(Lv3/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f0;->a:Lv3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f0;->a:Lv3/h;

    invoke-interface {v0, p1}, Lv3/h;->f(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
