.class public Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/g;


# instance fields
.field private a:Lv/g;

.field private b:Ls/a;

.field private c:Lv/i;

.field private d:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls/a;Lv/i;Ljava/lang/Integer;Lv/g;)V
    .locals 0
    .param p1    # Ls/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lv/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv/d;->b:Ls/a;

    .line 3
    iput-object p2, p0, Lv/d;->c:Lv/i;

    .line 4
    iput-object p3, p0, Lv/d;->d:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lv/d;->a:Lv/g;

    return-void
.end method


# virtual methods
.method public a()Lv/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lv/d;->a:Lv/g;

    invoke-interface {v0}, Lv/g;->a()Lv/h;

    move-result-object v0

    .line 2
    new-instance v1, Lv/a;

    iget-object v2, p0, Lv/d;->c:Lv/i;

    new-instance v3, Lv/b;

    iget-object v4, p0, Lv/d;->b:Ls/a;

    invoke-direct {v3, v4, v0}, Lv/b;-><init>(Ls/a;Lv/h;)V

    invoke-direct {v1, v2, v3}, Lv/a;-><init>(Lv/i;Lv/h;)V

    .line 3
    iget-object v0, p0, Lv/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lv/o;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lv/o;-><init>(ILv/h;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method public b()Lv/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lv/d;->a:Lv/g;

    invoke-interface {v0}, Lv/g;->b()Lv/h;

    move-result-object v0

    .line 2
    new-instance v1, Lv/f;

    iget-object v2, p0, Lv/d;->c:Lv/i;

    invoke-direct {v1, v2, v0}, Lv/f;-><init>(Lv/i;Lv/h;)V

    .line 3
    iget-object v0, p0, Lv/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lv/o;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lv/o;-><init>(ILv/h;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method
