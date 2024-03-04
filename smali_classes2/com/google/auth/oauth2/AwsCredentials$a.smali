.class Lcom/google/auth/oauth2/AwsCredentials$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/AwsCredentials;->createMetadataRequestHeaders(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/auth/oauth2/AwsCredentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/AwsCredentials;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/auth/oauth2/AwsCredentials$a;->a:Lcom/google/auth/oauth2/AwsCredentials;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "x-aws-ec2-metadata-token-ttl-seconds"

    const-string v0, "300"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
