.class public Lgj/a;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lgj/c;


# instance fields
.field private a:Lorg/bouncycastle/asn1/n;

.field private b:Lorg/bouncycastle/asn1/e;

.field private c:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgj/a;->c:Z

    iput-object p1, p0, Lgj/a;->a:Lorg/bouncycastle/asn1/n;

    iput-object p2, p0, Lgj/a;->b:Lorg/bouncycastle/asn1/e;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lgj/a;->a:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/a;->b:Lorg/bouncycastle/asn1/e;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/j0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/j0;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-boolean v1, p0, Lgj/a;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/f0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/f0;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method
