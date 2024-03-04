.class public Lorg/bouncycastle/cert/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Loj/w$b;

.field private b:Loj/o;


# direct methods
.method constructor <init>(Loj/w$b;ZLoj/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/c;->a:Loj/w$b;

    iput-object p3, p0, Lorg/bouncycastle/cert/c;->b:Loj/o;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Loj/w$b;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Loj/w$b;->x()Loj/m;

    move-result-object p1

    sget-object p2, Loj/l;->q:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1, p2}, Loj/m;->y(Lorg/bouncycastle/asn1/n;)Loj/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loj/l;->F()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Loj/o;->x(Ljava/lang/Object;)Loj/o;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/c;->b:Loj/o;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Loj/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/c;->b:Loj/o;

    return-object v0
.end method
