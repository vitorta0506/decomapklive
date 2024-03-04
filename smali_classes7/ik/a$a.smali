.class Lik/a$a;
.super Lfk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lik/a;->e([Lfk/i;II)Lfk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[I

.field final synthetic c:Lik/a;


# direct methods
.method constructor <init>(Lik/a;I[I)V
    .locals 0

    iput-object p1, p0, Lik/a$a;->c:Lik/a;

    iput p2, p0, Lik/a$a;->a:I

    iput-object p3, p0, Lik/a$a;->b:[I

    invoke-direct {p0}, Lfk/a;-><init>()V

    return-void
.end method

.method private b([I[I)Lfk/i;
    .locals 2

    iget-object v0, p0, Lik/a$a;->c:Lik/a;

    new-instance v1, Lik/c;

    invoke-direct {v1, p1}, Lik/c;-><init>([I)V

    new-instance p1, Lik/c;

    invoke-direct {p1, p2}, Lik/c;-><init>([I)V

    invoke-static {}, Lik/a;->B()[Lfk/f;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lik/a;->C(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lfk/i;
    .locals 10

    invoke-static {}, Lnk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lnk/d;->f()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lik/a$a;->a:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    aget v7, v0, v6

    iget-object v8, p0, Lik/a$a;->b:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x4

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lik/a$a;->b([I[I)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lik/a$a;->a:I

    return v0
.end method
