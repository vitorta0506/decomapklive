.class public Lcom/guochao/faceshow/aaspring/utils/TraceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;,
        Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;
    }
.end annotation


# static fields
.field private static final EXCEED_PING:Ljava/lang/String; = "exceed"

.field private static final FROM_PING:Ljava/lang/String; = "From"

.field private static final PARENTHESE_CLOSE_PING:Ljava/lang/String; = ")"

.field private static final PARENTHESE_OPEN_PING:Ljava/lang/String; = "("

.field private static final PING:Ljava/lang/String; = "PING"

.field private static final SMALL_FROM_PING:Ljava/lang/String; = "from"

.field private static final TIME_PING:Ljava/lang/String; = "time="

.field private static final UNREACHABLE_PING:Ljava/lang/String; = "100%"


# instance fields
.field private final MAX_TTL:I

.field private elapsedTime:F

.field private ipToPing:Ljava/lang/String;

.field mCallback:Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;

.field private maxTtl:I

.field private traces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->MAX_TTL:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->traces:Ljava/util/List;

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->maxTtl:I

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->mCallback:Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;

    return-void
.end method

.method private launchPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ping -c 1 -w 4 -t %d "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v4, ""

    move-object v5, v4

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "From"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "from"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-float v6, v6

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->elapsedTime:F

    goto :goto_0

    :cond_2
    const-string v1, "zzz"

    .line 10
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    if-ne p1, v0, :cond_3

    .line 14
    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->parseIpToPingFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ipToPing:Ljava/lang/String;

    :cond_3
    return-object v5

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "From"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, " "

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 12
    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private parseIpToPingFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "PING"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "("

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private parseTimeFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "time="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private showResultInLog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->traces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ccc"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->launchPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    const-string v1, "100%"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "exceed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->elapsedTime:F

    invoke-direct {v1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_2

    .line 5
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->maxTtl:I

    if-ne v3, v4, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->parseTimeFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    .line 8
    :cond_1
    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->elapsedTime:F

    :goto_1
    invoke-direct {v1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 9
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->setHostname(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 13
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->traces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->setTtl(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->mCallback:Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;->onTrace(Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;)V

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->onPostExecute(Ljava/lang/String;)V

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->traces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->getIp()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ipToPing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->maxTtl:I

    if-ge p1, v0, :cond_1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->traces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ipToPing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->doInBackground(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->showResultInLog()V

    goto :goto_0

    .line 8
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->maxTtl:I

    if-ge p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ttl:I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->ipToPing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils;->doInBackground(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
