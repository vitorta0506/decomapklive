.class public Li5/a$a;
.super Li5/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "alg"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "kid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li5/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Li5/a$a;->m()Li5/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Li5/a$a;->m()Li5/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/a$a;->n(Ljava/lang/String;Ljava/lang/Object;)Li5/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f()Lg5/b;
    .locals 1

    invoke-virtual {p0}, Li5/a$a;->m()Li5/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/String;Ljava/lang/Object;)Lg5/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/a$a;->n(Ljava/lang/String;Ljava/lang/Object;)Li5/a$a;

    move-result-object p1

    return-object p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li5/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic j()Li5/b$a;
    .locals 1

    invoke-virtual {p0}, Li5/a$a;->m()Li5/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Ljava/lang/String;Ljava/lang/Object;)Li5/b$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/a$a;->n(Ljava/lang/String;Ljava/lang/Object;)Li5/a$a;

    move-result-object p1

    return-object p1
.end method

.method public m()Li5/a$a;
    .locals 1

    invoke-super {p0}, Li5/b$a;->j()Li5/b$a;

    move-result-object v0

    check-cast v0, Li5/a$a;

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)Li5/a$a;
    .locals 0

    invoke-super {p0, p1, p2}, Li5/b$a;->k(Ljava/lang/String;Ljava/lang/Object;)Li5/b$a;

    move-result-object p1

    check-cast p1, Li5/a$a;

    return-object p1
.end method

.method public o(Ljava/lang/String;)Li5/a$a;
    .locals 0

    iput-object p1, p0, Li5/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Li5/a$a;
    .locals 0

    iput-object p1, p0, Li5/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Li5/a$a;
    .locals 0

    invoke-super {p0, p1}, Li5/b$a;->l(Ljava/lang/String;)Li5/b$a;

    return-object p0
.end method
