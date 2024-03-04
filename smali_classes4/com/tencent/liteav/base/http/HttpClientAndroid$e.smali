.class public final Lcom/tencent/liteav/base/http/HttpClientAndroid$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/http/HttpClientAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

.field b:Ljava/lang/String;

.field c:Ljava/nio/ByteBuffer;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->x:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->d:I

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->f:Ljava/util/Map;

    .line 7
    iput v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$e;->g:I

    return-void
.end method
