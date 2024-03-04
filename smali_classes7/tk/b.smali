.class public Ltk/b;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvj/a;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ltk/b;->b:[B

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, Ltk/b;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method
