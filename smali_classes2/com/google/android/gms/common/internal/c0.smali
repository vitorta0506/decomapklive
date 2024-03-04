.class final Lcom/google/android/gms/common/internal/c0;
.super Lcom/google/android/gms/common/internal/d0;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lv3/e;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lv3/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c0;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/c0;->b:Lv3/e;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c0;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c0;->b:Lv3/e;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lv3/e;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
