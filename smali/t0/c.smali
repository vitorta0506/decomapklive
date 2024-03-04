.class public Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt0/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private c:Lt0/d;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lt0/c;->a:I

    .line 3
    iput-boolean p2, p0, Lt0/c;->b:Z

    return-void
.end method

.method private b()Lt0/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt0/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/c;->c:Lt0/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lt0/d;

    iget v1, p0, Lt0/c;->a:I

    iget-boolean v2, p0, Lt0/c;->b:Z

    invoke-direct {v0, v1, v2}, Lt0/d;-><init>(IZ)V

    iput-object v0, p0, Lt0/c;->c:Lt0/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lt0/c;->c:Lt0/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lt0/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lt0/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {}, Lt0/e;->b()Lt0/f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lt0/c;->b()Lt0/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method
