.class final Lb5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/e;


# instance fields
.field final synthetic a:Lb5/a;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lb5/o;


# direct methods
.method constructor <init>(Lb5/o;Lb5/a;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb5/m;->d:Lb5/o;

    iput-object p2, p0, Lb5/m;->a:Lb5/a;

    iput-object p3, p0, Lb5/m;->b:Landroid/content/Intent;

    iput-object p4, p0, Lb5/m;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb5/m;->b:Landroid/content/Intent;

    const-string v1, "triggered_from_app_after_verification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb5/m;->b:Landroid/content/Intent;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lb5/m;->c:Landroid/content/Context;

    iget-object v1, p0, Lb5/m;->b:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb5/m;->d:Lb5/o;

    invoke-static {v0}, Lb5/o;->f(Lb5/o;)Lcom/google/android/play/core/internal/g;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Splits copied and verified more than once."

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final F(I)V
    .locals 3

    iget-object v0, p0, Lb5/m;->d:Lb5/o;

    iget-object v1, p0, Lb5/m;->a:Lb5/a;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lb5/o;->h(Lb5/o;Lb5/a;II)V

    return-void
.end method

.method public final zza()V
    .locals 4

    iget-object v0, p0, Lb5/m;->d:Lb5/o;

    iget-object v1, p0, Lb5/m;->a:Lb5/a;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lb5/o;->h(Lb5/o;Lb5/a;II)V

    return-void
.end method
