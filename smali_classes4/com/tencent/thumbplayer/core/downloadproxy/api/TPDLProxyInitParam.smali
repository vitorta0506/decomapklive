.class public Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appVer:Ljava/lang/String;

.field private cacheDir:Ljava/lang/String;

.field private configStr:Ljava/lang/String;

.field private dataDir:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private platform:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->cacheDir:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->dataDir:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->configStr:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->platform:I

    .line 6
    iput-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->appVer:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->guid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iput-object p4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->dataDir:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    iput-object p4, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->cacheDir:Ljava/lang/String;

    .line 14
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    iput-object p5, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->dataDir:Ljava/lang/String;

    .line 16
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iput-object p6, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->configStr:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->configStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    iget v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;->platform:I

    return v0
.end method
