.class Lik/e1$a;
.super Lfk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lik/e1;->e([Lfk/i;II)Lfk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[J

.field final synthetic c:Lik/e1;


# direct methods
.method constructor <init>(Lik/e1;I[J)V
    .locals 0

    iput-object p1, p0, Lik/e1$a;->c:Lik/e1;

    iput p2, p0, Lik/e1$a;->a:I

    iput-object p3, p0, Lik/e1$a;->b:[J

    invoke-direct {p0}, Lfk/a;-><init>()V

    return-void
.end method

.method private b([J[J)Lfk/i;
    .locals 2

    iget-object v0, p0, Lik/e1$a;->c:Lik/e1;

    new-instance v1, Lik/b1;

    invoke-direct {v1, p1}, Lik/b1;-><init>([J)V

    new-instance p1, Lik/b1;

    invoke-direct {p1, p2}, Lik/b1;-><init>([J)V

    invoke-static {}, Lik/e1;->D()[Lfk/f;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lik/e1;->E(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lfk/i;
    .locals 13

    invoke-static {}, Lnk/f;->i()[J

    move-result-object v0

    invoke-static {}, Lnk/f;->i()[J

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lik/e1$a;->a:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    aget-wide v8, v0, v7

    iget-object v10, p0, Lik/e1$a;->b:[J

    add-int v11, v4, v7

    aget-wide v11, v10, v11

    and-long/2addr v11, v5

    xor-long/2addr v8, v11

    aput-wide v8, v0, v7

    aget-wide v8, v1, v7

    add-int/lit8 v11, v4, 0x3

    add-int/2addr v11, v7

    aget-wide v11, v10, v11

    and-long v10, v11, v5

    xor-long/2addr v8, v10

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lik/e1$a;->b([J[J)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lik/e1$a;->a:I

    return v0
.end method
