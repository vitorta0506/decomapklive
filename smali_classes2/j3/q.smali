.class public final Lj3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/i$a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lj3/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lj3/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj3/b0;Lj3/i$a;)V
    .locals 0
    .param p2    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lj3/q;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lj3/q;->b:Lj3/b0;

    .line 6
    iput-object p3, p0, Lj3/q;->c:Lj3/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lj3/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lj3/b0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lj3/b0;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj3/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lj3/r$b;

    invoke-direct {v0}, Lj3/r$b;-><init>()V

    invoke-virtual {v0, p2}, Lj3/r$b;->c(Ljava/lang/String;)Lj3/r$b;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lj3/q;-><init>(Landroid/content/Context;Lj3/b0;Lj3/i$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lj3/i;
    .locals 1

    invoke-virtual {p0}, Lj3/q;->b()Lj3/p;

    move-result-object v0

    return-object v0
.end method

.method public b()Lj3/p;
    .locals 3

    .line 1
    new-instance v0, Lj3/p;

    iget-object v1, p0, Lj3/q;->a:Landroid/content/Context;

    iget-object v2, p0, Lj3/q;->c:Lj3/i$a;

    .line 2
    invoke-interface {v2}, Lj3/i$a;->a()Lj3/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj3/p;-><init>(Landroid/content/Context;Lj3/i;)V

    .line 3
    iget-object v1, p0, Lj3/q;->b:Lj3/b0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lj3/p;->c(Lj3/b0;)V

    :cond_0
    return-object v0
.end method
