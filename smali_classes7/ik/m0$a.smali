.class Lik/m0$a;
.super Lfk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lik/m0;->e([Lfk/i;II)Lfk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[I

.field final synthetic c:Lik/m0;


# direct methods
.method constructor <init>(Lik/m0;I[I)V
    .locals 0

    iput-object p1, p0, Lik/m0$a;->c:Lik/m0;

    iput p2, p0, Lik/m0$a;->a:I

    iput-object p3, p0, Lik/m0$a;->b:[I

    invoke-direct {p0}, Lfk/a;-><init>()V

    return-void
.end method

.method private b([I[I)Lfk/i;
    .locals 2

    iget-object v0, p0, Lik/m0$a;->c:Lik/m0;

    new-instance v1, Lik/o0;

    invoke-direct {v1, p1}, Lik/o0;-><init>([I)V

    new-instance p1, Lik/o0;

    invoke-direct {p1, p2}, Lik/o0;-><init>([I)V

    invoke-static {}, Lik/m0;->B()[Lfk/f;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lik/m0;->C(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lfk/i;
    .locals 11

    const/16 v0, 0xc

    invoke-static {v0}, Lnk/n;->k(I)[I

    move-result-object v1

    invoke-static {v0}, Lnk/n;->k(I)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lik/m0$a;->a:I

    if-ge v4, v6, :cond_1

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    aget v8, v1, v7

    iget-object v9, p0, Lik/m0$a;->b:[I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0xc

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x18

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2}, Lik/m0$a;->b([I[I)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lik/m0$a;->a:I

    return v0
.end method
