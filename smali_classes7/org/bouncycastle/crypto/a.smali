.class public interface abstract Lorg/bouncycastle/crypto/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(ZLorg/bouncycastle/crypto/c;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public abstract c([BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method
