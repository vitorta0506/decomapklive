.class final Lcom/tencent/rtmp/TXLiveBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/TXLiveBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/rtmp/TXLiveBase$a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/TXLiveBase$a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;

    invoke-interface {v0}, Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;->CreateHevcDecoder()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Create external hevc decoder. decoder:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalDecoderWrapper"

    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final a(J)V
    .locals 2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Destroy external hevc decoder. handler:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalDecoderWrapper"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/TXLiveBase$a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;->DestroyHevcDecoder(J)V

    return-void
.end method
