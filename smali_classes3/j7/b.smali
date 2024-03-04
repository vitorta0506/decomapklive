.class public Lj7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-static {}, Ln7/c;->c()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 6
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x202

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x1ad

    if-ne v3, v4, :cond_0

    :cond_2
    return-object v1
.end method
