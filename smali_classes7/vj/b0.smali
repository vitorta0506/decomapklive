.class public Lvj/b0;
.super Lvj/y;
.source "SourceFile"


# instance fields
.field private c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lvj/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lvj/y;-><init>(ZLvj/z;)V

    iput-object p1, p0, Lvj/b0;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lvj/b0;->c:Ljava/math/BigInteger;

    return-object v0
.end method
