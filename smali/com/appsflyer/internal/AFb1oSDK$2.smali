.class final Lcom/appsflyer/internal/AFb1oSDK$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1oSDK;->valueOf(Lcom/appsflyer/internal/AFa1qSDK;)Ljava/util/Map;
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
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFa1qSDK;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1oSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    const-string v0, "unhashed"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1oSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK;

    .line 4
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    const-string/jumbo v0, "value"

    .line 5
    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
