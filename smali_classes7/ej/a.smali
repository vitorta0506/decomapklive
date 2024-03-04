.class public Lej/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Hashtable;

.field static final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lej/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lej/a;->b:Ljava/util/Hashtable;

    sget-object v0, Lij/d;->F:Lorg/bouncycastle/asn1/n;

    const-string v1, "B-571"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->D:Lorg/bouncycastle/asn1/n;

    const-string v1, "B-409"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->n:Lorg/bouncycastle/asn1/n;

    const-string v1, "B-283"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->t:Lorg/bouncycastle/asn1/n;

    const-string v1, "B-233"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->l:Lorg/bouncycastle/asn1/n;

    const-string v1, "B-163"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->E:Lorg/bouncycastle/asn1/n;

    const-string v1, "K-571"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->C:Lorg/bouncycastle/asn1/n;

    const-string v1, "K-409"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->m:Lorg/bouncycastle/asn1/n;

    const-string v1, "K-283"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->s:Lorg/bouncycastle/asn1/n;

    const-string v1, "K-233"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->b:Lorg/bouncycastle/asn1/n;

    const-string v1, "K-163"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->B:Lorg/bouncycastle/asn1/n;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->A:Lorg/bouncycastle/asn1/n;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->H:Lorg/bouncycastle/asn1/n;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->z:Lorg/bouncycastle/asn1/n;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lij/d;->G:Lorg/bouncycastle/asn1/n;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lej/a;->a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V

    return-void
.end method

.method static a(Ljava/lang/String;Lorg/bouncycastle/asn1/n;)V
    .locals 1

    sget-object v0, Lej/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lej/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lpj/i;
    .locals 1

    sget-object v0, Lej/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/n;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lej/a;->c(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lorg/bouncycastle/asn1/n;)Lpj/i;
    .locals 0

    invoke-static {p0}, Lij/c;->k(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lej/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;
    .locals 1

    sget-object v0, Lej/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/n;

    return-object p0
.end method
