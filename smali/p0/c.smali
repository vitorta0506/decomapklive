.class final Lp0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/a;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Lp0/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lp0/a$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp0/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lp0/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lp0/c;->b:Lp0/a$a;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lp0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lp0/j;->a(Landroid/content/Context;)Lp0/j;

    move-result-object v0

    iget-object v1, p0, Lp0/c;->b:Lp0/a$a;

    invoke-virtual {v0, v1}, Lp0/j;->d(Lp0/a$a;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lp0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lp0/j;->a(Landroid/content/Context;)Lp0/j;

    move-result-object v0

    iget-object v1, p0, Lp0/c;->b:Lp0/a$a;

    invoke-virtual {v0, v1}, Lp0/j;->e(Lp0/a$a;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lp0/c;->a()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lp0/c;->b()V

    return-void
.end method
