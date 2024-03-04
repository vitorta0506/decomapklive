.class public Lyk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk/c$b;,
        Lyk/c$c;,
        Lyk/c$d;,
        Lyk/c$e;,
        Lyk/c$f;,
        Lyk/c$g;,
        Lyk/c$h;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->X:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lyk/c$d;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->Y:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$d;

    invoke-direct {v2, v3}, Lyk/c$d;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->r:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$e;

    invoke-direct {v2, v3}, Lyk/c$e;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->v:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$c;

    invoke-direct {v2, v3}, Lyk/c$c;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->w:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$g;

    invoke-direct {v2, v3}, Lyk/c$g;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lpk/e;->F:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$h;

    invoke-direct {v2, v3}, Lyk/c$h;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lcj/a;->a:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$g;

    invoke-direct {v2, v3}, Lyk/c$g;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lcj/a;->b:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$h;

    invoke-direct {v2, v3}, Lyk/c$h;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyk/c;->a:Ljava/util/Map;

    sget-object v1, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lyk/c$b;

    invoke-direct {v2, v3}, Lyk/c$b;-><init>(Lyk/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Loj/v;)Lvj/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyk/c;->b(Loj/v;Ljava/lang/Object;)Lvj/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Loj/v;Ljava/lang/Object;)Lvj/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loj/v;->x()Loj/a;

    move-result-object v0

    sget-object v1, Lyk/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyk/c$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lyk/c$f;->a(Loj/v;Ljava/lang/Object;)Lvj/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
