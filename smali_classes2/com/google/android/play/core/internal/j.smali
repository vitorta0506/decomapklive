.class public final synthetic Lcom/google/android/play/core/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/s;

.field public final synthetic b:Ld5/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/s;Ld5/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/s;

    iput-object p2, p0, Lcom/google/android/play/core/internal/j;->b:Ld5/o;

    return-void
.end method


# virtual methods
.method public final a(Ld5/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/s;

    iget-object v1, p0, Lcom/google/android/play/core/internal/j;->b:Ld5/o;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/internal/s;->r(Ld5/o;Ld5/d;)V

    return-void
.end method
