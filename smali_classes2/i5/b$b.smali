.class public Li5/b$b;
.super Lg5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "exp"
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "iat"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "iss"
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "aud"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/p;
        value = "sub"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg5/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Li5/b$b;->j()Li5/b$b;

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

    invoke-virtual {p0}, Li5/b$b;->j()Li5/b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/b$b;->l(Ljava/lang/String;Ljava/lang/Object;)Li5/b$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f()Lg5/b;
    .locals 1

    invoke-virtual {p0}, Li5/b$b;->j()Li5/b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/String;Ljava/lang/Object;)Lg5/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/b$b;->l(Ljava/lang/String;Ljava/lang/Object;)Li5/b$b;

    move-result-object p1

    return-object p1
.end method

.method public j()Li5/b$b;
    .locals 1

    invoke-super {p0}, Lg5/b;->f()Lg5/b;

    move-result-object v0

    check-cast v0, Li5/b$b;

    return-object v0
.end method

.method public final k()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Li5/b$b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)Li5/b$b;
    .locals 0

    invoke-super {p0, p1, p2}, Lg5/b;->g(Ljava/lang/String;Ljava/lang/Object;)Lg5/b;

    move-result-object p1

    check-cast p1, Li5/b$b;

    return-object p1
.end method

.method public m(Ljava/lang/Object;)Li5/b$b;
    .locals 0

    iput-object p1, p0, Li5/b$b;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public n(Ljava/lang/Long;)Li5/b$b;
    .locals 0

    iput-object p1, p0, Li5/b$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public o(Ljava/lang/Long;)Li5/b$b;
    .locals 0

    iput-object p1, p0, Li5/b$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Li5/b$b;
    .locals 0

    iput-object p1, p0, Li5/b$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Li5/b$b;
    .locals 0

    iput-object p1, p0, Li5/b$b;->h:Ljava/lang/String;

    return-object p0
.end method
