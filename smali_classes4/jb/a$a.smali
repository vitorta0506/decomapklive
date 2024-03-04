.class Ljb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljb/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljb/a;


# direct methods
.method constructor <init>(Ljb/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljb/a$a;->b:Ljb/a;

    iput-object p2, p0, Ljb/a$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/a$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljb/a$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ljb/a$a;->b:Ljb/a;

    invoke-static {v0}, Ljb/a;->a(Ljb/a;)Ljb/b;

    move-result-object v0

    invoke-virtual {v0}, Ljb/b;->b()V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Ljb/a$a;->b:Ljb/a;

    invoke-static {v0}, Ljb/a;->a(Ljb/a;)Ljb/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljb/b;->e(Z)V

    .line 4
    iget-object v0, p0, Ljb/a$a;->b:Ljb/a;

    invoke-static {v0}, Ljb/a;->a(Ljb/a;)Ljb/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljb/b;->d(Z)V

    return-void
.end method
