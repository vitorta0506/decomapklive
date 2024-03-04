.class Lqd/b$a;
.super Lod/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/b;->c(Lokhttp3/Request;Ljava/lang/Class;Lod/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lod/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lod/b;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lod/b;)V
    .locals 0

    iput-object p1, p0, Lqd/b$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lqd/b$a;->b:Lod/b;

    invoke-direct {p0}, Lod/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lqd/b$a;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqd/b$a;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lqd/b$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lqd/b$a;->b:Lod/b;

    invoke-static {v0, p1, p2, p3}, Lqd/c;->b(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method
