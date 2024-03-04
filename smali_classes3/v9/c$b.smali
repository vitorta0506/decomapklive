.class Lv9/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lv9/c$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lv9/c$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lv9/c$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p1, 0x7f0f020e

    const/high16 v0, -0x80000000

    .line 1
    :try_start_0
    iget-object v1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    const v2, 0x7f1204a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv9/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    const v2, 0x7f120447

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv9/c$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/c;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lv9/c$b;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 5
    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/g;->I0(II)Lcom/bumptech/glide/request/d;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/c;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v1

    const v2, 0x7f0f0136

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object v1

    const/16 v2, 0x80

    .line 9
    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/g;->I0(II)Lcom/bumptech/glide/request/d;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    iget-object v1, p0, Lv9/c$b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/c;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/g;->I0(II)Lcom/bumptech/glide/request/d;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/io/File;

    .line 15
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lv9/c$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
