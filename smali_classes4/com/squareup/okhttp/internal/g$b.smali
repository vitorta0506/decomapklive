.class Lcom/squareup/okhttp/internal/g$b;
.super Lcom/squareup/okhttp/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/g$b;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public k(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/g$b;->b:Ljava/lang/Class;

    const-string v1, "context"

    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v1, "trustManager"

    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/g;->j(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method
