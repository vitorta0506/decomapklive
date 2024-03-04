.class public Li5/a;
.super Li5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/a$b;,
        Li5/a$a;
    }
.end annotation


# instance fields
.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Li5/a$a;Li5/b$b;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li5/b;-><init>(Li5/b$a;Li5/b$b;)V

    .line 2
    invoke-static {p3}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Li5/a;->c:[B

    .line 3
    invoke-static {p4}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Li5/a;->d:[B

    return-void
.end method

.method public static d(Lg5/c;Ljava/lang/String;)Li5/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Li5/a;->e(Lg5/c;)Li5/a$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Li5/a$b;->a(Ljava/lang/String;)Li5/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lg5/c;)Li5/a$b;
    .locals 1

    new-instance v0, Li5/a$b;

    invoke-direct {v0, p0}, Li5/a$b;-><init>(Lg5/c;)V

    return-object v0
.end method

.method public static f(Ljava/security/PrivateKey;Lg5/c;Li5/a$a;Li5/b$b;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lg5/c;->g(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/api/client/util/e;->b([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, p3}, Lg5/c;->g(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/api/client/util/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/e0;->a(Ljava/lang/String;)[B

    move-result-object p3

    .line 5
    invoke-static {}, Lcom/google/api/client/util/a0;->c()Ljava/security/Signature;

    move-result-object v0

    .line 6
    invoke-static {v0, p0, p3}, Lcom/google/api/client/util/a0;->d(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B

    move-result-object p0

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/api/client/util/e;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Li5/a$a;
    .locals 1

    invoke-super {p0}, Li5/b;->a()Li5/b$a;

    move-result-object v0

    check-cast v0, Li5/a$a;

    return-object v0
.end method
