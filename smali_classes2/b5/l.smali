.class public final Lb5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/l;->a:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lb5/l;->a:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    new-instance v1, Lb5/k;

    invoke-direct {v1, v0}, Lb5/k;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
