.class public final Lj3/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lj3/u;

.field private b:Lj3/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/common/base/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj3/u;

    invoke-direct {v0}, Lj3/u;-><init>()V

    iput-object v0, p0, Lj3/r$b;->a:Lj3/u;

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Lj3/r$b;->e:I

    .line 4
    iput v0, p0, Lj3/r$b;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lj3/i;
    .locals 1

    invoke-virtual {p0}, Lj3/r$b;->b()Lj3/r;

    move-result-object v0

    return-object v0
.end method

.method public b()Lj3/r;
    .locals 10

    .line 1
    new-instance v9, Lj3/r;

    iget-object v1, p0, Lj3/r$b;->d:Ljava/lang/String;

    iget v2, p0, Lj3/r$b;->e:I

    iget v3, p0, Lj3/r$b;->f:I

    iget-boolean v4, p0, Lj3/r$b;->g:Z

    iget-object v5, p0, Lj3/r$b;->a:Lj3/u;

    iget-object v6, p0, Lj3/r$b;->c:Lcom/google/common/base/q;

    iget-boolean v7, p0, Lj3/r$b;->h:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lj3/r;-><init>(Ljava/lang/String;IIZLj3/u;Lcom/google/common/base/q;ZLj3/r$a;)V

    .line 2
    iget-object v0, p0, Lj3/r$b;->b:Lj3/b0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v9, v0}, Lj3/e;->c(Lj3/b0;)V

    :cond_0
    return-object v9
.end method

.method public c(Ljava/lang/String;)Lj3/r$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lj3/r$b;->d:Ljava/lang/String;

    return-object p0
.end method
