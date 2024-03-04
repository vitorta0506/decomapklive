.class public Ljk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/a;


# instance fields
.field protected final a:Ljk/c;

.field protected final b:Lfk/j;


# direct methods
.method public constructor <init>(Lfk/e;Ljk/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljk/b;->a:Ljk/c;

    new-instance v0, Lfk/q;

    invoke-virtual {p2}, Ljk/c;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lfk/q;-><init>(Lfk/f;)V

    iput-object v0, p0, Ljk/b;->b:Lfk/j;

    return-void
.end method
