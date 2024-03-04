.class Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$b;
.super Lcom/google/common/base/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->createCache()Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$b;->b:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    invoke-direct {p0}, Lcom/google/common/base/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$b;->b:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    iget-object v1, v1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v1}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
