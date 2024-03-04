.class final Lv3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lv3/a0;


# direct methods
.method constructor <init>(Lv3/a0;)V
    .locals 0

    iput-object p1, p0, Lv3/x;->a:Lv3/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lv3/x;->a:Lv3/a0;

    invoke-static {v0}, Lv3/a0;->E0(Lv3/a0;)Lv3/z;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lv3/z;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
