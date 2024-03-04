.class Lyk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Loj/a;

.field static final b:Loj/a;

.field static final c:Loj/a;

.field static final d:Loj/a;

.field static final e:Loj/a;

.field static final f:Loj/a;

.field static final g:Loj/a;

.field static final h:Loj/a;

.field static final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->X:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->a:Loj/a;

    new-instance v0, Loj/a;

    sget-object v2, Lpk/e;->Y:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->b:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->j:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->c:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->h:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->d:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->e:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->f:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->m:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->g:Loj/a;

    new-instance v0, Loj/a;

    sget-object v3, Lej/b;->n:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    sput-object v0, Lyk/e;->h:Loj/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyk/e;->i:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;
    .locals 3

    sget-object v0, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lrj/f;

    invoke-direct {p0}, Lrj/f;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lrj/h;

    invoke-direct {p0}, Lrj/h;-><init>()V

    return-object p0

    :cond_1
    sget-object v0, Lej/b;->m:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lrj/i;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lrj/i;-><init>(I)V

    return-object p0

    :cond_2
    sget-object v0, Lej/b;->n:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lrj/i;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lrj/i;-><init>(I)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(I)Loj/a;
    .locals 3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    sget-object p0, Lyk/e;->b:Loj/a;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lyk/e;->a:Loj/a;

    return-object p0
.end method

.method static c(Loj/a;)I
    .locals 1

    sget-object v0, Lyk/e;->i:Ljava/util/Map;

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/String;)Loj/a;
    .locals 3

    const-string v0, "SHA3-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lyk/e;->c:Loj/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512/256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lyk/e;->d:Loj/a;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static e(Lpk/i;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lpk/i;->y()Loj/a;

    move-result-object p0

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lyk/e;->c:Loj/a;

    invoke-virtual {v1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA3-256"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lyk/e;->d:Loj/a;

    invoke-virtual {v1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA-512/256"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static f(Ljava/lang/String;)Loj/a;
    .locals 3

    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lyk/e;->e:Loj/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lyk/e;->f:Loj/a;

    return-object p0

    :cond_1
    const-string v0, "SHAKE128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lyk/e;->g:Loj/a;

    return-object p0

    :cond_2
    const-string v0, "SHAKE256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lyk/e;->h:Loj/a;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
