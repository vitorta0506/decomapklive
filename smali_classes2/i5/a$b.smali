.class public final Li5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lg5/c;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Li5/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Li5/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Li5/a$a;

    iput-object v0, p0, Li5/a$b;->b:Ljava/lang/Class;

    .line 3
    const-class v0, Li5/b$b;

    iput-object v0, p0, Li5/a$b;->c:Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/c;

    iput-object p1, p0, Li5/a$b;->a:Lg5/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li5/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-static {v5}, Lcom/google/api/client/util/z;->a(Z)V

    .line 3
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/api/client/util/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    add-int/2addr v1, v3

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 5
    :goto_1
    invoke-static {v7}, Lcom/google/api/client/util/z;->a(Z)V

    add-int/lit8 v7, v6, 0x1

    .line 6
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/api/client/util/z;->a(Z)V

    .line 7
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 9
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/api/client/util/e0;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 10
    iget-object v2, p0, Li5/a$b;->a:Lg5/c;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, p0, Li5/a$b;->b:Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, v6, v5}, Lg5/c;->f(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a$a;

    .line 12
    invoke-virtual {v2}, Li5/a$a;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lcom/google/api/client/util/z;->a(Z)V

    .line 13
    iget-object v3, p0, Li5/a$b;->a:Lg5/c;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Li5/a$b;->c:Ljava/lang/Class;

    .line 14
    invoke-virtual {v3, v4, v0}, Lg5/c;->f(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b$b;

    .line 15
    new-instance v3, Li5/a;

    invoke-direct {v3, v2, v0, v1, p1}, Li5/a;-><init>(Li5/a$a;Li5/b$b;[B[B)V

    return-object v3
.end method
