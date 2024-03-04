.class public Lpj/k;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:Lorg/bouncycastle/asn1/o;

.field private b:Lfk/e;

.field private c:Lfk/i;


# direct methods
.method public constructor <init>(Lfk/e;Lorg/bouncycastle/asn1/o;)V
    .locals 0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lpj/k;-><init>(Lfk/e;[B)V

    return-void
.end method

.method public constructor <init>(Lfk/e;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/k;->b:Lfk/e;

    new-instance p1, Lorg/bouncycastle/asn1/w0;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    iput-object p1, p0, Lpj/k;->a:Lorg/bouncycastle/asn1/o;

    return-void
.end method

.method public constructor <init>(Lfk/i;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lfk/i;->y()Lfk/i;

    move-result-object v0

    iput-object v0, p0, Lpj/k;->c:Lfk/i;

    new-instance v0, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p1, p2}, Lfk/i;->l(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    iput-object v0, p0, Lpj/k;->a:Lorg/bouncycastle/asn1/o;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lpj/k;->a:Lorg/bouncycastle/asn1/o;

    return-object v0
.end method

.method public declared-synchronized x()Lfk/i;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpj/k;->c:Lfk/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lpj/k;->b:Lfk/e;

    iget-object v1, p0, Lpj/k;->a:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lfk/e;->h([B)Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->y()Lfk/i;

    move-result-object v0

    iput-object v0, p0, Lpj/k;->c:Lfk/i;

    :cond_0
    iget-object v0, p0, Lpj/k;->c:Lfk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
