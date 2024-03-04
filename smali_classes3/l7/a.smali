.class public abstract Ll7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "TR;>;R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/b<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/b<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll7/a;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 5

    .line 1
    iget-object v0, p0, Ll7/a;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    const-class v3, Ljava/util/List;

    invoke-static {v0, v2}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Ljava/util/Map;

    invoke-static {v0, v2}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ll7/a;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ll7/a;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 7
    const-class v0, Ljava/lang/Object;

    .line 8
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ln7/d;->b(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 9
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_4

    .line 10
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    aput-object v0, v4, v2

    .line 11
    invoke-static {v1, v3, v4}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method
