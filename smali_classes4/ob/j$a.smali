.class Lob/j$a;
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

    iput-object p1, p0, Lob/j$a;->a:Lob/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lob/j$a;)V
    .locals 0

    invoke-direct {p0}, Lob/j$a;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lob/j$a;->a:Lob/j;

    invoke-virtual {v0}, Lob/j;->g()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v0}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v0

    invoke-virtual {v0}, Lob/n;->a()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, -0x2

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x98

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->b(Lob/j;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->d()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->j()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->k()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->h()F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 12
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->e()F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 13
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->b()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 14
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->d(Lob/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/16 v2, 0x7f6

    .line 16
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x7d3

    .line 17
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->i()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {}, Lob/j;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lob/i;

    invoke-direct {v1, p0}, Lob/i;-><init>(Lob/j$a;)V

    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    .line 20
    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->f()I

    move-result v2

    :goto_1
    int-to-long v4, v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v2}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v2

    invoke-virtual {v2}, Lob/c;->g()I

    move-result v2

    goto :goto_1

    .line 21
    :goto_2
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iget-object v0, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v0}, Lob/j;->a(Lob/j;)Lob/n;

    move-result-object v0

    iget-object v1, p0, Lob/j$a;->a:Lob/j;

    invoke-virtual {v0, v1}, Lob/n;->b(Lob/j;)V

    .line 23
    iget-object v0, p0, Lob/j$a;->a:Lob/j;

    invoke-virtual {v0, v3}, Lob/j;->j(Z)V

    .line 24
    iget-object v0, p0, Lob/j$a;->a:Lob/j;

    invoke-static {v0}, Lob/j;->c(Lob/j;)Lob/c;

    move-result-object v1

    invoke-virtual {v1}, Lob/c;->i()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lob/j;->f(Lob/j;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 25
    :goto_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_4
    return-void
.end method
