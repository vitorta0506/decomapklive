.class final Lig/f;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/KeyManager;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lig/f$a;

    invoke-direct {v0, p1}, Lig/f$a;-><init>(Ljava/util/List;)V

    new-instance p1, Lig/l0;

    invoke-direct {p1}, Lig/l0;-><init>()V

    const-string v1, "FakeAlgorithm"

    invoke-direct {p0, v0, p1, v1}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method
