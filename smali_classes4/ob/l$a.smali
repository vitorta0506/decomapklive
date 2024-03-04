.class Lob/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lob/l;


# direct methods
.method constructor <init>(Lob/l;)V
    .locals 0

    iput-object p1, p0, Lob/l$a;->a:Lob/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lob/l$a;->a:Lob/l;

    invoke-static {v0}, Lob/l;->d(Lob/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lob/l$a;->a:Lob/l;

    invoke-static {v0}, Lob/l;->d(Lob/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpb/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lpb/b;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lob/l$a;->a:Lob/l;

    invoke-static {v0}, Lob/l;->f(Lob/l;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/l;->i(Landroid/app/Application;)Lpb/b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lob/l$a;->a:Lob/l;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lob/l;->e(Lob/l;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 6
    iget-object v1, p0, Lob/l$a;->a:Lob/l;

    invoke-static {v1}, Lob/l;->g(Lob/l;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lob/l;->j(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {v0, v1}, Lpb/b;->setDuration(I)V

    .line 7
    iget-object v1, p0, Lob/l$a;->a:Lob/l;

    invoke-static {v1}, Lob/l;->g(Lob/l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lpb/b;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-interface {v0}, Lpb/b;->show()V

    return-void
.end method
