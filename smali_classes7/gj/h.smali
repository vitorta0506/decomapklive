.class public Lgj/h;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lgj/c;


# instance fields
.field private a:Lorg/bouncycastle/asn1/k;

.field private b:Lorg/bouncycastle/asn1/u;

.field private c:Lgj/a;

.field private d:Lorg/bouncycastle/asn1/u;

.field private e:Lorg/bouncycastle/asn1/u;

.field private f:Lorg/bouncycastle/asn1/u;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/u;Lgj/a;Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/u;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lgj/h;->a:Lorg/bouncycastle/asn1/k;

    iput-object p2, p0, Lgj/h;->b:Lorg/bouncycastle/asn1/u;

    iput-object p3, p0, Lgj/h;->c:Lgj/a;

    iput-object p4, p0, Lgj/h;->d:Lorg/bouncycastle/asn1/u;

    iput-object p5, p0, Lgj/h;->e:Lorg/bouncycastle/asn1/u;

    iput-object p6, p0, Lgj/h;->f:Lorg/bouncycastle/asn1/u;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lgj/h;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/h;->b:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/h;->c:Lgj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/h;->d:Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Lgj/h;->e:Lorg/bouncycastle/asn1/u;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Lgj/h;->f:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/f0;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method
