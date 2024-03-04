.class public Lxk/c;
.super Lxk/a;
.source "SourceFile"


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lxk/a;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lxk/c;->c:[B

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, Lxk/c;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method
