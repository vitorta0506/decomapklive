.class final Lig/f$a;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lig/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 2

    iget-object v0, p0, Lig/f$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 0

    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    return-void
.end method
