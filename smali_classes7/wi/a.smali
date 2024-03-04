.class public Lwi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lpj/j;

.field static final b:Ljava/util/Hashtable;

.field static final c:Ljava/util/Hashtable;

.field static final d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwi/a$a;

    invoke-direct {v0}, Lwi/a$a;-><init>()V

    sput-object v0, Lwi/a;->a:Lpj/j;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lwi/a;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lwi/a;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lwi/a;->d:Ljava/util/Hashtable;

    sget-object v0, Lwi/b;->a:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lwi/a;->a:Lpj/j;

    const-string v2, "FRP256v1"

    invoke-static {v2, v0, v1}, Lwi/a;->f(Ljava/lang/String;Lorg/bouncycastle/asn1/n;Lpj/j;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lwi/a;->g(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lfk/e;)Lfk/e;
    .locals 0

    invoke-static {p0}, Lwi/a;->e(Lfk/e;)Lfk/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lfk/e;Ljava/lang/String;)Lpj/k;
    .locals 0

    invoke-static {p0, p1}, Lwi/a;->d(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lfk/e;Ljava/lang/String;)Lpj/k;
    .locals 1

    new-instance v0, Lpj/k;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lpj/k;-><init>(Lfk/e;[B)V

    invoke-virtual {v0}, Lpj/k;->x()Lfk/i;

    move-result-object p0

    invoke-static {p0}, Lfk/t;->a(Lfk/i;)V

    return-object v0
.end method

.method private static e(Lfk/e;)Lfk/e;
    .locals 0

    return-object p0
.end method

.method static f(Ljava/lang/String;Lorg/bouncycastle/asn1/n;Lpj/j;)V
    .locals 2

    sget-object v0, Lwi/a;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lwi/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lwi/a;->c:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lpj/i;
    .locals 0

    invoke-static {p0}, Lwi/a;->k(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lwi/a;->i(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Lorg/bouncycastle/asn1/n;)Lpj/i;
    .locals 1

    sget-object v0, Lwi/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpj/j;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpj/j;->b()Lpj/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lwi/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;
    .locals 1

    sget-object v0, Lwi/a;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/n;

    return-object p0
.end method
