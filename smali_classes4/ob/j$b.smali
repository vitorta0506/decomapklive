.class Lob/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lob/j;


# direct methods
.method constructor <init>(Lob/j;)V
    .locals 0

    iput-object p1, p0, Lob/j$b;->a:Lob/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lob/j$b;->a:Lob/j;

    invoke-static {v1}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v1

    invoke-virtual {v1}, Lob/n;->a()Landroid/view/WindowManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lob/j$b;->a:Lob/j;

    invoke-static {v1}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v1

    invoke-virtual {v1}, Lob/n;->c()V

    .line 3
    iget-object v1, p0, Lob/j$b;->a:Lob/j;

    invoke-virtual {v1, v0}, Lob/j;->j(Z)V

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, p0, Lob/j$b;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->i()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    iget-object v1, p0, Lob/j$b;->a:Lob/j;

    invoke-static {v1}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v1

    invoke-virtual {v1}, Lob/n;->c()V

    .line 7
    iget-object v1, p0, Lob/j$b;->a:Lob/j;

    invoke-virtual {v1, v0}, Lob/j;->j(Z)V

    return-void

    .line 8
    :goto_1
    iget-object v2, p0, Lob/j$b;->a:Lob/j;

    invoke-static {v2}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v2

    invoke-virtual {v2}, Lob/n;->c()V

    .line 9
    iget-object v2, p0, Lob/j$b;->a:Lob/j;

    invoke-virtual {v2, v0}, Lob/j;->j(Z)V

    .line 10
    throw v1
.end method
