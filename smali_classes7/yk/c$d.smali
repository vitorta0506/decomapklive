.class Lyk/c$d;
.super Lyk/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyk/c$f;-><init>(Lyk/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lyk/c$a;)V
    .locals 0

    invoke-direct {p0}, Lyk/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method a(Loj/v;Ljava/lang/Object;)Lvj/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Luk/b;

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v0

    invoke-static {v0}, Lyk/e;->c(Loj/a;)I

    move-result v0

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Luk/b;-><init>(I[B)V

    return-object p2
.end method
