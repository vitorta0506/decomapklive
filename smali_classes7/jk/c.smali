.class public Ljk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/math/BigInteger;

.field protected final b:Ljava/math/BigInteger;

.field protected final c:Ljk/d;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljk/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk/c;->a:Ljava/math/BigInteger;

    iput-object p2, p0, Ljk/c;->b:Ljava/math/BigInteger;

    iput-object p3, p0, Ljk/c;->c:Ljk/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljk/c;->a:Ljava/math/BigInteger;

    return-object v0
.end method
